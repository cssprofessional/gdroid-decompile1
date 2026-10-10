package in.dragonbra.javasteam.protobufs.webui;

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
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes2.dex */
public final class ServiceClientcomm {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CClientComm_ClientData_RunningGames_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_ClientData_RunningGames_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_ClientData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_ClientData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_EnableOrDisableDownloads_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_EnableOrDisableDownloads_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_EnableOrDisableDownloads_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_EnableOrDisableDownloads_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetAllClientLogonInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetAllClientLogonInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetAllClientLogonInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetAllClientLogonInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientAppList_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientAppList_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientAppList_Response_AppData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientAppList_Response_AppData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientAppList_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientAppList_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientLogonInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientLogonInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_GetClientLogonInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_GetClientLogonInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_InstallClientApp_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_InstallClientApp_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_InstallClientApp_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_InstallClientApp_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_LaunchClientApp_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_LaunchClientApp_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_LaunchClientApp_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_LaunchClientApp_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_SetClientAppUpdateState_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_SetClientAppUpdateState_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_SetClientAppUpdateState_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_SetClientAppUpdateState_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_UninstallClientApp_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_UninstallClientApp_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientComm_UninstallClientApp_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientComm_UninstallClientApp_Response_fieldAccessorTable;

    public interface CClientComm_ClientDataOrBuilder extends MessageOrBuilder {
        long getBytesAvailable();

        int getClientcommVersion();

        String getIpPrivate();

        ByteString getIpPrivateBytes();

        String getIpPublic();

        ByteString getIpPublicBytes();

        int getLocalUsers(int i);

        int getLocalUsersCount();

        List<Integer> getLocalUsersList();

        String getMachineName();

        ByteString getMachineNameBytes();

        String getOs();

        ByteString getOsBytes();

        int getPackageVersion();

        int getProtocolVersion();

        CClientComm_ClientData_RunningGames getRunningGames(int i);

        int getRunningGamesCount();

        List<CClientComm_ClientData_RunningGames> getRunningGamesList();

        CClientComm_ClientData_RunningGamesOrBuilder getRunningGamesOrBuilder(int i);

        List<? extends CClientComm_ClientData_RunningGamesOrBuilder> getRunningGamesOrBuilderList();

        boolean hasBytesAvailable();

        boolean hasClientcommVersion();

        boolean hasIpPrivate();

        boolean hasIpPublic();

        boolean hasMachineName();

        boolean hasOs();

        boolean hasPackageVersion();

        boolean hasProtocolVersion();
    }

    public interface CClientComm_ClientData_RunningGamesOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getExtraInfo();

        ByteString getExtraInfoBytes();

        int getTimeRunningSec();

        boolean hasAppid();

        boolean hasExtraInfo();

