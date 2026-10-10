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

/* JADX INFO: loaded from: classes3.dex */
public final class SteammessagesContentsystemSteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetCDNAuthToken_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetCDNAuthToken_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetCDNAuthToken_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetCDNAuthToken_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetManifestRequestCode_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetManifestRequestCode_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetManifestRequestCode_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetManifestRequestCode_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetPeerContentInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetPeerContentInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetPeerContentInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetPeerContentInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_RequestPeerContentServer_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_RequestPeerContentServer_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_RequestPeerContentServer_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_RequestPeerContentServer_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CContentServerDirectory_ServerInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CContentServerDirectory_ServerInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_DetectedAppContent_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_DetectedAppContent_fieldAccessorTable;

    public interface CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder extends MessageOrBuilder {
        String getHostname();

        ByteString getHostnameBytes();

        int getSourceId();

        String getType();

        ByteString getTypeBytes();

        boolean hasHostname();

        boolean hasSourceId();

        boolean hasType();
    }

    public interface CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getDepotId();

        String getHostName();

        ByteString getHostNameBytes();

        boolean hasAppId();

        boolean hasDepotId();

        boolean hasHostName();
    }

    public interface CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder extends MessageOrBuilder {
        int getExpirationTime();

        String getToken();

        ByteString getTokenBytes();

        boolean hasExpirationTime();

        boolean hasToken();
    }

    public interface CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder extends MessageOrBuilder {
        String getCachedSignature();

        ByteString getCachedSignatureBytes();

        boolean hasCachedSignature();
    }

    public interface CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder extends MessageOrBuilder {
        String getHostsKv();

        ByteString getHostsKvBytes();

        String getIpCountry();

        ByteString getIpCountryBytes();

        long getValidUntilTime();

        boolean hasHostsKv();

        boolean hasIpCountry();

        boolean hasValidUntilTime();
    }

    public interface CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getDepotid();

        long getSourceManifestid();

        long getTargetManifestid();

        boolean hasAppid();

        boolean hasDepotid();

        boolean hasSourceManifestid();

        boolean hasTargetManifestid();
    }

    public interface CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder extends MessageOrBuilder {
        boolean getIsAvailable();

        long getPatchSize();

        long getPatchedChunksSize();

        boolean hasIsAvailable();

        boolean hasPatchSize();

        boolean hasPatchedChunksSize();
    }

    public interface CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder extends MessageOrBuilder {
        String getAppBranch();

        ByteString getAppBranchBytes();

        int getAppId();

        String getBranchPasswordHash();

        ByteString getBranchPasswordHashBytes();

        int getDepotId();

        long getManifestId();

        boolean hasAppBranch();

        boolean hasAppId();

        boolean hasBranchPasswordHash();

        boolean hasDepotId();

        boolean hasManifestId();
    }

    public interface CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder extends MessageOrBuilder {
        long getManifestRequestCode();

        boolean hasManifestRequestCode();
    }

    public interface CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder extends MessageOrBuilder {
        long getRemoteClientId();

        long getServerRemoteClientId();

        long getSteamid();

        boolean hasRemoteClientId();

        boolean hasServerRemoteClientId();

        boolean hasSteamid();
    }

    public interface CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder extends MessageOrBuilder {
        int getAppids(int i);

        int getAppidsCount();

        List<Integer> getAppidsList();

        String getIpPublic();

        ByteString getIpPublicBytes();

        boolean hasIpPublic();
    }

    public interface CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder extends MessageOrBuilder {
        int getCellId();

        CContentServerDirectory_ConnectedSteamPipeServerInfo getCurrentConnections(int i);

        int getCurrentConnectionsCount();

        List<CContentServerDirectory_ConnectedSteamPipeServerInfo> getCurrentConnectionsList();

        CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder getCurrentConnectionsOrBuilder(int i);

        List<? extends CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> getCurrentConnectionsOrBuilderList();

        String getIpOverride();

        ByteString getIpOverrideBytes();

        String getIpv6Public();

        ByteString getIpv6PublicBytes();

        int getLauncherType();

        int getMaxServers();

        boolean hasCellId();

        boolean hasIpOverride();

        boolean hasIpv6Public();

        boolean hasLauncherType();

        boolean hasMaxServers();
    }

    public interface CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder extends MessageOrBuilder {
        boolean getNoChange();

        CContentServerDirectory_ServerInfo getServers(int i);

        int getServersCount();

        List<CContentServerDirectory_ServerInfo> getServersList();

        CContentServerDirectory_ServerInfoOrBuilder getServersOrBuilder(int i);

        List<? extends CContentServerDirectory_ServerInfoOrBuilder> getServersOrBuilderList();

        boolean hasNoChange();
    }

    public interface CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getCurrentBuildId();

        long getRemoteClientId();

        long getServerRemoteClientId();

        long getSteamid();

        boolean hasAppId();

        boolean hasCurrentBuildId();

        boolean hasRemoteClientId();

        boolean hasServerRemoteClientId();

        boolean hasSteamid();
    }

    public interface CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder extends MessageOrBuilder {
        long getAccessToken();

        int getInstalledDepots(int i);

        int getInstalledDepotsCount();

        List<Integer> getInstalledDepotsList();

        int getServerPort();

        boolean hasAccessToken();

        boolean hasServerPort();
    }

    public interface CContentServerDirectory_ServerInfoOrBuilder extends MessageOrBuilder {
        int getAllowedAppIds(int i);

        int getAllowedAppIdsCount();

        List<Integer> getAllowedAppIdsList();

        String getBypassProxiesOfType(int i);

        ByteString getBypassProxiesOfTypeBytes(int i);

        int getBypassProxiesOfTypeCount();

        List<String> getBypassProxiesOfTypeList();

        int getCellId();

        String getHost();

        ByteString getHostBytes();

        String getHttpsSupport();

        ByteString getHttpsSupportBytes();

        int getLoad();

        int getNumEntriesInClientList();

        int getPriorityClass();

        String getProxyRequestPathTemplate();

        ByteString getProxyRequestPathTemplateBytes();

        int getSourceId();

        boolean getSteamChinaOnly();

        String getType();

        ByteString getTypeBytes();

        boolean getUseAsProxy();

        String getVhost();

        ByteString getVhostBytes();

        float getWeightedLoad();

        boolean hasCellId();

        boolean hasHost();

        boolean hasHttpsSupport();

        boolean hasLoad();

        boolean hasNumEntriesInClientList();

        boolean hasPriorityClass();

        boolean hasProxyRequestPathTemplate();

        boolean hasSourceId();

        boolean hasSteamChinaOnly();

        boolean hasType();

        boolean hasUseAsProxy();

        boolean hasVhost();

        boolean hasWeightedLoad();
    }

    public interface CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder extends MessageOrBuilder {
        EAppContentDetectionType getDetectionType();

        boolean hasDetectionType();
    }

    public interface CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder extends MessageOrBuilder {
        DetectedAppContent getDetectedAppContent(int i);

        int getDetectedAppContentCount();

        List<DetectedAppContent> getDetectedAppContentList();

        DetectedAppContentOrBuilder getDetectedAppContentOrBuilder(int i);

        List<? extends DetectedAppContentOrBuilder> getDetectedAppContentOrBuilderList();
    }

    public interface CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean hasAppid();
    }

    public interface CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder extends MessageOrBuilder {
        EAppAntiCheatType getDetectedAnticheat();

        EAppGameEngineType getDetectedGameengine();

        boolean hasDetectedAnticheat();

        boolean hasDetectedGameengine();
    }

    public interface DetectedAppContentOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getDepotId();

        int getDetectedContent();

        boolean hasAppId();

        boolean hasDepotId();

        boolean hasDetectedContent();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesContentsystemSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesContentsystemSteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nZin/dragonbra/javasteam/protobufs/steamclient/steammessages_contentsystem.steamclient.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\"i\n4CContentServerDirectory_ConnectedSteamPipeServerInfo\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012\u0011\n\tsource_id\u0018\u0002 \u0001(\u0005\u0012\u0010\n\bhostname\u0018\u0003 \u0001(\t\"ú\u0001\n6CContentServerDirectory_GetServersForSteamPipe_Request\u0012\u000f\n\u0007cell_id\u0018\u0001 \u0001(\r\u0012\u0017\n\u000bmax_servers\u0018\u0002 \u0001(\r:\u000220\u0012\u0013\n\u000bip_override\u0018\u0003 \u0001(\t\u0012\u0018\n\rlauncher_type\u0018\u0004 \u0001(\u0005:\u00010\u0012\u0013\n\u000bipv6_public\u0018\u0005 \u0001(\t\u0012R\n\u0013current_connections\u0018\u0006 \u0003(\u000b25.CContentServerDirectory_ConnectedSteamPipeServerInfo\"ù\u0002\n\"CContentServerDirectory_ServerInfo\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012\u0011\n\tsource_id\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007cell_id\u0018\u0003 \u0001(\u0005\u0012\f\n\u0004load\u0018\u0004 \u0001(\u0005\u0012\u0015\n\rweighted_load\u0018\u0005 \u0001(\u0002\u0012\"\n\u001anum_entries_in_client_list\u0018\u0006 \u0001(\u0005\u0012\u0018\n\u0010steam_china_only\u0018\u0007 \u0001(\b\u0012\f\n\u0004host\u0018\b \u0001(\t\u0012\r\n\u0005vhost\u0018\t \u0001(\t\u0012\u0014\n\fuse_as_proxy\u0018\n \u0001(\b\u0012#\n\u001bproxy_request_path_template\u0018\u000b \u0001(\t\u0012\u0015\n\rhttps_support\u0018\f \u0001(\t\u0012\u0017\n\u000fallowed_app_ids\u0018\r \u0003(\r\u0012\u0016\n\u000epriority_class\u0018\u000f \u0001(\r\u0012\u001e\n\u0016bypass_proxies_of_type\u0018\u0010 \u0003(\t\"\u0082\u0001\n7CContentServerDirectory_GetServersForSteamPipe_Response\u00124\n\u0007servers\u0018\u0001 \u0003(\u000b2#.CContentServerDirectory_ServerInfo\u0012\u0011\n\tno_change\u0018\u0002 \u0001(\b\"\u0089\u0001\n1CContentServerDirectory_GetDepotPatchInfo_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007depotid\u0018\u0002 \u0001(\r\u0012\u0019\n\u0011source_manifestid\u0018\u0003 \u0001(\u0004\u0012\u0019\n\u0011target_manifestid\u0018\u0004 \u0001(\u0004\"{\n2CContentServerDirectory_GetDepotPatchInfo_Response\u0012\u0014\n\fis_available\u0018\u0001 \u0001(\b\u0012\u0012\n\npatch_size\u0018\u0002 \u0001(\u0004\u0012\u001b\n\u0013patched_chunks_size\u0018\u0003 \u0001(\u0004\"P\n4CContentServerDirectory_GetClientUpdateHosts_Request\u0012\u0018\n\u0010cached_signature\u0018\u0001 \u0001(\t\"w\n5CContentServerDirectory_GetClientUpdateHosts_Response\u0012\u0010\n\bhosts_kv\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010valid_until_time\u0018\u0002 \u0001(\u0004\u0012\u0012\n\nip_country\u0018\u0003 \u0001(\t\"¡\u0001\n6CContentServerDirectory_GetManifestRequestCode_Request\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0010\n\bdepot_id\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bmanifest_id\u0018\u0003 \u0001(\u0004\u0012\u0012\n\napp_branch\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014branch_password_hash\u0018\u0005 \u0001(\t\"X\n7CContentServerDirectory_GetManifestRequestCode_Response\u0012\u001d\n\u0015manifest_request_code\u0018\u0001 \u0001(\u0004\"f\n/CContentServerDirectory_GetCDNAuthToken_Request\u0012\u0010\n\bdepot_id\u0018\u0001 \u0001(\r\u0012\u0011\n\thost_name\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006app_id\u0018\u0003 \u0001(\r\"Z\n0CContentServerDirectory_GetCDNAuthToken_Response\u0012\r\n\u0005token\u0018\u0001 \u0001(\t\u0012\u0017\n\u000fexpiration_time\u0018\u0002 \u0001(\r\"°\u0001\n8CContentServerDirectory_RequestPeerContentServer_Request\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0004\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\u0012\u001f\n\u0017server_remote_client_id\u0018\u0003 \u0001(\u0004\u0012\u000e\n\u0006app_id\u0018\u0004 \u0001(\r\u0012\u0018\n\u0010current_build_id\u0018\u0005 \u0001(\r\"\u0080\u0001\n9CContentServerDirectory_RequestPeerContentServer_Response\u0012\u0013\n\u000bserver_port\u0018\u0001 \u0001(\r\u0012\u0018\n\u0010installed_depots\u0018\u0002 \u0003(\r\u0012\u0014\n\faccess_token\u0018\u0003 \u0001(\u0004\"\u0080\u0001\n2CContentServerDirectory_GetPeerContentInfo_Request\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0004\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\u0012\u001f\n\u0017server_remote_client_id\u0018\u0003 \u0001(\u0004\"X\n3CContentServerDirectory_GetPeerContentInfo_Response\u0012\u000e\n\u0006appids\u0018\u0001 \u0003(\r\u0012\u0011\n\tip_public\u0018\u0002 \u0001(\t\"\u008d\u0001\n7CDepotContentDetection_GetAllDetectedAppContent_Request\u0012R\n\u000edetection_type\u0018\u0001 \u0001(\u000e2\u0019.EAppContentDetectionType:\u001fk_EAppContentDetectionType_None\"P\n\u0012DetectedAppContent\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0010\n\bdepot_id\u0018\u0002 \u0001(\r\u0012\u0018\n\u0010detected_content\u0018\u0003 \u0001(\u0005\"m\n8CDepotContentDetection_GetAllDetectedAppContent_Response\u00121\n\u0014detected_app_content\u0018\u0001 \u0003(\u000b2\u0013.DetectedAppContent\"K\n:CDepotContentDetection_GetDetectedContentSingleApp_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\"Ò\u0001\n;CDepotContentDetection_GetDetectedContentSingleApp_Response\u0012G\n\u0012detected_anticheat\u0018\u0001 \u0001(\u000e2\u0012.EAppAntiCheatType:\u0017k_EAppAntiCheatTypeNone\u0012J\n\u0013detected_gameengine\u0018\u0002 \u0001(\u000e2\u0013.EAppGameEngineType:\u0018k_EAppGameEngineTypeNone*\u0094\u0001\n\u0018EAppContentDetectionType\u0012#\n\u001fk_EAppContentDetectionType_None\u0010\u0000\u0012(\n$k_EAppContentDetectionType_AntiCheat\u0010\u0001\u0012)\n%k_EAppContentDetectionType_GameEngine\u0010\u0002*ú\u0002\n\u0011EAppAntiCheatType\u0012\u001b\n\u0017k_EAppAntiCheatTypeNone\u0010\u0000\u0012\u001d\n\u0019k_EAppAntiCheatTypeEasyAC\u0010\u0001\u0012\u001d\n\u0019k_EAppAntiCheatTypeDenuvo\u0010\u0002\u0012\u001f\n\u001bk_EAppAntiCheatTypeBattlEye\u0010\u0003\u0012\u001f\n\u001bk_EAppAntiCheatTypeXignCode\u0010\u0004\u0012!\n\u001dk_EAppAntiCheatTypePunkBuster\u0010\u0005\u0012\u001a\n\u0016k_EAppAntiCheatTypeVAC\u0010\u0006\u0012 \n\u001ck_EAppAntiCheatTypeGameGuard\u0010\u0007\u0012!\n\u001dk_EAppAntiCheatTypeHackShield\u0010\b\u0012&\n\"k_EAppAntiCheatTypeAntiCheatExpert\u0010\t\u0012\u001c\n\u0018k_EAppAntiCheatTypeOther\u0010\n*R\n\u0012EAppGameEngineType\u0012\u001c\n\u0018k_EAppGameEngineTypeNone\u0010\u0000\u0012\u001e\n\u001ak_EAppGameEngineTypeUnreal\u0010\u00012Ç\u0007\n\u0016ContentServerDirectory\u0012\u008b\u0001\n\u0016GetServersForSteamPipe\u00127.CContentServerDirectory_GetServersForSteamPipe_Request\u001a8.CContentServerDirectory_GetServersForSteamPipe_Response\u0012|\n\u0011GetDepotPatchInfo\u00122.CContentServerDirectory_GetDepotPatchInfo_Request\u001a3.CContentServerDirectory_GetDepotPatchInfo_Response\u0012\u0085\u0001\n\u0014GetClientUpdateHosts\u00125.CContentServerDirectory_GetClientUpdateHosts_Request\u001a6.CContentServerDirectory_GetClientUpdateHosts_Response\u0012\u008b\u0001\n\u0016GetManifestRequestCode\u00127.CContentServerDirectory_GetManifestRequestCode_Request\u001a8.CContentServerDirectory_GetManifestRequestCode_Response\u0012v\n\u000fGetCDNAuthToken\u00120.CContentServerDirectory_GetCDNAuthToken_Request\u001a1.CContentServerDirectory_GetCDNAuthToken_Response\u0012\u0091\u0001\n\u0018RequestPeerContentServer\u00129.CContentServerDirectory_RequestPeerContentServer_Request\u001a:.CContentServerDirectory_RequestPeerContentServer_Response\u0012\u007f\n\u0012GetPeerContentInfo\u00123.CContentServerDirectory_GetPeerContentInfo_Request\u001a4.CContentServerDirectory_GetPeerContentInfo_Response2Ä\u0002\n\u0015DepotContentDetection\u0012\u008f\u0001\n\u0018GetAllDetectedAppContent\u00128.CDepotContentDetection_GetAllDetectedAppContent_Request\u001a9.CDepotContentDetection_GetAllDetectedAppContent_Response\u0012\u0098\u0001\n\u001bGetDetectedContentSingleApp\u0012;.CDepotContentDetection_GetDetectedContentSingleApp_Request\u001a<.CDepotContentDetection_GetDetectedContentSingleApp_ResponseB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), SteammessagesUnifiedBaseSteamclient.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_descriptor = descriptor2;
        internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Type", "SourceId", "Hostname"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_descriptor = descriptor3;
        internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"CellId", "MaxServers", "IpOverride", "LauncherType", "Ipv6Public", "CurrentConnections"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CContentServerDirectory_ServerInfo_descriptor = descriptor4;
        internal_static_CContentServerDirectory_ServerInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Type", "SourceId", "CellId", "Load", "WeightedLoad", "NumEntriesInClientList", "SteamChinaOnly", "Host", "Vhost", "UseAsProxy", "ProxyRequestPathTemplate", "HttpsSupport", "AllowedAppIds", "PriorityClass", "BypassProxiesOfType"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_descriptor = descriptor5;
        internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Servers", "NoChange"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_descriptor = descriptor6;
        internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Appid", "Depotid", "SourceManifestid", "TargetManifestid"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_descriptor = descriptor7;
        internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"IsAvailable", "PatchSize", "PatchedChunksSize"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_descriptor = descriptor8;
        internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"CachedSignature"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_descriptor = descriptor9;
        internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"HostsKv", "ValidUntilTime", "IpCountry"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CContentServerDirectory_GetManifestRequestCode_Request_descriptor = descriptor10;
        internal_static_CContentServerDirectory_GetManifestRequestCode_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"AppId", "DepotId", "ManifestId", "AppBranch", "BranchPasswordHash"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CContentServerDirectory_GetManifestRequestCode_Response_descriptor = descriptor11;
        internal_static_CContentServerDirectory_GetManifestRequestCode_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"ManifestRequestCode"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CContentServerDirectory_GetCDNAuthToken_Request_descriptor = descriptor12;
        internal_static_CContentServerDirectory_GetCDNAuthToken_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"DepotId", "HostName", "AppId"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CContentServerDirectory_GetCDNAuthToken_Response_descriptor = descriptor13;
        internal_static_CContentServerDirectory_GetCDNAuthToken_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Token", "ExpirationTime"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CContentServerDirectory_RequestPeerContentServer_Request_descriptor = descriptor14;
        internal_static_CContentServerDirectory_RequestPeerContentServer_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"RemoteClientId", "Steamid", "ServerRemoteClientId", "AppId", "CurrentBuildId"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_CContentServerDirectory_RequestPeerContentServer_Response_descriptor = descriptor15;
        internal_static_CContentServerDirectory_RequestPeerContentServer_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"ServerPort", "InstalledDepots", "AccessToken"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_CContentServerDirectory_GetPeerContentInfo_Request_descriptor = descriptor16;
        internal_static_CContentServerDirectory_GetPeerContentInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"RemoteClientId", "Steamid", "ServerRemoteClientId"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(15);
        internal_static_CContentServerDirectory_GetPeerContentInfo_Response_descriptor = descriptor17;
        internal_static_CContentServerDirectory_GetPeerContentInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Appids", "IpPublic"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(16);
        internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_descriptor = descriptor18;
        internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"DetectionType"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(17);
        internal_static_DetectedAppContent_descriptor = descriptor19;
        internal_static_DetectedAppContent_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"AppId", "DepotId", "DetectedContent"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(18);
        internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_descriptor = descriptor20;
        internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"DetectedAppContent"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(19);
        internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_descriptor = descriptor21;
        internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Appid"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(20);
        internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_descriptor = descriptor22;
        internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"DetectedAnticheat", "DetectedGameengine"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum EAppContentDetectionType implements ProtocolMessageEnum {
        k_EAppContentDetectionType_None(0),
        k_EAppContentDetectionType_AntiCheat(1),
        k_EAppContentDetectionType_GameEngine(2);

        private static final EAppContentDetectionType[] VALUES;
        private static final Internal.EnumLiteMap<EAppContentDetectionType> internalValueMap;
        public static final int k_EAppContentDetectionType_AntiCheat_VALUE = 1;
        public static final int k_EAppContentDetectionType_GameEngine_VALUE = 2;
        public static final int k_EAppContentDetectionType_None_VALUE = 0;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EAppContentDetectionType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EAppContentDetectionType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.EAppContentDetectionType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EAppContentDetectionType findValueByNumber(int i) {
                    return EAppContentDetectionType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EAppContentDetectionType valueOf(int i) {
            return forNumber(i);
        }

        public static EAppContentDetectionType forNumber(int i) {
            if (i == 0) {
                return k_EAppContentDetectionType_None;
            }
            if (i == 1) {
                return k_EAppContentDetectionType_AntiCheat;
            }
            if (i != 2) {
                return null;
            }
            return k_EAppContentDetectionType_GameEngine;
        }

        public static Internal.EnumLiteMap<EAppContentDetectionType> internalGetValueMap() {
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
            return SteammessagesContentsystemSteamclient.getDescriptor().getEnumTypes().get(0);
        }

        public static EAppContentDetectionType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EAppContentDetectionType(int i) {
            this.value = i;
        }
    }

    public enum EAppAntiCheatType implements ProtocolMessageEnum {
        k_EAppAntiCheatTypeNone(0),
        k_EAppAntiCheatTypeEasyAC(1),
        k_EAppAntiCheatTypeDenuvo(2),
        k_EAppAntiCheatTypeBattlEye(3),
        k_EAppAntiCheatTypeXignCode(4),
        k_EAppAntiCheatTypePunkBuster(5),
        k_EAppAntiCheatTypeVAC(6),
        k_EAppAntiCheatTypeGameGuard(7),
        k_EAppAntiCheatTypeHackShield(8),
        k_EAppAntiCheatTypeAntiCheatExpert(9),
        k_EAppAntiCheatTypeOther(10);

        private static final EAppAntiCheatType[] VALUES;
        private static final Internal.EnumLiteMap<EAppAntiCheatType> internalValueMap;
        public static final int k_EAppAntiCheatTypeAntiCheatExpert_VALUE = 9;
        public static final int k_EAppAntiCheatTypeBattlEye_VALUE = 3;
        public static final int k_EAppAntiCheatTypeDenuvo_VALUE = 2;
        public static final int k_EAppAntiCheatTypeEasyAC_VALUE = 1;
        public static final int k_EAppAntiCheatTypeGameGuard_VALUE = 7;
        public static final int k_EAppAntiCheatTypeHackShield_VALUE = 8;
        public static final int k_EAppAntiCheatTypeNone_VALUE = 0;
        public static final int k_EAppAntiCheatTypeOther_VALUE = 10;
        public static final int k_EAppAntiCheatTypePunkBuster_VALUE = 5;
        public static final int k_EAppAntiCheatTypeVAC_VALUE = 6;
        public static final int k_EAppAntiCheatTypeXignCode_VALUE = 4;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EAppAntiCheatType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EAppAntiCheatType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.EAppAntiCheatType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EAppAntiCheatType findValueByNumber(int i) {
                    return EAppAntiCheatType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EAppAntiCheatType valueOf(int i) {
            return forNumber(i);
        }

        public static EAppAntiCheatType forNumber(int i) {
            switch (i) {
                case 0:
                    return k_EAppAntiCheatTypeNone;
                case 1:
                    return k_EAppAntiCheatTypeEasyAC;
                case 2:
                    return k_EAppAntiCheatTypeDenuvo;
                case 3:
                    return k_EAppAntiCheatTypeBattlEye;
                case 4:
                    return k_EAppAntiCheatTypeXignCode;
                case 5:
                    return k_EAppAntiCheatTypePunkBuster;
                case 6:
                    return k_EAppAntiCheatTypeVAC;
                case 7:
                    return k_EAppAntiCheatTypeGameGuard;
                case 8:
                    return k_EAppAntiCheatTypeHackShield;
                case 9:
                    return k_EAppAntiCheatTypeAntiCheatExpert;
                case 10:
                    return k_EAppAntiCheatTypeOther;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<EAppAntiCheatType> internalGetValueMap() {
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
            return SteammessagesContentsystemSteamclient.getDescriptor().getEnumTypes().get(1);
        }

        public static EAppAntiCheatType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EAppAntiCheatType(int i) {
            this.value = i;
        }
    }

    public enum EAppGameEngineType implements ProtocolMessageEnum {
        k_EAppGameEngineTypeNone(0),
        k_EAppGameEngineTypeUnreal(1);

        private static final EAppGameEngineType[] VALUES;
        private static final Internal.EnumLiteMap<EAppGameEngineType> internalValueMap;
        public static final int k_EAppGameEngineTypeNone_VALUE = 0;
        public static final int k_EAppGameEngineTypeUnreal_VALUE = 1;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EAppGameEngineType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EAppGameEngineType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.EAppGameEngineType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EAppGameEngineType findValueByNumber(int i) {
                    return EAppGameEngineType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EAppGameEngineType valueOf(int i) {
            return forNumber(i);
        }

        public static EAppGameEngineType forNumber(int i) {
            if (i == 0) {
                return k_EAppGameEngineTypeNone;
            }
            if (i != 1) {
                return null;
            }
            return k_EAppGameEngineTypeUnreal;
        }

        public static Internal.EnumLiteMap<EAppGameEngineType> internalGetValueMap() {
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
            return SteammessagesContentsystemSteamclient.getDescriptor().getEnumTypes().get(2);
        }

        public static EAppGameEngineType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EAppGameEngineType(int i) {
            this.value = i;
        }
    }

    public static final class CContentServerDirectory_ConnectedSteamPipeServerInfo extends GeneratedMessage implements CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder {
        private static final CContentServerDirectory_ConnectedSteamPipeServerInfo DEFAULT_INSTANCE;
        public static final int HOSTNAME_FIELD_NUMBER = 3;
        private static final Parser<CContentServerDirectory_ConnectedSteamPipeServerInfo> PARSER;
        public static final int SOURCE_ID_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object hostname_;
        private byte memoizedIsInitialized;
        private int sourceId_;
        private volatile Object type_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_ConnectedSteamPipeServerInfo.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_ConnectedSteamPipeServerInfo();
            PARSER = new AbstractParser<CContentServerDirectory_ConnectedSteamPipeServerInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfo.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_ConnectedSteamPipeServerInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_ConnectedSteamPipeServerInfo.newBuilder();
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

        private CContentServerDirectory_ConnectedSteamPipeServerInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.type_ = "";
            this.sourceId_ = 0;
            this.hostname_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_ConnectedSteamPipeServerInfo() {
            this.type_ = "";
            this.sourceId_ = 0;
            this.hostname_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = "";
            this.hostname_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_ConnectedSteamPipeServerInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public boolean hasType() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.type_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public boolean hasSourceId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public int getSourceId() {
            return this.sourceId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public boolean hasHostname() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public String getHostname() {
            Object obj = this.hostname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.hostname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
        public ByteString getHostnameBytes() {
            Object obj = this.hostname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostname_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.type_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.sourceId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.hostname_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.type_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.sourceId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.hostname_);
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
            if (!(obj instanceof CContentServerDirectory_ConnectedSteamPipeServerInfo)) {
                return super.equals(obj);
            }
            CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo = (CContentServerDirectory_ConnectedSteamPipeServerInfo) obj;
            if (hasType() != cContentServerDirectory_ConnectedSteamPipeServerInfo.hasType()) {
                return false;
            }
            if ((hasType() && !getType().equals(cContentServerDirectory_ConnectedSteamPipeServerInfo.getType())) || hasSourceId() != cContentServerDirectory_ConnectedSteamPipeServerInfo.hasSourceId()) {
                return false;
            }
            if ((!hasSourceId() || getSourceId() == cContentServerDirectory_ConnectedSteamPipeServerInfo.getSourceId()) && hasHostname() == cContentServerDirectory_ConnectedSteamPipeServerInfo.hasHostname()) {
                return (!hasHostname() || getHostname().equals(cContentServerDirectory_ConnectedSteamPipeServerInfo.getHostname())) && getUnknownFields().equals(cContentServerDirectory_ConnectedSteamPipeServerInfo.getUnknownFields());
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
                iHashCode = (((iHashCode * 37) + 1) * 53) + getType().hashCode();
            }
            if (hasSourceId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSourceId();
            }
            if (hasHostname()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getHostname().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_ConnectedSteamPipeServerInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_ConnectedSteamPipeServerInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_ConnectedSteamPipeServerInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_ConnectedSteamPipeServerInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_ConnectedSteamPipeServerInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_ConnectedSteamPipeServerInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_ConnectedSteamPipeServerInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder {
            private int bitField0_;
            private Object hostname_;
            private int sourceId_;
            private Object type_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_ConnectedSteamPipeServerInfo.class, Builder.class);
            }

            private Builder() {
                this.type_ = "";
                this.hostname_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = "";
                this.hostname_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.type_ = "";
                this.sourceId_ = 0;
                this.hostname_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ConnectedSteamPipeServerInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_ConnectedSteamPipeServerInfo getDefaultInstanceForType() {
                return CContentServerDirectory_ConnectedSteamPipeServerInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_ConnectedSteamPipeServerInfo build() {
                CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfoBuildPartial = buildPartial();
                if (cContentServerDirectory_ConnectedSteamPipeServerInfoBuildPartial.isInitialized()) {
                    return cContentServerDirectory_ConnectedSteamPipeServerInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_ConnectedSteamPipeServerInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_ConnectedSteamPipeServerInfo buildPartial() {
                CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo = new CContentServerDirectory_ConnectedSteamPipeServerInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_ConnectedSteamPipeServerInfo);
                }
                onBuilt();
                return cContentServerDirectory_ConnectedSteamPipeServerInfo;
            }

            private void buildPartial0(CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_ConnectedSteamPipeServerInfo.type_ = this.type_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_ConnectedSteamPipeServerInfo.sourceId_ = this.sourceId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_ConnectedSteamPipeServerInfo.hostname_ = this.hostname_;
                    i |= 4;
                }
                cContentServerDirectory_ConnectedSteamPipeServerInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_ConnectedSteamPipeServerInfo) {
                    return mergeFrom((CContentServerDirectory_ConnectedSteamPipeServerInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo) {
                if (cContentServerDirectory_ConnectedSteamPipeServerInfo == CContentServerDirectory_ConnectedSteamPipeServerInfo.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_ConnectedSteamPipeServerInfo.hasType()) {
                    this.type_ = cContentServerDirectory_ConnectedSteamPipeServerInfo.type_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cContentServerDirectory_ConnectedSteamPipeServerInfo.hasSourceId()) {
                    setSourceId(cContentServerDirectory_ConnectedSteamPipeServerInfo.getSourceId());
                }
                if (cContentServerDirectory_ConnectedSteamPipeServerInfo.hasHostname()) {
                    this.hostname_ = cContentServerDirectory_ConnectedSteamPipeServerInfo.hostname_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cContentServerDirectory_ConnectedSteamPipeServerInfo.getUnknownFields());
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
                                    this.type_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.sourceId_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.hostname_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public boolean hasType() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public String getType() {
                Object obj = this.type_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.type_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public ByteString getTypeBytes() {
                Object obj = this.type_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.type_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setType(String str) {
                str.getClass();
                this.type_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.type_ = CContentServerDirectory_ConnectedSteamPipeServerInfo.getDefaultInstance().getType();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setTypeBytes(ByteString byteString) {
                byteString.getClass();
                this.type_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public boolean hasSourceId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public int getSourceId() {
                return this.sourceId_;
            }

            public Builder setSourceId(int i) {
                this.sourceId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSourceId() {
                this.bitField0_ &= -3;
                this.sourceId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public boolean hasHostname() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public String getHostname() {
                Object obj = this.hostname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.hostname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder
            public ByteString getHostnameBytes() {
                Object obj = this.hostname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.hostname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHostname(String str) {
                str.getClass();
                this.hostname_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearHostname() {
                this.hostname_ = CContentServerDirectory_ConnectedSteamPipeServerInfo.getDefaultInstance().getHostname();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setHostnameBytes(ByteString byteString) {
                byteString.getClass();
                this.hostname_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_ConnectedSteamPipeServerInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_ConnectedSteamPipeServerInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_ConnectedSteamPipeServerInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_ConnectedSteamPipeServerInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetServersForSteamPipe_Request extends GeneratedMessage implements CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder {
        public static final int CELL_ID_FIELD_NUMBER = 1;
        public static final int CURRENT_CONNECTIONS_FIELD_NUMBER = 6;
        private static final CContentServerDirectory_GetServersForSteamPipe_Request DEFAULT_INSTANCE;
        public static final int IPV6_PUBLIC_FIELD_NUMBER = 5;
        public static final int IP_OVERRIDE_FIELD_NUMBER = 3;
        public static final int LAUNCHER_TYPE_FIELD_NUMBER = 4;
        public static final int MAX_SERVERS_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_GetServersForSteamPipe_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int cellId_;
        private List<CContentServerDirectory_ConnectedSteamPipeServerInfo> currentConnections_;
        private volatile Object ipOverride_;
        private volatile Object ipv6Public_;
        private int launcherType_;
        private int maxServers_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetServersForSteamPipe_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetServersForSteamPipe_Request();
            PARSER = new AbstractParser<CContentServerDirectory_GetServersForSteamPipe_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetServersForSteamPipe_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetServersForSteamPipe_Request.newBuilder();
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

        private CContentServerDirectory_GetServersForSteamPipe_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.cellId_ = 0;
            this.maxServers_ = 20;
            this.ipOverride_ = "";
            this.launcherType_ = 0;
            this.ipv6Public_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetServersForSteamPipe_Request() {
            this.cellId_ = 0;
            this.maxServers_ = 20;
            this.ipOverride_ = "";
            this.launcherType_ = 0;
            this.ipv6Public_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.maxServers_ = 20;
            this.ipOverride_ = "";
            this.ipv6Public_ = "";
            this.currentConnections_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetServersForSteamPipe_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public int getCellId() {
            return this.cellId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public boolean hasMaxServers() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public int getMaxServers() {
            return this.maxServers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public boolean hasIpOverride() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public String getIpOverride() {
            Object obj = this.ipOverride_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipOverride_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public ByteString getIpOverrideBytes() {
            Object obj = this.ipOverride_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipOverride_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public boolean hasLauncherType() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public int getLauncherType() {
            return this.launcherType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public boolean hasIpv6Public() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public String getIpv6Public() {
            Object obj = this.ipv6Public_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipv6Public_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public ByteString getIpv6PublicBytes() {
            Object obj = this.ipv6Public_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipv6Public_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public List<CContentServerDirectory_ConnectedSteamPipeServerInfo> getCurrentConnectionsList() {
            return this.currentConnections_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public List<? extends CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> getCurrentConnectionsOrBuilderList() {
            return this.currentConnections_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public int getCurrentConnectionsCount() {
            return this.currentConnections_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public CContentServerDirectory_ConnectedSteamPipeServerInfo getCurrentConnections(int i) {
            return this.currentConnections_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
        public CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder getCurrentConnectionsOrBuilder(int i) {
            return this.currentConnections_.get(i);
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
                codedOutputStream.writeUInt32(1, this.cellId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.maxServers_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.ipOverride_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.launcherType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.ipv6Public_);
            }
            for (int i = 0; i < this.currentConnections_.size(); i++) {
                codedOutputStream.writeMessage(6, this.currentConnections_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.cellId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.maxServers_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.ipOverride_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.launcherType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.ipv6Public_);
            }
            for (int i2 = 0; i2 < this.currentConnections_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(6, this.currentConnections_.get(i2));
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
            if (!(obj instanceof CContentServerDirectory_GetServersForSteamPipe_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_Request = (CContentServerDirectory_GetServersForSteamPipe_Request) obj;
            if (hasCellId() != cContentServerDirectory_GetServersForSteamPipe_Request.hasCellId()) {
                return false;
            }
            if ((hasCellId() && getCellId() != cContentServerDirectory_GetServersForSteamPipe_Request.getCellId()) || hasMaxServers() != cContentServerDirectory_GetServersForSteamPipe_Request.hasMaxServers()) {
                return false;
            }
            if ((hasMaxServers() && getMaxServers() != cContentServerDirectory_GetServersForSteamPipe_Request.getMaxServers()) || hasIpOverride() != cContentServerDirectory_GetServersForSteamPipe_Request.hasIpOverride()) {
                return false;
            }
            if ((hasIpOverride() && !getIpOverride().equals(cContentServerDirectory_GetServersForSteamPipe_Request.getIpOverride())) || hasLauncherType() != cContentServerDirectory_GetServersForSteamPipe_Request.hasLauncherType()) {
                return false;
            }
            if ((!hasLauncherType() || getLauncherType() == cContentServerDirectory_GetServersForSteamPipe_Request.getLauncherType()) && hasIpv6Public() == cContentServerDirectory_GetServersForSteamPipe_Request.hasIpv6Public()) {
                return (!hasIpv6Public() || getIpv6Public().equals(cContentServerDirectory_GetServersForSteamPipe_Request.getIpv6Public())) && getCurrentConnectionsList().equals(cContentServerDirectory_GetServersForSteamPipe_Request.getCurrentConnectionsList()) && getUnknownFields().equals(cContentServerDirectory_GetServersForSteamPipe_Request.getUnknownFields());
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
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCellId();
            }
            if (hasMaxServers()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMaxServers();
            }
            if (hasIpOverride()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getIpOverride().hashCode();
            }
            if (hasLauncherType()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getLauncherType();
            }
            if (hasIpv6Public()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getIpv6Public().hashCode();
            }
            if (getCurrentConnectionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getCurrentConnectionsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetServersForSteamPipe_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder {
            private int bitField0_;
            private int cellId_;
            private RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> currentConnectionsBuilder_;
            private List<CContentServerDirectory_ConnectedSteamPipeServerInfo> currentConnections_;
            private Object ipOverride_;
            private Object ipv6Public_;
            private int launcherType_;
            private int maxServers_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetServersForSteamPipe_Request.class, Builder.class);
            }

            private Builder() {
                this.maxServers_ = 20;
                this.ipOverride_ = "";
                this.ipv6Public_ = "";
                this.currentConnections_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.maxServers_ = 20;
                this.ipOverride_ = "";
                this.ipv6Public_ = "";
                this.currentConnections_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.cellId_ = 0;
                this.maxServers_ = 20;
                this.ipOverride_ = "";
                this.launcherType_ = 0;
                this.ipv6Public_ = "";
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.currentConnections_ = Collections.emptyList();
                } else {
                    this.currentConnections_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetServersForSteamPipe_Request getDefaultInstanceForType() {
                return CContentServerDirectory_GetServersForSteamPipe_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetServersForSteamPipe_Request build() {
                CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_GetServersForSteamPipe_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetServersForSteamPipe_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetServersForSteamPipe_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetServersForSteamPipe_Request buildPartial() {
                CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_Request = new CContentServerDirectory_GetServersForSteamPipe_Request(this);
                buildPartialRepeatedFields(cContentServerDirectory_GetServersForSteamPipe_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetServersForSteamPipe_Request);
                }
                onBuilt();
                return cContentServerDirectory_GetServersForSteamPipe_Request;
            }

            private void buildPartialRepeatedFields(CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_Request) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 32) != 0) {
                        this.currentConnections_ = Collections.unmodifiableList(this.currentConnections_);
                        this.bitField0_ &= -33;
                    }
                    cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_ = this.currentConnections_;
                    return;
                }
                cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetServersForSteamPipe_Request.cellId_ = this.cellId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetServersForSteamPipe_Request.maxServers_ = this.maxServers_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetServersForSteamPipe_Request.ipOverride_ = this.ipOverride_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cContentServerDirectory_GetServersForSteamPipe_Request.launcherType_ = this.launcherType_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cContentServerDirectory_GetServersForSteamPipe_Request.ipv6Public_ = this.ipv6Public_;
                    i |= 16;
                }
                cContentServerDirectory_GetServersForSteamPipe_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetServersForSteamPipe_Request) {
                    return mergeFrom((CContentServerDirectory_GetServersForSteamPipe_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_Request) {
                if (cContentServerDirectory_GetServersForSteamPipe_Request == CContentServerDirectory_GetServersForSteamPipe_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetServersForSteamPipe_Request.hasCellId()) {
                    setCellId(cContentServerDirectory_GetServersForSteamPipe_Request.getCellId());
                }
                if (cContentServerDirectory_GetServersForSteamPipe_Request.hasMaxServers()) {
                    setMaxServers(cContentServerDirectory_GetServersForSteamPipe_Request.getMaxServers());
                }
                if (cContentServerDirectory_GetServersForSteamPipe_Request.hasIpOverride()) {
                    this.ipOverride_ = cContentServerDirectory_GetServersForSteamPipe_Request.ipOverride_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cContentServerDirectory_GetServersForSteamPipe_Request.hasLauncherType()) {
                    setLauncherType(cContentServerDirectory_GetServersForSteamPipe_Request.getLauncherType());
                }
                if (cContentServerDirectory_GetServersForSteamPipe_Request.hasIpv6Public()) {
                    this.ipv6Public_ = cContentServerDirectory_GetServersForSteamPipe_Request.ipv6Public_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (this.currentConnectionsBuilder_ == null) {
                    if (!cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_.isEmpty()) {
                        if (this.currentConnections_.isEmpty()) {
                            this.currentConnections_ = cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureCurrentConnectionsIsMutable();
                            this.currentConnections_.addAll(cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_);
                        }
                        onChanged();
                    }
                } else if (!cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_.isEmpty()) {
                    if (this.currentConnectionsBuilder_.isEmpty()) {
                        this.currentConnectionsBuilder_.dispose();
                        this.currentConnectionsBuilder_ = null;
                        this.currentConnections_ = cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_;
                        this.bitField0_ &= -33;
                        this.currentConnectionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetCurrentConnectionsFieldBuilder() : null;
                    } else {
                        this.currentConnectionsBuilder_.addAllMessages(cContentServerDirectory_GetServersForSteamPipe_Request.currentConnections_);
                    }
                }
                mergeUnknownFields(cContentServerDirectory_GetServersForSteamPipe_Request.getUnknownFields());
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
                                    this.cellId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.maxServers_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.ipOverride_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.launcherType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.ipv6Public_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 50) {
                                    CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo = (CContentServerDirectory_ConnectedSteamPipeServerInfo) codedInputStream.readMessage(CContentServerDirectory_ConnectedSteamPipeServerInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureCurrentConnectionsIsMutable();
                                        this.currentConnections_.add(cContentServerDirectory_ConnectedSteamPipeServerInfo);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cContentServerDirectory_ConnectedSteamPipeServerInfo);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public int getCellId() {
                return this.cellId_;
            }

            public Builder setCellId(int i) {
                this.cellId_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCellId() {
                this.bitField0_ &= -2;
                this.cellId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public boolean hasMaxServers() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public int getMaxServers() {
                return this.maxServers_;
            }

            public Builder setMaxServers(int i) {
                this.maxServers_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMaxServers() {
                this.bitField0_ &= -3;
                this.maxServers_ = 20;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public boolean hasIpOverride() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public String getIpOverride() {
                Object obj = this.ipOverride_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.ipOverride_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public ByteString getIpOverrideBytes() {
                Object obj = this.ipOverride_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipOverride_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIpOverride(String str) {
                str.getClass();
                this.ipOverride_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearIpOverride() {
                this.ipOverride_ = CContentServerDirectory_GetServersForSteamPipe_Request.getDefaultInstance().getIpOverride();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setIpOverrideBytes(ByteString byteString) {
                byteString.getClass();
                this.ipOverride_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public boolean hasLauncherType() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public int getLauncherType() {
                return this.launcherType_;
            }

            public Builder setLauncherType(int i) {
                this.launcherType_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearLauncherType() {
                this.bitField0_ &= -9;
                this.launcherType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public boolean hasIpv6Public() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public String getIpv6Public() {
                Object obj = this.ipv6Public_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.ipv6Public_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public ByteString getIpv6PublicBytes() {
                Object obj = this.ipv6Public_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipv6Public_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIpv6Public(String str) {
                str.getClass();
                this.ipv6Public_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearIpv6Public() {
                this.ipv6Public_ = CContentServerDirectory_GetServersForSteamPipe_Request.getDefaultInstance().getIpv6Public();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setIpv6PublicBytes(ByteString byteString) {
                byteString.getClass();
                this.ipv6Public_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            private void ensureCurrentConnectionsIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.currentConnections_ = new ArrayList(this.currentConnections_);
                    this.bitField0_ |= 32;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public List<CContentServerDirectory_ConnectedSteamPipeServerInfo> getCurrentConnectionsList() {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.currentConnections_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public int getCurrentConnectionsCount() {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.currentConnections_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public CContentServerDirectory_ConnectedSteamPipeServerInfo getCurrentConnections(int i) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.currentConnections_.get(i);
                }
                return (CContentServerDirectory_ConnectedSteamPipeServerInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setCurrentConnections(int i, CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cContentServerDirectory_ConnectedSteamPipeServerInfo.getClass();
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.set(i, cContentServerDirectory_ConnectedSteamPipeServerInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cContentServerDirectory_ConnectedSteamPipeServerInfo);
                }
                return this;
            }

            public Builder setCurrentConnections(int i, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder builder) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addCurrentConnections(CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cContentServerDirectory_ConnectedSteamPipeServerInfo.getClass();
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.add(cContentServerDirectory_ConnectedSteamPipeServerInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cContentServerDirectory_ConnectedSteamPipeServerInfo);
                }
                return this;
            }

            public Builder addCurrentConnections(int i, CContentServerDirectory_ConnectedSteamPipeServerInfo cContentServerDirectory_ConnectedSteamPipeServerInfo) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cContentServerDirectory_ConnectedSteamPipeServerInfo.getClass();
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.add(i, cContentServerDirectory_ConnectedSteamPipeServerInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cContentServerDirectory_ConnectedSteamPipeServerInfo);
                }
                return this;
            }

            public Builder addCurrentConnections(CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder builder) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addCurrentConnections(int i, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder builder) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllCurrentConnections(Iterable<? extends CContentServerDirectory_ConnectedSteamPipeServerInfo> iterable) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureCurrentConnectionsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.currentConnections_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearCurrentConnections() {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.currentConnections_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeCurrentConnections(int i) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureCurrentConnectionsIsMutable();
                    this.currentConnections_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder getCurrentConnectionsBuilder(int i) {
                return (CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder) internalGetCurrentConnectionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder getCurrentConnectionsOrBuilder(int i) {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.currentConnections_.get(i);
                }
                return (CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_RequestOrBuilder
            public List<? extends CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> getCurrentConnectionsOrBuilderList() {
                RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> repeatedFieldBuilder = this.currentConnectionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.currentConnections_);
            }

            public CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder addCurrentConnectionsBuilder() {
                return (CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder) internalGetCurrentConnectionsFieldBuilder().addBuilder(CContentServerDirectory_ConnectedSteamPipeServerInfo.getDefaultInstance());
            }

            public CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder addCurrentConnectionsBuilder(int i) {
                return (CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder) internalGetCurrentConnectionsFieldBuilder().addBuilder(i, CContentServerDirectory_ConnectedSteamPipeServerInfo.getDefaultInstance());
            }

            public List<CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder> getCurrentConnectionsBuilderList() {
                return internalGetCurrentConnectionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CContentServerDirectory_ConnectedSteamPipeServerInfo, CContentServerDirectory_ConnectedSteamPipeServerInfo.Builder, CContentServerDirectory_ConnectedSteamPipeServerInfoOrBuilder> internalGetCurrentConnectionsFieldBuilder() {
                if (this.currentConnectionsBuilder_ == null) {
                    this.currentConnectionsBuilder_ = new RepeatedFieldBuilder<>(this.currentConnections_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                    this.currentConnections_ = null;
                }
                return this.currentConnectionsBuilder_;
            }
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetServersForSteamPipe_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetServersForSteamPipe_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetServersForSteamPipe_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_ServerInfo extends GeneratedMessage implements CContentServerDirectory_ServerInfoOrBuilder {
        public static final int ALLOWED_APP_IDS_FIELD_NUMBER = 13;
        public static final int BYPASS_PROXIES_OF_TYPE_FIELD_NUMBER = 16;
        public static final int CELL_ID_FIELD_NUMBER = 3;
        private static final CContentServerDirectory_ServerInfo DEFAULT_INSTANCE;
        public static final int HOST_FIELD_NUMBER = 8;
        public static final int HTTPS_SUPPORT_FIELD_NUMBER = 12;
        public static final int LOAD_FIELD_NUMBER = 4;
        public static final int NUM_ENTRIES_IN_CLIENT_LIST_FIELD_NUMBER = 6;
        private static final Parser<CContentServerDirectory_ServerInfo> PARSER;
        public static final int PRIORITY_CLASS_FIELD_NUMBER = 15;
        public static final int PROXY_REQUEST_PATH_TEMPLATE_FIELD_NUMBER = 11;
        public static final int SOURCE_ID_FIELD_NUMBER = 2;
        public static final int STEAM_CHINA_ONLY_FIELD_NUMBER = 7;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int USE_AS_PROXY_FIELD_NUMBER = 10;
        public static final int VHOST_FIELD_NUMBER = 9;
        public static final int WEIGHTED_LOAD_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private Internal.IntList allowedAppIds_;
        private int bitField0_;
        private LazyStringArrayList bypassProxiesOfType_;
        private int cellId_;
        private volatile Object host_;
        private volatile Object httpsSupport_;
        private int load_;
        private byte memoizedIsInitialized;
        private int numEntriesInClientList_;
        private int priorityClass_;
        private volatile Object proxyRequestPathTemplate_;
        private int sourceId_;
        private boolean steamChinaOnly_;
        private volatile Object type_;
        private boolean useAsProxy_;
        private volatile Object vhost_;
        private float weightedLoad_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_ServerInfo.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_ServerInfo();
            PARSER = new AbstractParser<CContentServerDirectory_ServerInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfo.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_ServerInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_ServerInfo.newBuilder();
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

        private CContentServerDirectory_ServerInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.type_ = "";
            this.sourceId_ = 0;
            this.cellId_ = 0;
            this.load_ = 0;
            this.weightedLoad_ = 0.0f;
            this.numEntriesInClientList_ = 0;
            this.steamChinaOnly_ = false;
            this.host_ = "";
            this.vhost_ = "";
            this.useAsProxy_ = false;
            this.proxyRequestPathTemplate_ = "";
            this.httpsSupport_ = "";
            this.allowedAppIds_ = GeneratedMessage.emptyIntList();
            this.priorityClass_ = 0;
            this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_ServerInfo() {
            this.type_ = "";
            this.sourceId_ = 0;
            this.cellId_ = 0;
            this.load_ = 0;
            this.weightedLoad_ = 0.0f;
            this.numEntriesInClientList_ = 0;
            this.steamChinaOnly_ = false;
            this.host_ = "";
            this.vhost_ = "";
            this.useAsProxy_ = false;
            this.proxyRequestPathTemplate_ = "";
            this.httpsSupport_ = "";
            this.allowedAppIds_ = GeneratedMessage.emptyIntList();
            this.priorityClass_ = 0;
            this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = "";
            this.host_ = "";
            this.vhost_ = "";
            this.proxyRequestPathTemplate_ = "";
            this.httpsSupport_ = "";
            this.allowedAppIds_ = GeneratedMessage.emptyIntList();
            this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ServerInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ServerInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_ServerInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasType() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.type_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasSourceId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getSourceId() {
            return this.sourceId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getCellId() {
            return this.cellId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasLoad() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getLoad() {
            return this.load_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasWeightedLoad() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public float getWeightedLoad() {
            return this.weightedLoad_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasNumEntriesInClientList() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getNumEntriesInClientList() {
            return this.numEntriesInClientList_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasSteamChinaOnly() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean getSteamChinaOnly() {
            return this.steamChinaOnly_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasHost() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public String getHost() {
            Object obj = this.host_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.host_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ByteString getHostBytes() {
            Object obj = this.host_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.host_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasVhost() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public String getVhost() {
            Object obj = this.vhost_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.vhost_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ByteString getVhostBytes() {
            Object obj = this.vhost_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vhost_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasUseAsProxy() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean getUseAsProxy() {
            return this.useAsProxy_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasProxyRequestPathTemplate() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public String getProxyRequestPathTemplate() {
            Object obj = this.proxyRequestPathTemplate_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.proxyRequestPathTemplate_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ByteString getProxyRequestPathTemplateBytes() {
            Object obj = this.proxyRequestPathTemplate_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.proxyRequestPathTemplate_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasHttpsSupport() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public String getHttpsSupport() {
            Object obj = this.httpsSupport_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.httpsSupport_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ByteString getHttpsSupportBytes() {
            Object obj = this.httpsSupport_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.httpsSupport_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public List<Integer> getAllowedAppIdsList() {
            return this.allowedAppIds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getAllowedAppIdsCount() {
            return this.allowedAppIds_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getAllowedAppIds(int i) {
            return this.allowedAppIds_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public boolean hasPriorityClass() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getPriorityClass() {
            return this.priorityClass_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ProtocolStringList getBypassProxiesOfTypeList() {
            return this.bypassProxiesOfType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public int getBypassProxiesOfTypeCount() {
            return this.bypassProxiesOfType_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public String getBypassProxiesOfType(int i) {
            return this.bypassProxiesOfType_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
        public ByteString getBypassProxiesOfTypeBytes(int i) {
            return this.bypassProxiesOfType_.getByteString(i);
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.type_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.sourceId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.cellId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.load_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFloat(5, this.weightedLoad_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt32(6, this.numEntriesInClientList_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.steamChinaOnly_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.host_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 9, this.vhost_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeBool(10, this.useAsProxy_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 11, this.proxyRequestPathTemplate_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 12, this.httpsSupport_);
            }
            for (int i = 0; i < this.allowedAppIds_.size(); i++) {
                codedOutputStream.writeUInt32(13, this.allowedAppIds_.getInt(i));
            }
            if ((this.bitField0_ & 4096) != 0) {
                codedOutputStream.writeUInt32(15, this.priorityClass_);
            }
            for (int i2 = 0; i2 < this.bypassProxiesOfType_.size(); i2++) {
                GeneratedMessage.writeString(codedOutputStream, 16, this.bypassProxiesOfType_.getRaw(i2));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.type_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.sourceId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(3, this.cellId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(4, this.load_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeFloatSize(5, this.weightedLoad_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(6, this.numEntriesInClientList_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(7, this.steamChinaOnly_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(8, this.host_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(9, this.vhost_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(10, this.useAsProxy_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(11, this.proxyRequestPathTemplate_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(12, this.httpsSupport_);
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.allowedAppIds_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.allowedAppIds_.getInt(i2));
            }
            int size = iComputeStringSize + iComputeUInt32SizeNoTag + getAllowedAppIdsList().size();
            if ((this.bitField0_ & 4096) != 0) {
                size += CodedOutputStream.computeUInt32Size(15, this.priorityClass_);
            }
            int iComputeStringSizeNoTag = 0;
            for (int i3 = 0; i3 < this.bypassProxiesOfType_.size(); i3++) {
                iComputeStringSizeNoTag += GeneratedMessage.computeStringSizeNoTag(this.bypassProxiesOfType_.getRaw(i3));
            }
            int size2 = size + iComputeStringSizeNoTag + (getBypassProxiesOfTypeList().size() * 2) + getUnknownFields().getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CContentServerDirectory_ServerInfo)) {
                return super.equals(obj);
            }
            CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo = (CContentServerDirectory_ServerInfo) obj;
            if (hasType() != cContentServerDirectory_ServerInfo.hasType()) {
                return false;
            }
            if ((hasType() && !getType().equals(cContentServerDirectory_ServerInfo.getType())) || hasSourceId() != cContentServerDirectory_ServerInfo.hasSourceId()) {
                return false;
            }
            if ((hasSourceId() && getSourceId() != cContentServerDirectory_ServerInfo.getSourceId()) || hasCellId() != cContentServerDirectory_ServerInfo.hasCellId()) {
                return false;
            }
            if ((hasCellId() && getCellId() != cContentServerDirectory_ServerInfo.getCellId()) || hasLoad() != cContentServerDirectory_ServerInfo.hasLoad()) {
                return false;
            }
            if ((hasLoad() && getLoad() != cContentServerDirectory_ServerInfo.getLoad()) || hasWeightedLoad() != cContentServerDirectory_ServerInfo.hasWeightedLoad()) {
                return false;
            }
            if ((hasWeightedLoad() && Float.floatToIntBits(getWeightedLoad()) != Float.floatToIntBits(cContentServerDirectory_ServerInfo.getWeightedLoad())) || hasNumEntriesInClientList() != cContentServerDirectory_ServerInfo.hasNumEntriesInClientList()) {
                return false;
            }
            if ((hasNumEntriesInClientList() && getNumEntriesInClientList() != cContentServerDirectory_ServerInfo.getNumEntriesInClientList()) || hasSteamChinaOnly() != cContentServerDirectory_ServerInfo.hasSteamChinaOnly()) {
                return false;
            }
            if ((hasSteamChinaOnly() && getSteamChinaOnly() != cContentServerDirectory_ServerInfo.getSteamChinaOnly()) || hasHost() != cContentServerDirectory_ServerInfo.hasHost()) {
                return false;
            }
            if ((hasHost() && !getHost().equals(cContentServerDirectory_ServerInfo.getHost())) || hasVhost() != cContentServerDirectory_ServerInfo.hasVhost()) {
                return false;
            }
            if ((hasVhost() && !getVhost().equals(cContentServerDirectory_ServerInfo.getVhost())) || hasUseAsProxy() != cContentServerDirectory_ServerInfo.hasUseAsProxy()) {
                return false;
            }
            if ((hasUseAsProxy() && getUseAsProxy() != cContentServerDirectory_ServerInfo.getUseAsProxy()) || hasProxyRequestPathTemplate() != cContentServerDirectory_ServerInfo.hasProxyRequestPathTemplate()) {
                return false;
            }
            if ((hasProxyRequestPathTemplate() && !getProxyRequestPathTemplate().equals(cContentServerDirectory_ServerInfo.getProxyRequestPathTemplate())) || hasHttpsSupport() != cContentServerDirectory_ServerInfo.hasHttpsSupport()) {
                return false;
            }
            if ((!hasHttpsSupport() || getHttpsSupport().equals(cContentServerDirectory_ServerInfo.getHttpsSupport())) && getAllowedAppIdsList().equals(cContentServerDirectory_ServerInfo.getAllowedAppIdsList()) && hasPriorityClass() == cContentServerDirectory_ServerInfo.hasPriorityClass()) {
                return (!hasPriorityClass() || getPriorityClass() == cContentServerDirectory_ServerInfo.getPriorityClass()) && getBypassProxiesOfTypeList().equals(cContentServerDirectory_ServerInfo.getBypassProxiesOfTypeList()) && getUnknownFields().equals(cContentServerDirectory_ServerInfo.getUnknownFields());
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
                iHashCode = (((iHashCode * 37) + 1) * 53) + getType().hashCode();
            }
            if (hasSourceId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSourceId();
            }
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCellId();
            }
            if (hasLoad()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getLoad();
            }
            if (hasWeightedLoad()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Float.floatToIntBits(getWeightedLoad());
            }
            if (hasNumEntriesInClientList()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getNumEntriesInClientList();
            }
            if (hasSteamChinaOnly()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getSteamChinaOnly());
            }
            if (hasHost()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getHost().hashCode();
            }
            if (hasVhost()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getVhost().hashCode();
            }
            if (hasUseAsProxy()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashBoolean(getUseAsProxy());
            }
            if (hasProxyRequestPathTemplate()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getProxyRequestPathTemplate().hashCode();
            }
            if (hasHttpsSupport()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + getHttpsSupport().hashCode();
            }
            if (getAllowedAppIdsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getAllowedAppIdsList().hashCode();
            }
            if (hasPriorityClass()) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getPriorityClass();
            }
            if (getBypassProxiesOfTypeCount() > 0) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + getBypassProxiesOfTypeList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_ServerInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_ServerInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_ServerInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_ServerInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_ServerInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_ServerInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_ServerInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_ServerInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_ServerInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_ServerInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_ServerInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_ServerInfoOrBuilder {
            private Internal.IntList allowedAppIds_;
            private int bitField0_;
            private LazyStringArrayList bypassProxiesOfType_;
            private int cellId_;
            private Object host_;
            private Object httpsSupport_;
            private int load_;
            private int numEntriesInClientList_;
            private int priorityClass_;
            private Object proxyRequestPathTemplate_;
            private int sourceId_;
            private boolean steamChinaOnly_;
            private Object type_;
            private boolean useAsProxy_;
            private Object vhost_;
            private float weightedLoad_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ServerInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ServerInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_ServerInfo.class, Builder.class);
            }

            private Builder() {
                this.type_ = "";
                this.host_ = "";
                this.vhost_ = "";
                this.proxyRequestPathTemplate_ = "";
                this.httpsSupport_ = "";
                this.allowedAppIds_ = GeneratedMessage.emptyIntList();
                this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = "";
                this.host_ = "";
                this.vhost_ = "";
                this.proxyRequestPathTemplate_ = "";
                this.httpsSupport_ = "";
                this.allowedAppIds_ = GeneratedMessage.emptyIntList();
                this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.type_ = "";
                this.sourceId_ = 0;
                this.cellId_ = 0;
                this.load_ = 0;
                this.weightedLoad_ = 0.0f;
                this.numEntriesInClientList_ = 0;
                this.steamChinaOnly_ = false;
                this.host_ = "";
                this.vhost_ = "";
                this.useAsProxy_ = false;
                this.proxyRequestPathTemplate_ = "";
                this.httpsSupport_ = "";
                this.allowedAppIds_ = GeneratedMessage.emptyIntList();
                this.priorityClass_ = 0;
                this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_ServerInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_ServerInfo getDefaultInstanceForType() {
                return CContentServerDirectory_ServerInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_ServerInfo build() {
                CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfoBuildPartial = buildPartial();
                if (cContentServerDirectory_ServerInfoBuildPartial.isInitialized()) {
                    return cContentServerDirectory_ServerInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_ServerInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_ServerInfo buildPartial() {
                CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo = new CContentServerDirectory_ServerInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_ServerInfo);
                }
                onBuilt();
                return cContentServerDirectory_ServerInfo;
            }

            private void buildPartial0(CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_ServerInfo.type_ = this.type_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_ServerInfo.sourceId_ = this.sourceId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_ServerInfo.cellId_ = this.cellId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cContentServerDirectory_ServerInfo.load_ = this.load_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cContentServerDirectory_ServerInfo.weightedLoad_ = this.weightedLoad_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cContentServerDirectory_ServerInfo.numEntriesInClientList_ = this.numEntriesInClientList_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cContentServerDirectory_ServerInfo.steamChinaOnly_ = this.steamChinaOnly_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cContentServerDirectory_ServerInfo.host_ = this.host_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cContentServerDirectory_ServerInfo.vhost_ = this.vhost_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cContentServerDirectory_ServerInfo.useAsProxy_ = this.useAsProxy_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cContentServerDirectory_ServerInfo.proxyRequestPathTemplate_ = this.proxyRequestPathTemplate_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cContentServerDirectory_ServerInfo.httpsSupport_ = this.httpsSupport_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    this.allowedAppIds_.makeImmutable();
                    cContentServerDirectory_ServerInfo.allowedAppIds_ = this.allowedAppIds_;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cContentServerDirectory_ServerInfo.priorityClass_ = this.priorityClass_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    this.bypassProxiesOfType_.makeImmutable();
                    cContentServerDirectory_ServerInfo.bypassProxiesOfType_ = this.bypassProxiesOfType_;
                }
                cContentServerDirectory_ServerInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_ServerInfo) {
                    return mergeFrom((CContentServerDirectory_ServerInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo) {
                if (cContentServerDirectory_ServerInfo == CContentServerDirectory_ServerInfo.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_ServerInfo.hasType()) {
                    this.type_ = cContentServerDirectory_ServerInfo.type_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cContentServerDirectory_ServerInfo.hasSourceId()) {
                    setSourceId(cContentServerDirectory_ServerInfo.getSourceId());
                }
                if (cContentServerDirectory_ServerInfo.hasCellId()) {
                    setCellId(cContentServerDirectory_ServerInfo.getCellId());
                }
                if (cContentServerDirectory_ServerInfo.hasLoad()) {
                    setLoad(cContentServerDirectory_ServerInfo.getLoad());
                }
                if (cContentServerDirectory_ServerInfo.hasWeightedLoad()) {
                    setWeightedLoad(cContentServerDirectory_ServerInfo.getWeightedLoad());
                }
                if (cContentServerDirectory_ServerInfo.hasNumEntriesInClientList()) {
                    setNumEntriesInClientList(cContentServerDirectory_ServerInfo.getNumEntriesInClientList());
                }
                if (cContentServerDirectory_ServerInfo.hasSteamChinaOnly()) {
                    setSteamChinaOnly(cContentServerDirectory_ServerInfo.getSteamChinaOnly());
                }
                if (cContentServerDirectory_ServerInfo.hasHost()) {
                    this.host_ = cContentServerDirectory_ServerInfo.host_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cContentServerDirectory_ServerInfo.hasVhost()) {
                    this.vhost_ = cContentServerDirectory_ServerInfo.vhost_;
                    this.bitField0_ |= 256;
                    onChanged();
                }
                if (cContentServerDirectory_ServerInfo.hasUseAsProxy()) {
                    setUseAsProxy(cContentServerDirectory_ServerInfo.getUseAsProxy());
                }
                if (cContentServerDirectory_ServerInfo.hasProxyRequestPathTemplate()) {
                    this.proxyRequestPathTemplate_ = cContentServerDirectory_ServerInfo.proxyRequestPathTemplate_;
                    this.bitField0_ |= 1024;
                    onChanged();
                }
                if (cContentServerDirectory_ServerInfo.hasHttpsSupport()) {
                    this.httpsSupport_ = cContentServerDirectory_ServerInfo.httpsSupport_;
                    this.bitField0_ |= 2048;
                    onChanged();
                }
                if (!cContentServerDirectory_ServerInfo.allowedAppIds_.isEmpty()) {
                    if (this.allowedAppIds_.isEmpty()) {
                        Internal.IntList intList = cContentServerDirectory_ServerInfo.allowedAppIds_;
                        this.allowedAppIds_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 4096;
                    } else {
                        ensureAllowedAppIdsIsMutable();
                        this.allowedAppIds_.addAll(cContentServerDirectory_ServerInfo.allowedAppIds_);
                    }
                    onChanged();
                }
                if (cContentServerDirectory_ServerInfo.hasPriorityClass()) {
                    setPriorityClass(cContentServerDirectory_ServerInfo.getPriorityClass());
                }
                if (!cContentServerDirectory_ServerInfo.bypassProxiesOfType_.isEmpty()) {
                    if (this.bypassProxiesOfType_.isEmpty()) {
                        this.bypassProxiesOfType_ = cContentServerDirectory_ServerInfo.bypassProxiesOfType_;
                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    } else {
                        ensureBypassProxiesOfTypeIsMutable();
                        this.bypassProxiesOfType_.addAll(cContentServerDirectory_ServerInfo.bypassProxiesOfType_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cContentServerDirectory_ServerInfo.getUnknownFields());
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
                                    this.type_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.sourceId_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.cellId_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.load_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 45:
                                    this.weightedLoad_ = codedInputStream.readFloat();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.numEntriesInClientList_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.steamChinaOnly_ = codedInputStream.readBool();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.host_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    this.vhost_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.useAsProxy_ = codedInputStream.readBool();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER /* 90 */:
                                    this.proxyRequestPathTemplate_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1024;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.COUNTRY_OVERRIDE_FIELD_NUMBER /* 98 */:
                                    this.httpsSupport_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2048;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureAllowedAppIdsIsMutable();
                                    this.allowedAppIds_.addInt(uInt32);
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER /* 106 */:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureAllowedAppIdsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.allowedAppIds_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case 120:
                                    this.priorityClass_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 130:
                                    ByteString bytes = codedInputStream.readBytes();
                                    ensureBypassProxiesOfTypeIsMutable();
                                    this.bypassProxiesOfType_.add(bytes);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasType() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public String getType() {
                Object obj = this.type_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.type_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ByteString getTypeBytes() {
                Object obj = this.type_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.type_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setType(String str) {
                str.getClass();
                this.type_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.type_ = CContentServerDirectory_ServerInfo.getDefaultInstance().getType();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setTypeBytes(ByteString byteString) {
                byteString.getClass();
                this.type_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasSourceId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getSourceId() {
                return this.sourceId_;
            }

            public Builder setSourceId(int i) {
                this.sourceId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSourceId() {
                this.bitField0_ &= -3;
                this.sourceId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasLoad() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getLoad() {
                return this.load_;
            }

            public Builder setLoad(int i) {
                this.load_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearLoad() {
                this.bitField0_ &= -9;
                this.load_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasWeightedLoad() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public float getWeightedLoad() {
                return this.weightedLoad_;
            }

            public Builder setWeightedLoad(float f) {
                this.weightedLoad_ = f;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearWeightedLoad() {
                this.bitField0_ &= -17;
                this.weightedLoad_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasNumEntriesInClientList() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getNumEntriesInClientList() {
                return this.numEntriesInClientList_;
            }

            public Builder setNumEntriesInClientList(int i) {
                this.numEntriesInClientList_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearNumEntriesInClientList() {
                this.bitField0_ &= -33;
                this.numEntriesInClientList_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasSteamChinaOnly() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean getSteamChinaOnly() {
                return this.steamChinaOnly_;
            }

            public Builder setSteamChinaOnly(boolean z) {
                this.steamChinaOnly_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSteamChinaOnly() {
                this.bitField0_ &= -65;
                this.steamChinaOnly_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasHost() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public String getHost() {
                Object obj = this.host_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.host_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ByteString getHostBytes() {
                Object obj = this.host_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.host_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHost(String str) {
                str.getClass();
                this.host_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearHost() {
                this.host_ = CContentServerDirectory_ServerInfo.getDefaultInstance().getHost();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setHostBytes(ByteString byteString) {
                byteString.getClass();
                this.host_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasVhost() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public String getVhost() {
                Object obj = this.vhost_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.vhost_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ByteString getVhostBytes() {
                Object obj = this.vhost_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.vhost_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setVhost(String str) {
                str.getClass();
                this.vhost_ = str;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearVhost() {
                this.vhost_ = CContentServerDirectory_ServerInfo.getDefaultInstance().getVhost();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public Builder setVhostBytes(ByteString byteString) {
                byteString.getClass();
                this.vhost_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasUseAsProxy() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean getUseAsProxy() {
                return this.useAsProxy_;
            }

            public Builder setUseAsProxy(boolean z) {
                this.useAsProxy_ = z;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearUseAsProxy() {
                this.bitField0_ &= -513;
                this.useAsProxy_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasProxyRequestPathTemplate() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public String getProxyRequestPathTemplate() {
                Object obj = this.proxyRequestPathTemplate_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.proxyRequestPathTemplate_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ByteString getProxyRequestPathTemplateBytes() {
                Object obj = this.proxyRequestPathTemplate_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.proxyRequestPathTemplate_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setProxyRequestPathTemplate(String str) {
                str.getClass();
                this.proxyRequestPathTemplate_ = str;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearProxyRequestPathTemplate() {
                this.proxyRequestPathTemplate_ = CContentServerDirectory_ServerInfo.getDefaultInstance().getProxyRequestPathTemplate();
                this.bitField0_ &= -1025;
                onChanged();
                return this;
            }

            public Builder setProxyRequestPathTemplateBytes(ByteString byteString) {
                byteString.getClass();
                this.proxyRequestPathTemplate_ = byteString;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasHttpsSupport() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public String getHttpsSupport() {
                Object obj = this.httpsSupport_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.httpsSupport_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ByteString getHttpsSupportBytes() {
                Object obj = this.httpsSupport_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.httpsSupport_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHttpsSupport(String str) {
                str.getClass();
                this.httpsSupport_ = str;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearHttpsSupport() {
                this.httpsSupport_ = CContentServerDirectory_ServerInfo.getDefaultInstance().getHttpsSupport();
                this.bitField0_ &= -2049;
                onChanged();
                return this;
            }

            public Builder setHttpsSupportBytes(ByteString byteString) {
                byteString.getClass();
                this.httpsSupport_ = byteString;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            private void ensureAllowedAppIdsIsMutable() {
                if (!this.allowedAppIds_.isModifiable()) {
                    this.allowedAppIds_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.allowedAppIds_);
                }
                this.bitField0_ |= 4096;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public List<Integer> getAllowedAppIdsList() {
                this.allowedAppIds_.makeImmutable();
                return this.allowedAppIds_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getAllowedAppIdsCount() {
                return this.allowedAppIds_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getAllowedAppIds(int i) {
                return this.allowedAppIds_.getInt(i);
            }

            public Builder setAllowedAppIds(int i, int i2) {
                ensureAllowedAppIdsIsMutable();
                this.allowedAppIds_.setInt(i, i2);
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder addAllowedAppIds(int i) {
                ensureAllowedAppIdsIsMutable();
                this.allowedAppIds_.addInt(i);
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder addAllAllowedAppIds(Iterable<? extends Integer> iterable) {
                ensureAllowedAppIdsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.allowedAppIds_);
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearAllowedAppIds() {
                this.allowedAppIds_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -4097;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public boolean hasPriorityClass() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getPriorityClass() {
                return this.priorityClass_;
            }

            public Builder setPriorityClass(int i) {
                this.priorityClass_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearPriorityClass() {
                this.bitField0_ &= -8193;
                this.priorityClass_ = 0;
                onChanged();
                return this;
            }

            private void ensureBypassProxiesOfTypeIsMutable() {
                if (!this.bypassProxiesOfType_.isModifiable()) {
                    this.bypassProxiesOfType_ = new LazyStringArrayList((LazyStringList) this.bypassProxiesOfType_);
                }
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ProtocolStringList getBypassProxiesOfTypeList() {
                this.bypassProxiesOfType_.makeImmutable();
                return this.bypassProxiesOfType_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public int getBypassProxiesOfTypeCount() {
                return this.bypassProxiesOfType_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public String getBypassProxiesOfType(int i) {
                return this.bypassProxiesOfType_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfoOrBuilder
            public ByteString getBypassProxiesOfTypeBytes(int i) {
                return this.bypassProxiesOfType_.getByteString(i);
            }

            public Builder setBypassProxiesOfType(int i, String str) {
                str.getClass();
                ensureBypassProxiesOfTypeIsMutable();
                this.bypassProxiesOfType_.set(i, str);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder addBypassProxiesOfType(String str) {
                str.getClass();
                ensureBypassProxiesOfTypeIsMutable();
                this.bypassProxiesOfType_.add(str);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder addAllBypassProxiesOfType(Iterable<String> iterable) {
                ensureBypassProxiesOfTypeIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.bypassProxiesOfType_);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearBypassProxiesOfType() {
                this.bypassProxiesOfType_ = LazyStringArrayList.emptyList();
                this.bitField0_ &= -16385;
                onChanged();
                return this;
            }

            public Builder addBypassProxiesOfTypeBytes(ByteString byteString) {
                byteString.getClass();
                ensureBypassProxiesOfTypeIsMutable();
                this.bypassProxiesOfType_.add(byteString);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_ServerInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_ServerInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_ServerInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_ServerInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetServersForSteamPipe_Response extends GeneratedMessage implements CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder {
        private static final CContentServerDirectory_GetServersForSteamPipe_Response DEFAULT_INSTANCE;
        public static final int NO_CHANGE_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_GetServersForSteamPipe_Response> PARSER;
        public static final int SERVERS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean noChange_;
        private List<CContentServerDirectory_ServerInfo> servers_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetServersForSteamPipe_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetServersForSteamPipe_Response();
            PARSER = new AbstractParser<CContentServerDirectory_GetServersForSteamPipe_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetServersForSteamPipe_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetServersForSteamPipe_Response.newBuilder();
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

        private CContentServerDirectory_GetServersForSteamPipe_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.noChange_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetServersForSteamPipe_Response() {
            this.noChange_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.servers_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetServersForSteamPipe_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public List<CContentServerDirectory_ServerInfo> getServersList() {
            return this.servers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public List<? extends CContentServerDirectory_ServerInfoOrBuilder> getServersOrBuilderList() {
            return this.servers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public int getServersCount() {
            return this.servers_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public CContentServerDirectory_ServerInfo getServers(int i) {
            return this.servers_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public CContentServerDirectory_ServerInfoOrBuilder getServersOrBuilder(int i) {
            return this.servers_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public boolean hasNoChange() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
        public boolean getNoChange() {
            return this.noChange_;
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
            for (int i = 0; i < this.servers_.size(); i++) {
                codedOutputStream.writeMessage(1, this.servers_.get(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeBool(2, this.noChange_);
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
            for (int i2 = 0; i2 < this.servers_.size(); i2++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(1, this.servers_.get(i2));
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(2, this.noChange_);
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
            if (!(obj instanceof CContentServerDirectory_GetServersForSteamPipe_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_Response = (CContentServerDirectory_GetServersForSteamPipe_Response) obj;
            if (getServersList().equals(cContentServerDirectory_GetServersForSteamPipe_Response.getServersList()) && hasNoChange() == cContentServerDirectory_GetServersForSteamPipe_Response.hasNoChange()) {
                return (!hasNoChange() || getNoChange() == cContentServerDirectory_GetServersForSteamPipe_Response.getNoChange()) && getUnknownFields().equals(cContentServerDirectory_GetServersForSteamPipe_Response.getUnknownFields());
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
            if (getServersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getServersList().hashCode();
            }
            if (hasNoChange()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getNoChange());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetServersForSteamPipe_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetServersForSteamPipe_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder {
            private int bitField0_;
            private boolean noChange_;
            private RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> serversBuilder_;
            private List<CContentServerDirectory_ServerInfo> servers_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetServersForSteamPipe_Response.class, Builder.class);
            }

            private Builder() {
                this.servers_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.servers_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.servers_ = Collections.emptyList();
                } else {
                    this.servers_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.noChange_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetServersForSteamPipe_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetServersForSteamPipe_Response getDefaultInstanceForType() {
                return CContentServerDirectory_GetServersForSteamPipe_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetServersForSteamPipe_Response build() {
                CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_GetServersForSteamPipe_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetServersForSteamPipe_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetServersForSteamPipe_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetServersForSteamPipe_Response buildPartial() {
                CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_Response = new CContentServerDirectory_GetServersForSteamPipe_Response(this);
                buildPartialRepeatedFields(cContentServerDirectory_GetServersForSteamPipe_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetServersForSteamPipe_Response);
                }
                onBuilt();
                return cContentServerDirectory_GetServersForSteamPipe_Response;
            }

            private void buildPartialRepeatedFields(CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_Response) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.servers_ = Collections.unmodifiableList(this.servers_);
                        this.bitField0_ &= -2;
                    }
                    cContentServerDirectory_GetServersForSteamPipe_Response.servers_ = this.servers_;
                    return;
                }
                cContentServerDirectory_GetServersForSteamPipe_Response.servers_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_Response) {
                int i;
                if ((this.bitField0_ & 2) != 0) {
                    cContentServerDirectory_GetServersForSteamPipe_Response.noChange_ = this.noChange_;
                    i = 1;
                } else {
                    i = 0;
                }
                cContentServerDirectory_GetServersForSteamPipe_Response.bitField0_ = i | cContentServerDirectory_GetServersForSteamPipe_Response.bitField0_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetServersForSteamPipe_Response) {
                    return mergeFrom((CContentServerDirectory_GetServersForSteamPipe_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_Response) {
                if (cContentServerDirectory_GetServersForSteamPipe_Response == CContentServerDirectory_GetServersForSteamPipe_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.serversBuilder_ == null) {
                    if (!cContentServerDirectory_GetServersForSteamPipe_Response.servers_.isEmpty()) {
                        if (this.servers_.isEmpty()) {
                            this.servers_ = cContentServerDirectory_GetServersForSteamPipe_Response.servers_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureServersIsMutable();
                            this.servers_.addAll(cContentServerDirectory_GetServersForSteamPipe_Response.servers_);
                        }
                        onChanged();
                    }
                } else if (!cContentServerDirectory_GetServersForSteamPipe_Response.servers_.isEmpty()) {
                    if (this.serversBuilder_.isEmpty()) {
                        this.serversBuilder_.dispose();
                        this.serversBuilder_ = null;
                        this.servers_ = cContentServerDirectory_GetServersForSteamPipe_Response.servers_;
                        this.bitField0_ &= -2;
                        this.serversBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetServersFieldBuilder() : null;
                    } else {
                        this.serversBuilder_.addAllMessages(cContentServerDirectory_GetServersForSteamPipe_Response.servers_);
                    }
                }
                if (cContentServerDirectory_GetServersForSteamPipe_Response.hasNoChange()) {
                    setNoChange(cContentServerDirectory_GetServersForSteamPipe_Response.getNoChange());
                }
                mergeUnknownFields(cContentServerDirectory_GetServersForSteamPipe_Response.getUnknownFields());
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
                                    CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo = (CContentServerDirectory_ServerInfo) codedInputStream.readMessage(CContentServerDirectory_ServerInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureServersIsMutable();
                                        this.servers_.add(cContentServerDirectory_ServerInfo);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cContentServerDirectory_ServerInfo);
                                    }
                                } else if (tag == 16) {
                                    this.noChange_ = codedInputStream.readBool();
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

            private void ensureServersIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.servers_ = new ArrayList(this.servers_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public List<CContentServerDirectory_ServerInfo> getServersList() {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.servers_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public int getServersCount() {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public CContentServerDirectory_ServerInfo getServers(int i) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.get(i);
                }
                return (CContentServerDirectory_ServerInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setServers(int i, CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    cContentServerDirectory_ServerInfo.getClass();
                    ensureServersIsMutable();
                    this.servers_.set(i, cContentServerDirectory_ServerInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cContentServerDirectory_ServerInfo);
                }
                return this;
            }

            public Builder setServers(int i, CContentServerDirectory_ServerInfo.Builder builder) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addServers(CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    cContentServerDirectory_ServerInfo.getClass();
                    ensureServersIsMutable();
                    this.servers_.add(cContentServerDirectory_ServerInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cContentServerDirectory_ServerInfo);
                }
                return this;
            }

            public Builder addServers(int i, CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    cContentServerDirectory_ServerInfo.getClass();
                    ensureServersIsMutable();
                    this.servers_.add(i, cContentServerDirectory_ServerInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cContentServerDirectory_ServerInfo);
                }
                return this;
            }

            public Builder addServers(CContentServerDirectory_ServerInfo.Builder builder) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addServers(int i, CContentServerDirectory_ServerInfo.Builder builder) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllServers(Iterable<? extends CContentServerDirectory_ServerInfo> iterable) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.servers_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearServers() {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.servers_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeServers(int i) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CContentServerDirectory_ServerInfo.Builder getServersBuilder(int i) {
                return (CContentServerDirectory_ServerInfo.Builder) internalGetServersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public CContentServerDirectory_ServerInfoOrBuilder getServersOrBuilder(int i) {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.get(i);
                }
                return (CContentServerDirectory_ServerInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public List<? extends CContentServerDirectory_ServerInfoOrBuilder> getServersOrBuilderList() {
                RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.servers_);
            }

            public CContentServerDirectory_ServerInfo.Builder addServersBuilder() {
                return (CContentServerDirectory_ServerInfo.Builder) internalGetServersFieldBuilder().addBuilder(CContentServerDirectory_ServerInfo.getDefaultInstance());
            }

            public CContentServerDirectory_ServerInfo.Builder addServersBuilder(int i) {
                return (CContentServerDirectory_ServerInfo.Builder) internalGetServersFieldBuilder().addBuilder(i, CContentServerDirectory_ServerInfo.getDefaultInstance());
            }

            public List<CContentServerDirectory_ServerInfo.Builder> getServersBuilderList() {
                return internalGetServersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CContentServerDirectory_ServerInfo, CContentServerDirectory_ServerInfo.Builder, CContentServerDirectory_ServerInfoOrBuilder> internalGetServersFieldBuilder() {
                if (this.serversBuilder_ == null) {
                    this.serversBuilder_ = new RepeatedFieldBuilder<>(this.servers_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.servers_ = null;
                }
                return this.serversBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public boolean hasNoChange() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_ResponseOrBuilder
            public boolean getNoChange() {
                return this.noChange_;
            }

            public Builder setNoChange(boolean z) {
                this.noChange_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearNoChange() {
                this.bitField0_ &= -3;
                this.noChange_ = false;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetServersForSteamPipe_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetServersForSteamPipe_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetServersForSteamPipe_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetServersForSteamPipe_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetDepotPatchInfo_Request extends GeneratedMessage implements CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CContentServerDirectory_GetDepotPatchInfo_Request DEFAULT_INSTANCE;
        public static final int DEPOTID_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_GetDepotPatchInfo_Request> PARSER;
        public static final int SOURCE_MANIFESTID_FIELD_NUMBER = 3;
        public static final int TARGET_MANIFESTID_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private int depotid_;
        private byte memoizedIsInitialized;
        private long sourceManifestid_;
        private long targetManifestid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetDepotPatchInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetDepotPatchInfo_Request();
            PARSER = new AbstractParser<CContentServerDirectory_GetDepotPatchInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetDepotPatchInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetDepotPatchInfo_Request.newBuilder();
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

        private CContentServerDirectory_GetDepotPatchInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.depotid_ = 0;
            this.sourceManifestid_ = 0L;
            this.targetManifestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetDepotPatchInfo_Request() {
            this.appid_ = 0;
            this.depotid_ = 0;
            this.sourceManifestid_ = 0L;
            this.targetManifestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetDepotPatchInfo_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public boolean hasDepotid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public int getDepotid() {
            return this.depotid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public boolean hasSourceManifestid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public long getSourceManifestid() {
            return this.sourceManifestid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public boolean hasTargetManifestid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
        public long getTargetManifestid() {
            return this.targetManifestid_;
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
                codedOutputStream.writeUInt32(2, this.depotid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.sourceManifestid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt64(4, this.targetManifestid_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.depotid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(3, this.sourceManifestid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(4, this.targetManifestid_);
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
            if (!(obj instanceof CContentServerDirectory_GetDepotPatchInfo_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_Request = (CContentServerDirectory_GetDepotPatchInfo_Request) obj;
            if (hasAppid() != cContentServerDirectory_GetDepotPatchInfo_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cContentServerDirectory_GetDepotPatchInfo_Request.getAppid()) || hasDepotid() != cContentServerDirectory_GetDepotPatchInfo_Request.hasDepotid()) {
                return false;
            }
            if ((hasDepotid() && getDepotid() != cContentServerDirectory_GetDepotPatchInfo_Request.getDepotid()) || hasSourceManifestid() != cContentServerDirectory_GetDepotPatchInfo_Request.hasSourceManifestid()) {
                return false;
            }
            if ((!hasSourceManifestid() || getSourceManifestid() == cContentServerDirectory_GetDepotPatchInfo_Request.getSourceManifestid()) && hasTargetManifestid() == cContentServerDirectory_GetDepotPatchInfo_Request.hasTargetManifestid()) {
                return (!hasTargetManifestid() || getTargetManifestid() == cContentServerDirectory_GetDepotPatchInfo_Request.getTargetManifestid()) && getUnknownFields().equals(cContentServerDirectory_GetDepotPatchInfo_Request.getUnknownFields());
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
            if (hasDepotid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDepotid();
            }
            if (hasSourceManifestid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSourceManifestid());
            }
            if (hasTargetManifestid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getTargetManifestid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetDepotPatchInfo_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int depotid_;
            private long sourceManifestid_;
            private long targetManifestid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetDepotPatchInfo_Request.class, Builder.class);
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
                this.depotid_ = 0;
                this.sourceManifestid_ = 0L;
                this.targetManifestid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetDepotPatchInfo_Request getDefaultInstanceForType() {
                return CContentServerDirectory_GetDepotPatchInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetDepotPatchInfo_Request build() {
                CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_GetDepotPatchInfo_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetDepotPatchInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetDepotPatchInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetDepotPatchInfo_Request buildPartial() {
                CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_Request = new CContentServerDirectory_GetDepotPatchInfo_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetDepotPatchInfo_Request);
                }
                onBuilt();
                return cContentServerDirectory_GetDepotPatchInfo_Request;
            }

            private void buildPartial0(CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Request.depotid_ = this.depotid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Request.sourceManifestid_ = this.sourceManifestid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Request.targetManifestid_ = this.targetManifestid_;
                    i |= 8;
                }
                cContentServerDirectory_GetDepotPatchInfo_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetDepotPatchInfo_Request) {
                    return mergeFrom((CContentServerDirectory_GetDepotPatchInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_Request) {
                if (cContentServerDirectory_GetDepotPatchInfo_Request == CContentServerDirectory_GetDepotPatchInfo_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Request.hasAppid()) {
                    setAppid(cContentServerDirectory_GetDepotPatchInfo_Request.getAppid());
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Request.hasDepotid()) {
                    setDepotid(cContentServerDirectory_GetDepotPatchInfo_Request.getDepotid());
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Request.hasSourceManifestid()) {
                    setSourceManifestid(cContentServerDirectory_GetDepotPatchInfo_Request.getSourceManifestid());
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Request.hasTargetManifestid()) {
                    setTargetManifestid(cContentServerDirectory_GetDepotPatchInfo_Request.getTargetManifestid());
                }
                mergeUnknownFields(cContentServerDirectory_GetDepotPatchInfo_Request.getUnknownFields());
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
                                    this.depotid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.sourceManifestid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.targetManifestid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public boolean hasDepotid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public int getDepotid() {
                return this.depotid_;
            }

            public Builder setDepotid(int i) {
                this.depotid_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDepotid() {
                this.bitField0_ &= -3;
                this.depotid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public boolean hasSourceManifestid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public long getSourceManifestid() {
                return this.sourceManifestid_;
            }

            public Builder setSourceManifestid(long j) {
                this.sourceManifestid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSourceManifestid() {
                this.bitField0_ &= -5;
                this.sourceManifestid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public boolean hasTargetManifestid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_RequestOrBuilder
            public long getTargetManifestid() {
                return this.targetManifestid_;
            }

            public Builder setTargetManifestid(long j) {
                this.targetManifestid_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearTargetManifestid() {
                this.bitField0_ &= -9;
                this.targetManifestid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetDepotPatchInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetDepotPatchInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetDepotPatchInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetDepotPatchInfo_Response extends GeneratedMessage implements CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder {
        private static final CContentServerDirectory_GetDepotPatchInfo_Response DEFAULT_INSTANCE;
        public static final int IS_AVAILABLE_FIELD_NUMBER = 1;
        private static final Parser<CContentServerDirectory_GetDepotPatchInfo_Response> PARSER;
        public static final int PATCHED_CHUNKS_SIZE_FIELD_NUMBER = 3;
        public static final int PATCH_SIZE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean isAvailable_;
        private byte memoizedIsInitialized;
        private long patchSize_;
        private long patchedChunksSize_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetDepotPatchInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetDepotPatchInfo_Response();
            PARSER = new AbstractParser<CContentServerDirectory_GetDepotPatchInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetDepotPatchInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetDepotPatchInfo_Response.newBuilder();
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

        private CContentServerDirectory_GetDepotPatchInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.isAvailable_ = false;
            this.patchSize_ = 0L;
            this.patchedChunksSize_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetDepotPatchInfo_Response() {
            this.isAvailable_ = false;
            this.patchSize_ = 0L;
            this.patchedChunksSize_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetDepotPatchInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
        public boolean hasIsAvailable() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
        public boolean getIsAvailable() {
            return this.isAvailable_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
        public boolean hasPatchSize() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
        public long getPatchSize() {
            return this.patchSize_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
        public boolean hasPatchedChunksSize() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
        public long getPatchedChunksSize() {
            return this.patchedChunksSize_;
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
                codedOutputStream.writeBool(1, this.isAvailable_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.patchSize_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.patchedChunksSize_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.isAvailable_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(2, this.patchSize_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(3, this.patchedChunksSize_);
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
            if (!(obj instanceof CContentServerDirectory_GetDepotPatchInfo_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_Response = (CContentServerDirectory_GetDepotPatchInfo_Response) obj;
            if (hasIsAvailable() != cContentServerDirectory_GetDepotPatchInfo_Response.hasIsAvailable()) {
                return false;
            }
            if ((hasIsAvailable() && getIsAvailable() != cContentServerDirectory_GetDepotPatchInfo_Response.getIsAvailable()) || hasPatchSize() != cContentServerDirectory_GetDepotPatchInfo_Response.hasPatchSize()) {
                return false;
            }
            if ((!hasPatchSize() || getPatchSize() == cContentServerDirectory_GetDepotPatchInfo_Response.getPatchSize()) && hasPatchedChunksSize() == cContentServerDirectory_GetDepotPatchInfo_Response.hasPatchedChunksSize()) {
                return (!hasPatchedChunksSize() || getPatchedChunksSize() == cContentServerDirectory_GetDepotPatchInfo_Response.getPatchedChunksSize()) && getUnknownFields().equals(cContentServerDirectory_GetDepotPatchInfo_Response.getUnknownFields());
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
            if (hasIsAvailable()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getIsAvailable());
            }
            if (hasPatchSize()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getPatchSize());
            }
            if (hasPatchedChunksSize()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getPatchedChunksSize());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetDepotPatchInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetDepotPatchInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder {
            private int bitField0_;
            private boolean isAvailable_;
            private long patchSize_;
            private long patchedChunksSize_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetDepotPatchInfo_Response.class, Builder.class);
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
                this.isAvailable_ = false;
                this.patchSize_ = 0L;
                this.patchedChunksSize_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetDepotPatchInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetDepotPatchInfo_Response getDefaultInstanceForType() {
                return CContentServerDirectory_GetDepotPatchInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetDepotPatchInfo_Response build() {
                CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_GetDepotPatchInfo_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetDepotPatchInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetDepotPatchInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetDepotPatchInfo_Response buildPartial() {
                CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_Response = new CContentServerDirectory_GetDepotPatchInfo_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetDepotPatchInfo_Response);
                }
                onBuilt();
                return cContentServerDirectory_GetDepotPatchInfo_Response;
            }

            private void buildPartial0(CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Response.isAvailable_ = this.isAvailable_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Response.patchSize_ = this.patchSize_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetDepotPatchInfo_Response.patchedChunksSize_ = this.patchedChunksSize_;
                    i |= 4;
                }
                cContentServerDirectory_GetDepotPatchInfo_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetDepotPatchInfo_Response) {
                    return mergeFrom((CContentServerDirectory_GetDepotPatchInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_Response) {
                if (cContentServerDirectory_GetDepotPatchInfo_Response == CContentServerDirectory_GetDepotPatchInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Response.hasIsAvailable()) {
                    setIsAvailable(cContentServerDirectory_GetDepotPatchInfo_Response.getIsAvailable());
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Response.hasPatchSize()) {
                    setPatchSize(cContentServerDirectory_GetDepotPatchInfo_Response.getPatchSize());
                }
                if (cContentServerDirectory_GetDepotPatchInfo_Response.hasPatchedChunksSize()) {
                    setPatchedChunksSize(cContentServerDirectory_GetDepotPatchInfo_Response.getPatchedChunksSize());
                }
                mergeUnknownFields(cContentServerDirectory_GetDepotPatchInfo_Response.getUnknownFields());
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
                                    this.isAvailable_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.patchSize_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.patchedChunksSize_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
            public boolean hasIsAvailable() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
            public boolean getIsAvailable() {
                return this.isAvailable_;
            }

            public Builder setIsAvailable(boolean z) {
                this.isAvailable_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearIsAvailable() {
                this.bitField0_ &= -2;
                this.isAvailable_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
            public boolean hasPatchSize() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
            public long getPatchSize() {
                return this.patchSize_;
            }

            public Builder setPatchSize(long j) {
                this.patchSize_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPatchSize() {
                this.bitField0_ &= -3;
                this.patchSize_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
            public boolean hasPatchedChunksSize() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_ResponseOrBuilder
            public long getPatchedChunksSize() {
                return this.patchedChunksSize_;
            }

            public Builder setPatchedChunksSize(long j) {
                this.patchedChunksSize_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPatchedChunksSize() {
                this.bitField0_ &= -5;
                this.patchedChunksSize_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetDepotPatchInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetDepotPatchInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetDepotPatchInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetDepotPatchInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetClientUpdateHosts_Request extends GeneratedMessage implements CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder {
        public static final int CACHED_SIGNATURE_FIELD_NUMBER = 1;
        private static final CContentServerDirectory_GetClientUpdateHosts_Request DEFAULT_INSTANCE;
        private static final Parser<CContentServerDirectory_GetClientUpdateHosts_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object cachedSignature_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetClientUpdateHosts_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetClientUpdateHosts_Request();
            PARSER = new AbstractParser<CContentServerDirectory_GetClientUpdateHosts_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetClientUpdateHosts_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetClientUpdateHosts_Request.newBuilder();
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

        private CContentServerDirectory_GetClientUpdateHosts_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.cachedSignature_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetClientUpdateHosts_Request() {
            this.cachedSignature_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.cachedSignature_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetClientUpdateHosts_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder
        public boolean hasCachedSignature() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder
        public String getCachedSignature() {
            Object obj = this.cachedSignature_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.cachedSignature_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder
        public ByteString getCachedSignatureBytes() {
            Object obj = this.cachedSignature_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cachedSignature_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.cachedSignature_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.cachedSignature_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CContentServerDirectory_GetClientUpdateHosts_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetClientUpdateHosts_Request cContentServerDirectory_GetClientUpdateHosts_Request = (CContentServerDirectory_GetClientUpdateHosts_Request) obj;
            if (hasCachedSignature() != cContentServerDirectory_GetClientUpdateHosts_Request.hasCachedSignature()) {
                return false;
            }
            return (!hasCachedSignature() || getCachedSignature().equals(cContentServerDirectory_GetClientUpdateHosts_Request.getCachedSignature())) && getUnknownFields().equals(cContentServerDirectory_GetClientUpdateHosts_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasCachedSignature()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCachedSignature().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetClientUpdateHosts_Request cContentServerDirectory_GetClientUpdateHosts_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetClientUpdateHosts_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder {
            private int bitField0_;
            private Object cachedSignature_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetClientUpdateHosts_Request.class, Builder.class);
            }

            private Builder() {
                this.cachedSignature_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.cachedSignature_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.cachedSignature_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetClientUpdateHosts_Request getDefaultInstanceForType() {
                return CContentServerDirectory_GetClientUpdateHosts_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetClientUpdateHosts_Request build() {
                CContentServerDirectory_GetClientUpdateHosts_Request cContentServerDirectory_GetClientUpdateHosts_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_GetClientUpdateHosts_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetClientUpdateHosts_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetClientUpdateHosts_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetClientUpdateHosts_Request buildPartial() {
                CContentServerDirectory_GetClientUpdateHosts_Request cContentServerDirectory_GetClientUpdateHosts_Request = new CContentServerDirectory_GetClientUpdateHosts_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetClientUpdateHosts_Request);
                }
                onBuilt();
                return cContentServerDirectory_GetClientUpdateHosts_Request;
            }

            private void buildPartial0(CContentServerDirectory_GetClientUpdateHosts_Request cContentServerDirectory_GetClientUpdateHosts_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cContentServerDirectory_GetClientUpdateHosts_Request.cachedSignature_ = this.cachedSignature_;
                } else {
                    i = 0;
                }
                cContentServerDirectory_GetClientUpdateHosts_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetClientUpdateHosts_Request) {
                    return mergeFrom((CContentServerDirectory_GetClientUpdateHosts_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetClientUpdateHosts_Request cContentServerDirectory_GetClientUpdateHosts_Request) {
                if (cContentServerDirectory_GetClientUpdateHosts_Request == CContentServerDirectory_GetClientUpdateHosts_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetClientUpdateHosts_Request.hasCachedSignature()) {
                    this.cachedSignature_ = cContentServerDirectory_GetClientUpdateHosts_Request.cachedSignature_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cContentServerDirectory_GetClientUpdateHosts_Request.getUnknownFields());
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
                                    this.cachedSignature_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder
            public boolean hasCachedSignature() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder
            public String getCachedSignature() {
                Object obj = this.cachedSignature_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.cachedSignature_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_RequestOrBuilder
            public ByteString getCachedSignatureBytes() {
                Object obj = this.cachedSignature_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.cachedSignature_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCachedSignature(String str) {
                str.getClass();
                this.cachedSignature_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCachedSignature() {
                this.cachedSignature_ = CContentServerDirectory_GetClientUpdateHosts_Request.getDefaultInstance().getCachedSignature();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setCachedSignatureBytes(ByteString byteString) {
                byteString.getClass();
                this.cachedSignature_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetClientUpdateHosts_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetClientUpdateHosts_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetClientUpdateHosts_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetClientUpdateHosts_Response extends GeneratedMessage implements CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder {
        private static final CContentServerDirectory_GetClientUpdateHosts_Response DEFAULT_INSTANCE;
        public static final int HOSTS_KV_FIELD_NUMBER = 1;
        public static final int IP_COUNTRY_FIELD_NUMBER = 3;
        private static final Parser<CContentServerDirectory_GetClientUpdateHosts_Response> PARSER;
        public static final int VALID_UNTIL_TIME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object hostsKv_;
        private volatile Object ipCountry_;
        private byte memoizedIsInitialized;
        private long validUntilTime_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetClientUpdateHosts_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetClientUpdateHosts_Response();
            PARSER = new AbstractParser<CContentServerDirectory_GetClientUpdateHosts_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetClientUpdateHosts_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetClientUpdateHosts_Response.newBuilder();
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

        private CContentServerDirectory_GetClientUpdateHosts_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.hostsKv_ = "";
            this.validUntilTime_ = 0L;
            this.ipCountry_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetClientUpdateHosts_Response() {
            this.hostsKv_ = "";
            this.validUntilTime_ = 0L;
            this.ipCountry_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.hostsKv_ = "";
            this.ipCountry_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetClientUpdateHosts_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public boolean hasHostsKv() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public String getHostsKv() {
            Object obj = this.hostsKv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.hostsKv_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public ByteString getHostsKvBytes() {
            Object obj = this.hostsKv_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostsKv_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public boolean hasValidUntilTime() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public long getValidUntilTime() {
            return this.validUntilTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public boolean hasIpCountry() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
        public ByteString getIpCountryBytes() {
            Object obj = this.ipCountry_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipCountry_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.hostsKv_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.validUntilTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.ipCountry_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.hostsKv_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(2, this.validUntilTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.ipCountry_);
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
            if (!(obj instanceof CContentServerDirectory_GetClientUpdateHosts_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetClientUpdateHosts_Response cContentServerDirectory_GetClientUpdateHosts_Response = (CContentServerDirectory_GetClientUpdateHosts_Response) obj;
            if (hasHostsKv() != cContentServerDirectory_GetClientUpdateHosts_Response.hasHostsKv()) {
                return false;
            }
            if ((hasHostsKv() && !getHostsKv().equals(cContentServerDirectory_GetClientUpdateHosts_Response.getHostsKv())) || hasValidUntilTime() != cContentServerDirectory_GetClientUpdateHosts_Response.hasValidUntilTime()) {
                return false;
            }
            if ((!hasValidUntilTime() || getValidUntilTime() == cContentServerDirectory_GetClientUpdateHosts_Response.getValidUntilTime()) && hasIpCountry() == cContentServerDirectory_GetClientUpdateHosts_Response.hasIpCountry()) {
                return (!hasIpCountry() || getIpCountry().equals(cContentServerDirectory_GetClientUpdateHosts_Response.getIpCountry())) && getUnknownFields().equals(cContentServerDirectory_GetClientUpdateHosts_Response.getUnknownFields());
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
            if (hasHostsKv()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getHostsKv().hashCode();
            }
            if (hasValidUntilTime()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getValidUntilTime());
            }
            if (hasIpCountry()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getIpCountry().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetClientUpdateHosts_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetClientUpdateHosts_Response cContentServerDirectory_GetClientUpdateHosts_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetClientUpdateHosts_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder {
            private int bitField0_;
            private Object hostsKv_;
            private Object ipCountry_;
            private long validUntilTime_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetClientUpdateHosts_Response.class, Builder.class);
            }

            private Builder() {
                this.hostsKv_ = "";
                this.ipCountry_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.hostsKv_ = "";
                this.ipCountry_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.hostsKv_ = "";
                this.validUntilTime_ = 0L;
                this.ipCountry_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetClientUpdateHosts_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetClientUpdateHosts_Response getDefaultInstanceForType() {
                return CContentServerDirectory_GetClientUpdateHosts_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetClientUpdateHosts_Response build() {
                CContentServerDirectory_GetClientUpdateHosts_Response cContentServerDirectory_GetClientUpdateHosts_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_GetClientUpdateHosts_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetClientUpdateHosts_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetClientUpdateHosts_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetClientUpdateHosts_Response buildPartial() {
                CContentServerDirectory_GetClientUpdateHosts_Response cContentServerDirectory_GetClientUpdateHosts_Response = new CContentServerDirectory_GetClientUpdateHosts_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetClientUpdateHosts_Response);
                }
                onBuilt();
                return cContentServerDirectory_GetClientUpdateHosts_Response;
            }

            private void buildPartial0(CContentServerDirectory_GetClientUpdateHosts_Response cContentServerDirectory_GetClientUpdateHosts_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetClientUpdateHosts_Response.hostsKv_ = this.hostsKv_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetClientUpdateHosts_Response.validUntilTime_ = this.validUntilTime_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetClientUpdateHosts_Response.ipCountry_ = this.ipCountry_;
                    i |= 4;
                }
                cContentServerDirectory_GetClientUpdateHosts_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetClientUpdateHosts_Response) {
                    return mergeFrom((CContentServerDirectory_GetClientUpdateHosts_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetClientUpdateHosts_Response cContentServerDirectory_GetClientUpdateHosts_Response) {
                if (cContentServerDirectory_GetClientUpdateHosts_Response == CContentServerDirectory_GetClientUpdateHosts_Response.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetClientUpdateHosts_Response.hasHostsKv()) {
                    this.hostsKv_ = cContentServerDirectory_GetClientUpdateHosts_Response.hostsKv_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cContentServerDirectory_GetClientUpdateHosts_Response.hasValidUntilTime()) {
                    setValidUntilTime(cContentServerDirectory_GetClientUpdateHosts_Response.getValidUntilTime());
                }
                if (cContentServerDirectory_GetClientUpdateHosts_Response.hasIpCountry()) {
                    this.ipCountry_ = cContentServerDirectory_GetClientUpdateHosts_Response.ipCountry_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cContentServerDirectory_GetClientUpdateHosts_Response.getUnknownFields());
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
                                    this.hostsKv_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.validUntilTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.ipCountry_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
            public boolean hasHostsKv() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
            public String getHostsKv() {
                Object obj = this.hostsKv_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.hostsKv_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
            public ByteString getHostsKvBytes() {
                Object obj = this.hostsKv_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.hostsKv_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHostsKv(String str) {
                str.getClass();
                this.hostsKv_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearHostsKv() {
                this.hostsKv_ = CContentServerDirectory_GetClientUpdateHosts_Response.getDefaultInstance().getHostsKv();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setHostsKvBytes(ByteString byteString) {
                byteString.getClass();
                this.hostsKv_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
            public boolean hasValidUntilTime() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
            public long getValidUntilTime() {
                return this.validUntilTime_;
            }

            public Builder setValidUntilTime(long j) {
                this.validUntilTime_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearValidUntilTime() {
                this.bitField0_ &= -3;
                this.validUntilTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
            public boolean hasIpCountry() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_ResponseOrBuilder
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
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearIpCountry() {
                this.ipCountry_ = CContentServerDirectory_GetClientUpdateHosts_Response.getDefaultInstance().getIpCountry();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setIpCountryBytes(ByteString byteString) {
                byteString.getClass();
                this.ipCountry_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetClientUpdateHosts_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetClientUpdateHosts_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetClientUpdateHosts_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetClientUpdateHosts_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetManifestRequestCode_Request extends GeneratedMessage implements CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder {
        public static final int APP_BRANCH_FIELD_NUMBER = 4;
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int BRANCH_PASSWORD_HASH_FIELD_NUMBER = 5;
        private static final CContentServerDirectory_GetManifestRequestCode_Request DEFAULT_INSTANCE;
        public static final int DEPOT_ID_FIELD_NUMBER = 2;
        public static final int MANIFEST_ID_FIELD_NUMBER = 3;
        private static final Parser<CContentServerDirectory_GetManifestRequestCode_Request> PARSER;
        private static final long serialVersionUID = 0;
        private volatile Object appBranch_;
        private int appId_;
        private int bitField0_;
        private volatile Object branchPasswordHash_;
        private int depotId_;
        private long manifestId_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetManifestRequestCode_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetManifestRequestCode_Request();
            PARSER = new AbstractParser<CContentServerDirectory_GetManifestRequestCode_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetManifestRequestCode_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetManifestRequestCode_Request.newBuilder();
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

        private CContentServerDirectory_GetManifestRequestCode_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.depotId_ = 0;
            this.manifestId_ = 0L;
            this.appBranch_ = "";
            this.branchPasswordHash_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetManifestRequestCode_Request() {
            this.appId_ = 0;
            this.depotId_ = 0;
            this.manifestId_ = 0L;
            this.appBranch_ = "";
            this.branchPasswordHash_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.appBranch_ = "";
            this.branchPasswordHash_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetManifestRequestCode_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public boolean hasDepotId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public int getDepotId() {
            return this.depotId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public boolean hasManifestId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public long getManifestId() {
            return this.manifestId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public boolean hasAppBranch() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public String getAppBranch() {
            Object obj = this.appBranch_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.appBranch_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public ByteString getAppBranchBytes() {
            Object obj = this.appBranch_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appBranch_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public boolean hasBranchPasswordHash() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public String getBranchPasswordHash() {
            Object obj = this.branchPasswordHash_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.branchPasswordHash_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
        public ByteString getBranchPasswordHashBytes() {
            Object obj = this.branchPasswordHash_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.branchPasswordHash_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(2, this.depotId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.manifestId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.appBranch_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.branchPasswordHash_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.depotId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(3, this.manifestId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.appBranch_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.branchPasswordHash_);
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
            if (!(obj instanceof CContentServerDirectory_GetManifestRequestCode_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_Request = (CContentServerDirectory_GetManifestRequestCode_Request) obj;
            if (hasAppId() != cContentServerDirectory_GetManifestRequestCode_Request.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cContentServerDirectory_GetManifestRequestCode_Request.getAppId()) || hasDepotId() != cContentServerDirectory_GetManifestRequestCode_Request.hasDepotId()) {
                return false;
            }
            if ((hasDepotId() && getDepotId() != cContentServerDirectory_GetManifestRequestCode_Request.getDepotId()) || hasManifestId() != cContentServerDirectory_GetManifestRequestCode_Request.hasManifestId()) {
                return false;
            }
            if ((hasManifestId() && getManifestId() != cContentServerDirectory_GetManifestRequestCode_Request.getManifestId()) || hasAppBranch() != cContentServerDirectory_GetManifestRequestCode_Request.hasAppBranch()) {
                return false;
            }
            if ((!hasAppBranch() || getAppBranch().equals(cContentServerDirectory_GetManifestRequestCode_Request.getAppBranch())) && hasBranchPasswordHash() == cContentServerDirectory_GetManifestRequestCode_Request.hasBranchPasswordHash()) {
                return (!hasBranchPasswordHash() || getBranchPasswordHash().equals(cContentServerDirectory_GetManifestRequestCode_Request.getBranchPasswordHash())) && getUnknownFields().equals(cContentServerDirectory_GetManifestRequestCode_Request.getUnknownFields());
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
            if (hasDepotId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDepotId();
            }
            if (hasManifestId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getManifestId());
            }
            if (hasAppBranch()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getAppBranch().hashCode();
            }
            if (hasBranchPasswordHash()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getBranchPasswordHash().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetManifestRequestCode_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder {
            private Object appBranch_;
            private int appId_;
            private int bitField0_;
            private Object branchPasswordHash_;
            private int depotId_;
            private long manifestId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetManifestRequestCode_Request.class, Builder.class);
            }

            private Builder() {
                this.appBranch_ = "";
                this.branchPasswordHash_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.appBranch_ = "";
                this.branchPasswordHash_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.depotId_ = 0;
                this.manifestId_ = 0L;
                this.appBranch_ = "";
                this.branchPasswordHash_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetManifestRequestCode_Request getDefaultInstanceForType() {
                return CContentServerDirectory_GetManifestRequestCode_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetManifestRequestCode_Request build() {
                CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_GetManifestRequestCode_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetManifestRequestCode_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetManifestRequestCode_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetManifestRequestCode_Request buildPartial() {
                CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_Request = new CContentServerDirectory_GetManifestRequestCode_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetManifestRequestCode_Request);
                }
                onBuilt();
                return cContentServerDirectory_GetManifestRequestCode_Request;
            }

            private void buildPartial0(CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetManifestRequestCode_Request.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetManifestRequestCode_Request.depotId_ = this.depotId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetManifestRequestCode_Request.manifestId_ = this.manifestId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cContentServerDirectory_GetManifestRequestCode_Request.appBranch_ = this.appBranch_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cContentServerDirectory_GetManifestRequestCode_Request.branchPasswordHash_ = this.branchPasswordHash_;
                    i |= 16;
                }
                cContentServerDirectory_GetManifestRequestCode_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetManifestRequestCode_Request) {
                    return mergeFrom((CContentServerDirectory_GetManifestRequestCode_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_Request) {
                if (cContentServerDirectory_GetManifestRequestCode_Request == CContentServerDirectory_GetManifestRequestCode_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetManifestRequestCode_Request.hasAppId()) {
                    setAppId(cContentServerDirectory_GetManifestRequestCode_Request.getAppId());
                }
                if (cContentServerDirectory_GetManifestRequestCode_Request.hasDepotId()) {
                    setDepotId(cContentServerDirectory_GetManifestRequestCode_Request.getDepotId());
                }
                if (cContentServerDirectory_GetManifestRequestCode_Request.hasManifestId()) {
                    setManifestId(cContentServerDirectory_GetManifestRequestCode_Request.getManifestId());
                }
                if (cContentServerDirectory_GetManifestRequestCode_Request.hasAppBranch()) {
                    this.appBranch_ = cContentServerDirectory_GetManifestRequestCode_Request.appBranch_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cContentServerDirectory_GetManifestRequestCode_Request.hasBranchPasswordHash()) {
                    this.branchPasswordHash_ = cContentServerDirectory_GetManifestRequestCode_Request.branchPasswordHash_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                mergeUnknownFields(cContentServerDirectory_GetManifestRequestCode_Request.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.depotId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.manifestId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.appBranch_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.branchPasswordHash_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public boolean hasDepotId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public int getDepotId() {
                return this.depotId_;
            }

            public Builder setDepotId(int i) {
                this.depotId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDepotId() {
                this.bitField0_ &= -3;
                this.depotId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public boolean hasManifestId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public long getManifestId() {
                return this.manifestId_;
            }

            public Builder setManifestId(long j) {
                this.manifestId_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearManifestId() {
                this.bitField0_ &= -5;
                this.manifestId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public boolean hasAppBranch() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public String getAppBranch() {
                Object obj = this.appBranch_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.appBranch_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public ByteString getAppBranchBytes() {
                Object obj = this.appBranch_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.appBranch_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAppBranch(String str) {
                str.getClass();
                this.appBranch_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAppBranch() {
                this.appBranch_ = CContentServerDirectory_GetManifestRequestCode_Request.getDefaultInstance().getAppBranch();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setAppBranchBytes(ByteString byteString) {
                byteString.getClass();
                this.appBranch_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public boolean hasBranchPasswordHash() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public String getBranchPasswordHash() {
                Object obj = this.branchPasswordHash_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.branchPasswordHash_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_RequestOrBuilder
            public ByteString getBranchPasswordHashBytes() {
                Object obj = this.branchPasswordHash_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.branchPasswordHash_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setBranchPasswordHash(String str) {
                str.getClass();
                this.branchPasswordHash_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearBranchPasswordHash() {
                this.branchPasswordHash_ = CContentServerDirectory_GetManifestRequestCode_Request.getDefaultInstance().getBranchPasswordHash();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setBranchPasswordHashBytes(ByteString byteString) {
                byteString.getClass();
                this.branchPasswordHash_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetManifestRequestCode_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetManifestRequestCode_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetManifestRequestCode_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetManifestRequestCode_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetManifestRequestCode_Response extends GeneratedMessage implements CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder {
        private static final CContentServerDirectory_GetManifestRequestCode_Response DEFAULT_INSTANCE;
        public static final int MANIFEST_REQUEST_CODE_FIELD_NUMBER = 1;
        private static final Parser<CContentServerDirectory_GetManifestRequestCode_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long manifestRequestCode_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetManifestRequestCode_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetManifestRequestCode_Response();
            PARSER = new AbstractParser<CContentServerDirectory_GetManifestRequestCode_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetManifestRequestCode_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetManifestRequestCode_Response.newBuilder();
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

        private CContentServerDirectory_GetManifestRequestCode_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.manifestRequestCode_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetManifestRequestCode_Response() {
            this.manifestRequestCode_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetManifestRequestCode_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder
        public boolean hasManifestRequestCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder
        public long getManifestRequestCode() {
            return this.manifestRequestCode_;
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
                codedOutputStream.writeUInt64(1, this.manifestRequestCode_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.manifestRequestCode_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt64Size;
            return iComputeUInt64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CContentServerDirectory_GetManifestRequestCode_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetManifestRequestCode_Response cContentServerDirectory_GetManifestRequestCode_Response = (CContentServerDirectory_GetManifestRequestCode_Response) obj;
            if (hasManifestRequestCode() != cContentServerDirectory_GetManifestRequestCode_Response.hasManifestRequestCode()) {
                return false;
            }
            return (!hasManifestRequestCode() || getManifestRequestCode() == cContentServerDirectory_GetManifestRequestCode_Response.getManifestRequestCode()) && getUnknownFields().equals(cContentServerDirectory_GetManifestRequestCode_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasManifestRequestCode()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getManifestRequestCode());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetManifestRequestCode_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetManifestRequestCode_Response cContentServerDirectory_GetManifestRequestCode_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetManifestRequestCode_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder {
            private int bitField0_;
            private long manifestRequestCode_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetManifestRequestCode_Response.class, Builder.class);
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
                this.manifestRequestCode_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetManifestRequestCode_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetManifestRequestCode_Response getDefaultInstanceForType() {
                return CContentServerDirectory_GetManifestRequestCode_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetManifestRequestCode_Response build() {
                CContentServerDirectory_GetManifestRequestCode_Response cContentServerDirectory_GetManifestRequestCode_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_GetManifestRequestCode_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetManifestRequestCode_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetManifestRequestCode_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetManifestRequestCode_Response buildPartial() {
                CContentServerDirectory_GetManifestRequestCode_Response cContentServerDirectory_GetManifestRequestCode_Response = new CContentServerDirectory_GetManifestRequestCode_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetManifestRequestCode_Response);
                }
                onBuilt();
                return cContentServerDirectory_GetManifestRequestCode_Response;
            }

            private void buildPartial0(CContentServerDirectory_GetManifestRequestCode_Response cContentServerDirectory_GetManifestRequestCode_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cContentServerDirectory_GetManifestRequestCode_Response.manifestRequestCode_ = this.manifestRequestCode_;
                } else {
                    i = 0;
                }
                cContentServerDirectory_GetManifestRequestCode_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetManifestRequestCode_Response) {
                    return mergeFrom((CContentServerDirectory_GetManifestRequestCode_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetManifestRequestCode_Response cContentServerDirectory_GetManifestRequestCode_Response) {
                if (cContentServerDirectory_GetManifestRequestCode_Response == CContentServerDirectory_GetManifestRequestCode_Response.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetManifestRequestCode_Response.hasManifestRequestCode()) {
                    setManifestRequestCode(cContentServerDirectory_GetManifestRequestCode_Response.getManifestRequestCode());
                }
                mergeUnknownFields(cContentServerDirectory_GetManifestRequestCode_Response.getUnknownFields());
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
                                    this.manifestRequestCode_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder
            public boolean hasManifestRequestCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_ResponseOrBuilder
            public long getManifestRequestCode() {
                return this.manifestRequestCode_;
            }

            public Builder setManifestRequestCode(long j) {
                this.manifestRequestCode_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearManifestRequestCode() {
                this.bitField0_ &= -2;
                this.manifestRequestCode_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetManifestRequestCode_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetManifestRequestCode_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetManifestRequestCode_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetManifestRequestCode_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetCDNAuthToken_Request extends GeneratedMessage implements CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 3;
        private static final CContentServerDirectory_GetCDNAuthToken_Request DEFAULT_INSTANCE;
        public static final int DEPOT_ID_FIELD_NUMBER = 1;
        public static final int HOST_NAME_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_GetCDNAuthToken_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int depotId_;
        private volatile Object hostName_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetCDNAuthToken_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetCDNAuthToken_Request();
            PARSER = new AbstractParser<CContentServerDirectory_GetCDNAuthToken_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetCDNAuthToken_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetCDNAuthToken_Request.newBuilder();
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

        private CContentServerDirectory_GetCDNAuthToken_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.depotId_ = 0;
            this.hostName_ = "";
            this.appId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetCDNAuthToken_Request() {
            this.depotId_ = 0;
            this.hostName_ = "";
            this.appId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.hostName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetCDNAuthToken_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public boolean hasDepotId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public int getDepotId() {
            return this.depotId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public boolean hasHostName() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public String getHostName() {
            Object obj = this.hostName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.hostName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public ByteString getHostNameBytes() {
            Object obj = this.hostName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
        public int getAppId() {
            return this.appId_;
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
                codedOutputStream.writeUInt32(1, this.depotId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.hostName_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.appId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.depotId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.hostName_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.appId_);
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
            if (!(obj instanceof CContentServerDirectory_GetCDNAuthToken_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_Request = (CContentServerDirectory_GetCDNAuthToken_Request) obj;
            if (hasDepotId() != cContentServerDirectory_GetCDNAuthToken_Request.hasDepotId()) {
                return false;
            }
            if ((hasDepotId() && getDepotId() != cContentServerDirectory_GetCDNAuthToken_Request.getDepotId()) || hasHostName() != cContentServerDirectory_GetCDNAuthToken_Request.hasHostName()) {
                return false;
            }
            if ((!hasHostName() || getHostName().equals(cContentServerDirectory_GetCDNAuthToken_Request.getHostName())) && hasAppId() == cContentServerDirectory_GetCDNAuthToken_Request.hasAppId()) {
                return (!hasAppId() || getAppId() == cContentServerDirectory_GetCDNAuthToken_Request.getAppId()) && getUnknownFields().equals(cContentServerDirectory_GetCDNAuthToken_Request.getUnknownFields());
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
            if (hasDepotId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getDepotId();
            }
            if (hasHostName()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getHostName().hashCode();
            }
            if (hasAppId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAppId();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetCDNAuthToken_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder {
            private int appId_;
            private int bitField0_;
            private int depotId_;
            private Object hostName_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetCDNAuthToken_Request.class, Builder.class);
            }

            private Builder() {
                this.hostName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.hostName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.depotId_ = 0;
                this.hostName_ = "";
                this.appId_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetCDNAuthToken_Request getDefaultInstanceForType() {
                return CContentServerDirectory_GetCDNAuthToken_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetCDNAuthToken_Request build() {
                CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_GetCDNAuthToken_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetCDNAuthToken_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetCDNAuthToken_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetCDNAuthToken_Request buildPartial() {
                CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_Request = new CContentServerDirectory_GetCDNAuthToken_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetCDNAuthToken_Request);
                }
                onBuilt();
                return cContentServerDirectory_GetCDNAuthToken_Request;
            }

            private void buildPartial0(CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetCDNAuthToken_Request.depotId_ = this.depotId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetCDNAuthToken_Request.hostName_ = this.hostName_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetCDNAuthToken_Request.appId_ = this.appId_;
                    i |= 4;
                }
                cContentServerDirectory_GetCDNAuthToken_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetCDNAuthToken_Request) {
                    return mergeFrom((CContentServerDirectory_GetCDNAuthToken_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_Request) {
                if (cContentServerDirectory_GetCDNAuthToken_Request == CContentServerDirectory_GetCDNAuthToken_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetCDNAuthToken_Request.hasDepotId()) {
                    setDepotId(cContentServerDirectory_GetCDNAuthToken_Request.getDepotId());
                }
                if (cContentServerDirectory_GetCDNAuthToken_Request.hasHostName()) {
                    this.hostName_ = cContentServerDirectory_GetCDNAuthToken_Request.hostName_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cContentServerDirectory_GetCDNAuthToken_Request.hasAppId()) {
                    setAppId(cContentServerDirectory_GetCDNAuthToken_Request.getAppId());
                }
                mergeUnknownFields(cContentServerDirectory_GetCDNAuthToken_Request.getUnknownFields());
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
                                    this.depotId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.hostName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.appId_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public boolean hasDepotId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public int getDepotId() {
                return this.depotId_;
            }

            public Builder setDepotId(int i) {
                this.depotId_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearDepotId() {
                this.bitField0_ &= -2;
                this.depotId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public boolean hasHostName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public String getHostName() {
                Object obj = this.hostName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.hostName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public ByteString getHostNameBytes() {
                Object obj = this.hostName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.hostName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHostName(String str) {
                str.getClass();
                this.hostName_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearHostName() {
                this.hostName_ = CContentServerDirectory_GetCDNAuthToken_Request.getDefaultInstance().getHostName();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setHostNameBytes(ByteString byteString) {
                byteString.getClass();
                this.hostName_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_RequestOrBuilder
            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.appId_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -5;
                this.appId_ = 0;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetCDNAuthToken_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetCDNAuthToken_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetCDNAuthToken_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetCDNAuthToken_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetCDNAuthToken_Response extends GeneratedMessage implements CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder {
        private static final CContentServerDirectory_GetCDNAuthToken_Response DEFAULT_INSTANCE;
        public static final int EXPIRATION_TIME_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_GetCDNAuthToken_Response> PARSER;
        public static final int TOKEN_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int expirationTime_;
        private byte memoizedIsInitialized;
        private volatile Object token_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetCDNAuthToken_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetCDNAuthToken_Response();
            PARSER = new AbstractParser<CContentServerDirectory_GetCDNAuthToken_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetCDNAuthToken_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetCDNAuthToken_Response.newBuilder();
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

        private CContentServerDirectory_GetCDNAuthToken_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.token_ = "";
            this.expirationTime_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetCDNAuthToken_Response() {
            this.token_ = "";
            this.expirationTime_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetCDNAuthToken_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
        public boolean hasExpirationTime() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
        public int getExpirationTime() {
            return this.expirationTime_;
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
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.expirationTime_);
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
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(2, this.expirationTime_);
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
            if (!(obj instanceof CContentServerDirectory_GetCDNAuthToken_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_Response = (CContentServerDirectory_GetCDNAuthToken_Response) obj;
            if (hasToken() != cContentServerDirectory_GetCDNAuthToken_Response.hasToken()) {
                return false;
            }
            if ((!hasToken() || getToken().equals(cContentServerDirectory_GetCDNAuthToken_Response.getToken())) && hasExpirationTime() == cContentServerDirectory_GetCDNAuthToken_Response.hasExpirationTime()) {
                return (!hasExpirationTime() || getExpirationTime() == cContentServerDirectory_GetCDNAuthToken_Response.getExpirationTime()) && getUnknownFields().equals(cContentServerDirectory_GetCDNAuthToken_Response.getUnknownFields());
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
            if (hasExpirationTime()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getExpirationTime();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetCDNAuthToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetCDNAuthToken_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder {
            private int bitField0_;
            private int expirationTime_;
            private Object token_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetCDNAuthToken_Response.class, Builder.class);
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
                this.expirationTime_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetCDNAuthToken_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetCDNAuthToken_Response getDefaultInstanceForType() {
                return CContentServerDirectory_GetCDNAuthToken_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetCDNAuthToken_Response build() {
                CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_GetCDNAuthToken_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetCDNAuthToken_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetCDNAuthToken_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetCDNAuthToken_Response buildPartial() {
                CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_Response = new CContentServerDirectory_GetCDNAuthToken_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetCDNAuthToken_Response);
                }
                onBuilt();
                return cContentServerDirectory_GetCDNAuthToken_Response;
            }

            private void buildPartial0(CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetCDNAuthToken_Response.token_ = this.token_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetCDNAuthToken_Response.expirationTime_ = this.expirationTime_;
                    i |= 2;
                }
                cContentServerDirectory_GetCDNAuthToken_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetCDNAuthToken_Response) {
                    return mergeFrom((CContentServerDirectory_GetCDNAuthToken_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_Response) {
                if (cContentServerDirectory_GetCDNAuthToken_Response == CContentServerDirectory_GetCDNAuthToken_Response.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetCDNAuthToken_Response.hasToken()) {
                    this.token_ = cContentServerDirectory_GetCDNAuthToken_Response.token_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cContentServerDirectory_GetCDNAuthToken_Response.hasExpirationTime()) {
                    setExpirationTime(cContentServerDirectory_GetCDNAuthToken_Response.getExpirationTime());
                }
                mergeUnknownFields(cContentServerDirectory_GetCDNAuthToken_Response.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.expirationTime_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
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
                this.token_ = CContentServerDirectory_GetCDNAuthToken_Response.getDefaultInstance().getToken();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
            public boolean hasExpirationTime() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_ResponseOrBuilder
            public int getExpirationTime() {
                return this.expirationTime_;
            }

            public Builder setExpirationTime(int i) {
                this.expirationTime_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearExpirationTime() {
                this.bitField0_ &= -3;
                this.expirationTime_ = 0;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetCDNAuthToken_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetCDNAuthToken_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetCDNAuthToken_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetCDNAuthToken_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_RequestPeerContentServer_Request extends GeneratedMessage implements CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 4;
        public static final int CURRENT_BUILD_ID_FIELD_NUMBER = 5;
        private static final CContentServerDirectory_RequestPeerContentServer_Request DEFAULT_INSTANCE;
        private static final Parser<CContentServerDirectory_RequestPeerContentServer_Request> PARSER;
        public static final int REMOTE_CLIENT_ID_FIELD_NUMBER = 1;
        public static final int SERVER_REMOTE_CLIENT_ID_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int currentBuildId_;
        private byte memoizedIsInitialized;
        private long remoteClientId_;
        private long serverRemoteClientId_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_RequestPeerContentServer_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_RequestPeerContentServer_Request();
            PARSER = new AbstractParser<CContentServerDirectory_RequestPeerContentServer_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_RequestPeerContentServer_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_RequestPeerContentServer_Request.newBuilder();
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

        private CContentServerDirectory_RequestPeerContentServer_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.remoteClientId_ = 0L;
            this.steamid_ = 0L;
            this.serverRemoteClientId_ = 0L;
            this.appId_ = 0;
            this.currentBuildId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_RequestPeerContentServer_Request() {
            this.remoteClientId_ = 0L;
            this.steamid_ = 0L;
            this.serverRemoteClientId_ = 0L;
            this.appId_ = 0;
            this.currentBuildId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_RequestPeerContentServer_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public boolean hasRemoteClientId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public long getRemoteClientId() {
            return this.remoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public boolean hasServerRemoteClientId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public long getServerRemoteClientId() {
            return this.serverRemoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public boolean hasCurrentBuildId() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
        public int getCurrentBuildId() {
            return this.currentBuildId_;
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
                codedOutputStream.writeUInt64(1, this.remoteClientId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.serverRemoteClientId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.appId_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.currentBuildId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.remoteClientId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(3, this.serverRemoteClientId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(4, this.appId_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(5, this.currentBuildId_);
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
            if (!(obj instanceof CContentServerDirectory_RequestPeerContentServer_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_Request = (CContentServerDirectory_RequestPeerContentServer_Request) obj;
            if (hasRemoteClientId() != cContentServerDirectory_RequestPeerContentServer_Request.hasRemoteClientId()) {
                return false;
            }
            if ((hasRemoteClientId() && getRemoteClientId() != cContentServerDirectory_RequestPeerContentServer_Request.getRemoteClientId()) || hasSteamid() != cContentServerDirectory_RequestPeerContentServer_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cContentServerDirectory_RequestPeerContentServer_Request.getSteamid()) || hasServerRemoteClientId() != cContentServerDirectory_RequestPeerContentServer_Request.hasServerRemoteClientId()) {
                return false;
            }
            if ((hasServerRemoteClientId() && getServerRemoteClientId() != cContentServerDirectory_RequestPeerContentServer_Request.getServerRemoteClientId()) || hasAppId() != cContentServerDirectory_RequestPeerContentServer_Request.hasAppId()) {
                return false;
            }
            if ((!hasAppId() || getAppId() == cContentServerDirectory_RequestPeerContentServer_Request.getAppId()) && hasCurrentBuildId() == cContentServerDirectory_RequestPeerContentServer_Request.hasCurrentBuildId()) {
                return (!hasCurrentBuildId() || getCurrentBuildId() == cContentServerDirectory_RequestPeerContentServer_Request.getCurrentBuildId()) && getUnknownFields().equals(cContentServerDirectory_RequestPeerContentServer_Request.getUnknownFields());
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
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasServerRemoteClientId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getServerRemoteClientId());
            }
            if (hasAppId()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getAppId();
            }
            if (hasCurrentBuildId()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getCurrentBuildId();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_RequestPeerContentServer_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder {
            private int appId_;
            private int bitField0_;
            private int currentBuildId_;
            private long remoteClientId_;
            private long serverRemoteClientId_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_RequestPeerContentServer_Request.class, Builder.class);
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
                this.remoteClientId_ = 0L;
                this.steamid_ = 0L;
                this.serverRemoteClientId_ = 0L;
                this.appId_ = 0;
                this.currentBuildId_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_RequestPeerContentServer_Request getDefaultInstanceForType() {
                return CContentServerDirectory_RequestPeerContentServer_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_RequestPeerContentServer_Request build() {
                CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_RequestPeerContentServer_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_RequestPeerContentServer_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_RequestPeerContentServer_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_RequestPeerContentServer_Request buildPartial() {
                CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_Request = new CContentServerDirectory_RequestPeerContentServer_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_RequestPeerContentServer_Request);
                }
                onBuilt();
                return cContentServerDirectory_RequestPeerContentServer_Request;
            }

            private void buildPartial0(CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Request.remoteClientId_ = this.remoteClientId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Request.serverRemoteClientId_ = this.serverRemoteClientId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Request.appId_ = this.appId_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Request.currentBuildId_ = this.currentBuildId_;
                    i |= 16;
                }
                cContentServerDirectory_RequestPeerContentServer_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_RequestPeerContentServer_Request) {
                    return mergeFrom((CContentServerDirectory_RequestPeerContentServer_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_Request) {
                if (cContentServerDirectory_RequestPeerContentServer_Request == CContentServerDirectory_RequestPeerContentServer_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_RequestPeerContentServer_Request.hasRemoteClientId()) {
                    setRemoteClientId(cContentServerDirectory_RequestPeerContentServer_Request.getRemoteClientId());
                }
                if (cContentServerDirectory_RequestPeerContentServer_Request.hasSteamid()) {
                    setSteamid(cContentServerDirectory_RequestPeerContentServer_Request.getSteamid());
                }
                if (cContentServerDirectory_RequestPeerContentServer_Request.hasServerRemoteClientId()) {
                    setServerRemoteClientId(cContentServerDirectory_RequestPeerContentServer_Request.getServerRemoteClientId());
                }
                if (cContentServerDirectory_RequestPeerContentServer_Request.hasAppId()) {
                    setAppId(cContentServerDirectory_RequestPeerContentServer_Request.getAppId());
                }
                if (cContentServerDirectory_RequestPeerContentServer_Request.hasCurrentBuildId()) {
                    setCurrentBuildId(cContentServerDirectory_RequestPeerContentServer_Request.getCurrentBuildId());
                }
                mergeUnknownFields(cContentServerDirectory_RequestPeerContentServer_Request.getUnknownFields());
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
                                    this.remoteClientId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.serverRemoteClientId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.currentBuildId_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public boolean hasRemoteClientId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public boolean hasServerRemoteClientId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public long getServerRemoteClientId() {
                return this.serverRemoteClientId_;
            }

            public Builder setServerRemoteClientId(long j) {
                this.serverRemoteClientId_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearServerRemoteClientId() {
                this.bitField0_ &= -5;
                this.serverRemoteClientId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.appId_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -9;
                this.appId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public boolean hasCurrentBuildId() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_RequestOrBuilder
            public int getCurrentBuildId() {
                return this.currentBuildId_;
            }

            public Builder setCurrentBuildId(int i) {
                this.currentBuildId_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearCurrentBuildId() {
                this.bitField0_ &= -17;
                this.currentBuildId_ = 0;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_RequestPeerContentServer_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_RequestPeerContentServer_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_RequestPeerContentServer_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_RequestPeerContentServer_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_RequestPeerContentServer_Response extends GeneratedMessage implements CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder {
        public static final int ACCESS_TOKEN_FIELD_NUMBER = 3;
        private static final CContentServerDirectory_RequestPeerContentServer_Response DEFAULT_INSTANCE;
        public static final int INSTALLED_DEPOTS_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_RequestPeerContentServer_Response> PARSER;
        public static final int SERVER_PORT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long accessToken_;
        private int bitField0_;
        private Internal.IntList installedDepots_;
        private byte memoizedIsInitialized;
        private int serverPort_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_RequestPeerContentServer_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_RequestPeerContentServer_Response();
            PARSER = new AbstractParser<CContentServerDirectory_RequestPeerContentServer_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_RequestPeerContentServer_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_RequestPeerContentServer_Response.newBuilder();
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

        private CContentServerDirectory_RequestPeerContentServer_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.serverPort_ = 0;
            this.installedDepots_ = GeneratedMessage.emptyIntList();
            this.accessToken_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_RequestPeerContentServer_Response() {
            this.serverPort_ = 0;
            this.installedDepots_ = GeneratedMessage.emptyIntList();
            this.accessToken_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.installedDepots_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_RequestPeerContentServer_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public boolean hasServerPort() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public int getServerPort() {
            return this.serverPort_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public List<Integer> getInstalledDepotsList() {
            return this.installedDepots_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public int getInstalledDepotsCount() {
            return this.installedDepots_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public int getInstalledDepots(int i) {
            return this.installedDepots_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public boolean hasAccessToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
        public long getAccessToken() {
            return this.accessToken_;
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
                codedOutputStream.writeUInt32(1, this.serverPort_);
            }
            for (int i = 0; i < this.installedDepots_.size(); i++) {
                codedOutputStream.writeUInt32(2, this.installedDepots_.getInt(i));
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(3, this.accessToken_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.serverPort_) : 0;
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.installedDepots_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.installedDepots_.getInt(i2));
            }
            int size = iComputeUInt32Size + iComputeUInt32SizeNoTag + getInstalledDepotsList().size();
            if ((this.bitField0_ & 2) != 0) {
                size += CodedOutputStream.computeUInt64Size(3, this.accessToken_);
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
            if (!(obj instanceof CContentServerDirectory_RequestPeerContentServer_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_Response = (CContentServerDirectory_RequestPeerContentServer_Response) obj;
            if (hasServerPort() != cContentServerDirectory_RequestPeerContentServer_Response.hasServerPort()) {
                return false;
            }
            if ((!hasServerPort() || getServerPort() == cContentServerDirectory_RequestPeerContentServer_Response.getServerPort()) && getInstalledDepotsList().equals(cContentServerDirectory_RequestPeerContentServer_Response.getInstalledDepotsList()) && hasAccessToken() == cContentServerDirectory_RequestPeerContentServer_Response.hasAccessToken()) {
                return (!hasAccessToken() || getAccessToken() == cContentServerDirectory_RequestPeerContentServer_Response.getAccessToken()) && getUnknownFields().equals(cContentServerDirectory_RequestPeerContentServer_Response.getUnknownFields());
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
            if (hasServerPort()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getServerPort();
            }
            if (getInstalledDepotsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getInstalledDepotsList().hashCode();
            }
            if (hasAccessToken()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getAccessToken());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_RequestPeerContentServer_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_RequestPeerContentServer_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder {
            private long accessToken_;
            private int bitField0_;
            private Internal.IntList installedDepots_;
            private int serverPort_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_RequestPeerContentServer_Response.class, Builder.class);
            }

            private Builder() {
                this.installedDepots_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.installedDepots_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.serverPort_ = 0;
                this.installedDepots_ = GeneratedMessage.emptyIntList();
                this.accessToken_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_RequestPeerContentServer_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_RequestPeerContentServer_Response getDefaultInstanceForType() {
                return CContentServerDirectory_RequestPeerContentServer_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_RequestPeerContentServer_Response build() {
                CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_RequestPeerContentServer_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_RequestPeerContentServer_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_RequestPeerContentServer_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_RequestPeerContentServer_Response buildPartial() {
                CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_Response = new CContentServerDirectory_RequestPeerContentServer_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_RequestPeerContentServer_Response);
                }
                onBuilt();
                return cContentServerDirectory_RequestPeerContentServer_Response;
            }

            private void buildPartial0(CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Response.serverPort_ = this.serverPort_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    this.installedDepots_.makeImmutable();
                    cContentServerDirectory_RequestPeerContentServer_Response.installedDepots_ = this.installedDepots_;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_RequestPeerContentServer_Response.accessToken_ = this.accessToken_;
                    i |= 2;
                }
                cContentServerDirectory_RequestPeerContentServer_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_RequestPeerContentServer_Response) {
                    return mergeFrom((CContentServerDirectory_RequestPeerContentServer_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_Response) {
                if (cContentServerDirectory_RequestPeerContentServer_Response == CContentServerDirectory_RequestPeerContentServer_Response.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_RequestPeerContentServer_Response.hasServerPort()) {
                    setServerPort(cContentServerDirectory_RequestPeerContentServer_Response.getServerPort());
                }
                if (!cContentServerDirectory_RequestPeerContentServer_Response.installedDepots_.isEmpty()) {
                    if (this.installedDepots_.isEmpty()) {
                        Internal.IntList intList = cContentServerDirectory_RequestPeerContentServer_Response.installedDepots_;
                        this.installedDepots_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureInstalledDepotsIsMutable();
                        this.installedDepots_.addAll(cContentServerDirectory_RequestPeerContentServer_Response.installedDepots_);
                    }
                    onChanged();
                }
                if (cContentServerDirectory_RequestPeerContentServer_Response.hasAccessToken()) {
                    setAccessToken(cContentServerDirectory_RequestPeerContentServer_Response.getAccessToken());
                }
                mergeUnknownFields(cContentServerDirectory_RequestPeerContentServer_Response.getUnknownFields());
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
                                    this.serverPort_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureInstalledDepotsIsMutable();
                                    this.installedDepots_.addInt(uInt32);
                                } else if (tag == 18) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureInstalledDepotsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.installedDepots_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 24) {
                                    this.accessToken_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public boolean hasServerPort() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public int getServerPort() {
                return this.serverPort_;
            }

            public Builder setServerPort(int i) {
                this.serverPort_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearServerPort() {
                this.bitField0_ &= -2;
                this.serverPort_ = 0;
                onChanged();
                return this;
            }

            private void ensureInstalledDepotsIsMutable() {
                if (!this.installedDepots_.isModifiable()) {
                    this.installedDepots_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.installedDepots_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public List<Integer> getInstalledDepotsList() {
                this.installedDepots_.makeImmutable();
                return this.installedDepots_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public int getInstalledDepotsCount() {
                return this.installedDepots_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public int getInstalledDepots(int i) {
                return this.installedDepots_.getInt(i);
            }

            public Builder setInstalledDepots(int i, int i2) {
                ensureInstalledDepotsIsMutable();
                this.installedDepots_.setInt(i, i2);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addInstalledDepots(int i) {
                ensureInstalledDepotsIsMutable();
                this.installedDepots_.addInt(i);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllInstalledDepots(Iterable<? extends Integer> iterable) {
                ensureInstalledDepotsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.installedDepots_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearInstalledDepots() {
                this.installedDepots_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_ResponseOrBuilder
            public long getAccessToken() {
                return this.accessToken_;
            }

            public Builder setAccessToken(long j) {
                this.accessToken_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearAccessToken() {
                this.bitField0_ &= -5;
                this.accessToken_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_RequestPeerContentServer_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_RequestPeerContentServer_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_RequestPeerContentServer_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_RequestPeerContentServer_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetPeerContentInfo_Request extends GeneratedMessage implements CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder {
        private static final CContentServerDirectory_GetPeerContentInfo_Request DEFAULT_INSTANCE;
        private static final Parser<CContentServerDirectory_GetPeerContentInfo_Request> PARSER;
        public static final int REMOTE_CLIENT_ID_FIELD_NUMBER = 1;
        public static final int SERVER_REMOTE_CLIENT_ID_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long remoteClientId_;
        private long serverRemoteClientId_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetPeerContentInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetPeerContentInfo_Request();
            PARSER = new AbstractParser<CContentServerDirectory_GetPeerContentInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetPeerContentInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetPeerContentInfo_Request.newBuilder();
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

        private CContentServerDirectory_GetPeerContentInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.remoteClientId_ = 0L;
            this.steamid_ = 0L;
            this.serverRemoteClientId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetPeerContentInfo_Request() {
            this.remoteClientId_ = 0L;
            this.steamid_ = 0L;
            this.serverRemoteClientId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetPeerContentInfo_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
        public boolean hasRemoteClientId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
        public long getRemoteClientId() {
            return this.remoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
        public boolean hasServerRemoteClientId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
        public long getServerRemoteClientId() {
            return this.serverRemoteClientId_;
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
                codedOutputStream.writeUInt64(1, this.remoteClientId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.serverRemoteClientId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.remoteClientId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(3, this.serverRemoteClientId_);
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
            if (!(obj instanceof CContentServerDirectory_GetPeerContentInfo_Request)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_Request = (CContentServerDirectory_GetPeerContentInfo_Request) obj;
            if (hasRemoteClientId() != cContentServerDirectory_GetPeerContentInfo_Request.hasRemoteClientId()) {
                return false;
            }
            if ((hasRemoteClientId() && getRemoteClientId() != cContentServerDirectory_GetPeerContentInfo_Request.getRemoteClientId()) || hasSteamid() != cContentServerDirectory_GetPeerContentInfo_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cContentServerDirectory_GetPeerContentInfo_Request.getSteamid()) && hasServerRemoteClientId() == cContentServerDirectory_GetPeerContentInfo_Request.hasServerRemoteClientId()) {
                return (!hasServerRemoteClientId() || getServerRemoteClientId() == cContentServerDirectory_GetPeerContentInfo_Request.getServerRemoteClientId()) && getUnknownFields().equals(cContentServerDirectory_GetPeerContentInfo_Request.getUnknownFields());
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
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasServerRemoteClientId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getServerRemoteClientId());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetPeerContentInfo_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder {
            private int bitField0_;
            private long remoteClientId_;
            private long serverRemoteClientId_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetPeerContentInfo_Request.class, Builder.class);
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
                this.remoteClientId_ = 0L;
                this.steamid_ = 0L;
                this.serverRemoteClientId_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetPeerContentInfo_Request getDefaultInstanceForType() {
                return CContentServerDirectory_GetPeerContentInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetPeerContentInfo_Request build() {
                CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_RequestBuildPartial = buildPartial();
                if (cContentServerDirectory_GetPeerContentInfo_RequestBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetPeerContentInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetPeerContentInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetPeerContentInfo_Request buildPartial() {
                CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_Request = new CContentServerDirectory_GetPeerContentInfo_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetPeerContentInfo_Request);
                }
                onBuilt();
                return cContentServerDirectory_GetPeerContentInfo_Request;
            }

            private void buildPartial0(CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cContentServerDirectory_GetPeerContentInfo_Request.remoteClientId_ = this.remoteClientId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetPeerContentInfo_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cContentServerDirectory_GetPeerContentInfo_Request.serverRemoteClientId_ = this.serverRemoteClientId_;
                    i |= 4;
                }
                cContentServerDirectory_GetPeerContentInfo_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetPeerContentInfo_Request) {
                    return mergeFrom((CContentServerDirectory_GetPeerContentInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_Request) {
                if (cContentServerDirectory_GetPeerContentInfo_Request == CContentServerDirectory_GetPeerContentInfo_Request.getDefaultInstance()) {
                    return this;
                }
                if (cContentServerDirectory_GetPeerContentInfo_Request.hasRemoteClientId()) {
                    setRemoteClientId(cContentServerDirectory_GetPeerContentInfo_Request.getRemoteClientId());
                }
                if (cContentServerDirectory_GetPeerContentInfo_Request.hasSteamid()) {
                    setSteamid(cContentServerDirectory_GetPeerContentInfo_Request.getSteamid());
                }
                if (cContentServerDirectory_GetPeerContentInfo_Request.hasServerRemoteClientId()) {
                    setServerRemoteClientId(cContentServerDirectory_GetPeerContentInfo_Request.getServerRemoteClientId());
                }
                mergeUnknownFields(cContentServerDirectory_GetPeerContentInfo_Request.getUnknownFields());
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
                                    this.remoteClientId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.serverRemoteClientId_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
            public boolean hasRemoteClientId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
            public boolean hasServerRemoteClientId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_RequestOrBuilder
            public long getServerRemoteClientId() {
                return this.serverRemoteClientId_;
            }

            public Builder setServerRemoteClientId(long j) {
                this.serverRemoteClientId_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearServerRemoteClientId() {
                this.bitField0_ &= -5;
                this.serverRemoteClientId_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetPeerContentInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetPeerContentInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetPeerContentInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetPeerContentInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CContentServerDirectory_GetPeerContentInfo_Response extends GeneratedMessage implements CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder {
        public static final int APPIDS_FIELD_NUMBER = 1;
        private static final CContentServerDirectory_GetPeerContentInfo_Response DEFAULT_INSTANCE;
        public static final int IP_PUBLIC_FIELD_NUMBER = 2;
        private static final Parser<CContentServerDirectory_GetPeerContentInfo_Response> PARSER;
        private static final long serialVersionUID = 0;
        private Internal.IntList appids_;
        private int bitField0_;
        private volatile Object ipPublic_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CContentServerDirectory_GetPeerContentInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CContentServerDirectory_GetPeerContentInfo_Response();
            PARSER = new AbstractParser<CContentServerDirectory_GetPeerContentInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CContentServerDirectory_GetPeerContentInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CContentServerDirectory_GetPeerContentInfo_Response.newBuilder();
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

        private CContentServerDirectory_GetPeerContentInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appids_ = GeneratedMessage.emptyIntList();
            this.ipPublic_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CContentServerDirectory_GetPeerContentInfo_Response() {
            this.appids_ = GeneratedMessage.emptyIntList();
            this.ipPublic_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.appids_ = GeneratedMessage.emptyIntList();
            this.ipPublic_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetPeerContentInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
        public List<Integer> getAppidsList() {
            return this.appids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
        public int getAppidsCount() {
            return this.appids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
        public int getAppids(int i) {
            return this.appids_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
        public boolean hasIpPublic() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
        public String getIpPublic() {
            Object obj = this.ipPublic_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipPublic_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
        public ByteString getIpPublicBytes() {
            Object obj = this.ipPublic_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipPublic_ = byteStringCopyFromUtf8;
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
            for (int i = 0; i < this.appids_.size(); i++) {
                codedOutputStream.writeUInt32(1, this.appids_.getInt(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.ipPublic_);
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
            for (int i2 = 0; i2 < this.appids_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.appids_.getInt(i2));
            }
            int size = iComputeUInt32SizeNoTag + getAppidsList().size();
            if ((this.bitField0_ & 1) != 0) {
                size += GeneratedMessage.computeStringSize(2, this.ipPublic_);
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
            if (!(obj instanceof CContentServerDirectory_GetPeerContentInfo_Response)) {
                return super.equals(obj);
            }
            CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_Response = (CContentServerDirectory_GetPeerContentInfo_Response) obj;
            if (getAppidsList().equals(cContentServerDirectory_GetPeerContentInfo_Response.getAppidsList()) && hasIpPublic() == cContentServerDirectory_GetPeerContentInfo_Response.hasIpPublic()) {
                return (!hasIpPublic() || getIpPublic().equals(cContentServerDirectory_GetPeerContentInfo_Response.getIpPublic())) && getUnknownFields().equals(cContentServerDirectory_GetPeerContentInfo_Response.getUnknownFields());
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
            if (getAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppidsList().hashCode();
            }
            if (hasIpPublic()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getIpPublic().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CContentServerDirectory_GetPeerContentInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cContentServerDirectory_GetPeerContentInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder {
            private Internal.IntList appids_;
            private int bitField0_;
            private Object ipPublic_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CContentServerDirectory_GetPeerContentInfo_Response.class, Builder.class);
            }

            private Builder() {
                this.appids_ = GeneratedMessage.emptyIntList();
                this.ipPublic_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.appids_ = GeneratedMessage.emptyIntList();
                this.ipPublic_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appids_ = GeneratedMessage.emptyIntList();
                this.ipPublic_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CContentServerDirectory_GetPeerContentInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CContentServerDirectory_GetPeerContentInfo_Response getDefaultInstanceForType() {
                return CContentServerDirectory_GetPeerContentInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetPeerContentInfo_Response build() {
                CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_ResponseBuildPartial = buildPartial();
                if (cContentServerDirectory_GetPeerContentInfo_ResponseBuildPartial.isInitialized()) {
                    return cContentServerDirectory_GetPeerContentInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cContentServerDirectory_GetPeerContentInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CContentServerDirectory_GetPeerContentInfo_Response buildPartial() {
                CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_Response = new CContentServerDirectory_GetPeerContentInfo_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cContentServerDirectory_GetPeerContentInfo_Response);
                }
                onBuilt();
                return cContentServerDirectory_GetPeerContentInfo_Response;
            }

            private void buildPartial0(CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    this.appids_.makeImmutable();
                    cContentServerDirectory_GetPeerContentInfo_Response.appids_ = this.appids_;
                }
                if ((i2 & 2) != 0) {
                    cContentServerDirectory_GetPeerContentInfo_Response.ipPublic_ = this.ipPublic_;
                    i = 1;
                } else {
                    i = 0;
                }
                cContentServerDirectory_GetPeerContentInfo_Response.bitField0_ = i | cContentServerDirectory_GetPeerContentInfo_Response.bitField0_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CContentServerDirectory_GetPeerContentInfo_Response) {
                    return mergeFrom((CContentServerDirectory_GetPeerContentInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_Response) {
                if (cContentServerDirectory_GetPeerContentInfo_Response == CContentServerDirectory_GetPeerContentInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (!cContentServerDirectory_GetPeerContentInfo_Response.appids_.isEmpty()) {
                    if (this.appids_.isEmpty()) {
                        Internal.IntList intList = cContentServerDirectory_GetPeerContentInfo_Response.appids_;
                        this.appids_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 1;
                    } else {
                        ensureAppidsIsMutable();
                        this.appids_.addAll(cContentServerDirectory_GetPeerContentInfo_Response.appids_);
                    }
                    onChanged();
                }
                if (cContentServerDirectory_GetPeerContentInfo_Response.hasIpPublic()) {
                    this.ipPublic_ = cContentServerDirectory_GetPeerContentInfo_Response.ipPublic_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cContentServerDirectory_GetPeerContentInfo_Response.getUnknownFields());
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
                                    ensureAppidsIsMutable();
                                    this.appids_.addInt(uInt32);
                                } else if (tag == 10) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.appids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 18) {
                                    this.ipPublic_ = codedInputStream.readBytes();
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

            private void ensureAppidsIsMutable() {
                if (!this.appids_.isModifiable()) {
                    this.appids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.appids_);
                }
                this.bitField0_ |= 1;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
            public List<Integer> getAppidsList() {
                this.appids_.makeImmutable();
                return this.appids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
            public int getAppidsCount() {
                return this.appids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
            public int getAppids(int i) {
                return this.appids_.getInt(i);
            }

            public Builder setAppids(int i, int i2) {
                ensureAppidsIsMutable();
                this.appids_.setInt(i, i2);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAppids(int i) {
                ensureAppidsIsMutable();
                this.appids_.addInt(i);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAllAppids(Iterable<? extends Integer> iterable) {
                ensureAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.appids_);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppids() {
                this.appids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
            public boolean hasIpPublic() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
            public String getIpPublic() {
                Object obj = this.ipPublic_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.ipPublic_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_ResponseOrBuilder
            public ByteString getIpPublicBytes() {
                Object obj = this.ipPublic_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipPublic_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIpPublic(String str) {
                str.getClass();
                this.ipPublic_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIpPublic() {
                this.ipPublic_ = CContentServerDirectory_GetPeerContentInfo_Response.getDefaultInstance().getIpPublic();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setIpPublicBytes(ByteString byteString) {
                byteString.getClass();
                this.ipPublic_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CContentServerDirectory_GetPeerContentInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CContentServerDirectory_GetPeerContentInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CContentServerDirectory_GetPeerContentInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CContentServerDirectory_GetPeerContentInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CDepotContentDetection_GetAllDetectedAppContent_Request extends GeneratedMessage implements CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder {
        private static final CDepotContentDetection_GetAllDetectedAppContent_Request DEFAULT_INSTANCE;
        public static final int DETECTION_TYPE_FIELD_NUMBER = 1;
        private static final Parser<CDepotContentDetection_GetAllDetectedAppContent_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int detectionType_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CDepotContentDetection_GetAllDetectedAppContent_Request.class.getName());
            DEFAULT_INSTANCE = new CDepotContentDetection_GetAllDetectedAppContent_Request();
            PARSER = new AbstractParser<CDepotContentDetection_GetAllDetectedAppContent_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_Request.1
                @Override // com.google.protobuf.Parser
                public CDepotContentDetection_GetAllDetectedAppContent_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CDepotContentDetection_GetAllDetectedAppContent_Request.newBuilder();
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

        private CDepotContentDetection_GetAllDetectedAppContent_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.detectionType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CDepotContentDetection_GetAllDetectedAppContent_Request() {
            this.memoizedIsInitialized = (byte) -1;
            this.detectionType_ = 0;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetAllDetectedAppContent_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder
        public boolean hasDetectionType() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder
        public EAppContentDetectionType getDetectionType() {
            EAppContentDetectionType eAppContentDetectionTypeForNumber = EAppContentDetectionType.forNumber(this.detectionType_);
            return eAppContentDetectionTypeForNumber == null ? EAppContentDetectionType.k_EAppContentDetectionType_None : eAppContentDetectionTypeForNumber;
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
                codedOutputStream.writeEnum(1, this.detectionType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeEnumSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeEnumSize(1, this.detectionType_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeEnumSize;
            return iComputeEnumSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CDepotContentDetection_GetAllDetectedAppContent_Request)) {
                return super.equals(obj);
            }
            CDepotContentDetection_GetAllDetectedAppContent_Request cDepotContentDetection_GetAllDetectedAppContent_Request = (CDepotContentDetection_GetAllDetectedAppContent_Request) obj;
            if (hasDetectionType() != cDepotContentDetection_GetAllDetectedAppContent_Request.hasDetectionType()) {
                return false;
            }
            return (!hasDetectionType() || this.detectionType_ == cDepotContentDetection_GetAllDetectedAppContent_Request.detectionType_) && getUnknownFields().equals(cDepotContentDetection_GetAllDetectedAppContent_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasDetectionType()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + this.detectionType_;
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CDepotContentDetection_GetAllDetectedAppContent_Request cDepotContentDetection_GetAllDetectedAppContent_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cDepotContentDetection_GetAllDetectedAppContent_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder {
            private int bitField0_;
            private int detectionType_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetAllDetectedAppContent_Request.class, Builder.class);
            }

            private Builder() {
                this.detectionType_ = 0;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.detectionType_ = 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.detectionType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CDepotContentDetection_GetAllDetectedAppContent_Request getDefaultInstanceForType() {
                return CDepotContentDetection_GetAllDetectedAppContent_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetAllDetectedAppContent_Request build() {
                CDepotContentDetection_GetAllDetectedAppContent_Request cDepotContentDetection_GetAllDetectedAppContent_RequestBuildPartial = buildPartial();
                if (cDepotContentDetection_GetAllDetectedAppContent_RequestBuildPartial.isInitialized()) {
                    return cDepotContentDetection_GetAllDetectedAppContent_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cDepotContentDetection_GetAllDetectedAppContent_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetAllDetectedAppContent_Request buildPartial() {
                CDepotContentDetection_GetAllDetectedAppContent_Request cDepotContentDetection_GetAllDetectedAppContent_Request = new CDepotContentDetection_GetAllDetectedAppContent_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cDepotContentDetection_GetAllDetectedAppContent_Request);
                }
                onBuilt();
                return cDepotContentDetection_GetAllDetectedAppContent_Request;
            }

            private void buildPartial0(CDepotContentDetection_GetAllDetectedAppContent_Request cDepotContentDetection_GetAllDetectedAppContent_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cDepotContentDetection_GetAllDetectedAppContent_Request.detectionType_ = this.detectionType_;
                } else {
                    i = 0;
                }
                cDepotContentDetection_GetAllDetectedAppContent_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CDepotContentDetection_GetAllDetectedAppContent_Request) {
                    return mergeFrom((CDepotContentDetection_GetAllDetectedAppContent_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CDepotContentDetection_GetAllDetectedAppContent_Request cDepotContentDetection_GetAllDetectedAppContent_Request) {
                if (cDepotContentDetection_GetAllDetectedAppContent_Request == CDepotContentDetection_GetAllDetectedAppContent_Request.getDefaultInstance()) {
                    return this;
                }
                if (cDepotContentDetection_GetAllDetectedAppContent_Request.hasDetectionType()) {
                    setDetectionType(cDepotContentDetection_GetAllDetectedAppContent_Request.getDetectionType());
                }
                mergeUnknownFields(cDepotContentDetection_GetAllDetectedAppContent_Request.getUnknownFields());
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
                                    if (EAppContentDetectionType.forNumber(i) == null) {
                                        mergeUnknownVarintField(1, i);
                                    } else {
                                        this.detectionType_ = i;
                                        this.bitField0_ |= 1;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder
            public boolean hasDetectionType() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_RequestOrBuilder
            public EAppContentDetectionType getDetectionType() {
                EAppContentDetectionType eAppContentDetectionTypeForNumber = EAppContentDetectionType.forNumber(this.detectionType_);
                return eAppContentDetectionTypeForNumber == null ? EAppContentDetectionType.k_EAppContentDetectionType_None : eAppContentDetectionTypeForNumber;
            }

            public Builder setDetectionType(EAppContentDetectionType eAppContentDetectionType) {
                eAppContentDetectionType.getClass();
                this.bitField0_ |= 1;
                this.detectionType_ = eAppContentDetectionType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearDetectionType() {
                this.bitField0_ &= -2;
                this.detectionType_ = 0;
                onChanged();
                return this;
            }
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CDepotContentDetection_GetAllDetectedAppContent_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CDepotContentDetection_GetAllDetectedAppContent_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CDepotContentDetection_GetAllDetectedAppContent_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class DetectedAppContent extends GeneratedMessage implements DetectedAppContentOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final DetectedAppContent DEFAULT_INSTANCE;
        public static final int DEPOT_ID_FIELD_NUMBER = 2;
        public static final int DETECTED_CONTENT_FIELD_NUMBER = 3;
        private static final Parser<DetectedAppContent> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int depotId_;
        private int detectedContent_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", DetectedAppContent.class.getName());
            DEFAULT_INSTANCE = new DetectedAppContent();
            PARSER = new AbstractParser<DetectedAppContent>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContent.1
                @Override // com.google.protobuf.Parser
                public DetectedAppContent parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = DetectedAppContent.newBuilder();
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

        private DetectedAppContent(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.depotId_ = 0;
            this.detectedContent_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private DetectedAppContent() {
            this.appId_ = 0;
            this.depotId_ = 0;
            this.detectedContent_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_DetectedAppContent_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_DetectedAppContent_fieldAccessorTable.ensureFieldAccessorsInitialized(DetectedAppContent.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
        public boolean hasDepotId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
        public int getDepotId() {
            return this.depotId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
        public boolean hasDetectedContent() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
        public int getDetectedContent() {
            return this.detectedContent_;
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
                codedOutputStream.writeUInt32(2, this.depotId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.detectedContent_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.depotId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.detectedContent_);
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
            if (!(obj instanceof DetectedAppContent)) {
                return super.equals(obj);
            }
            DetectedAppContent detectedAppContent = (DetectedAppContent) obj;
            if (hasAppId() != detectedAppContent.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != detectedAppContent.getAppId()) || hasDepotId() != detectedAppContent.hasDepotId()) {
                return false;
            }
            if ((!hasDepotId() || getDepotId() == detectedAppContent.getDepotId()) && hasDetectedContent() == detectedAppContent.hasDetectedContent()) {
                return (!hasDetectedContent() || getDetectedContent() == detectedAppContent.getDetectedContent()) && getUnknownFields().equals(detectedAppContent.getUnknownFields());
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
            if (hasDepotId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDepotId();
            }
            if (hasDetectedContent()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDetectedContent();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static DetectedAppContent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static DetectedAppContent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static DetectedAppContent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static DetectedAppContent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DetectedAppContent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static DetectedAppContent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DetectedAppContent parseFrom(InputStream inputStream) throws IOException {
            return (DetectedAppContent) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static DetectedAppContent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DetectedAppContent) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DetectedAppContent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DetectedAppContent) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DetectedAppContent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DetectedAppContent) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DetectedAppContent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DetectedAppContent) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static DetectedAppContent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DetectedAppContent) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(DetectedAppContent detectedAppContent) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(detectedAppContent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DetectedAppContentOrBuilder {
            private int appId_;
            private int bitField0_;
            private int depotId_;
            private int detectedContent_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_DetectedAppContent_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_DetectedAppContent_fieldAccessorTable.ensureFieldAccessorsInitialized(DetectedAppContent.class, Builder.class);
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
                this.depotId_ = 0;
                this.detectedContent_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_DetectedAppContent_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DetectedAppContent getDefaultInstanceForType() {
                return DetectedAppContent.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DetectedAppContent build() {
                DetectedAppContent detectedAppContentBuildPartial = buildPartial();
                if (detectedAppContentBuildPartial.isInitialized()) {
                    return detectedAppContentBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) detectedAppContentBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DetectedAppContent buildPartial() {
                DetectedAppContent detectedAppContent = new DetectedAppContent(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(detectedAppContent);
                }
                onBuilt();
                return detectedAppContent;
            }

            private void buildPartial0(DetectedAppContent detectedAppContent) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    detectedAppContent.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    detectedAppContent.depotId_ = this.depotId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    detectedAppContent.detectedContent_ = this.detectedContent_;
                    i |= 4;
                }
                detectedAppContent.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof DetectedAppContent) {
                    return mergeFrom((DetectedAppContent) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DetectedAppContent detectedAppContent) {
                if (detectedAppContent == DetectedAppContent.getDefaultInstance()) {
                    return this;
                }
                if (detectedAppContent.hasAppId()) {
                    setAppId(detectedAppContent.getAppId());
                }
                if (detectedAppContent.hasDepotId()) {
                    setDepotId(detectedAppContent.getDepotId());
                }
                if (detectedAppContent.hasDetectedContent()) {
                    setDetectedContent(detectedAppContent.getDetectedContent());
                }
                mergeUnknownFields(detectedAppContent.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.depotId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.detectedContent_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
            public boolean hasDepotId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
            public int getDepotId() {
                return this.depotId_;
            }

            public Builder setDepotId(int i) {
                this.depotId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDepotId() {
                this.bitField0_ &= -3;
                this.depotId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
            public boolean hasDetectedContent() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.DetectedAppContentOrBuilder
            public int getDetectedContent() {
                return this.detectedContent_;
            }

            public Builder setDetectedContent(int i) {
                this.detectedContent_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDetectedContent() {
                this.bitField0_ &= -5;
                this.detectedContent_ = 0;
                onChanged();
                return this;
            }
        }

        public static DetectedAppContent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DetectedAppContent> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DetectedAppContent> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DetectedAppContent getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CDepotContentDetection_GetAllDetectedAppContent_Response extends GeneratedMessage implements CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder {
        private static final CDepotContentDetection_GetAllDetectedAppContent_Response DEFAULT_INSTANCE;
        public static final int DETECTED_APP_CONTENT_FIELD_NUMBER = 1;
        private static final Parser<CDepotContentDetection_GetAllDetectedAppContent_Response> PARSER;
        private static final long serialVersionUID = 0;
        private List<DetectedAppContent> detectedAppContent_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CDepotContentDetection_GetAllDetectedAppContent_Response.class.getName());
            DEFAULT_INSTANCE = new CDepotContentDetection_GetAllDetectedAppContent_Response();
            PARSER = new AbstractParser<CDepotContentDetection_GetAllDetectedAppContent_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_Response.1
                @Override // com.google.protobuf.Parser
                public CDepotContentDetection_GetAllDetectedAppContent_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CDepotContentDetection_GetAllDetectedAppContent_Response.newBuilder();
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

        private CDepotContentDetection_GetAllDetectedAppContent_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CDepotContentDetection_GetAllDetectedAppContent_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.detectedAppContent_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetAllDetectedAppContent_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
        public List<DetectedAppContent> getDetectedAppContentList() {
            return this.detectedAppContent_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
        public List<? extends DetectedAppContentOrBuilder> getDetectedAppContentOrBuilderList() {
            return this.detectedAppContent_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
        public int getDetectedAppContentCount() {
            return this.detectedAppContent_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
        public DetectedAppContent getDetectedAppContent(int i) {
            return this.detectedAppContent_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
        public DetectedAppContentOrBuilder getDetectedAppContentOrBuilder(int i) {
            return this.detectedAppContent_.get(i);
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
            for (int i = 0; i < this.detectedAppContent_.size(); i++) {
                codedOutputStream.writeMessage(1, this.detectedAppContent_.get(i));
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
            for (int i2 = 0; i2 < this.detectedAppContent_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.detectedAppContent_.get(i2));
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
            if (!(obj instanceof CDepotContentDetection_GetAllDetectedAppContent_Response)) {
                return super.equals(obj);
            }
            CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_Response = (CDepotContentDetection_GetAllDetectedAppContent_Response) obj;
            return getDetectedAppContentList().equals(cDepotContentDetection_GetAllDetectedAppContent_Response.getDetectedAppContentList()) && getUnknownFields().equals(cDepotContentDetection_GetAllDetectedAppContent_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getDetectedAppContentCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getDetectedAppContentList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetAllDetectedAppContent_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cDepotContentDetection_GetAllDetectedAppContent_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> detectedAppContentBuilder_;
            private List<DetectedAppContent> detectedAppContent_;

            private void buildPartial0(CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetAllDetectedAppContent_Response.class, Builder.class);
            }

            private Builder() {
                this.detectedAppContent_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.detectedAppContent_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.detectedAppContent_ = Collections.emptyList();
                } else {
                    this.detectedAppContent_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetAllDetectedAppContent_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CDepotContentDetection_GetAllDetectedAppContent_Response getDefaultInstanceForType() {
                return CDepotContentDetection_GetAllDetectedAppContent_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetAllDetectedAppContent_Response build() {
                CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_ResponseBuildPartial = buildPartial();
                if (cDepotContentDetection_GetAllDetectedAppContent_ResponseBuildPartial.isInitialized()) {
                    return cDepotContentDetection_GetAllDetectedAppContent_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cDepotContentDetection_GetAllDetectedAppContent_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetAllDetectedAppContent_Response buildPartial() {
                CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_Response = new CDepotContentDetection_GetAllDetectedAppContent_Response(this);
                buildPartialRepeatedFields(cDepotContentDetection_GetAllDetectedAppContent_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cDepotContentDetection_GetAllDetectedAppContent_Response);
                }
                onBuilt();
                return cDepotContentDetection_GetAllDetectedAppContent_Response;
            }

            private void buildPartialRepeatedFields(CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_Response) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.detectedAppContent_ = Collections.unmodifiableList(this.detectedAppContent_);
                        this.bitField0_ &= -2;
                    }
                    cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_ = this.detectedAppContent_;
                    return;
                }
                cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CDepotContentDetection_GetAllDetectedAppContent_Response) {
                    return mergeFrom((CDepotContentDetection_GetAllDetectedAppContent_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CDepotContentDetection_GetAllDetectedAppContent_Response cDepotContentDetection_GetAllDetectedAppContent_Response) {
                if (cDepotContentDetection_GetAllDetectedAppContent_Response == CDepotContentDetection_GetAllDetectedAppContent_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.detectedAppContentBuilder_ == null) {
                    if (!cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_.isEmpty()) {
                        if (this.detectedAppContent_.isEmpty()) {
                            this.detectedAppContent_ = cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDetectedAppContentIsMutable();
                            this.detectedAppContent_.addAll(cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_);
                        }
                        onChanged();
                    }
                } else if (!cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_.isEmpty()) {
                    if (this.detectedAppContentBuilder_.isEmpty()) {
                        this.detectedAppContentBuilder_.dispose();
                        this.detectedAppContentBuilder_ = null;
                        this.detectedAppContent_ = cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_;
                        this.bitField0_ &= -2;
                        this.detectedAppContentBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetDetectedAppContentFieldBuilder() : null;
                    } else {
                        this.detectedAppContentBuilder_.addAllMessages(cDepotContentDetection_GetAllDetectedAppContent_Response.detectedAppContent_);
                    }
                }
                mergeUnknownFields(cDepotContentDetection_GetAllDetectedAppContent_Response.getUnknownFields());
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
                                    DetectedAppContent detectedAppContent = (DetectedAppContent) codedInputStream.readMessage(DetectedAppContent.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureDetectedAppContentIsMutable();
                                        this.detectedAppContent_.add(detectedAppContent);
                                    } else {
                                        repeatedFieldBuilder.addMessage(detectedAppContent);
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

            private void ensureDetectedAppContentIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.detectedAppContent_ = new ArrayList(this.detectedAppContent_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
            public List<DetectedAppContent> getDetectedAppContentList() {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.detectedAppContent_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
            public int getDetectedAppContentCount() {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.detectedAppContent_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
            public DetectedAppContent getDetectedAppContent(int i) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.detectedAppContent_.get(i);
                }
                return (DetectedAppContent) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setDetectedAppContent(int i, DetectedAppContent detectedAppContent) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    detectedAppContent.getClass();
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.set(i, detectedAppContent);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, detectedAppContent);
                }
                return this;
            }

            public Builder setDetectedAppContent(int i, DetectedAppContent.Builder builder) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addDetectedAppContent(DetectedAppContent detectedAppContent) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    detectedAppContent.getClass();
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.add(detectedAppContent);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(detectedAppContent);
                }
                return this;
            }

            public Builder addDetectedAppContent(int i, DetectedAppContent detectedAppContent) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    detectedAppContent.getClass();
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.add(i, detectedAppContent);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, detectedAppContent);
                }
                return this;
            }

            public Builder addDetectedAppContent(DetectedAppContent.Builder builder) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addDetectedAppContent(int i, DetectedAppContent.Builder builder) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllDetectedAppContent(Iterable<? extends DetectedAppContent> iterable) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDetectedAppContentIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.detectedAppContent_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearDetectedAppContent() {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.detectedAppContent_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeDetectedAppContent(int i) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDetectedAppContentIsMutable();
                    this.detectedAppContent_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public DetectedAppContent.Builder getDetectedAppContentBuilder(int i) {
                return (DetectedAppContent.Builder) internalGetDetectedAppContentFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
            public DetectedAppContentOrBuilder getDetectedAppContentOrBuilder(int i) {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.detectedAppContent_.get(i);
                }
                return (DetectedAppContentOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_ResponseOrBuilder
            public List<? extends DetectedAppContentOrBuilder> getDetectedAppContentOrBuilderList() {
                RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> repeatedFieldBuilder = this.detectedAppContentBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.detectedAppContent_);
            }

            public DetectedAppContent.Builder addDetectedAppContentBuilder() {
                return (DetectedAppContent.Builder) internalGetDetectedAppContentFieldBuilder().addBuilder(DetectedAppContent.getDefaultInstance());
            }

            public DetectedAppContent.Builder addDetectedAppContentBuilder(int i) {
                return (DetectedAppContent.Builder) internalGetDetectedAppContentFieldBuilder().addBuilder(i, DetectedAppContent.getDefaultInstance());
            }

            public List<DetectedAppContent.Builder> getDetectedAppContentBuilderList() {
                return internalGetDetectedAppContentFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<DetectedAppContent, DetectedAppContent.Builder, DetectedAppContentOrBuilder> internalGetDetectedAppContentFieldBuilder() {
                if (this.detectedAppContentBuilder_ == null) {
                    this.detectedAppContentBuilder_ = new RepeatedFieldBuilder<>(this.detectedAppContent_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.detectedAppContent_ = null;
                }
                return this.detectedAppContentBuilder_;
            }
        }

        public static CDepotContentDetection_GetAllDetectedAppContent_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CDepotContentDetection_GetAllDetectedAppContent_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CDepotContentDetection_GetAllDetectedAppContent_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CDepotContentDetection_GetAllDetectedAppContent_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CDepotContentDetection_GetDetectedContentSingleApp_Request extends GeneratedMessage implements CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CDepotContentDetection_GetDetectedContentSingleApp_Request DEFAULT_INSTANCE;
        private static final Parser<CDepotContentDetection_GetDetectedContentSingleApp_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CDepotContentDetection_GetDetectedContentSingleApp_Request.class.getName());
            DEFAULT_INSTANCE = new CDepotContentDetection_GetDetectedContentSingleApp_Request();
            PARSER = new AbstractParser<CDepotContentDetection_GetDetectedContentSingleApp_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_Request.1
                @Override // com.google.protobuf.Parser
                public CDepotContentDetection_GetDetectedContentSingleApp_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CDepotContentDetection_GetDetectedContentSingleApp_Request.newBuilder();
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

        private CDepotContentDetection_GetDetectedContentSingleApp_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CDepotContentDetection_GetDetectedContentSingleApp_Request() {
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetDetectedContentSingleApp_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder
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
            if (!(obj instanceof CDepotContentDetection_GetDetectedContentSingleApp_Request)) {
                return super.equals(obj);
            }
            CDepotContentDetection_GetDetectedContentSingleApp_Request cDepotContentDetection_GetDetectedContentSingleApp_Request = (CDepotContentDetection_GetDetectedContentSingleApp_Request) obj;
            if (hasAppid() != cDepotContentDetection_GetDetectedContentSingleApp_Request.hasAppid()) {
                return false;
            }
            return (!hasAppid() || getAppid() == cDepotContentDetection_GetDetectedContentSingleApp_Request.getAppid()) && getUnknownFields().equals(cDepotContentDetection_GetDetectedContentSingleApp_Request.getUnknownFields());
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

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CDepotContentDetection_GetDetectedContentSingleApp_Request cDepotContentDetection_GetDetectedContentSingleApp_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cDepotContentDetection_GetDetectedContentSingleApp_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder {
            private int appid_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetDetectedContentSingleApp_Request.class, Builder.class);
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
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CDepotContentDetection_GetDetectedContentSingleApp_Request getDefaultInstanceForType() {
                return CDepotContentDetection_GetDetectedContentSingleApp_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetDetectedContentSingleApp_Request build() {
                CDepotContentDetection_GetDetectedContentSingleApp_Request cDepotContentDetection_GetDetectedContentSingleApp_RequestBuildPartial = buildPartial();
                if (cDepotContentDetection_GetDetectedContentSingleApp_RequestBuildPartial.isInitialized()) {
                    return cDepotContentDetection_GetDetectedContentSingleApp_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cDepotContentDetection_GetDetectedContentSingleApp_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetDetectedContentSingleApp_Request buildPartial() {
                CDepotContentDetection_GetDetectedContentSingleApp_Request cDepotContentDetection_GetDetectedContentSingleApp_Request = new CDepotContentDetection_GetDetectedContentSingleApp_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cDepotContentDetection_GetDetectedContentSingleApp_Request);
                }
                onBuilt();
                return cDepotContentDetection_GetDetectedContentSingleApp_Request;
            }

            private void buildPartial0(CDepotContentDetection_GetDetectedContentSingleApp_Request cDepotContentDetection_GetDetectedContentSingleApp_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cDepotContentDetection_GetDetectedContentSingleApp_Request.appid_ = this.appid_;
                } else {
                    i = 0;
                }
                cDepotContentDetection_GetDetectedContentSingleApp_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CDepotContentDetection_GetDetectedContentSingleApp_Request) {
                    return mergeFrom((CDepotContentDetection_GetDetectedContentSingleApp_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CDepotContentDetection_GetDetectedContentSingleApp_Request cDepotContentDetection_GetDetectedContentSingleApp_Request) {
                if (cDepotContentDetection_GetDetectedContentSingleApp_Request == CDepotContentDetection_GetDetectedContentSingleApp_Request.getDefaultInstance()) {
                    return this;
                }
                if (cDepotContentDetection_GetDetectedContentSingleApp_Request.hasAppid()) {
                    setAppid(cDepotContentDetection_GetDetectedContentSingleApp_Request.getAppid());
                }
                mergeUnknownFields(cDepotContentDetection_GetDetectedContentSingleApp_Request.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_RequestOrBuilder
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

        public static CDepotContentDetection_GetDetectedContentSingleApp_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CDepotContentDetection_GetDetectedContentSingleApp_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CDepotContentDetection_GetDetectedContentSingleApp_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CDepotContentDetection_GetDetectedContentSingleApp_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CDepotContentDetection_GetDetectedContentSingleApp_Response extends GeneratedMessage implements CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder {
        private static final CDepotContentDetection_GetDetectedContentSingleApp_Response DEFAULT_INSTANCE;
        public static final int DETECTED_ANTICHEAT_FIELD_NUMBER = 1;
        public static final int DETECTED_GAMEENGINE_FIELD_NUMBER = 2;
        private static final Parser<CDepotContentDetection_GetDetectedContentSingleApp_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int detectedAnticheat_;
        private int detectedGameengine_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CDepotContentDetection_GetDetectedContentSingleApp_Response.class.getName());
            DEFAULT_INSTANCE = new CDepotContentDetection_GetDetectedContentSingleApp_Response();
            PARSER = new AbstractParser<CDepotContentDetection_GetDetectedContentSingleApp_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_Response.1
                @Override // com.google.protobuf.Parser
                public CDepotContentDetection_GetDetectedContentSingleApp_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CDepotContentDetection_GetDetectedContentSingleApp_Response.newBuilder();
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

        private CDepotContentDetection_GetDetectedContentSingleApp_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.detectedAnticheat_ = 0;
            this.detectedGameengine_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CDepotContentDetection_GetDetectedContentSingleApp_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.detectedAnticheat_ = 0;
            this.detectedGameengine_ = 0;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetDetectedContentSingleApp_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
        public boolean hasDetectedAnticheat() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
        public EAppAntiCheatType getDetectedAnticheat() {
            EAppAntiCheatType eAppAntiCheatTypeForNumber = EAppAntiCheatType.forNumber(this.detectedAnticheat_);
            return eAppAntiCheatTypeForNumber == null ? EAppAntiCheatType.k_EAppAntiCheatTypeNone : eAppAntiCheatTypeForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
        public boolean hasDetectedGameengine() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
        public EAppGameEngineType getDetectedGameengine() {
            EAppGameEngineType eAppGameEngineTypeForNumber = EAppGameEngineType.forNumber(this.detectedGameengine_);
            return eAppGameEngineTypeForNumber == null ? EAppGameEngineType.k_EAppGameEngineTypeNone : eAppGameEngineTypeForNumber;
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
                codedOutputStream.writeEnum(1, this.detectedAnticheat_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeEnum(2, this.detectedGameengine_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeEnumSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeEnumSize(1, this.detectedAnticheat_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeEnumSize += CodedOutputStream.computeEnumSize(2, this.detectedGameengine_);
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
            if (!(obj instanceof CDepotContentDetection_GetDetectedContentSingleApp_Response)) {
                return super.equals(obj);
            }
            CDepotContentDetection_GetDetectedContentSingleApp_Response cDepotContentDetection_GetDetectedContentSingleApp_Response = (CDepotContentDetection_GetDetectedContentSingleApp_Response) obj;
            if (hasDetectedAnticheat() != cDepotContentDetection_GetDetectedContentSingleApp_Response.hasDetectedAnticheat()) {
                return false;
            }
            if ((!hasDetectedAnticheat() || this.detectedAnticheat_ == cDepotContentDetection_GetDetectedContentSingleApp_Response.detectedAnticheat_) && hasDetectedGameengine() == cDepotContentDetection_GetDetectedContentSingleApp_Response.hasDetectedGameengine()) {
                return (!hasDetectedGameengine() || this.detectedGameengine_ == cDepotContentDetection_GetDetectedContentSingleApp_Response.detectedGameengine_) && getUnknownFields().equals(cDepotContentDetection_GetDetectedContentSingleApp_Response.getUnknownFields());
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
            if (hasDetectedAnticheat()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + this.detectedAnticheat_;
            }
            if (hasDetectedGameengine()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + this.detectedGameengine_;
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CDepotContentDetection_GetDetectedContentSingleApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CDepotContentDetection_GetDetectedContentSingleApp_Response cDepotContentDetection_GetDetectedContentSingleApp_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cDepotContentDetection_GetDetectedContentSingleApp_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder {
            private int bitField0_;
            private int detectedAnticheat_;
            private int detectedGameengine_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CDepotContentDetection_GetDetectedContentSingleApp_Response.class, Builder.class);
            }

            private Builder() {
                this.detectedAnticheat_ = 0;
                this.detectedGameengine_ = 0;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.detectedAnticheat_ = 0;
                this.detectedGameengine_ = 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.detectedAnticheat_ = 0;
                this.detectedGameengine_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesContentsystemSteamclient.internal_static_CDepotContentDetection_GetDetectedContentSingleApp_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CDepotContentDetection_GetDetectedContentSingleApp_Response getDefaultInstanceForType() {
                return CDepotContentDetection_GetDetectedContentSingleApp_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetDetectedContentSingleApp_Response build() {
                CDepotContentDetection_GetDetectedContentSingleApp_Response cDepotContentDetection_GetDetectedContentSingleApp_ResponseBuildPartial = buildPartial();
                if (cDepotContentDetection_GetDetectedContentSingleApp_ResponseBuildPartial.isInitialized()) {
                    return cDepotContentDetection_GetDetectedContentSingleApp_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cDepotContentDetection_GetDetectedContentSingleApp_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CDepotContentDetection_GetDetectedContentSingleApp_Response buildPartial() {
                CDepotContentDetection_GetDetectedContentSingleApp_Response cDepotContentDetection_GetDetectedContentSingleApp_Response = new CDepotContentDetection_GetDetectedContentSingleApp_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cDepotContentDetection_GetDetectedContentSingleApp_Response);
                }
                onBuilt();
                return cDepotContentDetection_GetDetectedContentSingleApp_Response;
            }

            private void buildPartial0(CDepotContentDetection_GetDetectedContentSingleApp_Response cDepotContentDetection_GetDetectedContentSingleApp_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cDepotContentDetection_GetDetectedContentSingleApp_Response.detectedAnticheat_ = this.detectedAnticheat_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cDepotContentDetection_GetDetectedContentSingleApp_Response.detectedGameengine_ = this.detectedGameengine_;
                    i |= 2;
                }
                cDepotContentDetection_GetDetectedContentSingleApp_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CDepotContentDetection_GetDetectedContentSingleApp_Response) {
                    return mergeFrom((CDepotContentDetection_GetDetectedContentSingleApp_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CDepotContentDetection_GetDetectedContentSingleApp_Response cDepotContentDetection_GetDetectedContentSingleApp_Response) {
                if (cDepotContentDetection_GetDetectedContentSingleApp_Response == CDepotContentDetection_GetDetectedContentSingleApp_Response.getDefaultInstance()) {
                    return this;
                }
                if (cDepotContentDetection_GetDetectedContentSingleApp_Response.hasDetectedAnticheat()) {
                    setDetectedAnticheat(cDepotContentDetection_GetDetectedContentSingleApp_Response.getDetectedAnticheat());
                }
                if (cDepotContentDetection_GetDetectedContentSingleApp_Response.hasDetectedGameengine()) {
                    setDetectedGameengine(cDepotContentDetection_GetDetectedContentSingleApp_Response.getDetectedGameengine());
                }
                mergeUnknownFields(cDepotContentDetection_GetDetectedContentSingleApp_Response.getUnknownFields());
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
                                    if (EAppAntiCheatType.forNumber(i) == null) {
                                        mergeUnknownVarintField(1, i);
                                    } else {
                                        this.detectedAnticheat_ = i;
                                        this.bitField0_ |= 1;
                                    }
                                } else if (tag == 16) {
                                    int i2 = codedInputStream.readEnum();
                                    if (EAppGameEngineType.forNumber(i2) == null) {
                                        mergeUnknownVarintField(2, i2);
                                    } else {
                                        this.detectedGameengine_ = i2;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
            public boolean hasDetectedAnticheat() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
            public EAppAntiCheatType getDetectedAnticheat() {
                EAppAntiCheatType eAppAntiCheatTypeForNumber = EAppAntiCheatType.forNumber(this.detectedAnticheat_);
                return eAppAntiCheatTypeForNumber == null ? EAppAntiCheatType.k_EAppAntiCheatTypeNone : eAppAntiCheatTypeForNumber;
            }

            public Builder setDetectedAnticheat(EAppAntiCheatType eAppAntiCheatType) {
                eAppAntiCheatType.getClass();
                this.bitField0_ |= 1;
                this.detectedAnticheat_ = eAppAntiCheatType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearDetectedAnticheat() {
                this.bitField0_ &= -2;
                this.detectedAnticheat_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
            public boolean hasDetectedGameengine() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_ResponseOrBuilder
            public EAppGameEngineType getDetectedGameengine() {
                EAppGameEngineType eAppGameEngineTypeForNumber = EAppGameEngineType.forNumber(this.detectedGameengine_);
                return eAppGameEngineTypeForNumber == null ? EAppGameEngineType.k_EAppGameEngineTypeNone : eAppGameEngineTypeForNumber;
            }

            public Builder setDetectedGameengine(EAppGameEngineType eAppGameEngineType) {
                eAppGameEngineType.getClass();
                this.bitField0_ |= 2;
                this.detectedGameengine_ = eAppGameEngineType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearDetectedGameengine() {
                this.bitField0_ &= -3;
                this.detectedGameengine_ = 0;
                onChanged();
                return this;
            }
        }

        public static CDepotContentDetection_GetDetectedContentSingleApp_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CDepotContentDetection_GetDetectedContentSingleApp_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CDepotContentDetection_GetDetectedContentSingleApp_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CDepotContentDetection_GetDetectedContentSingleApp_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