        boolean hasTimeRunningSec();
    }

    public interface CClientComm_EnableOrDisableDownloads_RequestOrBuilder extends MessageOrBuilder {
        long getClientInstanceid();

        boolean getEnable();

        boolean hasClientInstanceid();

        boolean hasEnable();
    }

    public interface CClientComm_GetAllClientLogonInfo_ResponseOrBuilder extends MessageOrBuilder {
        int getRefetchIntervalSec();

        CClientComm_GetAllClientLogonInfo_Response_Session getSessions(int i);

        int getSessionsCount();

        List<CClientComm_GetAllClientLogonInfo_Response_Session> getSessionsList();

        CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder getSessionsOrBuilder(int i);

        List<? extends CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> getSessionsOrBuilderList();

        boolean hasRefetchIntervalSec();
    }

    public interface CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder extends MessageOrBuilder {
        long getClientInstanceid();

        int getDeviceType();

        String getMachineName();

        ByteString getMachineNameBytes();

        String getOsName();

        ByteString getOsNameBytes();

        int getOsType();

        int getProtocolVersion();

        int getRealm();

        boolean hasClientInstanceid();

        boolean hasDeviceType();

        boolean hasMachineName();

        boolean hasOsName();

        boolean hasOsType();

        boolean hasProtocolVersion();

        boolean hasRealm();
    }

    public interface CClientComm_GetClientAppList_RequestOrBuilder extends MessageOrBuilder {
        long getClientInstanceid();

        String getFields();

        ByteString getFieldsBytes();

        int getFilterAppids(int i);

        int getFilterAppidsCount();

        List<Integer> getFilterAppidsList();

        String getFilters();

        ByteString getFiltersBytes();

        boolean getIncludeClientInfo();

        String getLanguage();

        ByteString getLanguageBytes();

        boolean hasClientInstanceid();

        boolean hasFields();

        boolean hasFilters();

        boolean hasIncludeClientInfo();

        boolean hasLanguage();
    }

    public interface CClientComm_GetClientAppList_ResponseOrBuilder extends MessageOrBuilder {
        CClientComm_GetClientAppList_Response_AppData getApps(int i);

        int getAppsCount();

        List<CClientComm_GetClientAppList_Response_AppData> getAppsList();

        CClientComm_GetClientAppList_Response_AppDataOrBuilder getAppsOrBuilder(int i);

        List<? extends CClientComm_GetClientAppList_Response_AppDataOrBuilder> getAppsOrBuilderList();

        long getBytesAvailable();

        CClientComm_ClientData getClientInfo();

        CClientComm_ClientDataOrBuilder getClientInfoOrBuilder();

        int getRefetchIntervalSecChanging();

        int getRefetchIntervalSecFull();

        int getRefetchIntervalSecUpdating();

        boolean hasBytesAvailable();

        boolean hasClientInfo();

        boolean hasRefetchIntervalSecChanging();

        boolean hasRefetchIntervalSecFull();

        boolean hasRefetchIntervalSecUpdating();
    }

    public interface CClientComm_GetClientAppList_Response_AppDataOrBuilder extends MessageOrBuilder {
        String getApp();

        ByteString getAppBytes();

        String getAppType();

        ByteString getAppTypeBytes();

        int getAppid();

        boolean getAutoUpdate();

        boolean getAvailableOnPlatform();

        int getBytesDownloadRate();

        long getBytesDownloaded();

        long getBytesRequired();

        long getBytesStaged();

        long getBytesToDownload();

        long getBytesToStage();

        String getCategory();

        ByteString getCategoryBytes();

        boolean getChanging();

        CClientComm_GetClientAppList_Response_AppData_DLCData getDlcs(int i);

        int getDlcsCount();

        List<CClientComm_GetClientAppList_Response_AppData_DLCData> getDlcsList();

        CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder getDlcsOrBuilder(int i);

        List<? extends CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> getDlcsOrBuilderList();

        boolean getDownloadPaused();

        int getEstimatedSecondsRemaining();

        boolean getFavorite();

        boolean getInstalled();

        int getNumDownloading();

        int getQueuePosition();

        int getRtTimeScheduled();

        boolean getRunning();

        int getSourceBuildid();

        int getTargetBuildid();

        boolean getUninstalling();

        int getUpdatePercentage();

        boolean hasApp();

        boolean hasAppType();

        boolean hasAppid();

        boolean hasAutoUpdate();

        boolean hasAvailableOnPlatform();

        boolean hasBytesDownloadRate();

        boolean hasBytesDownloaded();

        boolean hasBytesRequired();

        boolean hasBytesStaged();

        boolean hasBytesToDownload();

        boolean hasBytesToStage();

        boolean hasCategory();

        boolean hasChanging();

        boolean hasDownloadPaused();

        boolean hasEstimatedSecondsRemaining();

        boolean hasFavorite();

        boolean hasInstalled();

        boolean hasNumDownloading();

        boolean hasQueuePosition();

        boolean hasRtTimeScheduled();

        boolean hasRunning();

        boolean hasSourceBuildid();

        boolean hasTargetBuildid();

        boolean hasUninstalling();

        boolean hasUpdatePercentage();
    }

    public interface CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder extends MessageOrBuilder {
        String getApp();

        ByteString getAppBytes();

        int getAppid();

        int getInstalled();

        boolean hasApp();

        boolean hasAppid();

        boolean hasInstalled();
    }

    public interface CClientComm_GetClientInfo_RequestOrBuilder extends MessageOrBuilder {
        long getClientInstanceid();

        boolean hasClientInstanceid();
    }

    public interface CClientComm_GetClientInfo_ResponseOrBuilder extends MessageOrBuilder {
        CClientComm_ClientData getClientInfo();

        CClientComm_ClientDataOrBuilder getClientInfoOrBuilder();

        boolean hasClientInfo();
    }

    public interface CClientComm_GetClientLogonInfo_RequestOrBuilder extends MessageOrBuilder {
        long getClientInstanceid();

        boolean hasClientInstanceid();
    }

    public interface CClientComm_GetClientLogonInfo_ResponseOrBuilder extends MessageOrBuilder {
        String getMachineName();

        ByteString getMachineNameBytes();

        String getOs();

        ByteString getOsBytes();

        int getProtocolVersion();

        boolean hasMachineName();

        boolean hasOs();

        boolean hasProtocolVersion();
    }

    public interface CClientComm_InstallClientApp_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getClientInstanceid();

        boolean hasAppid();

        boolean hasClientInstanceid();
    }

    public interface CClientComm_LaunchClientApp_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getClientInstanceid();

        String getQueryParams();

        ByteString getQueryParamsBytes();

        boolean hasAppid();

        boolean hasClientInstanceid();

        boolean hasQueryParams();
    }

    public interface CClientComm_SetClientAppUpdateState_RequestOrBuilder extends MessageOrBuilder {
        int getAction();

        int getAppid();

        long getClientInstanceid();

        boolean hasAction();

        boolean hasAppid();

        boolean hasClientInstanceid();
    }

    public interface CClientComm_UninstallClientApp_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getClientInstanceid();

        boolean hasAppid();

        boolean hasClientInstanceid();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private ServiceClientcomm() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ServiceClientcomm.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n?in/dragonbra/javasteam/protobufs/webui/service_clientcomm.proto\"\u009b\u0002\n\u0016CClientComm_ClientData\u0012\u0017\n\u000fpackage_version\u0018\u0001 \u0001(\r\u0012\n\n\u0002os\u0018\u0002 \u0001(\t\u0012\u0014\n\fmachine_name\u0018\u0003 \u0001(\t\u0012\u0011\n\tip_public\u0018\u0004 \u0001(\t\u0012\u0012\n\nip_private\u0018\u0005 \u0001(\t\u0012\u0017\n\u000fbytes_available\u0018\u0006 \u0001(\u0004\u0012;\n\rrunning_games\u0018\u0007 \u0003(\u000b2$.CClientComm_ClientData_RunningGames\u0012\u0018\n\u0010protocol_version\u0018\b \u0001(\r\u0012\u001a\n\u0012clientcomm_version\u0018\t \u0001(\r\u0012\u0013\n\u000blocal_users\u0018\n \u0003(\r\"b\n#CClientComm_ClientData_RunningGames\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0012\n\nextra_info\u0018\u0002 \u0001(\t\u0012\u0018\n\u0010time_running_sec\u0018\u0003 \u0001(\r\"Y\n,CClientComm_EnableOrDisableDownloads_Request\u0012\u0019\n\u0011client_instanceid\u0018\u0001 \u0001(\u0004\u0012\u000e\n\u0006enable\u0018\u0002 \u0001(\b\"/\n-CClientComm_EnableOrDisableDownloads_Response\"+\n)CClientComm_GetAllClientLogonInfo_Request\"\u0091\u0001\n*CClientComm_GetAllClientLogonInfo_Response\u0012E\n\bsessions\u0018\u0001 \u0003(\u000b23.CClientComm_GetAllClientLogonInfo_Response_Session\u0012\u001c\n\u0014refetch_interval_sec\u0018\u0002 \u0001(\r\"Å\u0001\n2CClientComm_GetAllClientLogonInfo_Response_Session\u0012\u0019\n\u0011client_instanceid\u0018\u0001 \u0001(\u0004\u0012\u0018\n\u0010protocol_version\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007os_name\u0018\u0003 \u0001(\t\u0012\u0014\n\fmachine_name\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007os_type\u0018\u0005 \u0001(\u0005\u0012\u0013\n\u000bdevice_type\u0018\u0006 \u0001(\u0005\u0012\r\n\u0005realm\u0018\u0007 \u0001(\u0005\"¨\u0001\n$CClientComm_GetClientAppList_Request\u0012\u000e\n\u0006fields\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007filters\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011client_instanceid\u0018\u0003 \u0001(\u0004\u0012\u001b\n\u0013include_client_info\u0018\u0004 \u0001(\b\u0012\u0010\n\blanguage\u0018\u0005 \u0001(\t\u0012\u0015\n\rfilter_appids\u0018\u0006 \u0003(\r\"\u009d\u0002\n%CClientComm_GetClientAppList_Response\u0012\u0017\n\u000fbytes_available\u0018\u0001 \u0001(\u0004\u0012<\n\u0004apps\u0018\u0002 \u0003(\u000b2..CClientComm_GetClientAppList_Response_AppData\u0012,\n\u000bclient_info\u0018\u0003 \u0001(\u000b2\u0017.CClientComm_ClientData\u0012!\n\u0019refetch_interval_sec_full\u0018\u0004 \u0001(\r\u0012%\n\u001drefetch_interval_sec_changing\u0018\u0005 \u0001(\r\u0012%\n\u001drefetch_interval_sec_updating\u0018\u0006 \u0001(\r\"¸\u0005\n-CClientComm_GetClientAppList_Response_AppData\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003app\u0018\u0002 \u0001(\t\u0012\u0010\n\bcategory\u0018\u0003 \u0001(\t\u0012\u0010\n\bapp_type\u0018\u0004 \u0001(\t\u0012\u0017\n\u000fnum_downloading\u0018\b \u0001(\r\u0012\u001b\n\u0013bytes_download_rate\u0018\u000b \u0001(\r\u0012\u0018\n\u0010bytes_downloaded\u0018\f \u0001(\u0004\u0012\u0019\n\u0011bytes_to_download\u0018\r \u0001(\u0004\u0012D\n\u0004dlcs\u0018\u0011 \u0003(\u000b26.CClientComm_GetClientAppList_Response_AppData_DLCData\u0012\u0010\n\bfavorite\u0018\u0012 \u0001(\b\u0012\u0013\n\u000bauto_update\u0018\u0013 \u0001(\b\u0012\u0011\n\tinstalled\u0018\u0014 \u0001(\b\u0012\u0017\n\u000fdownload_paused\u0018\u0015 \u0001(\b\u0012\u0010\n\bchanging\u0018\u0016 \u0001(\b\u0012\u001d\n\u0015available_on_platform\u0018\u0017 \u0001(\b\u0012\u0014\n\fbytes_staged\u0018\u0018 \u0001(\u0004\u0012\u0016\n\u000ebytes_to_stage\u0018\u0019 \u0001(\u0004\u0012\u0016\n\u000ebytes_required\u0018\u001a \u0001(\u0004\u0012\u0016\n\u000esource_buildid\u0018\u001b \u0001(\r\u0012\u0016\n\u000etarget_buildid\u0018\u001c \u0001(\r\u0012#\n\u001bestimated_seconds_remaining\u0018\u001d \u0001(\r\u0012\u001a\n\u000equeue_position\u0018\u001e \u0001(\u0005:\u0002-1\u0012\u0014\n\funinstalling\u0018\u001f \u0001(\b\u0012\u0019\n\u0011rt_time_scheduled\u0018  \u0001(\r\u0012\u000f\n\u0007running\u0018! \u0001(\b\u0012\u0019\n\u0011update_percentage\u0018\" \u0001(\r\"f\n5CClientComm_GetClientAppList_Response_AppData_DLCData\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003app\u0018\u0002 \u0001(\t\u0012\u0011\n\tinstalled\u0018\u0003 \u0001(\r\">\n!CClientComm_GetClientInfo_Request\u0012\u0019\n\u0011client_instanceid\u0018\u0001 \u0001(\u0004\"R\n\"CClientComm_GetClientInfo_Response\u0012,\n\u000bclient_info\u0018\u0001 \u0001(\u000b2\u0017.CClientComm_ClientData\"C\n&CClientComm_GetClientLogonInfo_Request\u0012\u0019\n\u0011client_instanceid\u0018\u0001 \u0001(\u0004\"e\n'CClientComm_GetClientLogonInfo_Response\u0012\u0018\n\u0010protocol_version\u0018\u0001 \u0001(\r\u0012\n\n\u0002os\u0018\u0002 \u0001(\t\u0012\u0014\n\fmachine_name\u0018\u0003 \u0001(\t\"P\n$CClientComm_InstallClientApp_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011client_instanceid\u0018\u0002 \u0001(\u0004\"'\n%CClientComm_InstallClientApp_Response\"e\n#CClientComm_LaunchClientApp_Request\u0012\u0019\n\u0011client_instanceid\u0018\u0001 \u0001(\u0004\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u0012\u0014\n\fquery_params\u0018\u0003 \u0001(\t\"&\n$CClientComm_LaunchClientApp_Response\"g\n+CClientComm_SetClientAppUpdateState_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006action\u0018\u0002 \u0001(\r\u0012\u0019\n\u0011client_instanceid\u0018\u0003 \u0001(\u0004\".\n,CClientComm_SetClientAppUpdateState_Response\"R\n&CClientComm_UninstallClientApp_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011client_instanceid\u0018\u0002 \u0001(\u0004\")\n'CClientComm_UninstallClientApp_Response2Ã\u0007\n\nClientComm\u0012y\n\u0018EnableOrDisableDownloads\u0012-.CClientComm_EnableOrDisableDownloads_Request\u001a..CClientComm_EnableOrDisableDownloads_Response\u0012p\n\u0015GetAllClientLogonInfo\u0012*.CClientComm_GetAllClientLogonInfo_Request\u001a+.CClientComm_GetAllClientLogonInfo_Response\u0012a\n\u0010GetClientAppList\u0012%.CClientComm_GetClientAppList_Request\u001a&.CClientComm_GetClientAppList_Response\u0012X\n\rGetClientInfo\u0012\".CClientComm_GetClientInfo_Request\u001a#.CClientComm_GetClientInfo_Response\u0012g\n\u0012GetClientLogonInfo\u0012'.CClientComm_GetClientLogonInfo_Request\u001a(.CClientComm_GetClientLogonInfo_Response\u0012a\n\u0010InstallClientApp\u0012%.CClientComm_InstallClientApp_Request\u001a&.CClientComm_InstallClientApp_Response\u0012^\n\u000fLaunchClientApp\u0012$.CClientComm_LaunchClientApp_Request\u001a%.CClientComm_LaunchClientApp_Response\u0012v\n\u0017SetClientAppUpdateState\u0012,.CClientComm_SetClientAppUpdateState_Request\u001a-.CClientComm_SetClientAppUpdateState_Response\u0012g\n\u0012UninstallClientApp\u0012'.CClientComm_UninstallClientApp_Request\u001a(.CClientComm_UninstallClientApp_ResponseB-\n&in.dragonbra.javasteam.protobufs.webuiH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[0]);
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CClientComm_ClientData_descriptor = descriptor2;
        internal_static_CClientComm_ClientData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"PackageVersion", "Os", "MachineName", "IpPublic", "IpPrivate", "BytesAvailable", "RunningGames", "ProtocolVersion", "ClientcommVersion", "LocalUsers"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CClientComm_ClientData_RunningGames_descriptor = descriptor3;
        internal_static_CClientComm_ClientData_RunningGames_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Appid", "ExtraInfo", "TimeRunningSec"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CClientComm_EnableOrDisableDownloads_Request_descriptor = descriptor4;
        internal_static_CClientComm_EnableOrDisableDownloads_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"ClientInstanceid", "Enable"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CClientComm_EnableOrDisableDownloads_Response_descriptor = descriptor5;
        internal_static_CClientComm_EnableOrDisableDownloads_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[0]);
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CClientComm_GetAllClientLogonInfo_Request_descriptor = descriptor6;
        internal_static_CClientComm_GetAllClientLogonInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[0]);
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CClientComm_GetAllClientLogonInfo_Response_descriptor = descriptor7;
        internal_static_CClientComm_GetAllClientLogonInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Sessions", "RefetchIntervalSec"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_descriptor = descriptor8;
        internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"ClientInstanceid", "ProtocolVersion", "OsName", "MachineName", "OsType", "DeviceType", "Realm"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CClientComm_GetClientAppList_Request_descriptor = descriptor9;
        internal_static_CClientComm_GetClientAppList_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Fields", "Filters", "ClientInstanceid", "IncludeClientInfo", "Language", "FilterAppids"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CClientComm_GetClientAppList_Response_descriptor = descriptor10;
        internal_static_CClientComm_GetClientAppList_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"BytesAvailable", "Apps", "ClientInfo", "RefetchIntervalSecFull", "RefetchIntervalSecChanging", "RefetchIntervalSecUpdating"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CClientComm_GetClientAppList_Response_AppData_descriptor = descriptor11;
        internal_static_CClientComm_GetClientAppList_Response_AppData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Appid", "App", "Category", "AppType", "NumDownloading", "BytesDownloadRate", "BytesDownloaded", "BytesToDownload", "Dlcs", "Favorite", "AutoUpdate", "Installed", "DownloadPaused", "Changing", "AvailableOnPlatform", "BytesStaged", "BytesToStage", "BytesRequired", "SourceBuildid", "TargetBuildid", "EstimatedSecondsRemaining", "QueuePosition", "Uninstalling", "RtTimeScheduled", "Running", "UpdatePercentage"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_descriptor = descriptor12;
        internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Appid", "App", "Installed"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CClientComm_GetClientInfo_Request_descriptor = descriptor13;
        internal_static_CClientComm_GetClientInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"ClientInstanceid"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CClientComm_GetClientInfo_Response_descriptor = descriptor14;
        internal_static_CClientComm_GetClientInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"ClientInfo"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_CClientComm_GetClientLogonInfo_Request_descriptor = descriptor15;
        internal_static_CClientComm_GetClientLogonInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"ClientInstanceid"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_CClientComm_GetClientLogonInfo_Response_descriptor = descriptor16;
        internal_static_CClientComm_GetClientLogonInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"ProtocolVersion", "Os", "MachineName"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(15);
        internal_static_CClientComm_InstallClientApp_Request_descriptor = descriptor17;
        internal_static_CClientComm_InstallClientApp_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Appid", "ClientInstanceid"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(16);
        internal_static_CClientComm_InstallClientApp_Response_descriptor = descriptor18;
        internal_static_CClientComm_InstallClientApp_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[0]);
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(17);
        internal_static_CClientComm_LaunchClientApp_Request_descriptor = descriptor19;
        internal_static_CClientComm_LaunchClientApp_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"ClientInstanceid", "Appid", "QueryParams"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(18);
        internal_static_CClientComm_LaunchClientApp_Response_descriptor = descriptor20;
        internal_static_CClientComm_LaunchClientApp_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[0]);
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(19);
        internal_static_CClientComm_SetClientAppUpdateState_Request_descriptor = descriptor21;
        internal_static_CClientComm_SetClientAppUpdateState_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Appid", "Action", "ClientInstanceid"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(20);
        internal_static_CClientComm_SetClientAppUpdateState_Response_descriptor = descriptor22;
        internal_static_CClientComm_SetClientAppUpdateState_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[0]);
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(21);
        internal_static_CClientComm_UninstallClientApp_Request_descriptor = descriptor23;
        internal_static_CClientComm_UninstallClientApp_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"Appid", "ClientInstanceid"});
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(22);
        internal_static_CClientComm_UninstallClientApp_Response_descriptor = descriptor24;
        internal_static_CClientComm_UninstallClientApp_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[0]);
        descriptor.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CClientComm_ClientData extends GeneratedMessage implements CClientComm_ClientDataOrBuilder {
        public static final int BYTES_AVAILABLE_FIELD_NUMBER = 6;
        public static final int CLIENTCOMM_VERSION_FIELD_NUMBER = 9;
        private static final CClientComm_ClientData DEFAULT_INSTANCE;
        public static final int IP_PRIVATE_FIELD_NUMBER = 5;
        public static final int IP_PUBLIC_FIELD_NUMBER = 4;
        public static final int LOCAL_USERS_FIELD_NUMBER = 10;
        public static final int MACHINE_NAME_FIELD_NUMBER = 3;
        public static final int OS_FIELD_NUMBER = 2;
        public static final int PACKAGE_VERSION_FIELD_NUMBER = 1;
        private static final Parser<CClientComm_ClientData> PARSER;
        public static final int PROTOCOL_VERSION_FIELD_NUMBER = 8;
        public static final int RUNNING_GAMES_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long bytesAvailable_;
        private int clientcommVersion_;
        private volatile Object ipPrivate_;
        private volatile Object ipPublic_;
        private Internal.IntList localUsers_;
        private volatile Object machineName_;
        private byte memoizedIsInitialized;
        private volatile Object os_;
        private int packageVersion_;
        private int protocolVersion_;
        private List<CClientComm_ClientData_RunningGames> runningGames_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_ClientData.class.getName());
            DEFAULT_INSTANCE = new CClientComm_ClientData();
            PARSER = new AbstractParser<CClientComm_ClientData>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData.1
                @Override // com.google.protobuf.Parser
                public CClientComm_ClientData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_ClientData.newBuilder();
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

        private CClientComm_ClientData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.packageVersion_ = 0;
            this.os_ = "";
            this.machineName_ = "";
            this.ipPublic_ = "";
            this.ipPrivate_ = "";
            this.bytesAvailable_ = 0L;
            this.protocolVersion_ = 0;
            this.clientcommVersion_ = 0;
            this.localUsers_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_ClientData() {
            this.packageVersion_ = 0;
            this.os_ = "";
            this.machineName_ = "";
            this.ipPublic_ = "";
            this.ipPrivate_ = "";
            this.bytesAvailable_ = 0L;
            this.protocolVersion_ = 0;
            this.clientcommVersion_ = 0;
            this.localUsers_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.os_ = "";
            this.machineName_ = "";
            this.ipPublic_ = "";
            this.ipPrivate_ = "";
            this.runningGames_ = Collections.emptyList();
            this.localUsers_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_ClientData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_ClientData_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_ClientData.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasPackageVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public int getPackageVersion() {
            return this.packageVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasOs() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public String getOs() {
            Object obj = this.os_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.os_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public ByteString getOsBytes() {
            Object obj = this.os_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.os_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasMachineName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public ByteString getMachineNameBytes() {
            Object obj = this.machineName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.machineName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasIpPublic() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public ByteString getIpPublicBytes() {
            Object obj = this.ipPublic_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipPublic_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasIpPrivate() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public String getIpPrivate() {
            Object obj = this.ipPrivate_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipPrivate_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public ByteString getIpPrivateBytes() {
            Object obj = this.ipPrivate_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipPrivate_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasBytesAvailable() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public long getBytesAvailable() {
            return this.bytesAvailable_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public List<CClientComm_ClientData_RunningGames> getRunningGamesList() {
            return this.runningGames_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public List<? extends CClientComm_ClientData_RunningGamesOrBuilder> getRunningGamesOrBuilderList() {
            return this.runningGames_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public int getRunningGamesCount() {
            return this.runningGames_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public CClientComm_ClientData_RunningGames getRunningGames(int i) {
            return this.runningGames_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public CClientComm_ClientData_RunningGamesOrBuilder getRunningGamesOrBuilder(int i) {
            return this.runningGames_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasProtocolVersion() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public int getProtocolVersion() {
            return this.protocolVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public boolean hasClientcommVersion() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public int getClientcommVersion() {
            return this.clientcommVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public List<Integer> getLocalUsersList() {
            return this.localUsers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public int getLocalUsersCount() {
            return this.localUsers_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
        public int getLocalUsers(int i) {
            return this.localUsers_.getInt(i);
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
                codedOutputStream.writeUInt32(1, this.packageVersion_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.os_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.machineName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.ipPublic_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.ipPrivate_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt64(6, this.bytesAvailable_);
            }
            for (int i = 0; i < this.runningGames_.size(); i++) {
                codedOutputStream.writeMessage(7, this.runningGames_.get(i));
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(8, this.protocolVersion_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(9, this.clientcommVersion_);
            }
            for (int i2 = 0; i2 < this.localUsers_.size(); i2++) {
                codedOutputStream.writeUInt32(10, this.localUsers_.getInt(i2));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.packageVersion_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.os_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.machineName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.ipPublic_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.ipPrivate_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(6, this.bytesAvailable_);
            }
            for (int i2 = 0; i2 < this.runningGames_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(7, this.runningGames_.get(i2));
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(8, this.protocolVersion_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(9, this.clientcommVersion_);
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.localUsers_.size(); i3++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.localUsers_.getInt(i3));
            }
            int size = iComputeUInt32Size + iComputeUInt32SizeNoTag + getLocalUsersList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CClientComm_ClientData)) {
                return super.equals(obj);
            }
            CClientComm_ClientData cClientComm_ClientData = (CClientComm_ClientData) obj;
            if (hasPackageVersion() != cClientComm_ClientData.hasPackageVersion()) {
                return false;
            }
            if ((hasPackageVersion() && getPackageVersion() != cClientComm_ClientData.getPackageVersion()) || hasOs() != cClientComm_ClientData.hasOs()) {
                return false;
            }
            if ((hasOs() && !getOs().equals(cClientComm_ClientData.getOs())) || hasMachineName() != cClientComm_ClientData.hasMachineName()) {
                return false;
            }
            if ((hasMachineName() && !getMachineName().equals(cClientComm_ClientData.getMachineName())) || hasIpPublic() != cClientComm_ClientData.hasIpPublic()) {
                return false;
            }
            if ((hasIpPublic() && !getIpPublic().equals(cClientComm_ClientData.getIpPublic())) || hasIpPrivate() != cClientComm_ClientData.hasIpPrivate()) {
                return false;
            }
            if ((hasIpPrivate() && !getIpPrivate().equals(cClientComm_ClientData.getIpPrivate())) || hasBytesAvailable() != cClientComm_ClientData.hasBytesAvailable()) {
                return false;
            }
            if ((hasBytesAvailable() && getBytesAvailable() != cClientComm_ClientData.getBytesAvailable()) || !getRunningGamesList().equals(cClientComm_ClientData.getRunningGamesList()) || hasProtocolVersion() != cClientComm_ClientData.hasProtocolVersion()) {
                return false;
            }
            if ((!hasProtocolVersion() || getProtocolVersion() == cClientComm_ClientData.getProtocolVersion()) && hasClientcommVersion() == cClientComm_ClientData.hasClientcommVersion()) {
                return (!hasClientcommVersion() || getClientcommVersion() == cClientComm_ClientData.getClientcommVersion()) && getLocalUsersList().equals(cClientComm_ClientData.getLocalUsersList()) && getUnknownFields().equals(cClientComm_ClientData.getUnknownFields());
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
            if (hasPackageVersion()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageVersion();
            }
            if (hasOs()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getOs().hashCode();
            }
            if (hasMachineName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMachineName().hashCode();
            }
            if (hasIpPublic()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getIpPublic().hashCode();
            }
            if (hasIpPrivate()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getIpPrivate().hashCode();
            }
            if (hasBytesAvailable()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getBytesAvailable());
            }
            if (getRunningGamesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getRunningGamesList().hashCode();
            }
            if (hasProtocolVersion()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getProtocolVersion();
            }
            if (hasClientcommVersion()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getClientcommVersion();
            }
            if (getLocalUsersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getLocalUsersList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_ClientData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_ClientData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_ClientData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_ClientData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_ClientData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_ClientData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_ClientData parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_ClientData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_ClientData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_ClientData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_ClientData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_ClientData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_ClientData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_ClientData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_ClientData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_ClientData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_ClientData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_ClientData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_ClientData cClientComm_ClientData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_ClientData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_ClientDataOrBuilder {
            private int bitField0_;
            private long bytesAvailable_;
            private int clientcommVersion_;
            private Object ipPrivate_;
            private Object ipPublic_;
            private Internal.IntList localUsers_;
            private Object machineName_;
            private Object os_;
            private int packageVersion_;
            private int protocolVersion_;
            private RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> runningGamesBuilder_;
            private List<CClientComm_ClientData_RunningGames> runningGames_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_ClientData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_ClientData_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_ClientData.class, Builder.class);
            }

            private Builder() {
                this.os_ = "";
                this.machineName_ = "";
                this.ipPublic_ = "";
                this.ipPrivate_ = "";
                this.runningGames_ = Collections.emptyList();
                this.localUsers_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.os_ = "";
                this.machineName_ = "";
                this.ipPublic_ = "";
                this.ipPrivate_ = "";
                this.runningGames_ = Collections.emptyList();
                this.localUsers_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.packageVersion_ = 0;
                this.os_ = "";
                this.machineName_ = "";
                this.ipPublic_ = "";
                this.ipPrivate_ = "";
                this.bytesAvailable_ = 0L;
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.runningGames_ = Collections.emptyList();
                } else {
                    this.runningGames_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -65;
                this.protocolVersion_ = 0;
                this.clientcommVersion_ = 0;
                this.localUsers_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_ClientData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_ClientData getDefaultInstanceForType() {
                return CClientComm_ClientData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_ClientData build() {
                CClientComm_ClientData cClientComm_ClientDataBuildPartial = buildPartial();
                if (cClientComm_ClientDataBuildPartial.isInitialized()) {
                    return cClientComm_ClientDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_ClientDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_ClientData buildPartial() {
                CClientComm_ClientData cClientComm_ClientData = new CClientComm_ClientData(this);
                buildPartialRepeatedFields(cClientComm_ClientData);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_ClientData);
                }
                onBuilt();
                return cClientComm_ClientData;
            }

            private void buildPartialRepeatedFields(CClientComm_ClientData cClientComm_ClientData) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 64) != 0) {
                        this.runningGames_ = Collections.unmodifiableList(this.runningGames_);
                        this.bitField0_ &= -65;
                    }
                    cClientComm_ClientData.runningGames_ = this.runningGames_;
                    return;
                }
                cClientComm_ClientData.runningGames_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CClientComm_ClientData cClientComm_ClientData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_ClientData.packageVersion_ = this.packageVersion_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_ClientData.os_ = this.os_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_ClientData.machineName_ = this.machineName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientComm_ClientData.ipPublic_ = this.ipPublic_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientComm_ClientData.ipPrivate_ = this.ipPrivate_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cClientComm_ClientData.bytesAvailable_ = this.bytesAvailable_;
                    i |= 32;
                }
                if ((i2 & 128) != 0) {
                    cClientComm_ClientData.protocolVersion_ = this.protocolVersion_;
                    i |= 64;
                }
                if ((i2 & 256) != 0) {
                    cClientComm_ClientData.clientcommVersion_ = this.clientcommVersion_;
                    i |= 128;
                }
                if ((i2 & 512) != 0) {
                    this.localUsers_.makeImmutable();
                    cClientComm_ClientData.localUsers_ = this.localUsers_;
                }
                cClientComm_ClientData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_ClientData) {
                    return mergeFrom((CClientComm_ClientData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_ClientData cClientComm_ClientData) {
                if (cClientComm_ClientData == CClientComm_ClientData.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_ClientData.hasPackageVersion()) {
                    setPackageVersion(cClientComm_ClientData.getPackageVersion());
                }
                if (cClientComm_ClientData.hasOs()) {
                    this.os_ = cClientComm_ClientData.os_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientComm_ClientData.hasMachineName()) {
                    this.machineName_ = cClientComm_ClientData.machineName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cClientComm_ClientData.hasIpPublic()) {
                    this.ipPublic_ = cClientComm_ClientData.ipPublic_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cClientComm_ClientData.hasIpPrivate()) {
                    this.ipPrivate_ = cClientComm_ClientData.ipPrivate_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (cClientComm_ClientData.hasBytesAvailable()) {
                    setBytesAvailable(cClientComm_ClientData.getBytesAvailable());
                }
                if (this.runningGamesBuilder_ == null) {
                    if (!cClientComm_ClientData.runningGames_.isEmpty()) {
                        if (this.runningGames_.isEmpty()) {
                            this.runningGames_ = cClientComm_ClientData.runningGames_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureRunningGamesIsMutable();
                            this.runningGames_.addAll(cClientComm_ClientData.runningGames_);
                        }
                        onChanged();
                    }
                } else if (!cClientComm_ClientData.runningGames_.isEmpty()) {
                    if (this.runningGamesBuilder_.isEmpty()) {
                        this.runningGamesBuilder_.dispose();
                        this.runningGamesBuilder_ = null;
                        this.runningGames_ = cClientComm_ClientData.runningGames_;
                        this.bitField0_ &= -65;
                        this.runningGamesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetRunningGamesFieldBuilder() : null;
                    } else {
                        this.runningGamesBuilder_.addAllMessages(cClientComm_ClientData.runningGames_);
                    }
                }
                if (cClientComm_ClientData.hasProtocolVersion()) {
                    setProtocolVersion(cClientComm_ClientData.getProtocolVersion());
                }
                if (cClientComm_ClientData.hasClientcommVersion()) {
                    setClientcommVersion(cClientComm_ClientData.getClientcommVersion());
                }
                if (!cClientComm_ClientData.localUsers_.isEmpty()) {
                    if (this.localUsers_.isEmpty()) {
                        Internal.IntList intList = cClientComm_ClientData.localUsers_;
                        this.localUsers_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 512;
                    } else {
                        ensureLocalUsersIsMutable();
                        this.localUsers_.addAll(cClientComm_ClientData.localUsers_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cClientComm_ClientData.getUnknownFields());
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
                                    this.packageVersion_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 18:
                                    this.os_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.machineName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    this.ipPublic_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    break;
                                case 42:
                                    this.ipPrivate_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.bytesAvailable_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER /* 58 */:
                                    CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames = (CClientComm_ClientData_RunningGames) codedInputStream.readMessage(CClientComm_ClientData_RunningGames.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureRunningGamesIsMutable();
                                        this.runningGames_.add(cClientComm_ClientData_RunningGames);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cClientComm_ClientData_RunningGames);
                                    }
                                    break;
                                case 64:
                                    this.protocolVersion_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                    break;
                                case 72:
                                    this.clientcommVersion_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureLocalUsersIsMutable();
                                    this.localUsers_.addInt(uInt32);
                                    break;
                                case 82:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureLocalUsersIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.localUsers_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasPackageVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public int getPackageVersion() {
                return this.packageVersion_;
            }

            public Builder setPackageVersion(int i) {
                this.packageVersion_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPackageVersion() {
                this.bitField0_ &= -2;
                this.packageVersion_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasOs() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public String getOs() {
                Object obj = this.os_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.os_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public ByteString getOsBytes() {
                Object obj = this.os_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.os_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setOs(String str) {
                str.getClass();
                this.os_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearOs() {
                this.os_ = CClientComm_ClientData.getDefaultInstance().getOs();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setOsBytes(ByteString byteString) {
                byteString.getClass();
                this.os_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasMachineName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
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
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMachineName() {
                this.machineName_ = CClientComm_ClientData.getDefaultInstance().getMachineName();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setMachineNameBytes(ByteString byteString) {
                byteString.getClass();
                this.machineName_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasIpPublic() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
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
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearIpPublic() {
                this.ipPublic_ = CClientComm_ClientData.getDefaultInstance().getIpPublic();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setIpPublicBytes(ByteString byteString) {
                byteString.getClass();
                this.ipPublic_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasIpPrivate() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public String getIpPrivate() {
                Object obj = this.ipPrivate_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.ipPrivate_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public ByteString getIpPrivateBytes() {
                Object obj = this.ipPrivate_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipPrivate_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIpPrivate(String str) {
                str.getClass();
                this.ipPrivate_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearIpPrivate() {
                this.ipPrivate_ = CClientComm_ClientData.getDefaultInstance().getIpPrivate();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setIpPrivateBytes(ByteString byteString) {
                byteString.getClass();
                this.ipPrivate_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasBytesAvailable() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public long getBytesAvailable() {
                return this.bytesAvailable_;
            }

            public Builder setBytesAvailable(long j) {
                this.bytesAvailable_ = j;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearBytesAvailable() {
                this.bitField0_ &= -33;
                this.bytesAvailable_ = 0L;
                onChanged();
                return this;
            }

            private void ensureRunningGamesIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.runningGames_ = new ArrayList(this.runningGames_);
                    this.bitField0_ |= 64;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public List<CClientComm_ClientData_RunningGames> getRunningGamesList() {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.runningGames_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public int getRunningGamesCount() {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.runningGames_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public CClientComm_ClientData_RunningGames getRunningGames(int i) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.runningGames_.get(i);
                }
                return (CClientComm_ClientData_RunningGames) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setRunningGames(int i, CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_ClientData_RunningGames.getClass();
                    ensureRunningGamesIsMutable();
                    this.runningGames_.set(i, cClientComm_ClientData_RunningGames);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientComm_ClientData_RunningGames);
                }
                return this;
            }

            public Builder setRunningGames(int i, CClientComm_ClientData_RunningGames.Builder builder) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureRunningGamesIsMutable();
                    this.runningGames_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addRunningGames(CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_ClientData_RunningGames.getClass();
                    ensureRunningGamesIsMutable();
                    this.runningGames_.add(cClientComm_ClientData_RunningGames);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientComm_ClientData_RunningGames);
                }
                return this;
            }

            public Builder addRunningGames(int i, CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_ClientData_RunningGames.getClass();
                    ensureRunningGamesIsMutable();
                    this.runningGames_.add(i, cClientComm_ClientData_RunningGames);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientComm_ClientData_RunningGames);
                }
                return this;
            }

            public Builder addRunningGames(CClientComm_ClientData_RunningGames.Builder builder) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureRunningGamesIsMutable();
                    this.runningGames_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addRunningGames(int i, CClientComm_ClientData_RunningGames.Builder builder) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureRunningGamesIsMutable();
                    this.runningGames_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllRunningGames(Iterable<? extends CClientComm_ClientData_RunningGames> iterable) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureRunningGamesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.runningGames_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearRunningGames() {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.runningGames_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeRunningGames(int i) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureRunningGamesIsMutable();
                    this.runningGames_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientComm_ClientData_RunningGames.Builder getRunningGamesBuilder(int i) {
                return (CClientComm_ClientData_RunningGames.Builder) internalGetRunningGamesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public CClientComm_ClientData_RunningGamesOrBuilder getRunningGamesOrBuilder(int i) {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.runningGames_.get(i);
                }
                return (CClientComm_ClientData_RunningGamesOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public List<? extends CClientComm_ClientData_RunningGamesOrBuilder> getRunningGamesOrBuilderList() {
                RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> repeatedFieldBuilder = this.runningGamesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.runningGames_);
            }

            public CClientComm_ClientData_RunningGames.Builder addRunningGamesBuilder() {
                return (CClientComm_ClientData_RunningGames.Builder) internalGetRunningGamesFieldBuilder().addBuilder(CClientComm_ClientData_RunningGames.getDefaultInstance());
            }

            public CClientComm_ClientData_RunningGames.Builder addRunningGamesBuilder(int i) {
                return (CClientComm_ClientData_RunningGames.Builder) internalGetRunningGamesFieldBuilder().addBuilder(i, CClientComm_ClientData_RunningGames.getDefaultInstance());
            }

            public List<CClientComm_ClientData_RunningGames.Builder> getRunningGamesBuilderList() {
                return internalGetRunningGamesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientComm_ClientData_RunningGames, CClientComm_ClientData_RunningGames.Builder, CClientComm_ClientData_RunningGamesOrBuilder> internalGetRunningGamesFieldBuilder() {
                if (this.runningGamesBuilder_ == null) {
                    this.runningGamesBuilder_ = new RepeatedFieldBuilder<>(this.runningGames_, (this.bitField0_ & 64) != 0, getParentForChildren(), isClean());
                    this.runningGames_ = null;
                }
                return this.runningGamesBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasProtocolVersion() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public int getProtocolVersion() {
                return this.protocolVersion_;
            }

            public Builder setProtocolVersion(int i) {
                this.protocolVersion_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearProtocolVersion() {
                this.bitField0_ &= -129;
                this.protocolVersion_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public boolean hasClientcommVersion() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public int getClientcommVersion() {
                return this.clientcommVersion_;
            }

            public Builder setClientcommVersion(int i) {
                this.clientcommVersion_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearClientcommVersion() {
                this.bitField0_ &= -257;
                this.clientcommVersion_ = 0;
                onChanged();
                return this;
            }

            private void ensureLocalUsersIsMutable() {
                if (!this.localUsers_.isModifiable()) {
                    this.localUsers_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.localUsers_);
                }
                this.bitField0_ |= 512;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public List<Integer> getLocalUsersList() {
                this.localUsers_.makeImmutable();
                return this.localUsers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public int getLocalUsersCount() {
                return this.localUsers_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientDataOrBuilder
            public int getLocalUsers(int i) {
                return this.localUsers_.getInt(i);
            }

            public Builder setLocalUsers(int i, int i2) {
                ensureLocalUsersIsMutable();
                this.localUsers_.setInt(i, i2);
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder addLocalUsers(int i) {
                ensureLocalUsersIsMutable();
                this.localUsers_.addInt(i);
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder addAllLocalUsers(Iterable<? extends Integer> iterable) {
                ensureLocalUsersIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.localUsers_);
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearLocalUsers() {
                this.localUsers_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -513;
                onChanged();
                return this;
            }
        }

        public static CClientComm_ClientData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_ClientData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_ClientData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_ClientData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_ClientData_RunningGames extends GeneratedMessage implements CClientComm_ClientData_RunningGamesOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CClientComm_ClientData_RunningGames DEFAULT_INSTANCE;
        public static final int EXTRA_INFO_FIELD_NUMBER = 2;
        private static final Parser<CClientComm_ClientData_RunningGames> PARSER;
        public static final int TIME_RUNNING_SEC_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private volatile Object extraInfo_;
        private byte memoizedIsInitialized;
        private int timeRunningSec_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_ClientData_RunningGames.class.getName());
            DEFAULT_INSTANCE = new CClientComm_ClientData_RunningGames();
            PARSER = new AbstractParser<CClientComm_ClientData_RunningGames>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGames.1
                @Override // com.google.protobuf.Parser
                public CClientComm_ClientData_RunningGames parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_ClientData_RunningGames.newBuilder();
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

        private CClientComm_ClientData_RunningGames(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.extraInfo_ = "";
            this.timeRunningSec_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_ClientData_RunningGames() {
            this.appid_ = 0;
            this.extraInfo_ = "";
            this.timeRunningSec_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.extraInfo_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_ClientData_RunningGames_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_ClientData_RunningGames_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_ClientData_RunningGames.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public boolean hasExtraInfo() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public String getExtraInfo() {
            Object obj = this.extraInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.extraInfo_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public ByteString getExtraInfoBytes() {
            Object obj = this.extraInfo_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.extraInfo_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public boolean hasTimeRunningSec() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
        public int getTimeRunningSec() {
            return this.timeRunningSec_;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.extraInfo_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.timeRunningSec_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.extraInfo_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.timeRunningSec_);
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
            if (!(obj instanceof CClientComm_ClientData_RunningGames)) {
                return super.equals(obj);
            }
            CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames = (CClientComm_ClientData_RunningGames) obj;
            if (hasAppid() != cClientComm_ClientData_RunningGames.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cClientComm_ClientData_RunningGames.getAppid()) || hasExtraInfo() != cClientComm_ClientData_RunningGames.hasExtraInfo()) {
                return false;
            }
            if ((!hasExtraInfo() || getExtraInfo().equals(cClientComm_ClientData_RunningGames.getExtraInfo())) && hasTimeRunningSec() == cClientComm_ClientData_RunningGames.hasTimeRunningSec()) {
                return (!hasTimeRunningSec() || getTimeRunningSec() == cClientComm_ClientData_RunningGames.getTimeRunningSec()) && getUnknownFields().equals(cClientComm_ClientData_RunningGames.getUnknownFields());
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
            if (hasExtraInfo()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getExtraInfo().hashCode();
            }
            if (hasTimeRunningSec()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTimeRunningSec();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_ClientData_RunningGames parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_ClientData_RunningGames) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_ClientData_RunningGames) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_ClientData_RunningGames parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_ClientData_RunningGames) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_ClientData_RunningGames parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_ClientData_RunningGames) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_ClientData_RunningGames) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_ClientData_RunningGames parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_ClientData_RunningGames) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_ClientData_RunningGames);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_ClientData_RunningGamesOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object extraInfo_;
            private int timeRunningSec_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_ClientData_RunningGames_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_ClientData_RunningGames_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_ClientData_RunningGames.class, Builder.class);
            }

            private Builder() {
                this.extraInfo_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.extraInfo_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.extraInfo_ = "";
                this.timeRunningSec_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_ClientData_RunningGames_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_ClientData_RunningGames getDefaultInstanceForType() {
                return CClientComm_ClientData_RunningGames.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_ClientData_RunningGames build() {
                CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGamesBuildPartial = buildPartial();
                if (cClientComm_ClientData_RunningGamesBuildPartial.isInitialized()) {
                    return cClientComm_ClientData_RunningGamesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_ClientData_RunningGamesBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_ClientData_RunningGames buildPartial() {
                CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames = new CClientComm_ClientData_RunningGames(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_ClientData_RunningGames);
                }
                onBuilt();
                return cClientComm_ClientData_RunningGames;
            }

            private void buildPartial0(CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_ClientData_RunningGames.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_ClientData_RunningGames.extraInfo_ = this.extraInfo_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_ClientData_RunningGames.timeRunningSec_ = this.timeRunningSec_;
                    i |= 4;
                }
                cClientComm_ClientData_RunningGames.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_ClientData_RunningGames) {
                    return mergeFrom((CClientComm_ClientData_RunningGames) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames) {
                if (cClientComm_ClientData_RunningGames == CClientComm_ClientData_RunningGames.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_ClientData_RunningGames.hasAppid()) {
                    setAppid(cClientComm_ClientData_RunningGames.getAppid());
                }
                if (cClientComm_ClientData_RunningGames.hasExtraInfo()) {
                    this.extraInfo_ = cClientComm_ClientData_RunningGames.extraInfo_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientComm_ClientData_RunningGames.hasTimeRunningSec()) {
                    setTimeRunningSec(cClientComm_ClientData_RunningGames.getTimeRunningSec());
                }
                mergeUnknownFields(cClientComm_ClientData_RunningGames.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.extraInfo_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.timeRunningSec_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
            public boolean hasExtraInfo() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
            public String getExtraInfo() {
                Object obj = this.extraInfo_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.extraInfo_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
            public ByteString getExtraInfoBytes() {
                Object obj = this.extraInfo_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.extraInfo_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setExtraInfo(String str) {
                str.getClass();
                this.extraInfo_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearExtraInfo() {
                this.extraInfo_ = CClientComm_ClientData_RunningGames.getDefaultInstance().getExtraInfo();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setExtraInfoBytes(ByteString byteString) {
                byteString.getClass();
                this.extraInfo_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
            public boolean hasTimeRunningSec() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_ClientData_RunningGamesOrBuilder
            public int getTimeRunningSec() {
                return this.timeRunningSec_;
            }

            public Builder setTimeRunningSec(int i) {
                this.timeRunningSec_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearTimeRunningSec() {
                this.bitField0_ &= -5;
                this.timeRunningSec_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientComm_ClientData_RunningGames getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_ClientData_RunningGames> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_ClientData_RunningGames> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_ClientData_RunningGames getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_EnableOrDisableDownloads_Request extends GeneratedMessage implements CClientComm_EnableOrDisableDownloads_RequestOrBuilder {
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 1;
        private static final CClientComm_EnableOrDisableDownloads_Request DEFAULT_INSTANCE;
        public static final int ENABLE_FIELD_NUMBER = 2;
        private static final Parser<CClientComm_EnableOrDisableDownloads_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientInstanceid_;
        private boolean enable_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_EnableOrDisableDownloads_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_EnableOrDisableDownloads_Request();
            PARSER = new AbstractParser<CClientComm_EnableOrDisableDownloads_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_EnableOrDisableDownloads_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_EnableOrDisableDownloads_Request.newBuilder();
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

        private CClientComm_EnableOrDisableDownloads_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.clientInstanceid_ = 0L;
            this.enable_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_EnableOrDisableDownloads_Request() {
            this.clientInstanceid_ = 0L;
            this.enable_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_EnableOrDisableDownloads_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
        public boolean hasEnable() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
        public boolean getEnable() {
            return this.enable_;
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
                codedOutputStream.writeUInt64(1, this.clientInstanceid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.enable_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.clientInstanceid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeBoolSize(2, this.enable_);
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
            if (!(obj instanceof CClientComm_EnableOrDisableDownloads_Request)) {
                return super.equals(obj);
            }
            CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_Request = (CClientComm_EnableOrDisableDownloads_Request) obj;
            if (hasClientInstanceid() != cClientComm_EnableOrDisableDownloads_Request.hasClientInstanceid()) {
                return false;
            }
            if ((!hasClientInstanceid() || getClientInstanceid() == cClientComm_EnableOrDisableDownloads_Request.getClientInstanceid()) && hasEnable() == cClientComm_EnableOrDisableDownloads_Request.hasEnable()) {
                return (!hasEnable() || getEnable() == cClientComm_EnableOrDisableDownloads_Request.getEnable()) && getUnknownFields().equals(cClientComm_EnableOrDisableDownloads_Request.getUnknownFields());
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
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getClientInstanceid());
            }
            if (hasEnable()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getEnable());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_EnableOrDisableDownloads_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_EnableOrDisableDownloads_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_EnableOrDisableDownloads_RequestOrBuilder {
            private int bitField0_;
            private long clientInstanceid_;
            private boolean enable_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_EnableOrDisableDownloads_Request.class, Builder.class);
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
                this.clientInstanceid_ = 0L;
                this.enable_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_EnableOrDisableDownloads_Request getDefaultInstanceForType() {
                return CClientComm_EnableOrDisableDownloads_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_EnableOrDisableDownloads_Request build() {
                CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_RequestBuildPartial = buildPartial();
                if (cClientComm_EnableOrDisableDownloads_RequestBuildPartial.isInitialized()) {
                    return cClientComm_EnableOrDisableDownloads_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_EnableOrDisableDownloads_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_EnableOrDisableDownloads_Request buildPartial() {
                CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_Request = new CClientComm_EnableOrDisableDownloads_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_EnableOrDisableDownloads_Request);
                }
                onBuilt();
                return cClientComm_EnableOrDisableDownloads_Request;
            }

            private void buildPartial0(CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_EnableOrDisableDownloads_Request.clientInstanceid_ = this.clientInstanceid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_EnableOrDisableDownloads_Request.enable_ = this.enable_;
                    i |= 2;
                }
                cClientComm_EnableOrDisableDownloads_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_EnableOrDisableDownloads_Request) {
                    return mergeFrom((CClientComm_EnableOrDisableDownloads_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_Request) {
                if (cClientComm_EnableOrDisableDownloads_Request == CClientComm_EnableOrDisableDownloads_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_EnableOrDisableDownloads_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_EnableOrDisableDownloads_Request.getClientInstanceid());
                }
                if (cClientComm_EnableOrDisableDownloads_Request.hasEnable()) {
                    setEnable(cClientComm_EnableOrDisableDownloads_Request.getEnable());
                }
                mergeUnknownFields(cClientComm_EnableOrDisableDownloads_Request.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.enable_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -2;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
            public boolean hasEnable() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_RequestOrBuilder
            public boolean getEnable() {
                return this.enable_;
            }

            public Builder setEnable(boolean z) {
                this.enable_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearEnable() {
                this.bitField0_ &= -3;
                this.enable_ = false;
                onChanged();
                return this;
            }
        }

        public static CClientComm_EnableOrDisableDownloads_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_EnableOrDisableDownloads_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_EnableOrDisableDownloads_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_EnableOrDisableDownloads_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_EnableOrDisableDownloads_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CClientComm_EnableOrDisableDownloads_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_EnableOrDisableDownloads_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_EnableOrDisableDownloads_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_EnableOrDisableDownloads_Response();
            PARSER = new AbstractParser<CClientComm_EnableOrDisableDownloads_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_EnableOrDisableDownloads_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_EnableOrDisableDownloads_Response.newBuilder();
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

        private CClientComm_EnableOrDisableDownloads_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_EnableOrDisableDownloads_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_EnableOrDisableDownloads_Response.class, Builder.class);
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
            if (obj instanceof CClientComm_EnableOrDisableDownloads_Response) {
                return getUnknownFields().equals(((CClientComm_EnableOrDisableDownloads_Response) obj).getUnknownFields());
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

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_EnableOrDisableDownloads_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_EnableOrDisableDownloads_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_EnableOrDisableDownloads_Response cClientComm_EnableOrDisableDownloads_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_EnableOrDisableDownloads_Response);
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
                return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_EnableOrDisableDownloads_Response.class, Builder.class);
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
                return ServiceClientcomm.internal_static_CClientComm_EnableOrDisableDownloads_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_EnableOrDisableDownloads_Response getDefaultInstanceForType() {
                return CClientComm_EnableOrDisableDownloads_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_EnableOrDisableDownloads_Response build() {
                CClientComm_EnableOrDisableDownloads_Response cClientComm_EnableOrDisableDownloads_ResponseBuildPartial = buildPartial();
                if (cClientComm_EnableOrDisableDownloads_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_EnableOrDisableDownloads_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_EnableOrDisableDownloads_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_EnableOrDisableDownloads_Response buildPartial() {
                CClientComm_EnableOrDisableDownloads_Response cClientComm_EnableOrDisableDownloads_Response = new CClientComm_EnableOrDisableDownloads_Response(this);
                onBuilt();
                return cClientComm_EnableOrDisableDownloads_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_EnableOrDisableDownloads_Response) {
                    return mergeFrom((CClientComm_EnableOrDisableDownloads_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_EnableOrDisableDownloads_Response cClientComm_EnableOrDisableDownloads_Response) {
                if (cClientComm_EnableOrDisableDownloads_Response == CClientComm_EnableOrDisableDownloads_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cClientComm_EnableOrDisableDownloads_Response.getUnknownFields());
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

        public static CClientComm_EnableOrDisableDownloads_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_EnableOrDisableDownloads_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_EnableOrDisableDownloads_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_EnableOrDisableDownloads_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetAllClientLogonInfo_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CClientComm_GetAllClientLogonInfo_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_GetAllClientLogonInfo_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetAllClientLogonInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetAllClientLogonInfo_Request();
            PARSER = new AbstractParser<CClientComm_GetAllClientLogonInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetAllClientLogonInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetAllClientLogonInfo_Request.newBuilder();
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

        private CClientComm_GetAllClientLogonInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetAllClientLogonInfo_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetAllClientLogonInfo_Request.class, Builder.class);
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
            if (obj instanceof CClientComm_GetAllClientLogonInfo_Request) {
                return getUnknownFields().equals(((CClientComm_GetAllClientLogonInfo_Request) obj).getUnknownFields());
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

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetAllClientLogonInfo_Request cClientComm_GetAllClientLogonInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetAllClientLogonInfo_Request);
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
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetAllClientLogonInfo_Request.class, Builder.class);
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
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetAllClientLogonInfo_Request getDefaultInstanceForType() {
                return CClientComm_GetAllClientLogonInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetAllClientLogonInfo_Request build() {
                CClientComm_GetAllClientLogonInfo_Request cClientComm_GetAllClientLogonInfo_RequestBuildPartial = buildPartial();
                if (cClientComm_GetAllClientLogonInfo_RequestBuildPartial.isInitialized()) {
                    return cClientComm_GetAllClientLogonInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetAllClientLogonInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetAllClientLogonInfo_Request buildPartial() {
                CClientComm_GetAllClientLogonInfo_Request cClientComm_GetAllClientLogonInfo_Request = new CClientComm_GetAllClientLogonInfo_Request(this);
                onBuilt();
                return cClientComm_GetAllClientLogonInfo_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetAllClientLogonInfo_Request) {
                    return mergeFrom((CClientComm_GetAllClientLogonInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetAllClientLogonInfo_Request cClientComm_GetAllClientLogonInfo_Request) {
                if (cClientComm_GetAllClientLogonInfo_Request == CClientComm_GetAllClientLogonInfo_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cClientComm_GetAllClientLogonInfo_Request.getUnknownFields());
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

        public static CClientComm_GetAllClientLogonInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetAllClientLogonInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetAllClientLogonInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetAllClientLogonInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetAllClientLogonInfo_Response extends GeneratedMessage implements CClientComm_GetAllClientLogonInfo_ResponseOrBuilder {
        private static final CClientComm_GetAllClientLogonInfo_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_GetAllClientLogonInfo_Response> PARSER;
        public static final int REFETCH_INTERVAL_SEC_FIELD_NUMBER = 2;
        public static final int SESSIONS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int refetchIntervalSec_;
        private List<CClientComm_GetAllClientLogonInfo_Response_Session> sessions_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetAllClientLogonInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetAllClientLogonInfo_Response();
            PARSER = new AbstractParser<CClientComm_GetAllClientLogonInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetAllClientLogonInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetAllClientLogonInfo_Response.newBuilder();
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

        private CClientComm_GetAllClientLogonInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.refetchIntervalSec_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetAllClientLogonInfo_Response() {
            this.refetchIntervalSec_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.sessions_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetAllClientLogonInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public List<CClientComm_GetAllClientLogonInfo_Response_Session> getSessionsList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public List<? extends CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> getSessionsOrBuilderList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public int getSessionsCount() {
            return this.sessions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public CClientComm_GetAllClientLogonInfo_Response_Session getSessions(int i) {
            return this.sessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder getSessionsOrBuilder(int i) {
            return this.sessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public boolean hasRefetchIntervalSec() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
        public int getRefetchIntervalSec() {
            return this.refetchIntervalSec_;
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
                codedOutputStream.writeUInt32(2, this.refetchIntervalSec_);
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
            for (int i2 = 0; i2 < this.sessions_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(1, this.sessions_.get(i2));
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.refetchIntervalSec_);
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
            if (!(obj instanceof CClientComm_GetAllClientLogonInfo_Response)) {
                return super.equals(obj);
            }
            CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_Response = (CClientComm_GetAllClientLogonInfo_Response) obj;
            if (getSessionsList().equals(cClientComm_GetAllClientLogonInfo_Response.getSessionsList()) && hasRefetchIntervalSec() == cClientComm_GetAllClientLogonInfo_Response.hasRefetchIntervalSec()) {
                return (!hasRefetchIntervalSec() || getRefetchIntervalSec() == cClientComm_GetAllClientLogonInfo_Response.getRefetchIntervalSec()) && getUnknownFields().equals(cClientComm_GetAllClientLogonInfo_Response.getUnknownFields());
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
            if (hasRefetchIntervalSec()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getRefetchIntervalSec();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetAllClientLogonInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetAllClientLogonInfo_ResponseOrBuilder {
            private int bitField0_;
            private int refetchIntervalSec_;
            private RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> sessionsBuilder_;
            private List<CClientComm_GetAllClientLogonInfo_Response_Session> sessions_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetAllClientLogonInfo_Response.class, Builder.class);
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
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                } else {
                    this.sessions_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.refetchIntervalSec_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetAllClientLogonInfo_Response getDefaultInstanceForType() {
                return CClientComm_GetAllClientLogonInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetAllClientLogonInfo_Response build() {
                CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_ResponseBuildPartial = buildPartial();
                if (cClientComm_GetAllClientLogonInfo_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_GetAllClientLogonInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetAllClientLogonInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetAllClientLogonInfo_Response buildPartial() {
                CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_Response = new CClientComm_GetAllClientLogonInfo_Response(this);
                buildPartialRepeatedFields(cClientComm_GetAllClientLogonInfo_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetAllClientLogonInfo_Response);
                }
                onBuilt();
                return cClientComm_GetAllClientLogonInfo_Response;
            }

            private void buildPartialRepeatedFields(CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_Response) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.sessions_ = Collections.unmodifiableList(this.sessions_);
                        this.bitField0_ &= -2;
                    }
                    cClientComm_GetAllClientLogonInfo_Response.sessions_ = this.sessions_;
                    return;
                }
                cClientComm_GetAllClientLogonInfo_Response.sessions_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_Response) {
                int i;
                if ((this.bitField0_ & 2) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response.refetchIntervalSec_ = this.refetchIntervalSec_;
                    i = 1;
                } else {
                    i = 0;
                }
                cClientComm_GetAllClientLogonInfo_Response.bitField0_ = i | cClientComm_GetAllClientLogonInfo_Response.bitField0_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetAllClientLogonInfo_Response) {
                    return mergeFrom((CClientComm_GetAllClientLogonInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_Response) {
                if (cClientComm_GetAllClientLogonInfo_Response == CClientComm_GetAllClientLogonInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.sessionsBuilder_ == null) {
                    if (!cClientComm_GetAllClientLogonInfo_Response.sessions_.isEmpty()) {
                        if (this.sessions_.isEmpty()) {
                            this.sessions_ = cClientComm_GetAllClientLogonInfo_Response.sessions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureSessionsIsMutable();
                            this.sessions_.addAll(cClientComm_GetAllClientLogonInfo_Response.sessions_);
                        }
                        onChanged();
                    }
                } else if (!cClientComm_GetAllClientLogonInfo_Response.sessions_.isEmpty()) {
                    if (this.sessionsBuilder_.isEmpty()) {
                        this.sessionsBuilder_.dispose();
                        this.sessionsBuilder_ = null;
                        this.sessions_ = cClientComm_GetAllClientLogonInfo_Response.sessions_;
                        this.bitField0_ &= -2;
                        this.sessionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetSessionsFieldBuilder() : null;
                    } else {
                        this.sessionsBuilder_.addAllMessages(cClientComm_GetAllClientLogonInfo_Response.sessions_);
                    }
                }
                if (cClientComm_GetAllClientLogonInfo_Response.hasRefetchIntervalSec()) {
                    setRefetchIntervalSec(cClientComm_GetAllClientLogonInfo_Response.getRefetchIntervalSec());
                }
                mergeUnknownFields(cClientComm_GetAllClientLogonInfo_Response.getUnknownFields());
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
                                    CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session = (CClientComm_GetAllClientLogonInfo_Response_Session) codedInputStream.readMessage(CClientComm_GetAllClientLogonInfo_Response_Session.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureSessionsIsMutable();
                                        this.sessions_.add(cClientComm_GetAllClientLogonInfo_Response_Session);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cClientComm_GetAllClientLogonInfo_Response_Session);
                                    }
                                } else if (tag == 16) {
                                    this.refetchIntervalSec_ = codedInputStream.readUInt32();
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

            private void ensureSessionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.sessions_ = new ArrayList(this.sessions_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public List<CClientComm_GetAllClientLogonInfo_Response_Session> getSessionsList() {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.sessions_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public int getSessionsCount() {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public CClientComm_GetAllClientLogonInfo_Response_Session getSessions(int i) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (CClientComm_GetAllClientLogonInfo_Response_Session) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setSessions(int i, CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, cClientComm_GetAllClientLogonInfo_Response_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientComm_GetAllClientLogonInfo_Response_Session);
                }
                return this;
            }

            public Builder setSessions(int i, CClientComm_GetAllClientLogonInfo_Response_Session.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addSessions(CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(cClientComm_GetAllClientLogonInfo_Response_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientComm_GetAllClientLogonInfo_Response_Session);
                }
                return this;
            }

            public Builder addSessions(int i, CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, cClientComm_GetAllClientLogonInfo_Response_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientComm_GetAllClientLogonInfo_Response_Session);
                }
                return this;
            }

            public Builder addSessions(CClientComm_GetAllClientLogonInfo_Response_Session.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addSessions(int i, CClientComm_GetAllClientLogonInfo_Response_Session.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllSessions(Iterable<? extends CClientComm_GetAllClientLogonInfo_Response_Session> iterable) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
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
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
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
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientComm_GetAllClientLogonInfo_Response_Session.Builder getSessionsBuilder(int i) {
                return (CClientComm_GetAllClientLogonInfo_Response_Session.Builder) internalGetSessionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder getSessionsOrBuilder(int i) {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public List<? extends CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> getSessionsOrBuilderList() {
                RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.sessions_);
            }

            public CClientComm_GetAllClientLogonInfo_Response_Session.Builder addSessionsBuilder() {
                return (CClientComm_GetAllClientLogonInfo_Response_Session.Builder) internalGetSessionsFieldBuilder().addBuilder(CClientComm_GetAllClientLogonInfo_Response_Session.getDefaultInstance());
            }

            public CClientComm_GetAllClientLogonInfo_Response_Session.Builder addSessionsBuilder(int i) {
                return (CClientComm_GetAllClientLogonInfo_Response_Session.Builder) internalGetSessionsFieldBuilder().addBuilder(i, CClientComm_GetAllClientLogonInfo_Response_Session.getDefaultInstance());
            }

            public List<CClientComm_GetAllClientLogonInfo_Response_Session.Builder> getSessionsBuilderList() {
                return internalGetSessionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientComm_GetAllClientLogonInfo_Response_Session, CClientComm_GetAllClientLogonInfo_Response_Session.Builder, CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder> internalGetSessionsFieldBuilder() {
                if (this.sessionsBuilder_ == null) {
                    this.sessionsBuilder_ = new RepeatedFieldBuilder<>(this.sessions_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.sessions_ = null;
                }
                return this.sessionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public boolean hasRefetchIntervalSec() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_ResponseOrBuilder
            public int getRefetchIntervalSec() {
                return this.refetchIntervalSec_;
            }

            public Builder setRefetchIntervalSec(int i) {
                this.refetchIntervalSec_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRefetchIntervalSec() {
                this.bitField0_ &= -3;
                this.refetchIntervalSec_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetAllClientLogonInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetAllClientLogonInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetAllClientLogonInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetAllClientLogonInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetAllClientLogonInfo_Response_Session extends GeneratedMessage implements CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder {
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 1;
        private static final CClientComm_GetAllClientLogonInfo_Response_Session DEFAULT_INSTANCE;
        public static final int DEVICE_TYPE_FIELD_NUMBER = 6;
        public static final int MACHINE_NAME_FIELD_NUMBER = 4;
        public static final int OS_NAME_FIELD_NUMBER = 3;
        public static final int OS_TYPE_FIELD_NUMBER = 5;
        private static final Parser<CClientComm_GetAllClientLogonInfo_Response_Session> PARSER;
        public static final int PROTOCOL_VERSION_FIELD_NUMBER = 2;
        public static final int REALM_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientInstanceid_;
        private int deviceType_;
        private volatile Object machineName_;
        private byte memoizedIsInitialized;
        private volatile Object osName_;
        private int osType_;
        private int protocolVersion_;
        private int realm_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetAllClientLogonInfo_Response_Session.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetAllClientLogonInfo_Response_Session();
            PARSER = new AbstractParser<CClientComm_GetAllClientLogonInfo_Response_Session>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_Session.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetAllClientLogonInfo_Response_Session parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetAllClientLogonInfo_Response_Session.newBuilder();
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

        private CClientComm_GetAllClientLogonInfo_Response_Session(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.clientInstanceid_ = 0L;
            this.protocolVersion_ = 0;
            this.osName_ = "";
            this.machineName_ = "";
            this.osType_ = 0;
            this.deviceType_ = 0;
            this.realm_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetAllClientLogonInfo_Response_Session() {
            this.clientInstanceid_ = 0L;
            this.protocolVersion_ = 0;
            this.osName_ = "";
            this.machineName_ = "";
            this.osType_ = 0;
            this.deviceType_ = 0;
            this.realm_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.osName_ = "";
            this.machineName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetAllClientLogonInfo_Response_Session.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasProtocolVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public int getProtocolVersion() {
            return this.protocolVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasOsName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public String getOsName() {
            Object obj = this.osName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.osName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public ByteString getOsNameBytes() {
            Object obj = this.osName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.osName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasMachineName() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public ByteString getMachineNameBytes() {
            Object obj = this.machineName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.machineName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasOsType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public int getOsType() {
            return this.osType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public boolean hasRealm() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
        public int getRealm() {
            return this.realm_;
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
                codedOutputStream.writeUInt64(1, this.clientInstanceid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.protocolVersion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.osName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.machineName_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.osType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt32(6, this.deviceType_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeInt32(7, this.realm_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.clientInstanceid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.protocolVersion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += GeneratedMessage.computeStringSize(3, this.osName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt64Size += GeneratedMessage.computeStringSize(4, this.machineName_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeInt32Size(5, this.osType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeInt32Size(6, this.deviceType_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeInt32Size(7, this.realm_);
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
            if (!(obj instanceof CClientComm_GetAllClientLogonInfo_Response_Session)) {
                return super.equals(obj);
            }
            CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session = (CClientComm_GetAllClientLogonInfo_Response_Session) obj;
            if (hasClientInstanceid() != cClientComm_GetAllClientLogonInfo_Response_Session.hasClientInstanceid()) {
                return false;
            }
            if ((hasClientInstanceid() && getClientInstanceid() != cClientComm_GetAllClientLogonInfo_Response_Session.getClientInstanceid()) || hasProtocolVersion() != cClientComm_GetAllClientLogonInfo_Response_Session.hasProtocolVersion()) {
                return false;
            }
            if ((hasProtocolVersion() && getProtocolVersion() != cClientComm_GetAllClientLogonInfo_Response_Session.getProtocolVersion()) || hasOsName() != cClientComm_GetAllClientLogonInfo_Response_Session.hasOsName()) {
                return false;
            }
            if ((hasOsName() && !getOsName().equals(cClientComm_GetAllClientLogonInfo_Response_Session.getOsName())) || hasMachineName() != cClientComm_GetAllClientLogonInfo_Response_Session.hasMachineName()) {
                return false;
            }
            if ((hasMachineName() && !getMachineName().equals(cClientComm_GetAllClientLogonInfo_Response_Session.getMachineName())) || hasOsType() != cClientComm_GetAllClientLogonInfo_Response_Session.hasOsType()) {
                return false;
            }
            if ((hasOsType() && getOsType() != cClientComm_GetAllClientLogonInfo_Response_Session.getOsType()) || hasDeviceType() != cClientComm_GetAllClientLogonInfo_Response_Session.hasDeviceType()) {
                return false;
            }
            if ((!hasDeviceType() || getDeviceType() == cClientComm_GetAllClientLogonInfo_Response_Session.getDeviceType()) && hasRealm() == cClientComm_GetAllClientLogonInfo_Response_Session.hasRealm()) {
                return (!hasRealm() || getRealm() == cClientComm_GetAllClientLogonInfo_Response_Session.getRealm()) && getUnknownFields().equals(cClientComm_GetAllClientLogonInfo_Response_Session.getUnknownFields());
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
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getClientInstanceid());
            }
            if (hasProtocolVersion()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getProtocolVersion();
            }
            if (hasOsName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getOsName().hashCode();
            }
            if (hasMachineName()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMachineName().hashCode();
            }
            if (hasOsType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getOsType();
            }
            if (hasDeviceType()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getDeviceType();
            }
            if (hasRealm()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getRealm();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response_Session) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response_Session) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response_Session) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response_Session) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response_Session) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetAllClientLogonInfo_Response_Session) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetAllClientLogonInfo_Response_Session);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder {
            private int bitField0_;
            private long clientInstanceid_;
            private int deviceType_;
            private Object machineName_;
            private Object osName_;
            private int osType_;
            private int protocolVersion_;
            private int realm_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetAllClientLogonInfo_Response_Session.class, Builder.class);
            }

            private Builder() {
                this.osName_ = "";
                this.machineName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.osName_ = "";
                this.machineName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.clientInstanceid_ = 0L;
                this.protocolVersion_ = 0;
                this.osName_ = "";
                this.machineName_ = "";
                this.osType_ = 0;
                this.deviceType_ = 0;
                this.realm_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetAllClientLogonInfo_Response_Session_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetAllClientLogonInfo_Response_Session getDefaultInstanceForType() {
                return CClientComm_GetAllClientLogonInfo_Response_Session.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetAllClientLogonInfo_Response_Session build() {
                CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_SessionBuildPartial = buildPartial();
                if (cClientComm_GetAllClientLogonInfo_Response_SessionBuildPartial.isInitialized()) {
                    return cClientComm_GetAllClientLogonInfo_Response_SessionBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetAllClientLogonInfo_Response_SessionBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetAllClientLogonInfo_Response_Session buildPartial() {
                CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session = new CClientComm_GetAllClientLogonInfo_Response_Session(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetAllClientLogonInfo_Response_Session);
                }
                onBuilt();
                return cClientComm_GetAllClientLogonInfo_Response_Session;
            }

            private void buildPartial0(CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.clientInstanceid_ = this.clientInstanceid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.protocolVersion_ = this.protocolVersion_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.osName_ = this.osName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.machineName_ = this.machineName_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.osType_ = this.osType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.deviceType_ = this.deviceType_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cClientComm_GetAllClientLogonInfo_Response_Session.realm_ = this.realm_;
                    i |= 64;
                }
                cClientComm_GetAllClientLogonInfo_Response_Session.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetAllClientLogonInfo_Response_Session) {
                    return mergeFrom((CClientComm_GetAllClientLogonInfo_Response_Session) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session) {
                if (cClientComm_GetAllClientLogonInfo_Response_Session == CClientComm_GetAllClientLogonInfo_Response_Session.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_GetAllClientLogonInfo_Response_Session.getClientInstanceid());
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasProtocolVersion()) {
                    setProtocolVersion(cClientComm_GetAllClientLogonInfo_Response_Session.getProtocolVersion());
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasOsName()) {
                    this.osName_ = cClientComm_GetAllClientLogonInfo_Response_Session.osName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasMachineName()) {
                    this.machineName_ = cClientComm_GetAllClientLogonInfo_Response_Session.machineName_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasOsType()) {
                    setOsType(cClientComm_GetAllClientLogonInfo_Response_Session.getOsType());
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasDeviceType()) {
                    setDeviceType(cClientComm_GetAllClientLogonInfo_Response_Session.getDeviceType());
                }
                if (cClientComm_GetAllClientLogonInfo_Response_Session.hasRealm()) {
                    setRealm(cClientComm_GetAllClientLogonInfo_Response_Session.getRealm());
                }
                mergeUnknownFields(cClientComm_GetAllClientLogonInfo_Response_Session.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.protocolVersion_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.osName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.machineName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.osType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.deviceType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.realm_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -2;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasProtocolVersion() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public int getProtocolVersion() {
                return this.protocolVersion_;
            }

            public Builder setProtocolVersion(int i) {
                this.protocolVersion_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearProtocolVersion() {
                this.bitField0_ &= -3;
                this.protocolVersion_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasOsName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public String getOsName() {
                Object obj = this.osName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.osName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public ByteString getOsNameBytes() {
                Object obj = this.osName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.osName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setOsName(String str) {
                str.getClass();
                this.osName_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearOsName() {
                this.osName_ = CClientComm_GetAllClientLogonInfo_Response_Session.getDefaultInstance().getOsName();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setOsNameBytes(ByteString byteString) {
                byteString.getClass();
                this.osName_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasMachineName() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
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
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMachineName() {
                this.machineName_ = CClientComm_GetAllClientLogonInfo_Response_Session.getDefaultInstance().getMachineName();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setMachineNameBytes(ByteString byteString) {
                byteString.getClass();
                this.machineName_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasOsType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public int getOsType() {
                return this.osType_;
            }

            public Builder setOsType(int i) {
                this.osType_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearOsType() {
                this.bitField0_ &= -17;
                this.osType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            public Builder setDeviceType(int i) {
                this.deviceType_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearDeviceType() {
                this.bitField0_ &= -33;
                this.deviceType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public boolean hasRealm() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_SessionOrBuilder
            public int getRealm() {
                return this.realm_;
            }

            public Builder setRealm(int i) {
                this.realm_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearRealm() {
                this.bitField0_ &= -65;
                this.realm_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetAllClientLogonInfo_Response_Session getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetAllClientLogonInfo_Response_Session> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetAllClientLogonInfo_Response_Session> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetAllClientLogonInfo_Response_Session getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientAppList_Request extends GeneratedMessage implements CClientComm_GetClientAppList_RequestOrBuilder {
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 3;
        private static final CClientComm_GetClientAppList_Request DEFAULT_INSTANCE;
        public static final int FIELDS_FIELD_NUMBER = 1;
        public static final int FILTERS_FIELD_NUMBER = 2;
        public static final int FILTER_APPIDS_FIELD_NUMBER = 6;
        public static final int INCLUDE_CLIENT_INFO_FIELD_NUMBER = 4;
        public static final int LANGUAGE_FIELD_NUMBER = 5;
        private static final Parser<CClientComm_GetClientAppList_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientInstanceid_;
        private volatile Object fields_;
        private Internal.IntList filterAppids_;
        private volatile Object filters_;
        private boolean includeClientInfo_;
        private volatile Object language_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientAppList_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientAppList_Request();
            PARSER = new AbstractParser<CClientComm_GetClientAppList_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientAppList_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientAppList_Request.newBuilder();
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

        private CClientComm_GetClientAppList_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.fields_ = "";
            this.filters_ = "";
            this.clientInstanceid_ = 0L;
            this.includeClientInfo_ = false;
            this.language_ = "";
            this.filterAppids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientAppList_Request() {
            this.fields_ = "";
            this.filters_ = "";
            this.clientInstanceid_ = 0L;
            this.includeClientInfo_ = false;
            this.language_ = "";
            this.filterAppids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.fields_ = "";
            this.filters_ = "";
            this.language_ = "";
            this.filterAppids_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public boolean hasFields() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public String getFields() {
            Object obj = this.fields_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fields_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public ByteString getFieldsBytes() {
            Object obj = this.fields_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fields_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public boolean hasFilters() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public String getFilters() {
            Object obj = this.filters_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.filters_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public ByteString getFiltersBytes() {
            Object obj = this.filters_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.filters_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public boolean hasIncludeClientInfo() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public boolean getIncludeClientInfo() {
            return this.includeClientInfo_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public ByteString getLanguageBytes() {
            Object obj = this.language_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.language_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public List<Integer> getFilterAppidsList() {
            return this.filterAppids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public int getFilterAppidsCount() {
            return this.filterAppids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
        public int getFilterAppids(int i) {
            return this.filterAppids_.getInt(i);
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.fields_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.filters_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.clientInstanceid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.includeClientInfo_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.language_);
            }
            for (int i = 0; i < this.filterAppids_.size(); i++) {
                codedOutputStream.writeUInt32(6, this.filterAppids_.getInt(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.fields_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(2, this.filters_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(3, this.clientInstanceid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(4, this.includeClientInfo_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(5, this.language_);
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.filterAppids_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.filterAppids_.getInt(i2));
            }
            int size = iComputeStringSize + iComputeUInt32SizeNoTag + getFilterAppidsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CClientComm_GetClientAppList_Request)) {
                return super.equals(obj);
            }
            CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_Request = (CClientComm_GetClientAppList_Request) obj;
            if (hasFields() != cClientComm_GetClientAppList_Request.hasFields()) {
                return false;
            }
            if ((hasFields() && !getFields().equals(cClientComm_GetClientAppList_Request.getFields())) || hasFilters() != cClientComm_GetClientAppList_Request.hasFilters()) {
                return false;
            }
            if ((hasFilters() && !getFilters().equals(cClientComm_GetClientAppList_Request.getFilters())) || hasClientInstanceid() != cClientComm_GetClientAppList_Request.hasClientInstanceid()) {
                return false;
            }
            if ((hasClientInstanceid() && getClientInstanceid() != cClientComm_GetClientAppList_Request.getClientInstanceid()) || hasIncludeClientInfo() != cClientComm_GetClientAppList_Request.hasIncludeClientInfo()) {
                return false;
            }
            if ((!hasIncludeClientInfo() || getIncludeClientInfo() == cClientComm_GetClientAppList_Request.getIncludeClientInfo()) && hasLanguage() == cClientComm_GetClientAppList_Request.hasLanguage()) {
                return (!hasLanguage() || getLanguage().equals(cClientComm_GetClientAppList_Request.getLanguage())) && getFilterAppidsList().equals(cClientComm_GetClientAppList_Request.getFilterAppidsList()) && getUnknownFields().equals(cClientComm_GetClientAppList_Request.getUnknownFields());
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
            if (hasFields()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getFields().hashCode();
            }
            if (hasFilters()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFilters().hashCode();
            }
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getClientInstanceid());
            }
            if (hasIncludeClientInfo()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getIncludeClientInfo());
            }
            if (hasLanguage()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLanguage().hashCode();
            }
            if (getFilterAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getFilterAppidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientAppList_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientAppList_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientAppList_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientAppList_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientAppList_RequestOrBuilder {
            private int bitField0_;
            private long clientInstanceid_;
            private Object fields_;
            private Internal.IntList filterAppids_;
            private Object filters_;
            private boolean includeClientInfo_;
            private Object language_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Request.class, Builder.class);
            }

            private Builder() {
                this.fields_ = "";
                this.filters_ = "";
                this.language_ = "";
                this.filterAppids_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.fields_ = "";
                this.filters_ = "";
                this.language_ = "";
                this.filterAppids_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.fields_ = "";
                this.filters_ = "";
                this.clientInstanceid_ = 0L;
                this.includeClientInfo_ = false;
                this.language_ = "";
                this.filterAppids_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientAppList_Request getDefaultInstanceForType() {
                return CClientComm_GetClientAppList_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Request build() {
                CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_RequestBuildPartial = buildPartial();
                if (cClientComm_GetClientAppList_RequestBuildPartial.isInitialized()) {
                    return cClientComm_GetClientAppList_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientAppList_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Request buildPartial() {
                CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_Request = new CClientComm_GetClientAppList_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientAppList_Request);
                }
                onBuilt();
                return cClientComm_GetClientAppList_Request;
            }

            private void buildPartial0(CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_GetClientAppList_Request.fields_ = this.fields_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_GetClientAppList_Request.filters_ = this.filters_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_GetClientAppList_Request.clientInstanceid_ = this.clientInstanceid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientComm_GetClientAppList_Request.includeClientInfo_ = this.includeClientInfo_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientComm_GetClientAppList_Request.language_ = this.language_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    this.filterAppids_.makeImmutable();
                    cClientComm_GetClientAppList_Request.filterAppids_ = this.filterAppids_;
                }
                cClientComm_GetClientAppList_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientAppList_Request) {
                    return mergeFrom((CClientComm_GetClientAppList_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_Request) {
                if (cClientComm_GetClientAppList_Request == CClientComm_GetClientAppList_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientAppList_Request.hasFields()) {
                    this.fields_ = cClientComm_GetClientAppList_Request.fields_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cClientComm_GetClientAppList_Request.hasFilters()) {
                    this.filters_ = cClientComm_GetClientAppList_Request.filters_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientComm_GetClientAppList_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_GetClientAppList_Request.getClientInstanceid());
                }
                if (cClientComm_GetClientAppList_Request.hasIncludeClientInfo()) {
                    setIncludeClientInfo(cClientComm_GetClientAppList_Request.getIncludeClientInfo());
                }
                if (cClientComm_GetClientAppList_Request.hasLanguage()) {
                    this.language_ = cClientComm_GetClientAppList_Request.language_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (!cClientComm_GetClientAppList_Request.filterAppids_.isEmpty()) {
                    if (this.filterAppids_.isEmpty()) {
                        Internal.IntList intList = cClientComm_GetClientAppList_Request.filterAppids_;
                        this.filterAppids_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 32;
                    } else {
                        ensureFilterAppidsIsMutable();
                        this.filterAppids_.addAll(cClientComm_GetClientAppList_Request.filterAppids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cClientComm_GetClientAppList_Request.getUnknownFields());
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
                                    this.fields_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.filters_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.includeClientInfo_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.language_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureFilterAppidsIsMutable();
                                    this.filterAppids_.addInt(uInt32);
                                } else if (tag == 50) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureFilterAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.filterAppids_.addInt(codedInputStream.readUInt32());
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public boolean hasFields() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public String getFields() {
                Object obj = this.fields_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.fields_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public ByteString getFieldsBytes() {
                Object obj = this.fields_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.fields_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFields(String str) {
                str.getClass();
                this.fields_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearFields() {
                this.fields_ = CClientComm_GetClientAppList_Request.getDefaultInstance().getFields();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setFieldsBytes(ByteString byteString) {
                byteString.getClass();
                this.fields_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public boolean hasFilters() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public String getFilters() {
                Object obj = this.filters_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.filters_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public ByteString getFiltersBytes() {
                Object obj = this.filters_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.filters_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFilters(String str) {
                str.getClass();
                this.filters_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFilters() {
                this.filters_ = CClientComm_GetClientAppList_Request.getDefaultInstance().getFilters();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setFiltersBytes(ByteString byteString) {
                byteString.getClass();
                this.filters_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -5;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public boolean hasIncludeClientInfo() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public boolean getIncludeClientInfo() {
                return this.includeClientInfo_;
            }

            public Builder setIncludeClientInfo(boolean z) {
                this.includeClientInfo_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearIncludeClientInfo() {
                this.bitField0_ &= -9;
                this.includeClientInfo_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
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
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.language_ = CClientComm_GetClientAppList_Request.getDefaultInstance().getLanguage();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setLanguageBytes(ByteString byteString) {
                byteString.getClass();
                this.language_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            private void ensureFilterAppidsIsMutable() {
                if (!this.filterAppids_.isModifiable()) {
                    this.filterAppids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.filterAppids_);
                }
                this.bitField0_ |= 32;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public List<Integer> getFilterAppidsList() {
                this.filterAppids_.makeImmutable();
                return this.filterAppids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public int getFilterAppidsCount() {
                return this.filterAppids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_RequestOrBuilder
            public int getFilterAppids(int i) {
                return this.filterAppids_.getInt(i);
            }

            public Builder setFilterAppids(int i, int i2) {
                ensureFilterAppidsIsMutable();
                this.filterAppids_.setInt(i, i2);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder addFilterAppids(int i) {
                ensureFilterAppidsIsMutable();
                this.filterAppids_.addInt(i);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder addAllFilterAppids(Iterable<? extends Integer> iterable) {
                ensureFilterAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.filterAppids_);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearFilterAppids() {
                this.filterAppids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientAppList_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientAppList_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientAppList_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientAppList_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientAppList_Response extends GeneratedMessage implements CClientComm_GetClientAppList_ResponseOrBuilder {
        public static final int APPS_FIELD_NUMBER = 2;
        public static final int BYTES_AVAILABLE_FIELD_NUMBER = 1;
        public static final int CLIENT_INFO_FIELD_NUMBER = 3;
        private static final CClientComm_GetClientAppList_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_GetClientAppList_Response> PARSER;
        public static final int REFETCH_INTERVAL_SEC_CHANGING_FIELD_NUMBER = 5;
        public static final int REFETCH_INTERVAL_SEC_FULL_FIELD_NUMBER = 4;
        public static final int REFETCH_INTERVAL_SEC_UPDATING_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private List<CClientComm_GetClientAppList_Response_AppData> apps_;
        private int bitField0_;
        private long bytesAvailable_;
        private CClientComm_ClientData clientInfo_;
        private byte memoizedIsInitialized;
        private int refetchIntervalSecChanging_;
        private int refetchIntervalSecFull_;
        private int refetchIntervalSecUpdating_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientAppList_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientAppList_Response();
            PARSER = new AbstractParser<CClientComm_GetClientAppList_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientAppList_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientAppList_Response.newBuilder();
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

        private CClientComm_GetClientAppList_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.bytesAvailable_ = 0L;
            this.refetchIntervalSecFull_ = 0;
            this.refetchIntervalSecChanging_ = 0;
            this.refetchIntervalSecUpdating_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientAppList_Response() {
            this.bytesAvailable_ = 0L;
            this.refetchIntervalSecFull_ = 0;
            this.refetchIntervalSecChanging_ = 0;
            this.refetchIntervalSecUpdating_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.apps_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public boolean hasBytesAvailable() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public long getBytesAvailable() {
            return this.bytesAvailable_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public List<CClientComm_GetClientAppList_Response_AppData> getAppsList() {
            return this.apps_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public List<? extends CClientComm_GetClientAppList_Response_AppDataOrBuilder> getAppsOrBuilderList() {
            return this.apps_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public int getAppsCount() {
            return this.apps_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public CClientComm_GetClientAppList_Response_AppData getApps(int i) {
            return this.apps_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public CClientComm_GetClientAppList_Response_AppDataOrBuilder getAppsOrBuilder(int i) {
            return this.apps_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public boolean hasClientInfo() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public CClientComm_ClientData getClientInfo() {
            CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
            return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public CClientComm_ClientDataOrBuilder getClientInfoOrBuilder() {
            CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
            return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public boolean hasRefetchIntervalSecFull() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public int getRefetchIntervalSecFull() {
            return this.refetchIntervalSecFull_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public boolean hasRefetchIntervalSecChanging() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public int getRefetchIntervalSecChanging() {
            return this.refetchIntervalSecChanging_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public boolean hasRefetchIntervalSecUpdating() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
        public int getRefetchIntervalSecUpdating() {
            return this.refetchIntervalSecUpdating_;
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
                codedOutputStream.writeUInt64(1, this.bytesAvailable_);
            }
            for (int i = 0; i < this.apps_.size(); i++) {
                codedOutputStream.writeMessage(2, this.apps_.get(i));
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(3, getClientInfo());
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(4, this.refetchIntervalSecFull_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(5, this.refetchIntervalSecChanging_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(6, this.refetchIntervalSecUpdating_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.bytesAvailable_) : 0;
            for (int i2 = 0; i2 < this.apps_.size(); i2++) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(2, this.apps_.get(i2));
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(3, getClientInfo());
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(4, this.refetchIntervalSecFull_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(5, this.refetchIntervalSecChanging_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(6, this.refetchIntervalSecUpdating_);
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
            if (!(obj instanceof CClientComm_GetClientAppList_Response)) {
                return super.equals(obj);
            }
            CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response = (CClientComm_GetClientAppList_Response) obj;
            if (hasBytesAvailable() != cClientComm_GetClientAppList_Response.hasBytesAvailable()) {
                return false;
            }
            if ((hasBytesAvailable() && getBytesAvailable() != cClientComm_GetClientAppList_Response.getBytesAvailable()) || !getAppsList().equals(cClientComm_GetClientAppList_Response.getAppsList()) || hasClientInfo() != cClientComm_GetClientAppList_Response.hasClientInfo()) {
                return false;
            }
            if ((hasClientInfo() && !getClientInfo().equals(cClientComm_GetClientAppList_Response.getClientInfo())) || hasRefetchIntervalSecFull() != cClientComm_GetClientAppList_Response.hasRefetchIntervalSecFull()) {
                return false;
            }
            if ((hasRefetchIntervalSecFull() && getRefetchIntervalSecFull() != cClientComm_GetClientAppList_Response.getRefetchIntervalSecFull()) || hasRefetchIntervalSecChanging() != cClientComm_GetClientAppList_Response.hasRefetchIntervalSecChanging()) {
                return false;
            }
            if ((!hasRefetchIntervalSecChanging() || getRefetchIntervalSecChanging() == cClientComm_GetClientAppList_Response.getRefetchIntervalSecChanging()) && hasRefetchIntervalSecUpdating() == cClientComm_GetClientAppList_Response.hasRefetchIntervalSecUpdating()) {
                return (!hasRefetchIntervalSecUpdating() || getRefetchIntervalSecUpdating() == cClientComm_GetClientAppList_Response.getRefetchIntervalSecUpdating()) && getUnknownFields().equals(cClientComm_GetClientAppList_Response.getUnknownFields());
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
            if (hasBytesAvailable()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getBytesAvailable());
            }
            if (getAppsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppsList().hashCode();
            }
            if (hasClientInfo()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getClientInfo().hashCode();
            }
            if (hasRefetchIntervalSecFull()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getRefetchIntervalSecFull();
            }
            if (hasRefetchIntervalSecChanging()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRefetchIntervalSecChanging();
            }
            if (hasRefetchIntervalSecUpdating()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getRefetchIntervalSecUpdating();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientAppList_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientAppList_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientAppList_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientAppList_ResponseOrBuilder {
            private RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> appsBuilder_;
            private List<CClientComm_GetClientAppList_Response_AppData> apps_;
            private int bitField0_;
            private long bytesAvailable_;
            private SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> clientInfoBuilder_;
            private CClientComm_ClientData clientInfo_;
            private int refetchIntervalSecChanging_;
            private int refetchIntervalSecFull_;
            private int refetchIntervalSecUpdating_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Response.class, Builder.class);
            }

            private Builder() {
                this.apps_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.apps_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetAppsFieldBuilder();
                    internalGetClientInfoFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.bytesAvailable_ = 0L;
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.apps_ = Collections.emptyList();
                } else {
                    this.apps_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                this.clientInfo_ = null;
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.clientInfoBuilder_ = null;
                }
                this.refetchIntervalSecFull_ = 0;
                this.refetchIntervalSecChanging_ = 0;
                this.refetchIntervalSecUpdating_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientAppList_Response getDefaultInstanceForType() {
                return CClientComm_GetClientAppList_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Response build() {
                CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_ResponseBuildPartial = buildPartial();
                if (cClientComm_GetClientAppList_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_GetClientAppList_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientAppList_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Response buildPartial() {
                CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response = new CClientComm_GetClientAppList_Response(this);
                buildPartialRepeatedFields(cClientComm_GetClientAppList_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientAppList_Response);
                }
                onBuilt();
                return cClientComm_GetClientAppList_Response;
            }

            private void buildPartialRepeatedFields(CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.apps_ = Collections.unmodifiableList(this.apps_);
                        this.bitField0_ &= -3;
                    }
                    cClientComm_GetClientAppList_Response.apps_ = this.apps_;
                    return;
                }
                cClientComm_GetClientAppList_Response.apps_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response) {
                int i;
                CClientComm_ClientData cClientComm_ClientData;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_GetClientAppList_Response.bytesAvailable_ = this.bytesAvailable_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                    if (singleFieldBuilder == null) {
                        cClientComm_ClientData = this.clientInfo_;
                    } else {
                        cClientComm_ClientData = (CClientComm_ClientData) singleFieldBuilder.build();
                    }
                    cClientComm_GetClientAppList_Response.clientInfo_ = cClientComm_ClientData;
                    i |= 2;
                }
                if ((i2 & 8) != 0) {
                    cClientComm_GetClientAppList_Response.refetchIntervalSecFull_ = this.refetchIntervalSecFull_;
                    i |= 4;
                }
                if ((i2 & 16) != 0) {
                    cClientComm_GetClientAppList_Response.refetchIntervalSecChanging_ = this.refetchIntervalSecChanging_;
                    i |= 8;
                }
                if ((i2 & 32) != 0) {
                    cClientComm_GetClientAppList_Response.refetchIntervalSecUpdating_ = this.refetchIntervalSecUpdating_;
                    i |= 16;
                }
                cClientComm_GetClientAppList_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientAppList_Response) {
                    return mergeFrom((CClientComm_GetClientAppList_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response) {
                if (cClientComm_GetClientAppList_Response == CClientComm_GetClientAppList_Response.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientAppList_Response.hasBytesAvailable()) {
                    setBytesAvailable(cClientComm_GetClientAppList_Response.getBytesAvailable());
                }
                if (this.appsBuilder_ == null) {
                    if (!cClientComm_GetClientAppList_Response.apps_.isEmpty()) {
                        if (this.apps_.isEmpty()) {
                            this.apps_ = cClientComm_GetClientAppList_Response.apps_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureAppsIsMutable();
                            this.apps_.addAll(cClientComm_GetClientAppList_Response.apps_);
                        }
                        onChanged();
                    }
                } else if (!cClientComm_GetClientAppList_Response.apps_.isEmpty()) {
                    if (this.appsBuilder_.isEmpty()) {
                        this.appsBuilder_.dispose();
                        this.appsBuilder_ = null;
                        this.apps_ = cClientComm_GetClientAppList_Response.apps_;
                        this.bitField0_ &= -3;
                        this.appsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetAppsFieldBuilder() : null;
                    } else {
                        this.appsBuilder_.addAllMessages(cClientComm_GetClientAppList_Response.apps_);
                    }
                }
                if (cClientComm_GetClientAppList_Response.hasClientInfo()) {
                    mergeClientInfo(cClientComm_GetClientAppList_Response.getClientInfo());
                }
                if (cClientComm_GetClientAppList_Response.hasRefetchIntervalSecFull()) {
                    setRefetchIntervalSecFull(cClientComm_GetClientAppList_Response.getRefetchIntervalSecFull());
                }
                if (cClientComm_GetClientAppList_Response.hasRefetchIntervalSecChanging()) {
                    setRefetchIntervalSecChanging(cClientComm_GetClientAppList_Response.getRefetchIntervalSecChanging());
                }
                if (cClientComm_GetClientAppList_Response.hasRefetchIntervalSecUpdating()) {
                    setRefetchIntervalSecUpdating(cClientComm_GetClientAppList_Response.getRefetchIntervalSecUpdating());
                }
                mergeUnknownFields(cClientComm_GetClientAppList_Response.getUnknownFields());
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
                                    this.bytesAvailable_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData = (CClientComm_GetClientAppList_Response_AppData) codedInputStream.readMessage(CClientComm_GetClientAppList_Response_AppData.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureAppsIsMutable();
                                        this.apps_.add(cClientComm_GetClientAppList_Response_AppData);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cClientComm_GetClientAppList_Response_AppData);
                                    }
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetClientInfoFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.refetchIntervalSecFull_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.refetchIntervalSecChanging_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.refetchIntervalSecUpdating_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public boolean hasBytesAvailable() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public long getBytesAvailable() {
                return this.bytesAvailable_;
            }

            public Builder setBytesAvailable(long j) {
                this.bytesAvailable_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearBytesAvailable() {
                this.bitField0_ &= -2;
                this.bytesAvailable_ = 0L;
                onChanged();
                return this;
            }

            private void ensureAppsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.apps_ = new ArrayList(this.apps_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public List<CClientComm_GetClientAppList_Response_AppData> getAppsList() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.apps_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public int getAppsCount() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public CClientComm_GetClientAppList_Response_AppData getApps(int i) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.get(i);
                }
                return (CClientComm_GetClientAppList_Response_AppData) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setApps(int i, CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetClientAppList_Response_AppData.getClass();
                    ensureAppsIsMutable();
                    this.apps_.set(i, cClientComm_GetClientAppList_Response_AppData);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientComm_GetClientAppList_Response_AppData);
                }
                return this;
            }

            public Builder setApps(int i, CClientComm_GetClientAppList_Response_AppData.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addApps(CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetClientAppList_Response_AppData.getClass();
                    ensureAppsIsMutable();
                    this.apps_.add(cClientComm_GetClientAppList_Response_AppData);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientComm_GetClientAppList_Response_AppData);
                }
                return this;
            }

            public Builder addApps(int i, CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetClientAppList_Response_AppData.getClass();
                    ensureAppsIsMutable();
                    this.apps_.add(i, cClientComm_GetClientAppList_Response_AppData);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientComm_GetClientAppList_Response_AppData);
                }
                return this;
            }

            public Builder addApps(CClientComm_GetClientAppList_Response_AppData.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addApps(int i, CClientComm_GetClientAppList_Response_AppData.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllApps(Iterable<? extends CClientComm_GetClientAppList_Response_AppData> iterable) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.apps_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearApps() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.apps_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeApps(int i) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientComm_GetClientAppList_Response_AppData.Builder getAppsBuilder(int i) {
                return (CClientComm_GetClientAppList_Response_AppData.Builder) internalGetAppsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public CClientComm_GetClientAppList_Response_AppDataOrBuilder getAppsOrBuilder(int i) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.get(i);
                }
                return (CClientComm_GetClientAppList_Response_AppDataOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public List<? extends CClientComm_GetClientAppList_Response_AppDataOrBuilder> getAppsOrBuilderList() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.apps_);
            }

            public CClientComm_GetClientAppList_Response_AppData.Builder addAppsBuilder() {
                return (CClientComm_GetClientAppList_Response_AppData.Builder) internalGetAppsFieldBuilder().addBuilder(CClientComm_GetClientAppList_Response_AppData.getDefaultInstance());
            }

            public CClientComm_GetClientAppList_Response_AppData.Builder addAppsBuilder(int i) {
                return (CClientComm_GetClientAppList_Response_AppData.Builder) internalGetAppsFieldBuilder().addBuilder(i, CClientComm_GetClientAppList_Response_AppData.getDefaultInstance());
            }

            public List<CClientComm_GetClientAppList_Response_AppData.Builder> getAppsBuilderList() {
                return internalGetAppsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData, CClientComm_GetClientAppList_Response_AppData.Builder, CClientComm_GetClientAppList_Response_AppDataOrBuilder> internalGetAppsFieldBuilder() {
                if (this.appsBuilder_ == null) {
                    this.appsBuilder_ = new RepeatedFieldBuilder<>(this.apps_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.apps_ = null;
                }
                return this.appsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public boolean hasClientInfo() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public CClientComm_ClientData getClientInfo() {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
                    return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
                }
                return (CClientComm_ClientData) singleFieldBuilder.getMessage();
            }

            public Builder setClientInfo(CClientComm_ClientData cClientComm_ClientData) {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    cClientComm_ClientData.getClass();
                    this.clientInfo_ = cClientComm_ClientData;
                } else {
                    singleFieldBuilder.setMessage(cClientComm_ClientData);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setClientInfo(CClientComm_ClientData.Builder builder) {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.clientInfo_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeClientInfo(CClientComm_ClientData cClientComm_ClientData) {
                CClientComm_ClientData cClientComm_ClientData2;
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (cClientComm_ClientData2 = this.clientInfo_) != null && cClientComm_ClientData2 != CClientComm_ClientData.getDefaultInstance()) {
                        getClientInfoBuilder().mergeFrom(cClientComm_ClientData);
                    } else {
                        this.clientInfo_ = cClientComm_ClientData;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cClientComm_ClientData);
                }
                if (this.clientInfo_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearClientInfo() {
                this.bitField0_ &= -5;
                this.clientInfo_ = null;
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.clientInfoBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CClientComm_ClientData.Builder getClientInfoBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (CClientComm_ClientData.Builder) internalGetClientInfoFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public CClientComm_ClientDataOrBuilder getClientInfoOrBuilder() {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return (CClientComm_ClientDataOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
                return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
            }

            private SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> internalGetClientInfoFieldBuilder() {
                if (this.clientInfoBuilder_ == null) {
                    this.clientInfoBuilder_ = new SingleFieldBuilder<>(getClientInfo(), getParentForChildren(), isClean());
                    this.clientInfo_ = null;
                }
                return this.clientInfoBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public boolean hasRefetchIntervalSecFull() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public int getRefetchIntervalSecFull() {
                return this.refetchIntervalSecFull_;
            }

            public Builder setRefetchIntervalSecFull(int i) {
                this.refetchIntervalSecFull_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearRefetchIntervalSecFull() {
                this.bitField0_ &= -9;
                this.refetchIntervalSecFull_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public boolean hasRefetchIntervalSecChanging() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public int getRefetchIntervalSecChanging() {
                return this.refetchIntervalSecChanging_;
            }

            public Builder setRefetchIntervalSecChanging(int i) {
                this.refetchIntervalSecChanging_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRefetchIntervalSecChanging() {
                this.bitField0_ &= -17;
                this.refetchIntervalSecChanging_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public boolean hasRefetchIntervalSecUpdating() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_ResponseOrBuilder
            public int getRefetchIntervalSecUpdating() {
                return this.refetchIntervalSecUpdating_;
            }

            public Builder setRefetchIntervalSecUpdating(int i) {
                this.refetchIntervalSecUpdating_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearRefetchIntervalSecUpdating() {
                this.bitField0_ &= -33;
                this.refetchIntervalSecUpdating_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientAppList_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientAppList_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientAppList_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientAppList_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientAppList_Response_AppData extends GeneratedMessage implements CClientComm_GetClientAppList_Response_AppDataOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int APP_FIELD_NUMBER = 2;
        public static final int APP_TYPE_FIELD_NUMBER = 4;
        public static final int AUTO_UPDATE_FIELD_NUMBER = 19;
        public static final int AVAILABLE_ON_PLATFORM_FIELD_NUMBER = 23;
        public static final int BYTES_DOWNLOADED_FIELD_NUMBER = 12;
        public static final int BYTES_DOWNLOAD_RATE_FIELD_NUMBER = 11;
        public static final int BYTES_REQUIRED_FIELD_NUMBER = 26;
        public static final int BYTES_STAGED_FIELD_NUMBER = 24;
        public static final int BYTES_TO_DOWNLOAD_FIELD_NUMBER = 13;
        public static final int BYTES_TO_STAGE_FIELD_NUMBER = 25;
        public static final int CATEGORY_FIELD_NUMBER = 3;
        public static final int CHANGING_FIELD_NUMBER = 22;
        private static final CClientComm_GetClientAppList_Response_AppData DEFAULT_INSTANCE;
        public static final int DLCS_FIELD_NUMBER = 17;
        public static final int DOWNLOAD_PAUSED_FIELD_NUMBER = 21;
        public static final int ESTIMATED_SECONDS_REMAINING_FIELD_NUMBER = 29;
        public static final int FAVORITE_FIELD_NUMBER = 18;
        public static final int INSTALLED_FIELD_NUMBER = 20;
        public static final int NUM_DOWNLOADING_FIELD_NUMBER = 8;
        private static final Parser<CClientComm_GetClientAppList_Response_AppData> PARSER;
        public static final int QUEUE_POSITION_FIELD_NUMBER = 30;
        public static final int RT_TIME_SCHEDULED_FIELD_NUMBER = 32;
        public static final int RUNNING_FIELD_NUMBER = 33;
        public static final int SOURCE_BUILDID_FIELD_NUMBER = 27;
        public static final int TARGET_BUILDID_FIELD_NUMBER = 28;
        public static final int UNINSTALLING_FIELD_NUMBER = 31;
        public static final int UPDATE_PERCENTAGE_FIELD_NUMBER = 34;
        private static final long serialVersionUID = 0;
        private volatile Object appType_;
        private volatile Object app_;
        private int appid_;
        private boolean autoUpdate_;
        private boolean availableOnPlatform_;
        private int bitField0_;
        private int bytesDownloadRate_;
        private long bytesDownloaded_;
        private long bytesRequired_;
        private long bytesStaged_;
        private long bytesToDownload_;
        private long bytesToStage_;
        private volatile Object category_;
        private boolean changing_;
        private List<CClientComm_GetClientAppList_Response_AppData_DLCData> dlcs_;
        private boolean downloadPaused_;
        private int estimatedSecondsRemaining_;
        private boolean favorite_;
        private boolean installed_;
        private byte memoizedIsInitialized;
        private int numDownloading_;
        private int queuePosition_;
        private int rtTimeScheduled_;
        private boolean running_;
        private int sourceBuildid_;
        private int targetBuildid_;
        private boolean uninstalling_;
        private int updatePercentage_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientAppList_Response_AppData.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientAppList_Response_AppData();
            PARSER = new AbstractParser<CClientComm_GetClientAppList_Response_AppData>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientAppList_Response_AppData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientAppList_Response_AppData.newBuilder();
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

        private CClientComm_GetClientAppList_Response_AppData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.app_ = "";
            this.category_ = "";
            this.appType_ = "";
            this.numDownloading_ = 0;
            this.bytesDownloadRate_ = 0;
            this.bytesDownloaded_ = 0L;
            this.bytesToDownload_ = 0L;
            this.favorite_ = false;
            this.autoUpdate_ = false;
            this.installed_ = false;
            this.downloadPaused_ = false;
            this.changing_ = false;
            this.availableOnPlatform_ = false;
            this.bytesStaged_ = 0L;
            this.bytesToStage_ = 0L;
            this.bytesRequired_ = 0L;
            this.sourceBuildid_ = 0;
            this.targetBuildid_ = 0;
            this.estimatedSecondsRemaining_ = 0;
            this.queuePosition_ = -1;
            this.uninstalling_ = false;
            this.rtTimeScheduled_ = 0;
            this.running_ = false;
            this.updatePercentage_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientAppList_Response_AppData() {
            this.appid_ = 0;
            this.app_ = "";
            this.category_ = "";
            this.appType_ = "";
            this.numDownloading_ = 0;
            this.bytesDownloadRate_ = 0;
            this.bytesDownloaded_ = 0L;
            this.bytesToDownload_ = 0L;
            this.favorite_ = false;
            this.autoUpdate_ = false;
            this.installed_ = false;
            this.downloadPaused_ = false;
            this.changing_ = false;
            this.availableOnPlatform_ = false;
            this.bytesStaged_ = 0L;
            this.bytesToStage_ = 0L;
            this.bytesRequired_ = 0L;
            this.sourceBuildid_ = 0;
            this.targetBuildid_ = 0;
            this.estimatedSecondsRemaining_ = 0;
            this.queuePosition_ = -1;
            this.uninstalling_ = false;
            this.rtTimeScheduled_ = 0;
            this.running_ = false;
            this.updatePercentage_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.app_ = "";
            this.category_ = "";
            this.appType_ = "";
            this.dlcs_ = Collections.emptyList();
            this.queuePosition_ = -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Response_AppData.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasApp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public String getApp() {
            Object obj = this.app_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.app_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public ByteString getAppBytes() {
            Object obj = this.app_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.app_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasCategory() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public String getCategory() {
            Object obj = this.category_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.category_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public ByteString getCategoryBytes() {
            Object obj = this.category_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.category_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasAppType() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public String getAppType() {
            Object obj = this.appType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.appType_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public ByteString getAppTypeBytes() {
            Object obj = this.appType_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appType_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasNumDownloading() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getNumDownloading() {
            return this.numDownloading_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasBytesDownloadRate() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getBytesDownloadRate() {
            return this.bytesDownloadRate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasBytesDownloaded() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public long getBytesDownloaded() {
            return this.bytesDownloaded_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasBytesToDownload() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public long getBytesToDownload() {
            return this.bytesToDownload_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public List<CClientComm_GetClientAppList_Response_AppData_DLCData> getDlcsList() {
            return this.dlcs_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public List<? extends CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> getDlcsOrBuilderList() {
            return this.dlcs_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getDlcsCount() {
            return this.dlcs_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public CClientComm_GetClientAppList_Response_AppData_DLCData getDlcs(int i) {
            return this.dlcs_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder getDlcsOrBuilder(int i) {
            return this.dlcs_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasFavorite() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getFavorite() {
            return this.favorite_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasAutoUpdate() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getAutoUpdate() {
            return this.autoUpdate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasInstalled() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getInstalled() {
            return this.installed_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasDownloadPaused() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getDownloadPaused() {
            return this.downloadPaused_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasChanging() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getChanging() {
            return this.changing_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasAvailableOnPlatform() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getAvailableOnPlatform() {
            return this.availableOnPlatform_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasBytesStaged() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public long getBytesStaged() {
            return this.bytesStaged_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasBytesToStage() {
            return (this.bitField0_ & 32768) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public long getBytesToStage() {
            return this.bytesToStage_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasBytesRequired() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public long getBytesRequired() {
            return this.bytesRequired_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasSourceBuildid() {
            return (this.bitField0_ & 131072) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getSourceBuildid() {
            return this.sourceBuildid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasTargetBuildid() {
            return (this.bitField0_ & 262144) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getTargetBuildid() {
            return this.targetBuildid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasEstimatedSecondsRemaining() {
            return (this.bitField0_ & 524288) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getEstimatedSecondsRemaining() {
            return this.estimatedSecondsRemaining_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasQueuePosition() {
            return (this.bitField0_ & 1048576) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getQueuePosition() {
            return this.queuePosition_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasUninstalling() {
            return (this.bitField0_ & 2097152) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getUninstalling() {
            return this.uninstalling_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasRtTimeScheduled() {
            return (this.bitField0_ & 4194304) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getRtTimeScheduled() {
            return this.rtTimeScheduled_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasRunning() {
            return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean getRunning() {
            return this.running_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public boolean hasUpdatePercentage() {
            return (this.bitField0_ & 16777216) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
        public int getUpdatePercentage() {
            return this.updatePercentage_;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.app_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.category_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.appType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(8, this.numDownloading_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(11, this.bytesDownloadRate_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt64(12, this.bytesDownloaded_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt64(13, this.bytesToDownload_);
            }
            for (int i = 0; i < this.dlcs_.size(); i++) {
                codedOutputStream.writeMessage(17, this.dlcs_.get(i));
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeBool(18, this.favorite_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeBool(19, this.autoUpdate_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeBool(20, this.installed_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeBool(21, this.downloadPaused_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                codedOutputStream.writeBool(22, this.changing_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeBool(23, this.availableOnPlatform_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                codedOutputStream.writeUInt64(24, this.bytesStaged_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                codedOutputStream.writeUInt64(25, this.bytesToStage_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                codedOutputStream.writeUInt64(26, this.bytesRequired_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                codedOutputStream.writeUInt32(27, this.sourceBuildid_);
            }
            if ((this.bitField0_ & 262144) != 0) {
                codedOutputStream.writeUInt32(28, this.targetBuildid_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                codedOutputStream.writeUInt32(29, this.estimatedSecondsRemaining_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                codedOutputStream.writeInt32(30, this.queuePosition_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                codedOutputStream.writeBool(31, this.uninstalling_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                codedOutputStream.writeUInt32(32, this.rtTimeScheduled_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                codedOutputStream.writeBool(33, this.running_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                codedOutputStream.writeUInt32(34, this.updatePercentage_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.app_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.category_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.appType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(8, this.numDownloading_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(11, this.bytesDownloadRate_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(12, this.bytesDownloaded_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(13, this.bytesToDownload_);
            }
            for (int i2 = 0; i2 < this.dlcs_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(17, this.dlcs_.get(i2));
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(18, this.favorite_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(19, this.autoUpdate_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(20, this.installed_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(21, this.downloadPaused_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(22, this.changing_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(23, this.availableOnPlatform_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(24, this.bytesStaged_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(25, this.bytesToStage_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(26, this.bytesRequired_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(27, this.sourceBuildid_);
            }
            if ((this.bitField0_ & 262144) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(28, this.targetBuildid_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(29, this.estimatedSecondsRemaining_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(30, this.queuePosition_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(31, this.uninstalling_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(32, this.rtTimeScheduled_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(33, this.running_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(34, this.updatePercentage_);
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
            if (!(obj instanceof CClientComm_GetClientAppList_Response_AppData)) {
                return super.equals(obj);
            }
            CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData = (CClientComm_GetClientAppList_Response_AppData) obj;
            if (hasAppid() != cClientComm_GetClientAppList_Response_AppData.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cClientComm_GetClientAppList_Response_AppData.getAppid()) || hasApp() != cClientComm_GetClientAppList_Response_AppData.hasApp()) {
                return false;
            }
            if ((hasApp() && !getApp().equals(cClientComm_GetClientAppList_Response_AppData.getApp())) || hasCategory() != cClientComm_GetClientAppList_Response_AppData.hasCategory()) {
                return false;
            }
            if ((hasCategory() && !getCategory().equals(cClientComm_GetClientAppList_Response_AppData.getCategory())) || hasAppType() != cClientComm_GetClientAppList_Response_AppData.hasAppType()) {
                return false;
            }
            if ((hasAppType() && !getAppType().equals(cClientComm_GetClientAppList_Response_AppData.getAppType())) || hasNumDownloading() != cClientComm_GetClientAppList_Response_AppData.hasNumDownloading()) {
                return false;
            }
            if ((hasNumDownloading() && getNumDownloading() != cClientComm_GetClientAppList_Response_AppData.getNumDownloading()) || hasBytesDownloadRate() != cClientComm_GetClientAppList_Response_AppData.hasBytesDownloadRate()) {
                return false;
            }
            if ((hasBytesDownloadRate() && getBytesDownloadRate() != cClientComm_GetClientAppList_Response_AppData.getBytesDownloadRate()) || hasBytesDownloaded() != cClientComm_GetClientAppList_Response_AppData.hasBytesDownloaded()) {
                return false;
            }
            if ((hasBytesDownloaded() && getBytesDownloaded() != cClientComm_GetClientAppList_Response_AppData.getBytesDownloaded()) || hasBytesToDownload() != cClientComm_GetClientAppList_Response_AppData.hasBytesToDownload()) {
                return false;
            }
            if ((hasBytesToDownload() && getBytesToDownload() != cClientComm_GetClientAppList_Response_AppData.getBytesToDownload()) || !getDlcsList().equals(cClientComm_GetClientAppList_Response_AppData.getDlcsList()) || hasFavorite() != cClientComm_GetClientAppList_Response_AppData.hasFavorite()) {
                return false;
            }
            if ((hasFavorite() && getFavorite() != cClientComm_GetClientAppList_Response_AppData.getFavorite()) || hasAutoUpdate() != cClientComm_GetClientAppList_Response_AppData.hasAutoUpdate()) {
                return false;
            }
            if ((hasAutoUpdate() && getAutoUpdate() != cClientComm_GetClientAppList_Response_AppData.getAutoUpdate()) || hasInstalled() != cClientComm_GetClientAppList_Response_AppData.hasInstalled()) {
                return false;
            }
            if ((hasInstalled() && getInstalled() != cClientComm_GetClientAppList_Response_AppData.getInstalled()) || hasDownloadPaused() != cClientComm_GetClientAppList_Response_AppData.hasDownloadPaused()) {
                return false;
            }
            if ((hasDownloadPaused() && getDownloadPaused() != cClientComm_GetClientAppList_Response_AppData.getDownloadPaused()) || hasChanging() != cClientComm_GetClientAppList_Response_AppData.hasChanging()) {
                return false;
            }
            if ((hasChanging() && getChanging() != cClientComm_GetClientAppList_Response_AppData.getChanging()) || hasAvailableOnPlatform() != cClientComm_GetClientAppList_Response_AppData.hasAvailableOnPlatform()) {
                return false;
            }
            if ((hasAvailableOnPlatform() && getAvailableOnPlatform() != cClientComm_GetClientAppList_Response_AppData.getAvailableOnPlatform()) || hasBytesStaged() != cClientComm_GetClientAppList_Response_AppData.hasBytesStaged()) {
                return false;
            }
            if ((hasBytesStaged() && getBytesStaged() != cClientComm_GetClientAppList_Response_AppData.getBytesStaged()) || hasBytesToStage() != cClientComm_GetClientAppList_Response_AppData.hasBytesToStage()) {
                return false;
            }
            if ((hasBytesToStage() && getBytesToStage() != cClientComm_GetClientAppList_Response_AppData.getBytesToStage()) || hasBytesRequired() != cClientComm_GetClientAppList_Response_AppData.hasBytesRequired()) {
                return false;
            }
            if ((hasBytesRequired() && getBytesRequired() != cClientComm_GetClientAppList_Response_AppData.getBytesRequired()) || hasSourceBuildid() != cClientComm_GetClientAppList_Response_AppData.hasSourceBuildid()) {
                return false;
            }
            if ((hasSourceBuildid() && getSourceBuildid() != cClientComm_GetClientAppList_Response_AppData.getSourceBuildid()) || hasTargetBuildid() != cClientComm_GetClientAppList_Response_AppData.hasTargetBuildid()) {
                return false;
            }
            if ((hasTargetBuildid() && getTargetBuildid() != cClientComm_GetClientAppList_Response_AppData.getTargetBuildid()) || hasEstimatedSecondsRemaining() != cClientComm_GetClientAppList_Response_AppData.hasEstimatedSecondsRemaining()) {
                return false;
            }
            if ((hasEstimatedSecondsRemaining() && getEstimatedSecondsRemaining() != cClientComm_GetClientAppList_Response_AppData.getEstimatedSecondsRemaining()) || hasQueuePosition() != cClientComm_GetClientAppList_Response_AppData.hasQueuePosition()) {
                return false;
            }
            if ((hasQueuePosition() && getQueuePosition() != cClientComm_GetClientAppList_Response_AppData.getQueuePosition()) || hasUninstalling() != cClientComm_GetClientAppList_Response_AppData.hasUninstalling()) {
                return false;
            }
            if ((hasUninstalling() && getUninstalling() != cClientComm_GetClientAppList_Response_AppData.getUninstalling()) || hasRtTimeScheduled() != cClientComm_GetClientAppList_Response_AppData.hasRtTimeScheduled()) {
                return false;
            }
            if ((hasRtTimeScheduled() && getRtTimeScheduled() != cClientComm_GetClientAppList_Response_AppData.getRtTimeScheduled()) || hasRunning() != cClientComm_GetClientAppList_Response_AppData.hasRunning()) {
                return false;
            }
            if ((!hasRunning() || getRunning() == cClientComm_GetClientAppList_Response_AppData.getRunning()) && hasUpdatePercentage() == cClientComm_GetClientAppList_Response_AppData.hasUpdatePercentage()) {
                return (!hasUpdatePercentage() || getUpdatePercentage() == cClientComm_GetClientAppList_Response_AppData.getUpdatePercentage()) && getUnknownFields().equals(cClientComm_GetClientAppList_Response_AppData.getUnknownFields());
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
            if (hasApp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getApp().hashCode();
            }
            if (hasCategory()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCategory().hashCode();
            }
            if (hasAppType()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getAppType().hashCode();
            }
            if (hasNumDownloading()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getNumDownloading();
            }
            if (hasBytesDownloadRate()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getBytesDownloadRate();
            }
            if (hasBytesDownloaded()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + Internal.hashLong(getBytesDownloaded());
            }
            if (hasBytesToDownload()) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + Internal.hashLong(getBytesToDownload());
            }
            if (getDlcsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 17) * 53) + getDlcsList().hashCode();
            }
            if (hasFavorite()) {
                iHashCode = (((iHashCode * 37) + 18) * 53) + Internal.hashBoolean(getFavorite());
            }
            if (hasAutoUpdate()) {
                iHashCode = (((iHashCode * 37) + 19) * 53) + Internal.hashBoolean(getAutoUpdate());
            }
            if (hasInstalled()) {
                iHashCode = (((iHashCode * 37) + 20) * 53) + Internal.hashBoolean(getInstalled());
            }
            if (hasDownloadPaused()) {
                iHashCode = (((iHashCode * 37) + 21) * 53) + Internal.hashBoolean(getDownloadPaused());
            }
            if (hasChanging()) {
                iHashCode = (((iHashCode * 37) + 22) * 53) + Internal.hashBoolean(getChanging());
            }
            if (hasAvailableOnPlatform()) {
                iHashCode = (((iHashCode * 37) + 23) * 53) + Internal.hashBoolean(getAvailableOnPlatform());
            }
            if (hasBytesStaged()) {
                iHashCode = (((iHashCode * 37) + 24) * 53) + Internal.hashLong(getBytesStaged());
            }
            if (hasBytesToStage()) {
                iHashCode = (((iHashCode * 37) + 25) * 53) + Internal.hashLong(getBytesToStage());
            }
            if (hasBytesRequired()) {
                iHashCode = (((iHashCode * 37) + 26) * 53) + Internal.hashLong(getBytesRequired());
            }
            if (hasSourceBuildid()) {
                iHashCode = (((iHashCode * 37) + 27) * 53) + getSourceBuildid();
            }
            if (hasTargetBuildid()) {
                iHashCode = (((iHashCode * 37) + 28) * 53) + getTargetBuildid();
            }
            if (hasEstimatedSecondsRemaining()) {
                iHashCode = (((iHashCode * 37) + 29) * 53) + getEstimatedSecondsRemaining();
            }
            if (hasQueuePosition()) {
                iHashCode = (((iHashCode * 37) + 30) * 53) + getQueuePosition();
            }
            if (hasUninstalling()) {
                iHashCode = (((iHashCode * 37) + 31) * 53) + Internal.hashBoolean(getUninstalling());
            }
            if (hasRtTimeScheduled()) {
                iHashCode = (((iHashCode * 37) + 32) * 53) + getRtTimeScheduled();
            }
            if (hasRunning()) {
                iHashCode = (((iHashCode * 37) + 33) * 53) + Internal.hashBoolean(getRunning());
            }
            if (hasUpdatePercentage()) {
                iHashCode = (((iHashCode * 37) + 34) * 53) + getUpdatePercentage();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientAppList_Response_AppData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientAppList_Response_AppData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientAppList_Response_AppDataOrBuilder {
            private Object appType_;
            private Object app_;
            private int appid_;
            private boolean autoUpdate_;
            private boolean availableOnPlatform_;
            private int bitField0_;
            private int bytesDownloadRate_;
            private long bytesDownloaded_;
            private long bytesRequired_;
            private long bytesStaged_;
            private long bytesToDownload_;
            private long bytesToStage_;
            private Object category_;
            private boolean changing_;
            private RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> dlcsBuilder_;
            private List<CClientComm_GetClientAppList_Response_AppData_DLCData> dlcs_;
            private boolean downloadPaused_;
            private int estimatedSecondsRemaining_;
            private boolean favorite_;
            private boolean installed_;
            private int numDownloading_;
            private int queuePosition_;
            private int rtTimeScheduled_;
            private boolean running_;
            private int sourceBuildid_;
            private int targetBuildid_;
            private boolean uninstalling_;
            private int updatePercentage_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Response_AppData.class, Builder.class);
            }

            private Builder() {
                this.app_ = "";
                this.category_ = "";
                this.appType_ = "";
                this.dlcs_ = Collections.emptyList();
                this.queuePosition_ = -1;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.app_ = "";
                this.category_ = "";
                this.appType_ = "";
                this.dlcs_ = Collections.emptyList();
                this.queuePosition_ = -1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.app_ = "";
                this.category_ = "";
                this.appType_ = "";
                this.numDownloading_ = 0;
                this.bytesDownloadRate_ = 0;
                this.bytesDownloaded_ = 0L;
                this.bytesToDownload_ = 0L;
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.dlcs_ = Collections.emptyList();
                } else {
                    this.dlcs_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -257;
                this.favorite_ = false;
                this.autoUpdate_ = false;
                this.installed_ = false;
                this.downloadPaused_ = false;
                this.changing_ = false;
                this.availableOnPlatform_ = false;
                this.bytesStaged_ = 0L;
                this.bytesToStage_ = 0L;
                this.bytesRequired_ = 0L;
                this.sourceBuildid_ = 0;
                this.targetBuildid_ = 0;
                this.estimatedSecondsRemaining_ = 0;
                this.queuePosition_ = -1;
                this.uninstalling_ = false;
                this.rtTimeScheduled_ = 0;
                this.running_ = false;
                this.updatePercentage_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientAppList_Response_AppData getDefaultInstanceForType() {
                return CClientComm_GetClientAppList_Response_AppData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Response_AppData build() {
                CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppDataBuildPartial = buildPartial();
                if (cClientComm_GetClientAppList_Response_AppDataBuildPartial.isInitialized()) {
                    return cClientComm_GetClientAppList_Response_AppDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientAppList_Response_AppDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Response_AppData buildPartial() {
                CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData = new CClientComm_GetClientAppList_Response_AppData(this);
                buildPartialRepeatedFields(cClientComm_GetClientAppList_Response_AppData);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientAppList_Response_AppData);
                }
                onBuilt();
                return cClientComm_GetClientAppList_Response_AppData;
            }

            private void buildPartialRepeatedFields(CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 256) != 0) {
                        this.dlcs_ = Collections.unmodifiableList(this.dlcs_);
                        this.bitField0_ &= -257;
                    }
                    cClientComm_GetClientAppList_Response_AppData.dlcs_ = this.dlcs_;
                    return;
                }
                cClientComm_GetClientAppList_Response_AppData.dlcs_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.app_ = this.app_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.category_ = this.category_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.appType_ = this.appType_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.numDownloading_ = this.numDownloading_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.bytesDownloadRate_ = this.bytesDownloadRate_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.bytesDownloaded_ = this.bytesDownloaded_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.bytesToDownload_ = this.bytesToDownload_;
                    i |= 128;
                }
                if ((i2 & 512) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.favorite_ = this.favorite_;
                    i |= 256;
                }
                if ((i2 & 1024) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.autoUpdate_ = this.autoUpdate_;
                    i |= 512;
                }
                if ((i2 & 2048) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.installed_ = this.installed_;
                    i |= 1024;
                }
                if ((i2 & 4096) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.downloadPaused_ = this.downloadPaused_;
                    i |= 2048;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.changing_ = this.changing_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.availableOnPlatform_ = this.availableOnPlatform_;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & 32768) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.bytesStaged_ = this.bytesStaged_;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.bytesToStage_ = this.bytesToStage_;
                    i |= 32768;
                }
                if ((i2 & 131072) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.bytesRequired_ = this.bytesRequired_;
                    i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                }
                if ((i2 & 262144) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.sourceBuildid_ = this.sourceBuildid_;
                    i |= 131072;
                }
                if ((i2 & 524288) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.targetBuildid_ = this.targetBuildid_;
                    i |= 262144;
                }
                if ((i2 & 1048576) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.estimatedSecondsRemaining_ = this.estimatedSecondsRemaining_;
                    i |= 524288;
                }
                if ((i2 & 2097152) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.queuePosition_ = this.queuePosition_;
                    i |= 1048576;
                }
                if ((i2 & 4194304) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.uninstalling_ = this.uninstalling_;
                    i |= 2097152;
                }
                if ((8388608 & i2) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.rtTimeScheduled_ = this.rtTimeScheduled_;
                    i |= 4194304;
                }
                if ((16777216 & i2) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.running_ = this.running_;
                    i |= LZMA2Options.DICT_SIZE_DEFAULT;
                }
                if ((i2 & 33554432) != 0) {
                    cClientComm_GetClientAppList_Response_AppData.updatePercentage_ = this.updatePercentage_;
                    i |= 16777216;
                }
                cClientComm_GetClientAppList_Response_AppData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientAppList_Response_AppData) {
                    return mergeFrom((CClientComm_GetClientAppList_Response_AppData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData) {
                if (cClientComm_GetClientAppList_Response_AppData == CClientComm_GetClientAppList_Response_AppData.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasAppid()) {
                    setAppid(cClientComm_GetClientAppList_Response_AppData.getAppid());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasApp()) {
                    this.app_ = cClientComm_GetClientAppList_Response_AppData.app_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasCategory()) {
                    this.category_ = cClientComm_GetClientAppList_Response_AppData.category_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasAppType()) {
                    this.appType_ = cClientComm_GetClientAppList_Response_AppData.appType_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasNumDownloading()) {
                    setNumDownloading(cClientComm_GetClientAppList_Response_AppData.getNumDownloading());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasBytesDownloadRate()) {
                    setBytesDownloadRate(cClientComm_GetClientAppList_Response_AppData.getBytesDownloadRate());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasBytesDownloaded()) {
                    setBytesDownloaded(cClientComm_GetClientAppList_Response_AppData.getBytesDownloaded());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasBytesToDownload()) {
                    setBytesToDownload(cClientComm_GetClientAppList_Response_AppData.getBytesToDownload());
                }
                if (this.dlcsBuilder_ == null) {
                    if (!cClientComm_GetClientAppList_Response_AppData.dlcs_.isEmpty()) {
                        if (this.dlcs_.isEmpty()) {
                            this.dlcs_ = cClientComm_GetClientAppList_Response_AppData.dlcs_;
                            this.bitField0_ &= -257;
                        } else {
                            ensureDlcsIsMutable();
                            this.dlcs_.addAll(cClientComm_GetClientAppList_Response_AppData.dlcs_);
                        }
                        onChanged();
                    }
                } else if (!cClientComm_GetClientAppList_Response_AppData.dlcs_.isEmpty()) {
                    if (this.dlcsBuilder_.isEmpty()) {
                        this.dlcsBuilder_.dispose();
                        this.dlcsBuilder_ = null;
                        this.dlcs_ = cClientComm_GetClientAppList_Response_AppData.dlcs_;
                        this.bitField0_ &= -257;
                        this.dlcsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetDlcsFieldBuilder() : null;
                    } else {
                        this.dlcsBuilder_.addAllMessages(cClientComm_GetClientAppList_Response_AppData.dlcs_);
                    }
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasFavorite()) {
                    setFavorite(cClientComm_GetClientAppList_Response_AppData.getFavorite());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasAutoUpdate()) {
                    setAutoUpdate(cClientComm_GetClientAppList_Response_AppData.getAutoUpdate());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasInstalled()) {
                    setInstalled(cClientComm_GetClientAppList_Response_AppData.getInstalled());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasDownloadPaused()) {
                    setDownloadPaused(cClientComm_GetClientAppList_Response_AppData.getDownloadPaused());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasChanging()) {
                    setChanging(cClientComm_GetClientAppList_Response_AppData.getChanging());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasAvailableOnPlatform()) {
                    setAvailableOnPlatform(cClientComm_GetClientAppList_Response_AppData.getAvailableOnPlatform());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasBytesStaged()) {
                    setBytesStaged(cClientComm_GetClientAppList_Response_AppData.getBytesStaged());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasBytesToStage()) {
                    setBytesToStage(cClientComm_GetClientAppList_Response_AppData.getBytesToStage());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasBytesRequired()) {
                    setBytesRequired(cClientComm_GetClientAppList_Response_AppData.getBytesRequired());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasSourceBuildid()) {
                    setSourceBuildid(cClientComm_GetClientAppList_Response_AppData.getSourceBuildid());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasTargetBuildid()) {
                    setTargetBuildid(cClientComm_GetClientAppList_Response_AppData.getTargetBuildid());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasEstimatedSecondsRemaining()) {
                    setEstimatedSecondsRemaining(cClientComm_GetClientAppList_Response_AppData.getEstimatedSecondsRemaining());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasQueuePosition()) {
                    setQueuePosition(cClientComm_GetClientAppList_Response_AppData.getQueuePosition());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasUninstalling()) {
                    setUninstalling(cClientComm_GetClientAppList_Response_AppData.getUninstalling());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasRtTimeScheduled()) {
                    setRtTimeScheduled(cClientComm_GetClientAppList_Response_AppData.getRtTimeScheduled());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasRunning()) {
                    setRunning(cClientComm_GetClientAppList_Response_AppData.getRunning());
                }
                if (cClientComm_GetClientAppList_Response_AppData.hasUpdatePercentage()) {
                    setUpdatePercentage(cClientComm_GetClientAppList_Response_AppData.getUpdatePercentage());
                }
                mergeUnknownFields(cClientComm_GetClientAppList_Response_AppData.getUnknownFields());
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
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 18:
                                    this.app_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.category_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    this.appType_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    break;
                                case 64:
                                    this.numDownloading_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER /* 88 */:
                                    this.bytesDownloadRate_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case 96:
                                    this.bytesDownloaded_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    this.bytesToDownload_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 128;
                                    break;
                                case 138:
                                    CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData = (CClientComm_GetClientAppList_Response_AppData_DLCData) codedInputStream.readMessage(CClientComm_GetClientAppList_Response_AppData_DLCData.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureDlcsIsMutable();
                                        this.dlcs_.add(cClientComm_GetClientAppList_Response_AppData_DLCData);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cClientComm_GetClientAppList_Response_AppData_DLCData);
                                    }
                                    break;
                                case 144:
                                    this.favorite_ = codedInputStream.readBool();
                                    this.bitField0_ |= 512;
                                    break;
                                case 152:
                                    this.autoUpdate_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1024;
                                    break;
                                case 160:
                                    this.installed_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2048;
                                    break;
                                case 168:
                                    this.downloadPaused_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4096;
                                    break;
                                case 176:
                                    this.changing_ = codedInputStream.readBool();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 184:
                                    this.availableOnPlatform_ = codedInputStream.readBool();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case BERTags.PRIVATE /* 192 */:
                                    this.bytesStaged_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 32768;
                                    break;
                                case 200:
                                    this.bytesToStage_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                    break;
                                case 208:
                                    this.bytesRequired_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 131072;
                                    break;
                                case 216:
                                    this.sourceBuildid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 262144;
                                    break;
                                case BERTags.FLAGS /* 224 */:
                                    this.targetBuildid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 524288;
                                    break;
                                case 232:
                                    this.estimatedSecondsRemaining_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1048576;
                                    break;
                                case 240:
                                    this.queuePosition_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2097152;
                                    break;
                                case 248:
                                    this.uninstalling_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4194304;
                                    break;
                                case 256:
                                    this.rtTimeScheduled_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                    break;
                                case 264:
                                    this.running_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16777216;
                                    break;
                                case 272:
                                    this.updatePercentage_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 33554432;
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasApp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public String getApp() {
                Object obj = this.app_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.app_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public ByteString getAppBytes() {
                Object obj = this.app_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.app_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setApp(String str) {
                str.getClass();
                this.app_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearApp() {
                this.app_ = CClientComm_GetClientAppList_Response_AppData.getDefaultInstance().getApp();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setAppBytes(ByteString byteString) {
                byteString.getClass();
                this.app_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasCategory() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public String getCategory() {
                Object obj = this.category_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.category_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public ByteString getCategoryBytes() {
                Object obj = this.category_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.category_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCategory(String str) {
                str.getClass();
                this.category_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCategory() {
                this.category_ = CClientComm_GetClientAppList_Response_AppData.getDefaultInstance().getCategory();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setCategoryBytes(ByteString byteString) {
                byteString.getClass();
                this.category_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasAppType() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public String getAppType() {
                Object obj = this.appType_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.appType_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public ByteString getAppTypeBytes() {
                Object obj = this.appType_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.appType_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAppType(String str) {
                str.getClass();
                this.appType_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAppType() {
                this.appType_ = CClientComm_GetClientAppList_Response_AppData.getDefaultInstance().getAppType();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setAppTypeBytes(ByteString byteString) {
                byteString.getClass();
                this.appType_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasNumDownloading() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getNumDownloading() {
                return this.numDownloading_;
            }

            public Builder setNumDownloading(int i) {
                this.numDownloading_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearNumDownloading() {
                this.bitField0_ &= -17;
                this.numDownloading_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasBytesDownloadRate() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getBytesDownloadRate() {
                return this.bytesDownloadRate_;
            }

            public Builder setBytesDownloadRate(int i) {
                this.bytesDownloadRate_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearBytesDownloadRate() {
                this.bitField0_ &= -33;
                this.bytesDownloadRate_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasBytesDownloaded() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public long getBytesDownloaded() {
                return this.bytesDownloaded_;
            }

            public Builder setBytesDownloaded(long j) {
                this.bytesDownloaded_ = j;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearBytesDownloaded() {
                this.bitField0_ &= -65;
                this.bytesDownloaded_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasBytesToDownload() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public long getBytesToDownload() {
                return this.bytesToDownload_;
            }

            public Builder setBytesToDownload(long j) {
                this.bytesToDownload_ = j;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearBytesToDownload() {
                this.bitField0_ &= -129;
                this.bytesToDownload_ = 0L;
                onChanged();
                return this;
            }

            private void ensureDlcsIsMutable() {
                if ((this.bitField0_ & 256) == 0) {
                    this.dlcs_ = new ArrayList(this.dlcs_);
                    this.bitField0_ |= 256;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public List<CClientComm_GetClientAppList_Response_AppData_DLCData> getDlcsList() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.dlcs_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getDlcsCount() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.dlcs_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public CClientComm_GetClientAppList_Response_AppData_DLCData getDlcs(int i) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.dlcs_.get(i);
                }
                return (CClientComm_GetClientAppList_Response_AppData_DLCData) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setDlcs(int i, CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetClientAppList_Response_AppData_DLCData.getClass();
                    ensureDlcsIsMutable();
                    this.dlcs_.set(i, cClientComm_GetClientAppList_Response_AppData_DLCData);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientComm_GetClientAppList_Response_AppData_DLCData);
                }
                return this;
            }

            public Builder setDlcs(int i, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDlcsIsMutable();
                    this.dlcs_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addDlcs(CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetClientAppList_Response_AppData_DLCData.getClass();
                    ensureDlcsIsMutable();
                    this.dlcs_.add(cClientComm_GetClientAppList_Response_AppData_DLCData);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientComm_GetClientAppList_Response_AppData_DLCData);
                }
                return this;
            }

            public Builder addDlcs(int i, CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientComm_GetClientAppList_Response_AppData_DLCData.getClass();
                    ensureDlcsIsMutable();
                    this.dlcs_.add(i, cClientComm_GetClientAppList_Response_AppData_DLCData);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientComm_GetClientAppList_Response_AppData_DLCData);
                }
                return this;
            }

            public Builder addDlcs(CClientComm_GetClientAppList_Response_AppData_DLCData.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDlcsIsMutable();
                    this.dlcs_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addDlcs(int i, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder builder) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDlcsIsMutable();
                    this.dlcs_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllDlcs(Iterable<? extends CClientComm_GetClientAppList_Response_AppData_DLCData> iterable) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDlcsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.dlcs_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearDlcs() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.dlcs_ = Collections.emptyList();
                    this.bitField0_ &= -257;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeDlcs(int i) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureDlcsIsMutable();
                    this.dlcs_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientComm_GetClientAppList_Response_AppData_DLCData.Builder getDlcsBuilder(int i) {
                return (CClientComm_GetClientAppList_Response_AppData_DLCData.Builder) internalGetDlcsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder getDlcsOrBuilder(int i) {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.dlcs_.get(i);
                }
                return (CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public List<? extends CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> getDlcsOrBuilderList() {
                RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> repeatedFieldBuilder = this.dlcsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.dlcs_);
            }

            public CClientComm_GetClientAppList_Response_AppData_DLCData.Builder addDlcsBuilder() {
                return (CClientComm_GetClientAppList_Response_AppData_DLCData.Builder) internalGetDlcsFieldBuilder().addBuilder(CClientComm_GetClientAppList_Response_AppData_DLCData.getDefaultInstance());
            }

            public CClientComm_GetClientAppList_Response_AppData_DLCData.Builder addDlcsBuilder(int i) {
                return (CClientComm_GetClientAppList_Response_AppData_DLCData.Builder) internalGetDlcsFieldBuilder().addBuilder(i, CClientComm_GetClientAppList_Response_AppData_DLCData.getDefaultInstance());
            }

            public List<CClientComm_GetClientAppList_Response_AppData_DLCData.Builder> getDlcsBuilderList() {
                return internalGetDlcsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientComm_GetClientAppList_Response_AppData_DLCData, CClientComm_GetClientAppList_Response_AppData_DLCData.Builder, CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder> internalGetDlcsFieldBuilder() {
                if (this.dlcsBuilder_ == null) {
                    this.dlcsBuilder_ = new RepeatedFieldBuilder<>(this.dlcs_, (this.bitField0_ & 256) != 0, getParentForChildren(), isClean());
                    this.dlcs_ = null;
                }
                return this.dlcsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasFavorite() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getFavorite() {
                return this.favorite_;
            }

            public Builder setFavorite(boolean z) {
                this.favorite_ = z;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearFavorite() {
                this.bitField0_ &= -513;
                this.favorite_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasAutoUpdate() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getAutoUpdate() {
                return this.autoUpdate_;
            }

            public Builder setAutoUpdate(boolean z) {
                this.autoUpdate_ = z;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearAutoUpdate() {
                this.bitField0_ &= -1025;
                this.autoUpdate_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasInstalled() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getInstalled() {
                return this.installed_;
            }

            public Builder setInstalled(boolean z) {
                this.installed_ = z;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearInstalled() {
                this.bitField0_ &= -2049;
                this.installed_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasDownloadPaused() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getDownloadPaused() {
                return this.downloadPaused_;
            }

            public Builder setDownloadPaused(boolean z) {
                this.downloadPaused_ = z;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearDownloadPaused() {
                this.bitField0_ &= -4097;
                this.downloadPaused_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasChanging() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getChanging() {
                return this.changing_;
            }

            public Builder setChanging(boolean z) {
                this.changing_ = z;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearChanging() {
                this.bitField0_ &= -8193;
                this.changing_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasAvailableOnPlatform() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getAvailableOnPlatform() {
                return this.availableOnPlatform_;
            }

            public Builder setAvailableOnPlatform(boolean z) {
                this.availableOnPlatform_ = z;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearAvailableOnPlatform() {
                this.bitField0_ &= -16385;
                this.availableOnPlatform_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasBytesStaged() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public long getBytesStaged() {
                return this.bytesStaged_;
            }

            public Builder setBytesStaged(long j) {
                this.bytesStaged_ = j;
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder clearBytesStaged() {
                this.bitField0_ &= -32769;
                this.bytesStaged_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasBytesToStage() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public long getBytesToStage() {
                return this.bytesToStage_;
            }

            public Builder setBytesToStage(long j) {
                this.bytesToStage_ = j;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearBytesToStage() {
                this.bitField0_ &= -65537;
                this.bytesToStage_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasBytesRequired() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public long getBytesRequired() {
                return this.bytesRequired_;
            }

            public Builder setBytesRequired(long j) {
                this.bytesRequired_ = j;
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearBytesRequired() {
                this.bitField0_ &= -131073;
                this.bytesRequired_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasSourceBuildid() {
                return (this.bitField0_ & 262144) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getSourceBuildid() {
                return this.sourceBuildid_;
            }

            public Builder setSourceBuildid(int i) {
                this.sourceBuildid_ = i;
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder clearSourceBuildid() {
                this.bitField0_ &= -262145;
                this.sourceBuildid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasTargetBuildid() {
                return (this.bitField0_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getTargetBuildid() {
                return this.targetBuildid_;
            }

            public Builder setTargetBuildid(int i) {
                this.targetBuildid_ = i;
                this.bitField0_ |= 524288;
                onChanged();
                return this;
            }

            public Builder clearTargetBuildid() {
                this.bitField0_ &= -524289;
                this.targetBuildid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasEstimatedSecondsRemaining() {
                return (this.bitField0_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getEstimatedSecondsRemaining() {
                return this.estimatedSecondsRemaining_;
            }

            public Builder setEstimatedSecondsRemaining(int i) {
                this.estimatedSecondsRemaining_ = i;
                this.bitField0_ |= 1048576;
                onChanged();
                return this;
            }

            public Builder clearEstimatedSecondsRemaining() {
                this.bitField0_ &= -1048577;
                this.estimatedSecondsRemaining_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasQueuePosition() {
                return (this.bitField0_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getQueuePosition() {
                return this.queuePosition_;
            }

            public Builder setQueuePosition(int i) {
                this.queuePosition_ = i;
                this.bitField0_ |= 2097152;
                onChanged();
                return this;
            }

            public Builder clearQueuePosition() {
                this.bitField0_ &= -2097153;
                this.queuePosition_ = -1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasUninstalling() {
                return (this.bitField0_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getUninstalling() {
                return this.uninstalling_;
            }

            public Builder setUninstalling(boolean z) {
                this.uninstalling_ = z;
                this.bitField0_ |= 4194304;
                onChanged();
                return this;
            }

            public Builder clearUninstalling() {
                this.bitField0_ &= -4194305;
                this.uninstalling_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasRtTimeScheduled() {
                return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getRtTimeScheduled() {
                return this.rtTimeScheduled_;
            }

            public Builder setRtTimeScheduled(int i) {
                this.rtTimeScheduled_ = i;
                this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            public Builder clearRtTimeScheduled() {
                this.bitField0_ &= -8388609;
                this.rtTimeScheduled_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasRunning() {
                return (this.bitField0_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean getRunning() {
                return this.running_;
            }

            public Builder setRunning(boolean z) {
                this.running_ = z;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            public Builder clearRunning() {
                this.bitField0_ &= -16777217;
                this.running_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public boolean hasUpdatePercentage() {
                return (this.bitField0_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppDataOrBuilder
            public int getUpdatePercentage() {
                return this.updatePercentage_;
            }

            public Builder setUpdatePercentage(int i) {
                this.updatePercentage_ = i;
                this.bitField0_ |= 33554432;
                onChanged();
                return this;
            }

            public Builder clearUpdatePercentage() {
                this.bitField0_ &= -33554433;
                this.updatePercentage_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientAppList_Response_AppData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientAppList_Response_AppData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientAppList_Response_AppData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientAppList_Response_AppData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientAppList_Response_AppData_DLCData extends GeneratedMessage implements CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int APP_FIELD_NUMBER = 2;
        private static final CClientComm_GetClientAppList_Response_AppData_DLCData DEFAULT_INSTANCE;
        public static final int INSTALLED_FIELD_NUMBER = 3;
        private static final Parser<CClientComm_GetClientAppList_Response_AppData_DLCData> PARSER;
        private static final long serialVersionUID = 0;
        private volatile Object app_;
        private int appid_;
        private int bitField0_;
        private int installed_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientAppList_Response_AppData_DLCData.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientAppList_Response_AppData_DLCData();
            PARSER = new AbstractParser<CClientComm_GetClientAppList_Response_AppData_DLCData>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCData.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientAppList_Response_AppData_DLCData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientAppList_Response_AppData_DLCData.newBuilder();
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

        private CClientComm_GetClientAppList_Response_AppData_DLCData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.app_ = "";
            this.installed_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientAppList_Response_AppData_DLCData() {
            this.appid_ = 0;
            this.app_ = "";
            this.installed_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.app_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Response_AppData_DLCData.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public boolean hasApp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public String getApp() {
            Object obj = this.app_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.app_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public ByteString getAppBytes() {
            Object obj = this.app_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.app_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public boolean hasInstalled() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
        public int getInstalled() {
            return this.installed_;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.app_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.installed_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.app_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.installed_);
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
            if (!(obj instanceof CClientComm_GetClientAppList_Response_AppData_DLCData)) {
                return super.equals(obj);
            }
            CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData = (CClientComm_GetClientAppList_Response_AppData_DLCData) obj;
            if (hasAppid() != cClientComm_GetClientAppList_Response_AppData_DLCData.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cClientComm_GetClientAppList_Response_AppData_DLCData.getAppid()) || hasApp() != cClientComm_GetClientAppList_Response_AppData_DLCData.hasApp()) {
                return false;
            }
            if ((!hasApp() || getApp().equals(cClientComm_GetClientAppList_Response_AppData_DLCData.getApp())) && hasInstalled() == cClientComm_GetClientAppList_Response_AppData_DLCData.hasInstalled()) {
                return (!hasInstalled() || getInstalled() == cClientComm_GetClientAppList_Response_AppData_DLCData.getInstalled()) && getUnknownFields().equals(cClientComm_GetClientAppList_Response_AppData_DLCData.getUnknownFields());
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
            if (hasApp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getApp().hashCode();
            }
            if (hasInstalled()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInstalled();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData_DLCData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData_DLCData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData_DLCData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData_DLCData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData_DLCData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientAppList_Response_AppData_DLCData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientAppList_Response_AppData_DLCData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder {
            private Object app_;
            private int appid_;
            private int bitField0_;
            private int installed_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientAppList_Response_AppData_DLCData.class, Builder.class);
            }

            private Builder() {
                this.app_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.app_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.app_ = "";
                this.installed_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientAppList_Response_AppData_DLCData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientAppList_Response_AppData_DLCData getDefaultInstanceForType() {
                return CClientComm_GetClientAppList_Response_AppData_DLCData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Response_AppData_DLCData build() {
                CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCDataBuildPartial = buildPartial();
                if (cClientComm_GetClientAppList_Response_AppData_DLCDataBuildPartial.isInitialized()) {
                    return cClientComm_GetClientAppList_Response_AppData_DLCDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientAppList_Response_AppData_DLCDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientAppList_Response_AppData_DLCData buildPartial() {
                CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData = new CClientComm_GetClientAppList_Response_AppData_DLCData(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientAppList_Response_AppData_DLCData);
                }
                onBuilt();
                return cClientComm_GetClientAppList_Response_AppData_DLCData;
            }

            private void buildPartial0(CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_GetClientAppList_Response_AppData_DLCData.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_GetClientAppList_Response_AppData_DLCData.app_ = this.app_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_GetClientAppList_Response_AppData_DLCData.installed_ = this.installed_;
                    i |= 4;
                }
                cClientComm_GetClientAppList_Response_AppData_DLCData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientAppList_Response_AppData_DLCData) {
                    return mergeFrom((CClientComm_GetClientAppList_Response_AppData_DLCData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData) {
                if (cClientComm_GetClientAppList_Response_AppData_DLCData == CClientComm_GetClientAppList_Response_AppData_DLCData.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientAppList_Response_AppData_DLCData.hasAppid()) {
                    setAppid(cClientComm_GetClientAppList_Response_AppData_DLCData.getAppid());
                }
                if (cClientComm_GetClientAppList_Response_AppData_DLCData.hasApp()) {
                    this.app_ = cClientComm_GetClientAppList_Response_AppData_DLCData.app_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientComm_GetClientAppList_Response_AppData_DLCData.hasInstalled()) {
                    setInstalled(cClientComm_GetClientAppList_Response_AppData_DLCData.getInstalled());
                }
                mergeUnknownFields(cClientComm_GetClientAppList_Response_AppData_DLCData.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.app_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.installed_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
            public boolean hasApp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
            public String getApp() {
                Object obj = this.app_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.app_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
            public ByteString getAppBytes() {
                Object obj = this.app_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.app_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setApp(String str) {
                str.getClass();
                this.app_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearApp() {
                this.app_ = CClientComm_GetClientAppList_Response_AppData_DLCData.getDefaultInstance().getApp();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setAppBytes(ByteString byteString) {
                byteString.getClass();
                this.app_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
            public boolean hasInstalled() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCDataOrBuilder
            public int getInstalled() {
                return this.installed_;
            }

            public Builder setInstalled(int i) {
                this.installed_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearInstalled() {
                this.bitField0_ &= -5;
                this.installed_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientAppList_Response_AppData_DLCData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientAppList_Response_AppData_DLCData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientAppList_Response_AppData_DLCData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientAppList_Response_AppData_DLCData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientInfo_Request extends GeneratedMessage implements CClientComm_GetClientInfo_RequestOrBuilder {
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 1;
        private static final CClientComm_GetClientInfo_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_GetClientInfo_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientInstanceid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientInfo_Request();
            PARSER = new AbstractParser<CClientComm_GetClientInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientInfo_Request.newBuilder();
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

        private CClientComm_GetClientInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientInfo_Request() {
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientInfo_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
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
                codedOutputStream.writeUInt64(1, this.clientInstanceid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.clientInstanceid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt64Size;
            return iComputeUInt64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CClientComm_GetClientInfo_Request)) {
                return super.equals(obj);
            }
            CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_Request = (CClientComm_GetClientInfo_Request) obj;
            if (hasClientInstanceid() != cClientComm_GetClientInfo_Request.hasClientInstanceid()) {
                return false;
            }
            return (!hasClientInstanceid() || getClientInstanceid() == cClientComm_GetClientInfo_Request.getClientInstanceid()) && getUnknownFields().equals(cClientComm_GetClientInfo_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getClientInstanceid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientInfo_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientInfo_RequestOrBuilder {
            private int bitField0_;
            private long clientInstanceid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientInfo_Request.class, Builder.class);
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
                this.clientInstanceid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientInfo_Request getDefaultInstanceForType() {
                return CClientComm_GetClientInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientInfo_Request build() {
                CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_RequestBuildPartial = buildPartial();
                if (cClientComm_GetClientInfo_RequestBuildPartial.isInitialized()) {
                    return cClientComm_GetClientInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientInfo_Request buildPartial() {
                CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_Request = new CClientComm_GetClientInfo_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientInfo_Request);
                }
                onBuilt();
                return cClientComm_GetClientInfo_Request;
            }

            private void buildPartial0(CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cClientComm_GetClientInfo_Request.clientInstanceid_ = this.clientInstanceid_;
                } else {
                    i = 0;
                }
                cClientComm_GetClientInfo_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientInfo_Request) {
                    return mergeFrom((CClientComm_GetClientInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_Request) {
                if (cClientComm_GetClientInfo_Request == CClientComm_GetClientInfo_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientInfo_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_GetClientInfo_Request.getClientInstanceid());
                }
                mergeUnknownFields(cClientComm_GetClientInfo_Request.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -2;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientInfo_Response extends GeneratedMessage implements CClientComm_GetClientInfo_ResponseOrBuilder {
        public static final int CLIENT_INFO_FIELD_NUMBER = 1;
        private static final CClientComm_GetClientInfo_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_GetClientInfo_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private CClientComm_ClientData clientInfo_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientInfo_Response();
            PARSER = new AbstractParser<CClientComm_GetClientInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientInfo_Response.newBuilder();
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

        private CClientComm_GetClientInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientInfo_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_ResponseOrBuilder
        public boolean hasClientInfo() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_ResponseOrBuilder
        public CClientComm_ClientData getClientInfo() {
            CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
            return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_ResponseOrBuilder
        public CClientComm_ClientDataOrBuilder getClientInfoOrBuilder() {
            CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
            return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
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
                codedOutputStream.writeMessage(1, getClientInfo());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeMessageSize(1, getClientInfo()) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeMessageSize;
            return iComputeMessageSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CClientComm_GetClientInfo_Response)) {
                return super.equals(obj);
            }
            CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_Response = (CClientComm_GetClientInfo_Response) obj;
            if (hasClientInfo() != cClientComm_GetClientInfo_Response.hasClientInfo()) {
                return false;
            }
            return (!hasClientInfo() || getClientInfo().equals(cClientComm_GetClientInfo_Response.getClientInfo())) && getUnknownFields().equals(cClientComm_GetClientInfo_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasClientInfo()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getClientInfo().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientInfo_ResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> clientInfoBuilder_;
            private CClientComm_ClientData clientInfo_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientInfo_Response.class, Builder.class);
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
                    internalGetClientInfoFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.clientInfo_ = null;
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.clientInfoBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientInfo_Response getDefaultInstanceForType() {
                return CClientComm_GetClientInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientInfo_Response build() {
                CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_ResponseBuildPartial = buildPartial();
                if (cClientComm_GetClientInfo_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_GetClientInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientInfo_Response buildPartial() {
                CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_Response = new CClientComm_GetClientInfo_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientInfo_Response);
                }
                onBuilt();
                return cClientComm_GetClientInfo_Response;
            }

            private void buildPartial0(CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_Response) {
                CClientComm_ClientData cClientComm_ClientData;
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                    if (singleFieldBuilder == null) {
                        cClientComm_ClientData = this.clientInfo_;
                    } else {
                        cClientComm_ClientData = (CClientComm_ClientData) singleFieldBuilder.build();
                    }
                    cClientComm_GetClientInfo_Response.clientInfo_ = cClientComm_ClientData;
                } else {
                    i = 0;
                }
                cClientComm_GetClientInfo_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientInfo_Response) {
                    return mergeFrom((CClientComm_GetClientInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_Response) {
                if (cClientComm_GetClientInfo_Response == CClientComm_GetClientInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientInfo_Response.hasClientInfo()) {
                    mergeClientInfo(cClientComm_GetClientInfo_Response.getClientInfo());
                }
                mergeUnknownFields(cClientComm_GetClientInfo_Response.getUnknownFields());
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
                                    codedInputStream.readMessage(internalGetClientInfoFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_ResponseOrBuilder
            public boolean hasClientInfo() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_ResponseOrBuilder
            public CClientComm_ClientData getClientInfo() {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
                    return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
                }
                return (CClientComm_ClientData) singleFieldBuilder.getMessage();
            }

            public Builder setClientInfo(CClientComm_ClientData cClientComm_ClientData) {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    cClientComm_ClientData.getClass();
                    this.clientInfo_ = cClientComm_ClientData;
                } else {
                    singleFieldBuilder.setMessage(cClientComm_ClientData);
                }
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder setClientInfo(CClientComm_ClientData.Builder builder) {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.clientInfo_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder mergeClientInfo(CClientComm_ClientData cClientComm_ClientData) {
                CClientComm_ClientData cClientComm_ClientData2;
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0 && (cClientComm_ClientData2 = this.clientInfo_) != null && cClientComm_ClientData2 != CClientComm_ClientData.getDefaultInstance()) {
                        getClientInfoBuilder().mergeFrom(cClientComm_ClientData);
                    } else {
                        this.clientInfo_ = cClientComm_ClientData;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cClientComm_ClientData);
                }
                if (this.clientInfo_ != null) {
                    this.bitField0_ |= 1;
                    onChanged();
                }
                return this;
            }

            public Builder clearClientInfo() {
                this.bitField0_ &= -2;
                this.clientInfo_ = null;
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.clientInfoBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CClientComm_ClientData.Builder getClientInfoBuilder() {
                this.bitField0_ |= 1;
                onChanged();
                return (CClientComm_ClientData.Builder) internalGetClientInfoFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientInfo_ResponseOrBuilder
            public CClientComm_ClientDataOrBuilder getClientInfoOrBuilder() {
                SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> singleFieldBuilder = this.clientInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return (CClientComm_ClientDataOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CClientComm_ClientData cClientComm_ClientData = this.clientInfo_;
                return cClientComm_ClientData == null ? CClientComm_ClientData.getDefaultInstance() : cClientComm_ClientData;
            }

            private SingleFieldBuilder<CClientComm_ClientData, CClientComm_ClientData.Builder, CClientComm_ClientDataOrBuilder> internalGetClientInfoFieldBuilder() {
                if (this.clientInfoBuilder_ == null) {
                    this.clientInfoBuilder_ = new SingleFieldBuilder<>(getClientInfo(), getParentForChildren(), isClean());
                    this.clientInfo_ = null;
                }
                return this.clientInfoBuilder_;
            }
        }

        public static CClientComm_GetClientInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientLogonInfo_Request extends GeneratedMessage implements CClientComm_GetClientLogonInfo_RequestOrBuilder {
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 1;
        private static final CClientComm_GetClientLogonInfo_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_GetClientLogonInfo_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientInstanceid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientLogonInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientLogonInfo_Request();
            PARSER = new AbstractParser<CClientComm_GetClientLogonInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientLogonInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientLogonInfo_Request.newBuilder();
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

        private CClientComm_GetClientLogonInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientLogonInfo_Request() {
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientLogonInfo_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
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
                codedOutputStream.writeUInt64(1, this.clientInstanceid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.clientInstanceid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt64Size;
            return iComputeUInt64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CClientComm_GetClientLogonInfo_Request)) {
                return super.equals(obj);
            }
            CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_Request = (CClientComm_GetClientLogonInfo_Request) obj;
            if (hasClientInstanceid() != cClientComm_GetClientLogonInfo_Request.hasClientInstanceid()) {
                return false;
            }
            return (!hasClientInstanceid() || getClientInstanceid() == cClientComm_GetClientLogonInfo_Request.getClientInstanceid()) && getUnknownFields().equals(cClientComm_GetClientLogonInfo_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getClientInstanceid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientLogonInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientLogonInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientLogonInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientLogonInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientLogonInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientLogonInfo_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientLogonInfo_RequestOrBuilder {
            private int bitField0_;
            private long clientInstanceid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientLogonInfo_Request.class, Builder.class);
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
                this.clientInstanceid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientLogonInfo_Request getDefaultInstanceForType() {
                return CClientComm_GetClientLogonInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientLogonInfo_Request build() {
                CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_RequestBuildPartial = buildPartial();
                if (cClientComm_GetClientLogonInfo_RequestBuildPartial.isInitialized()) {
                    return cClientComm_GetClientLogonInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientLogonInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientLogonInfo_Request buildPartial() {
                CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_Request = new CClientComm_GetClientLogonInfo_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientLogonInfo_Request);
                }
                onBuilt();
                return cClientComm_GetClientLogonInfo_Request;
            }

            private void buildPartial0(CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cClientComm_GetClientLogonInfo_Request.clientInstanceid_ = this.clientInstanceid_;
                } else {
                    i = 0;
                }
                cClientComm_GetClientLogonInfo_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientLogonInfo_Request) {
                    return mergeFrom((CClientComm_GetClientLogonInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_Request) {
                if (cClientComm_GetClientLogonInfo_Request == CClientComm_GetClientLogonInfo_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientLogonInfo_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_GetClientLogonInfo_Request.getClientInstanceid());
                }
                mergeUnknownFields(cClientComm_GetClientLogonInfo_Request.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -2;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientLogonInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientLogonInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientLogonInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientLogonInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_GetClientLogonInfo_Response extends GeneratedMessage implements CClientComm_GetClientLogonInfo_ResponseOrBuilder {
        private static final CClientComm_GetClientLogonInfo_Response DEFAULT_INSTANCE;
        public static final int MACHINE_NAME_FIELD_NUMBER = 3;
        public static final int OS_FIELD_NUMBER = 2;
        private static final Parser<CClientComm_GetClientLogonInfo_Response> PARSER;
        public static final int PROTOCOL_VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object machineName_;
        private byte memoizedIsInitialized;
        private volatile Object os_;
        private int protocolVersion_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_GetClientLogonInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_GetClientLogonInfo_Response();
            PARSER = new AbstractParser<CClientComm_GetClientLogonInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_GetClientLogonInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_GetClientLogonInfo_Response.newBuilder();
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

        private CClientComm_GetClientLogonInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.protocolVersion_ = 0;
            this.os_ = "";
            this.machineName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_GetClientLogonInfo_Response() {
            this.protocolVersion_ = 0;
            this.os_ = "";
            this.machineName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.os_ = "";
            this.machineName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientLogonInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public boolean hasProtocolVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public int getProtocolVersion() {
            return this.protocolVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public boolean hasOs() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public String getOs() {
            Object obj = this.os_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.os_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public ByteString getOsBytes() {
            Object obj = this.os_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.os_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public boolean hasMachineName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
        public ByteString getMachineNameBytes() {
            Object obj = this.machineName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.machineName_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.protocolVersion_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.os_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.machineName_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.os_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.machineName_);
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
            if (!(obj instanceof CClientComm_GetClientLogonInfo_Response)) {
                return super.equals(obj);
            }
            CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_Response = (CClientComm_GetClientLogonInfo_Response) obj;
            if (hasProtocolVersion() != cClientComm_GetClientLogonInfo_Response.hasProtocolVersion()) {
                return false;
            }
            if ((hasProtocolVersion() && getProtocolVersion() != cClientComm_GetClientLogonInfo_Response.getProtocolVersion()) || hasOs() != cClientComm_GetClientLogonInfo_Response.hasOs()) {
                return false;
            }
            if ((!hasOs() || getOs().equals(cClientComm_GetClientLogonInfo_Response.getOs())) && hasMachineName() == cClientComm_GetClientLogonInfo_Response.hasMachineName()) {
                return (!hasMachineName() || getMachineName().equals(cClientComm_GetClientLogonInfo_Response.getMachineName())) && getUnknownFields().equals(cClientComm_GetClientLogonInfo_Response.getUnknownFields());
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
            if (hasOs()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getOs().hashCode();
            }
            if (hasMachineName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMachineName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_GetClientLogonInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_GetClientLogonInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientLogonInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_GetClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_GetClientLogonInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_GetClientLogonInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_GetClientLogonInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_GetClientLogonInfo_ResponseOrBuilder {
            private int bitField0_;
            private Object machineName_;
            private Object os_;
            private int protocolVersion_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_GetClientLogonInfo_Response.class, Builder.class);
            }

            private Builder() {
                this.os_ = "";
                this.machineName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.os_ = "";
                this.machineName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.protocolVersion_ = 0;
                this.os_ = "";
                this.machineName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_GetClientLogonInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_GetClientLogonInfo_Response getDefaultInstanceForType() {
                return CClientComm_GetClientLogonInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientLogonInfo_Response build() {
                CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_ResponseBuildPartial = buildPartial();
                if (cClientComm_GetClientLogonInfo_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_GetClientLogonInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_GetClientLogonInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_GetClientLogonInfo_Response buildPartial() {
                CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_Response = new CClientComm_GetClientLogonInfo_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_GetClientLogonInfo_Response);
                }
                onBuilt();
                return cClientComm_GetClientLogonInfo_Response;
            }

            private void buildPartial0(CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_GetClientLogonInfo_Response.protocolVersion_ = this.protocolVersion_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_GetClientLogonInfo_Response.os_ = this.os_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_GetClientLogonInfo_Response.machineName_ = this.machineName_;
                    i |= 4;
                }
                cClientComm_GetClientLogonInfo_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_GetClientLogonInfo_Response) {
                    return mergeFrom((CClientComm_GetClientLogonInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_Response) {
                if (cClientComm_GetClientLogonInfo_Response == CClientComm_GetClientLogonInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_GetClientLogonInfo_Response.hasProtocolVersion()) {
                    setProtocolVersion(cClientComm_GetClientLogonInfo_Response.getProtocolVersion());
                }
                if (cClientComm_GetClientLogonInfo_Response.hasOs()) {
                    this.os_ = cClientComm_GetClientLogonInfo_Response.os_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientComm_GetClientLogonInfo_Response.hasMachineName()) {
                    this.machineName_ = cClientComm_GetClientLogonInfo_Response.machineName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cClientComm_GetClientLogonInfo_Response.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.os_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.machineName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
            public boolean hasProtocolVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
            public boolean hasOs() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
            public String getOs() {
                Object obj = this.os_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.os_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
            public ByteString getOsBytes() {
                Object obj = this.os_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.os_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setOs(String str) {
                str.getClass();
                this.os_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearOs() {
                this.os_ = CClientComm_GetClientLogonInfo_Response.getDefaultInstance().getOs();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setOsBytes(ByteString byteString) {
                byteString.getClass();
                this.os_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
            public boolean hasMachineName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_GetClientLogonInfo_ResponseOrBuilder
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
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMachineName() {
                this.machineName_ = CClientComm_GetClientLogonInfo_Response.getDefaultInstance().getMachineName();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setMachineNameBytes(ByteString byteString) {
                byteString.getClass();
                this.machineName_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CClientComm_GetClientLogonInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_GetClientLogonInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_GetClientLogonInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_GetClientLogonInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_InstallClientApp_Request extends GeneratedMessage implements CClientComm_InstallClientApp_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 2;
        private static final CClientComm_InstallClientApp_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_InstallClientApp_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long clientInstanceid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_InstallClientApp_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_InstallClientApp_Request();
            PARSER = new AbstractParser<CClientComm_InstallClientApp_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_InstallClientApp_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_InstallClientApp_Request.newBuilder();
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

        private CClientComm_InstallClientApp_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_InstallClientApp_Request() {
            this.appid_ = 0;
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_InstallClientApp_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
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
                codedOutputStream.writeUInt64(2, this.clientInstanceid_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.clientInstanceid_);
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
            if (!(obj instanceof CClientComm_InstallClientApp_Request)) {
                return super.equals(obj);
            }
            CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_Request = (CClientComm_InstallClientApp_Request) obj;
            if (hasAppid() != cClientComm_InstallClientApp_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cClientComm_InstallClientApp_Request.getAppid()) && hasClientInstanceid() == cClientComm_InstallClientApp_Request.hasClientInstanceid()) {
                return (!hasClientInstanceid() || getClientInstanceid() == cClientComm_InstallClientApp_Request.getClientInstanceid()) && getUnknownFields().equals(cClientComm_InstallClientApp_Request.getUnknownFields());
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
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getClientInstanceid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_InstallClientApp_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_InstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_InstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_InstallClientApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_InstallClientApp_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_InstallClientApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_InstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_InstallClientApp_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_InstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_InstallClientApp_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_InstallClientApp_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long clientInstanceid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_InstallClientApp_Request.class, Builder.class);
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
                this.clientInstanceid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_InstallClientApp_Request getDefaultInstanceForType() {
                return CClientComm_InstallClientApp_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_InstallClientApp_Request build() {
                CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_RequestBuildPartial = buildPartial();
                if (cClientComm_InstallClientApp_RequestBuildPartial.isInitialized()) {
                    return cClientComm_InstallClientApp_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_InstallClientApp_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_InstallClientApp_Request buildPartial() {
                CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_Request = new CClientComm_InstallClientApp_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_InstallClientApp_Request);
                }
                onBuilt();
                return cClientComm_InstallClientApp_Request;
            }

            private void buildPartial0(CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_InstallClientApp_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_InstallClientApp_Request.clientInstanceid_ = this.clientInstanceid_;
                    i |= 2;
                }
                cClientComm_InstallClientApp_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_InstallClientApp_Request) {
                    return mergeFrom((CClientComm_InstallClientApp_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_Request) {
                if (cClientComm_InstallClientApp_Request == CClientComm_InstallClientApp_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_InstallClientApp_Request.hasAppid()) {
                    setAppid(cClientComm_InstallClientApp_Request.getAppid());
                }
                if (cClientComm_InstallClientApp_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_InstallClientApp_Request.getClientInstanceid());
                }
                mergeUnknownFields(cClientComm_InstallClientApp_Request.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -3;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CClientComm_InstallClientApp_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_InstallClientApp_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_InstallClientApp_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_InstallClientApp_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_InstallClientApp_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CClientComm_InstallClientApp_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_InstallClientApp_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_InstallClientApp_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_InstallClientApp_Response();
            PARSER = new AbstractParser<CClientComm_InstallClientApp_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_InstallClientApp_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_InstallClientApp_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_InstallClientApp_Response.newBuilder();
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

        private CClientComm_InstallClientApp_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_InstallClientApp_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_InstallClientApp_Response.class, Builder.class);
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
            if (obj instanceof CClientComm_InstallClientApp_Response) {
                return getUnknownFields().equals(((CClientComm_InstallClientApp_Response) obj).getUnknownFields());
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

        public static CClientComm_InstallClientApp_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_InstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_InstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_InstallClientApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_InstallClientApp_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_InstallClientApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_InstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_InstallClientApp_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_InstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_InstallClientApp_Response cClientComm_InstallClientApp_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_InstallClientApp_Response);
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
                return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_InstallClientApp_Response.class, Builder.class);
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
                return ServiceClientcomm.internal_static_CClientComm_InstallClientApp_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_InstallClientApp_Response getDefaultInstanceForType() {
                return CClientComm_InstallClientApp_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_InstallClientApp_Response build() {
                CClientComm_InstallClientApp_Response cClientComm_InstallClientApp_ResponseBuildPartial = buildPartial();
                if (cClientComm_InstallClientApp_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_InstallClientApp_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_InstallClientApp_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_InstallClientApp_Response buildPartial() {
                CClientComm_InstallClientApp_Response cClientComm_InstallClientApp_Response = new CClientComm_InstallClientApp_Response(this);
                onBuilt();
                return cClientComm_InstallClientApp_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_InstallClientApp_Response) {
                    return mergeFrom((CClientComm_InstallClientApp_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_InstallClientApp_Response cClientComm_InstallClientApp_Response) {
                if (cClientComm_InstallClientApp_Response == CClientComm_InstallClientApp_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cClientComm_InstallClientApp_Response.getUnknownFields());
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

        public static CClientComm_InstallClientApp_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_InstallClientApp_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_InstallClientApp_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_InstallClientApp_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_LaunchClientApp_Request extends GeneratedMessage implements CClientComm_LaunchClientApp_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 1;
        private static final CClientComm_LaunchClientApp_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_LaunchClientApp_Request> PARSER;
        public static final int QUERY_PARAMS_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long clientInstanceid_;
        private byte memoizedIsInitialized;
        private volatile Object queryParams_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_LaunchClientApp_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_LaunchClientApp_Request();
            PARSER = new AbstractParser<CClientComm_LaunchClientApp_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_LaunchClientApp_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_LaunchClientApp_Request.newBuilder();
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

        private CClientComm_LaunchClientApp_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.clientInstanceid_ = 0L;
            this.appid_ = 0;
            this.queryParams_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_LaunchClientApp_Request() {
            this.clientInstanceid_ = 0L;
            this.appid_ = 0;
            this.queryParams_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.queryParams_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_LaunchClientApp_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public boolean hasQueryParams() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public String getQueryParams() {
            Object obj = this.queryParams_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.queryParams_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
        public ByteString getQueryParamsBytes() {
            Object obj = this.queryParams_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.queryParams_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt64(1, this.clientInstanceid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.queryParams_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.clientInstanceid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += GeneratedMessage.computeStringSize(3, this.queryParams_);
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
            if (!(obj instanceof CClientComm_LaunchClientApp_Request)) {
                return super.equals(obj);
            }
            CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_Request = (CClientComm_LaunchClientApp_Request) obj;
            if (hasClientInstanceid() != cClientComm_LaunchClientApp_Request.hasClientInstanceid()) {
                return false;
            }
            if ((hasClientInstanceid() && getClientInstanceid() != cClientComm_LaunchClientApp_Request.getClientInstanceid()) || hasAppid() != cClientComm_LaunchClientApp_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cClientComm_LaunchClientApp_Request.getAppid()) && hasQueryParams() == cClientComm_LaunchClientApp_Request.hasQueryParams()) {
                return (!hasQueryParams() || getQueryParams().equals(cClientComm_LaunchClientApp_Request.getQueryParams())) && getUnknownFields().equals(cClientComm_LaunchClientApp_Request.getUnknownFields());
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
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getClientInstanceid());
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppid();
            }
            if (hasQueryParams()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getQueryParams().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_LaunchClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_LaunchClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_LaunchClientApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_LaunchClientApp_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_LaunchClientApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_LaunchClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_LaunchClientApp_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_LaunchClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_LaunchClientApp_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_LaunchClientApp_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long clientInstanceid_;
            private Object queryParams_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_LaunchClientApp_Request.class, Builder.class);
            }

            private Builder() {
                this.queryParams_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.queryParams_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.clientInstanceid_ = 0L;
                this.appid_ = 0;
                this.queryParams_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_LaunchClientApp_Request getDefaultInstanceForType() {
                return CClientComm_LaunchClientApp_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_LaunchClientApp_Request build() {
                CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_RequestBuildPartial = buildPartial();
                if (cClientComm_LaunchClientApp_RequestBuildPartial.isInitialized()) {
                    return cClientComm_LaunchClientApp_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_LaunchClientApp_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_LaunchClientApp_Request buildPartial() {
                CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_Request = new CClientComm_LaunchClientApp_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_LaunchClientApp_Request);
                }
                onBuilt();
                return cClientComm_LaunchClientApp_Request;
            }

            private void buildPartial0(CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_LaunchClientApp_Request.clientInstanceid_ = this.clientInstanceid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_LaunchClientApp_Request.appid_ = this.appid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_LaunchClientApp_Request.queryParams_ = this.queryParams_;
                    i |= 4;
                }
                cClientComm_LaunchClientApp_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_LaunchClientApp_Request) {
                    return mergeFrom((CClientComm_LaunchClientApp_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_Request) {
                if (cClientComm_LaunchClientApp_Request == CClientComm_LaunchClientApp_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_LaunchClientApp_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_LaunchClientApp_Request.getClientInstanceid());
                }
                if (cClientComm_LaunchClientApp_Request.hasAppid()) {
                    setAppid(cClientComm_LaunchClientApp_Request.getAppid());
                }
                if (cClientComm_LaunchClientApp_Request.hasQueryParams()) {
                    this.queryParams_ = cClientComm_LaunchClientApp_Request.queryParams_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cClientComm_LaunchClientApp_Request.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.queryParams_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -2;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
            public boolean hasQueryParams() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
            public String getQueryParams() {
                Object obj = this.queryParams_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.queryParams_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_RequestOrBuilder
            public ByteString getQueryParamsBytes() {
                Object obj = this.queryParams_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.queryParams_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setQueryParams(String str) {
                str.getClass();
                this.queryParams_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearQueryParams() {
                this.queryParams_ = CClientComm_LaunchClientApp_Request.getDefaultInstance().getQueryParams();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setQueryParamsBytes(ByteString byteString) {
                byteString.getClass();
                this.queryParams_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CClientComm_LaunchClientApp_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_LaunchClientApp_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_LaunchClientApp_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_LaunchClientApp_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_LaunchClientApp_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CClientComm_LaunchClientApp_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_LaunchClientApp_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_LaunchClientApp_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_LaunchClientApp_Response();
            PARSER = new AbstractParser<CClientComm_LaunchClientApp_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_LaunchClientApp_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_LaunchClientApp_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_LaunchClientApp_Response.newBuilder();
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

        private CClientComm_LaunchClientApp_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_LaunchClientApp_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_LaunchClientApp_Response.class, Builder.class);
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
            if (obj instanceof CClientComm_LaunchClientApp_Response) {
                return getUnknownFields().equals(((CClientComm_LaunchClientApp_Response) obj).getUnknownFields());
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

        public static CClientComm_LaunchClientApp_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_LaunchClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_LaunchClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_LaunchClientApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_LaunchClientApp_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_LaunchClientApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_LaunchClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_LaunchClientApp_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_LaunchClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_LaunchClientApp_Response cClientComm_LaunchClientApp_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_LaunchClientApp_Response);
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
                return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_LaunchClientApp_Response.class, Builder.class);
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
                return ServiceClientcomm.internal_static_CClientComm_LaunchClientApp_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_LaunchClientApp_Response getDefaultInstanceForType() {
                return CClientComm_LaunchClientApp_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_LaunchClientApp_Response build() {
                CClientComm_LaunchClientApp_Response cClientComm_LaunchClientApp_ResponseBuildPartial = buildPartial();
                if (cClientComm_LaunchClientApp_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_LaunchClientApp_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_LaunchClientApp_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_LaunchClientApp_Response buildPartial() {
                CClientComm_LaunchClientApp_Response cClientComm_LaunchClientApp_Response = new CClientComm_LaunchClientApp_Response(this);
                onBuilt();
                return cClientComm_LaunchClientApp_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_LaunchClientApp_Response) {
                    return mergeFrom((CClientComm_LaunchClientApp_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_LaunchClientApp_Response cClientComm_LaunchClientApp_Response) {
                if (cClientComm_LaunchClientApp_Response == CClientComm_LaunchClientApp_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cClientComm_LaunchClientApp_Response.getUnknownFields());
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

        public static CClientComm_LaunchClientApp_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_LaunchClientApp_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_LaunchClientApp_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_LaunchClientApp_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_SetClientAppUpdateState_Request extends GeneratedMessage implements CClientComm_SetClientAppUpdateState_RequestOrBuilder {
        public static final int ACTION_FIELD_NUMBER = 2;
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 3;
        private static final CClientComm_SetClientAppUpdateState_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_SetClientAppUpdateState_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int action_;
        private int appid_;
        private int bitField0_;
        private long clientInstanceid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_SetClientAppUpdateState_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_SetClientAppUpdateState_Request();
            PARSER = new AbstractParser<CClientComm_SetClientAppUpdateState_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_SetClientAppUpdateState_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_SetClientAppUpdateState_Request.newBuilder();
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

        private CClientComm_SetClientAppUpdateState_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.action_ = 0;
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_SetClientAppUpdateState_Request() {
            this.appid_ = 0;
            this.action_ = 0;
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_SetClientAppUpdateState_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
        public boolean hasAction() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
        public int getAction() {
            return this.action_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
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
                codedOutputStream.writeUInt32(2, this.action_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.clientInstanceid_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.action_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(3, this.clientInstanceid_);
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
            if (!(obj instanceof CClientComm_SetClientAppUpdateState_Request)) {
                return super.equals(obj);
            }
            CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_Request = (CClientComm_SetClientAppUpdateState_Request) obj;
            if (hasAppid() != cClientComm_SetClientAppUpdateState_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cClientComm_SetClientAppUpdateState_Request.getAppid()) || hasAction() != cClientComm_SetClientAppUpdateState_Request.hasAction()) {
                return false;
            }
            if ((!hasAction() || getAction() == cClientComm_SetClientAppUpdateState_Request.getAction()) && hasClientInstanceid() == cClientComm_SetClientAppUpdateState_Request.hasClientInstanceid()) {
                return (!hasClientInstanceid() || getClientInstanceid() == cClientComm_SetClientAppUpdateState_Request.getClientInstanceid()) && getUnknownFields().equals(cClientComm_SetClientAppUpdateState_Request.getUnknownFields());
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
            if (hasAction()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAction();
            }
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getClientInstanceid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_SetClientAppUpdateState_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_SetClientAppUpdateState_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_SetClientAppUpdateState_RequestOrBuilder {
            private int action_;
            private int appid_;
            private int bitField0_;
            private long clientInstanceid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_SetClientAppUpdateState_Request.class, Builder.class);
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
                this.action_ = 0;
                this.clientInstanceid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_SetClientAppUpdateState_Request getDefaultInstanceForType() {
                return CClientComm_SetClientAppUpdateState_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_SetClientAppUpdateState_Request build() {
                CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_RequestBuildPartial = buildPartial();
                if (cClientComm_SetClientAppUpdateState_RequestBuildPartial.isInitialized()) {
                    return cClientComm_SetClientAppUpdateState_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_SetClientAppUpdateState_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_SetClientAppUpdateState_Request buildPartial() {
                CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_Request = new CClientComm_SetClientAppUpdateState_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_SetClientAppUpdateState_Request);
                }
                onBuilt();
                return cClientComm_SetClientAppUpdateState_Request;
            }

            private void buildPartial0(CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_SetClientAppUpdateState_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_SetClientAppUpdateState_Request.action_ = this.action_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientComm_SetClientAppUpdateState_Request.clientInstanceid_ = this.clientInstanceid_;
                    i |= 4;
                }
                cClientComm_SetClientAppUpdateState_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_SetClientAppUpdateState_Request) {
                    return mergeFrom((CClientComm_SetClientAppUpdateState_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_Request) {
                if (cClientComm_SetClientAppUpdateState_Request == CClientComm_SetClientAppUpdateState_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_SetClientAppUpdateState_Request.hasAppid()) {
                    setAppid(cClientComm_SetClientAppUpdateState_Request.getAppid());
                }
                if (cClientComm_SetClientAppUpdateState_Request.hasAction()) {
                    setAction(cClientComm_SetClientAppUpdateState_Request.getAction());
                }
                if (cClientComm_SetClientAppUpdateState_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_SetClientAppUpdateState_Request.getClientInstanceid());
                }
                mergeUnknownFields(cClientComm_SetClientAppUpdateState_Request.getUnknownFields());
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
                                    this.action_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
            public boolean hasAction() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
            public int getAction() {
                return this.action_;
            }

            public Builder setAction(int i) {
                this.action_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAction() {
                this.bitField0_ &= -3;
                this.action_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -5;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CClientComm_SetClientAppUpdateState_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_SetClientAppUpdateState_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_SetClientAppUpdateState_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_SetClientAppUpdateState_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_SetClientAppUpdateState_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CClientComm_SetClientAppUpdateState_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_SetClientAppUpdateState_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_SetClientAppUpdateState_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_SetClientAppUpdateState_Response();
            PARSER = new AbstractParser<CClientComm_SetClientAppUpdateState_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_SetClientAppUpdateState_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_SetClientAppUpdateState_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_SetClientAppUpdateState_Response.newBuilder();
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

        private CClientComm_SetClientAppUpdateState_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_SetClientAppUpdateState_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_SetClientAppUpdateState_Response.class, Builder.class);
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
            if (obj instanceof CClientComm_SetClientAppUpdateState_Response) {
                return getUnknownFields().equals(((CClientComm_SetClientAppUpdateState_Response) obj).getUnknownFields());
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

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_SetClientAppUpdateState_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_SetClientAppUpdateState_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_SetClientAppUpdateState_Response cClientComm_SetClientAppUpdateState_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_SetClientAppUpdateState_Response);
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
                return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_SetClientAppUpdateState_Response.class, Builder.class);
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
                return ServiceClientcomm.internal_static_CClientComm_SetClientAppUpdateState_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_SetClientAppUpdateState_Response getDefaultInstanceForType() {
                return CClientComm_SetClientAppUpdateState_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_SetClientAppUpdateState_Response build() {
                CClientComm_SetClientAppUpdateState_Response cClientComm_SetClientAppUpdateState_ResponseBuildPartial = buildPartial();
                if (cClientComm_SetClientAppUpdateState_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_SetClientAppUpdateState_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_SetClientAppUpdateState_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_SetClientAppUpdateState_Response buildPartial() {
                CClientComm_SetClientAppUpdateState_Response cClientComm_SetClientAppUpdateState_Response = new CClientComm_SetClientAppUpdateState_Response(this);
                onBuilt();
                return cClientComm_SetClientAppUpdateState_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_SetClientAppUpdateState_Response) {
                    return mergeFrom((CClientComm_SetClientAppUpdateState_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_SetClientAppUpdateState_Response cClientComm_SetClientAppUpdateState_Response) {
                if (cClientComm_SetClientAppUpdateState_Response == CClientComm_SetClientAppUpdateState_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cClientComm_SetClientAppUpdateState_Response.getUnknownFields());
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

        public static CClientComm_SetClientAppUpdateState_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_SetClientAppUpdateState_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_SetClientAppUpdateState_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_SetClientAppUpdateState_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_UninstallClientApp_Request extends GeneratedMessage implements CClientComm_UninstallClientApp_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CLIENT_INSTANCEID_FIELD_NUMBER = 2;
        private static final CClientComm_UninstallClientApp_Request DEFAULT_INSTANCE;
        private static final Parser<CClientComm_UninstallClientApp_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long clientInstanceid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_UninstallClientApp_Request.class.getName());
            DEFAULT_INSTANCE = new CClientComm_UninstallClientApp_Request();
            PARSER = new AbstractParser<CClientComm_UninstallClientApp_Request>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_Request.1
                @Override // com.google.protobuf.Parser
                public CClientComm_UninstallClientApp_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_UninstallClientApp_Request.newBuilder();
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

        private CClientComm_UninstallClientApp_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_UninstallClientApp_Request() {
            this.appid_ = 0;
            this.clientInstanceid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_UninstallClientApp_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
        public boolean hasClientInstanceid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
        public long getClientInstanceid() {
            return this.clientInstanceid_;
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
                codedOutputStream.writeUInt64(2, this.clientInstanceid_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.clientInstanceid_);
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
            if (!(obj instanceof CClientComm_UninstallClientApp_Request)) {
                return super.equals(obj);
            }
            CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_Request = (CClientComm_UninstallClientApp_Request) obj;
            if (hasAppid() != cClientComm_UninstallClientApp_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cClientComm_UninstallClientApp_Request.getAppid()) && hasClientInstanceid() == cClientComm_UninstallClientApp_Request.hasClientInstanceid()) {
                return (!hasClientInstanceid() || getClientInstanceid() == cClientComm_UninstallClientApp_Request.getClientInstanceid()) && getUnknownFields().equals(cClientComm_UninstallClientApp_Request.getUnknownFields());
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
            if (hasClientInstanceid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getClientInstanceid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_UninstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_UninstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_UninstallClientApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_UninstallClientApp_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_UninstallClientApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_UninstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_UninstallClientApp_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_UninstallClientApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_UninstallClientApp_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientComm_UninstallClientApp_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long clientInstanceid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_UninstallClientApp_Request.class, Builder.class);
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
                this.clientInstanceid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_UninstallClientApp_Request getDefaultInstanceForType() {
                return CClientComm_UninstallClientApp_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_UninstallClientApp_Request build() {
                CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_RequestBuildPartial = buildPartial();
                if (cClientComm_UninstallClientApp_RequestBuildPartial.isInitialized()) {
                    return cClientComm_UninstallClientApp_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_UninstallClientApp_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_UninstallClientApp_Request buildPartial() {
                CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_Request = new CClientComm_UninstallClientApp_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientComm_UninstallClientApp_Request);
                }
                onBuilt();
                return cClientComm_UninstallClientApp_Request;
            }

            private void buildPartial0(CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientComm_UninstallClientApp_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientComm_UninstallClientApp_Request.clientInstanceid_ = this.clientInstanceid_;
                    i |= 2;
                }
                cClientComm_UninstallClientApp_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_UninstallClientApp_Request) {
                    return mergeFrom((CClientComm_UninstallClientApp_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_Request) {
                if (cClientComm_UninstallClientApp_Request == CClientComm_UninstallClientApp_Request.getDefaultInstance()) {
                    return this;
                }
                if (cClientComm_UninstallClientApp_Request.hasAppid()) {
                    setAppid(cClientComm_UninstallClientApp_Request.getAppid());
                }
                if (cClientComm_UninstallClientApp_Request.hasClientInstanceid()) {
                    setClientInstanceid(cClientComm_UninstallClientApp_Request.getClientInstanceid());
                }
                mergeUnknownFields(cClientComm_UninstallClientApp_Request.getUnknownFields());
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
                                    this.clientInstanceid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
            public boolean hasClientInstanceid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_RequestOrBuilder
            public long getClientInstanceid() {
                return this.clientInstanceid_;
            }

            public Builder setClientInstanceid(long j) {
                this.clientInstanceid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceid() {
                this.bitField0_ &= -3;
                this.clientInstanceid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CClientComm_UninstallClientApp_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_UninstallClientApp_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_UninstallClientApp_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_UninstallClientApp_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientComm_UninstallClientApp_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CClientComm_UninstallClientApp_Response DEFAULT_INSTANCE;
        private static final Parser<CClientComm_UninstallClientApp_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientComm_UninstallClientApp_Response.class.getName());
            DEFAULT_INSTANCE = new CClientComm_UninstallClientApp_Response();
            PARSER = new AbstractParser<CClientComm_UninstallClientApp_Response>() { // from class: in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm.CClientComm_UninstallClientApp_Response.1
                @Override // com.google.protobuf.Parser
                public CClientComm_UninstallClientApp_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientComm_UninstallClientApp_Response.newBuilder();
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

        private CClientComm_UninstallClientApp_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientComm_UninstallClientApp_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_UninstallClientApp_Response.class, Builder.class);
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
            if (obj instanceof CClientComm_UninstallClientApp_Response) {
                return getUnknownFields().equals(((CClientComm_UninstallClientApp_Response) obj).getUnknownFields());
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

        public static CClientComm_UninstallClientApp_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(InputStream inputStream) throws IOException {
            return (CClientComm_UninstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_UninstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientComm_UninstallClientApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientComm_UninstallClientApp_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_UninstallClientApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientComm_UninstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientComm_UninstallClientApp_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientComm_UninstallClientApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientComm_UninstallClientApp_Response cClientComm_UninstallClientApp_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientComm_UninstallClientApp_Response);
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
                return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientComm_UninstallClientApp_Response.class, Builder.class);
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
                return ServiceClientcomm.internal_static_CClientComm_UninstallClientApp_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientComm_UninstallClientApp_Response getDefaultInstanceForType() {
                return CClientComm_UninstallClientApp_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_UninstallClientApp_Response build() {
                CClientComm_UninstallClientApp_Response cClientComm_UninstallClientApp_ResponseBuildPartial = buildPartial();
                if (cClientComm_UninstallClientApp_ResponseBuildPartial.isInitialized()) {
                    return cClientComm_UninstallClientApp_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientComm_UninstallClientApp_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientComm_UninstallClientApp_Response buildPartial() {
                CClientComm_UninstallClientApp_Response cClientComm_UninstallClientApp_Response = new CClientComm_UninstallClientApp_Response(this);
                onBuilt();
                return cClientComm_UninstallClientApp_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientComm_UninstallClientApp_Response) {
                    return mergeFrom((CClientComm_UninstallClientApp_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientComm_UninstallClientApp_Response cClientComm_UninstallClientApp_Response) {
                if (cClientComm_UninstallClientApp_Response == CClientComm_UninstallClientApp_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cClientComm_UninstallClientApp_Response.getUnknownFields());
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

        public static CClientComm_UninstallClientApp_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientComm_UninstallClientApp_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientComm_UninstallClientApp_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientComm_UninstallClientApp_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
