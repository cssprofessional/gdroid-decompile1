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
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class SteammessagesClientObjects {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CCloud_PendingRemoteOperation_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CCloud_PendingRemoteOperation_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgAchievementChange_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgAchievementChange_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgBluetoothDevicesData_Adapter_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgBluetoothDevicesData_Adapter_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgBluetoothDevicesData_Device_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgBluetoothDevicesData_Device_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgBluetoothDevicesData_Manager_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgBluetoothDevicesData_Manager_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgBluetoothDevicesData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgBluetoothDevicesData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCellList_Cell_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCellList_Cell_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCellList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCellList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientShaderHitCacheEntry_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientShaderHitCacheEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientShaderHitCache_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientShaderHitCache_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCloudPendingRemoteOperations_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCloudPendingRemoteOperations_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGenerateSystemReportReply_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGenerateSystemReportReply_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgMonitorInfo_MonitorInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgMonitorInfo_MonitorInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgMonitorInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgMonitorInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceConnect_Credentials_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceConnect_Credentials_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceConnect_CustomAP_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceConnect_CustomAP_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceConnect_KnownAP_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceConnect_KnownAP_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceConnect_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceConnect_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceIP4Address_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceIP4Address_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceIP4Config_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceIP4Config_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceIP6Address_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceIP6Address_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDeviceIP6Config_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDeviceIP6Config_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDevicesData_Device_Wired_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDevicesData_Device_Wired_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDevicesData_Device_Wireless_AP_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDevicesData_Device_Wireless_AP_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDevicesData_Device_Wireless_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDevicesData_Device_Wireless_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDevicesData_Device_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDevicesData_Device_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgNetworkDevicesData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgNetworkDevicesData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSelectOSBranchParams_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSelectOSBranchParams_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgShortcutAppIds_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgShortcutAppIds_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgShortcutInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgShortcutInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgShortcutInfos_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgShortcutInfos_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgStorageDevicesData_BlockDevice_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgStorageDevicesData_BlockDevice_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgStorageDevicesData_Drive_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgStorageDevicesData_Drive_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgStorageDevicesData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgStorageDevicesData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerDevice_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerDevice_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerLink_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerLink_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerNode_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerNode_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerObject_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerObject_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerPort_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerPort_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerStateHW_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerStateHW_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioManagerUpdateSomething_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioManagerUpdateSomething_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioVolume_ChannelEntry_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioVolume_ChannelEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemAudioVolume_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemAudioVolume_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDisplayManagerSetMode_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDisplayManagerSetMode_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDisplayManagerState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDisplayManagerState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDisplayMode_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDisplayMode_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDisplay_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDisplay_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDockState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDockState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDockUpdateFirmware_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDockUpdateFirmware_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemDockUpdateState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemDockUpdateState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemManagerSettings_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemManagerSettings_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfDiagnosticEntry_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfDiagnosticEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfDiagnosticInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfDiagnosticInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfLegacySettingEntry_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfLegacySettingEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfLegacySettings_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfLegacySettings_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfLimits_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfLimits_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfNetworkInterface_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfNetworkInterface_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfSettingsGlobal_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfSettingsGlobal_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfSettingsPerApp_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfSettingsPerApp_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfSettingsV1_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfSettingsV1_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfSettings_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfSettings_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemPerfUpdateSettings_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemPerfUpdateSettings_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemUpdateApplyParams_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemUpdateApplyParams_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemUpdateApplyResult_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemUpdateApplyResult_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemUpdateCheckResult_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemUpdateCheckResult_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemUpdateProgress_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemUpdateProgress_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgSystemUpdateState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgSystemUpdateState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgWebUITransportFailure_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgWebUITransportFailure_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgWebUITransportInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgWebUITransportInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_SteamMessagesClientIClientForcedEnumDependencies_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_SteamMessagesClientIClientForcedEnumDependencies_fieldAccessorTable;

    public interface CCloud_PendingRemoteOperationOrBuilder extends MessageOrBuilder {
        long getClientId();

        int getDeviceType();

        String getMachineName();

        ByteString getMachineNameBytes();

        ECloudPendingRemoteOperation getOperation();

        int getOsType();

        int getTimeLastUpdated();

        boolean hasClientId();

        boolean hasDeviceType();

        boolean hasMachineName();

        boolean hasOperation();

        boolean hasOsType();

        boolean hasTimeLastUpdated();
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientObjects() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientObjects.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nOin/dragonbra/javasteam/protobufs/steamclient/steammessages_client_objects.proto\u001a8in/dragonbra/javasteam/protobufs/steamclient/enums.proto\"Ë\u0002\n0SteamMessagesClientIClientForcedEnumDependencies\u0012?\n\u0001a\u0018\u0001 \u0001(\u000e2\u0015.EBluetoothDeviceType:\u001dk_BluetoothDeviceType_Invalid\u0012H\n\u0001b\u0018\u0002 \u0001(\u000e2\u0019.EStorageBlockContentType:\"k_EStorageBlockContentType_Invalid\u0012N\n\u0001c\u0018\u0003 \u0001(\u000e2\u001c.EStorageBlockFileSystemType:%k_EStorageBlockFileSystemType_Invalid\u0012<\n\u0001d\u0018\u0004 \u0001(\u000e2\u0013.ESDCardFormatStage:\u001ck_ESDCardFormatStage_Invalid\"=\n\u001bCMsgNetworkDeviceIP4Address\u0012\r\n\u0002ip\u0018\u0001 \u0001(\u0005:\u00010\u0012\u000f\n\u0007netmask\u0018\u0002 \u0001(\u0005\"¿\u0001\n\u001aCMsgNetworkDeviceIP4Config\u0012/\n\taddresses\u0018\u0001 \u0003(\u000b2\u001c.CMsgNetworkDeviceIP4Address\u0012\u000e\n\u0006dns_ip\u0018\u0002 \u0003(\u0005\u0012\u0012\n\ngateway_ip\u0018\u0003 \u0001(\u0005\u0012\u0017\n\u000fis_dhcp_enabled\u0018\u0004 \u0001(\b\u0012\u0018\n\u0010is_default_route\u0018\u0005 \u0001(\b\u0012\u0019\n\nis_enabled\u0018\u0006 \u0001(\b:\u0005false\")\n\u001bCMsgNetworkDeviceIP6Address\u0012\n\n\u0002ip\u0018\u0001 \u0001(\t\"¿\u0001\n\u001aCMsgNetworkDeviceIP6Config\u0012/\n\taddresses\u0018\u0001 \u0003(\u000b2\u001c.CMsgNetworkDeviceIP6Address\u0012\u000e\n\u0006dns_ip\u0018\u0002 \u0003(\t\u0012\u0012\n\ngateway_ip\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fis_dhcp_enabled\u0018\u0004 \u0001(\b\u0012\u0018\n\u0010is_default_route\u0018\u0005 \u0001(\b\u0012\u0019\n\nis_enabled\u0018\u0006 \u0001(\b:\u0005false\"\u0097\u0006\n\u0016CMsgNetworkDevicesData\u0012/\n\u0007devices\u0018\u0001 \u0003(\u000b2\u001e.CMsgNetworkDevicesData.Device\u0012\u0017\n\u000fis_wifi_enabled\u0018\u0002 \u0001(\b\u0012 \n\u0018is_wifi_scanning_enabled\u0018\u0003 \u0001(\b\u001a\u0090\u0005\n\u0006Device\u0012\r\n\u0002id\u0018\u0001 \u0001(\r:\u00010\u0012\r\n\u0005etype\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006estate\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003mac\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006vendor\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007product\u0018\u0006 \u0001(\t\u0012(\n\u0003ip4\u0018\u0007 \u0001(\u000b2\u001b.CMsgNetworkDeviceIP4Config\u0012(\n\u0003ip6\u0018\b \u0001(\u000b2\u001b.CMsgNetworkDeviceIP6Config\u00123\n\u0005wired\u0018\t \u0001(\u000b2$.CMsgNetworkDevicesData.Device.Wired\u00129\n\bwireless\u0018\n \u0001(\u000b2'.CMsgNetworkDevicesData.Device.Wireless\u001aS\n\u0005Wired\u0012\u001f\n\u0010is_cable_present\u0018\u0001 \u0001(\b:\u0005false\u0012\u0012\n\nspeed_mbit\u0018\u0002 \u0001(\r\u0012\u0015\n\rfriendly_name\u0018\u0003 \u0001(\t\u001a\u0090\u0002\n\bWireless\u00127\n\u0003aps\u0018\u0001 \u0003(\u000b2*.CMsgNetworkDevicesData.Device.Wireless.AP\u0012\u001b\n\u0013esecurity_supported\u0018\u0002 \u0001(\u0005\u001a\u00ad\u0001\n\u0002AP\u0012\r\n\u0002id\u0018\u0001 \u0001(\r:\u00010\u0012\u0011\n\testrength\u0018\u0002 \u0001(\u0005\u0012\f\n\u0004ssid\u0018\u0003 \u0001(\t\u0012\u0011\n\tis_active\u0018\u0004 \u0001(\b\u0012\u0016\n\u000eis_autoconnect\u0018\u0005 \u0001(\b\u0012\u0011\n\tesecurity\u0018\u0006 \u0001(\u0005\u0012\u0011\n\tuser_name\u0018\u0007 \u0001(\t\u0012\u0010\n\bpassword\u0018\b \u0001(\t\u0012\u0014\n\fstrength_raw\u0018\t \u0001(\u0005\"µ\u0003\n\u0018CMsgNetworkDeviceConnect\u0012\u0014\n\tdevice_id\u0018\u0001 \u0001(\r:\u00010\u0012:\n\u000bcredentials\u0018\u0004 \u0001(\u000b2%.CMsgNetworkDeviceConnect.Credentials\u0012(\n\u0003ip4\u0018\u0005 \u0001(\u000b2\u001b.CMsgNetworkDeviceIP4Config\u0012(\n\u0003ip6\u0018\u0006 \u0001(\u000b2\u001b.CMsgNetworkDeviceIP6Config\u00125\n\bap_known\u0018\u0002 \u0001(\u000b2!.CMsgNetworkDeviceConnect.KnownAPH\u0000\u00127\n\tap_custom\u0018\u0003 \u0001(\u000b2\".CMsgNetworkDeviceConnect.CustomAPH\u0000\u001a\u0018\n\u0007KnownAP\u0012\r\n\u0005ap_id\u0018\u0001 \u0001(\r\u001a+\n\bCustomAP\u0012\f\n\u0004ssid\u0018\u0001 \u0001(\t\u0012\u0011\n\tesecurity\u0018\u0002 \u0001(\u0005\u001a1\n\u000bCredentials\u0012\u0010\n\busername\u0018\u0001 \u0001(\t\u0012\u0010\n\bpassword\u0018\u0002 \u0001(\tB\t\n\u0007ap_info\"\u009f\u0006\n\u0016CMsgStorageDevicesData\u0012-\n\u0006drives\u0018\u0001 \u0003(\u000b2\u001d.CMsgStorageDevicesData.Drive\u0012:\n\rblock_devices\u0018\u0002 \u0003(\u000b2#.CMsgStorageDevicesData.BlockDevice\u0012\u001c\n\u0014is_unmount_supported\u0018\u0003 \u0001(\b\u0012\u0019\n\u0011is_trim_supported\u0018\u0004 \u0001(\b\u0012\u0017\n\u000fis_trim_running\u0018\u0005 \u0001(\b\u001a¾\u0001\n\u0005Drive\u0012\r\n\u0002id\u0018\u0001 \u0001(\r:\u00010\u0012\r\n\u0005model\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006vendor\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006serial\u0018\u0004 \u0001(\t\u0012\u0014\n\fis_ejectable\u0018\u0005 \u0001(\b\u0012\u0012\n\nsize_bytes\u0018\u0006 \u0001(\u0004\u0012M\n\nmedia_type\u0018\u0007 \u0001(\u000e2\u0017.EStorageDriveMediaType: k_EStorageDriveMediaType_Invalid\u001a\u0086\u0003\n\u000bBlockDevice\u0012\r\n\u0002id\u0018\u0001 \u0001(\r:\u00010\u0012\u0013\n\bdrive_id\u0018\u0002 \u0001(\r:\u00010\u0012\f\n\u0004path\u0018\u0003 \u0001(\t\u0012\u0015\n\rfriendly_path\u0018\u0004 \u0001(\t\u0012\r\n\u0005label\u0018\u0005 \u0001(\t\u0012\u0012\n\nsize_bytes\u0018\u0006 \u0001(\u0004\u0012\u0016\n\u000eis_formattable\u0018\u0007 \u0001(\b\u0012\u0014\n\fis_read_only\u0018\b \u0001(\b\u0012\u0016\n\u000eis_root_device\u0018\t \u0001(\b\u0012S\n\fcontent_type\u0018\n \u0001(\u000e2\u0019.EStorageBlockContentType:\"k_EStorageBlockContentType_Invalid\u0012\\\n\u000ffilesystem_type\u0018\u000b \u0001(\u000e2\u001c.EStorageBlockFileSystemType:%k_EStorageBlockFileSystemType_Invalid\u0012\u0012\n\nmount_path\u0018\f \u0001(\t\"ß\u0001\n\u001dCCloud_PendingRemoteOperation\u0012T\n\toperation\u0018\u0001 \u0001(\u000e2\u001d.ECloudPendingRemoteOperation:\"k_ECloudPendingRemoteOperationNone\u0012\u0014\n\fmachine_name\u0018\u0002 \u0001(\t\u0012\u0011\n\tclient_id\u0018\u0003 \u0001(\u0004\u0012\u0019\n\u0011time_last_updated\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007os_type\u0018\u0005 \u0001(\u0005\u0012\u0013\n\u000bdevice_type\u0018\u0006 \u0001(\u0005\"V\n CMsgCloudPendingRemoteOperations\u00122\n\noperations\u0018\u0001 \u0003(\u000b2\u001e.CCloud_PendingRemoteOperation\"ß\u0004\n\u0018CMsgBluetoothDevicesData\u00123\n\badapters\u0018\u0001 \u0003(\u000b2!.CMsgBluetoothDevicesData.Adapter\u00121\n\u0007devices\u0018\u0002 \u0003(\u000b2 .CMsgBluetoothDevicesData.Device\u00122\n\u0007manager\u0018\u0003 \u0001(\u000b2!.CMsgBluetoothDevicesData.Manager\u001a_\n\u0007Adapter\u0012\r\n\u0002id\u0018\u0001 \u0001(\r:\u00010\u0012\u000b\n\u0003mac\u0018\u0002 \u0001(\t\u0012\f\n\u0004name\u0018\u0003 \u0001(\t\u0012\u0012\n\nis_enabled\u0018\u0004 \u0001(\b\u0012\u0016\n\u000eis_discovering\u0018\u0005 \u0001(\b\u001a\u009c\u0002\n\u0006Device\u0012\r\n\u0002id\u0018\u0001 \u0001(\r:\u00010\u0012\u0015\n\nadapter_id\u0018\u0002 \u0001(\r:\u00010\u0012C\n\u0005etype\u0018\u0003 \u0001(\u000e2\u0015.EBluetoothDeviceType:\u001dk_BluetoothDeviceType_Invalid\u0012\u000b\n\u0003mac\u0018\u0004 \u0001(\t\u0012\f\n\u0004name\u0018\u0005 \u0001(\t\u0012\u0014\n\fis_connected\u0018\u0006 \u0001(\b\u0012\u0011\n\tis_paired\u0018\u0007 \u0001(\b\u0012\u0014\n\fstrength_raw\u0018\b \u0001(\u0005\u0012\u0014\n\fwake_allowed\u0018\t \u0001(\b\u0012\u001e\n\u0016wake_allowed_supported\u0018\n \u0001(\b\u0012\u0017\n\u000fbattery_percent\u0018\u000b \u0001(\u0005\u001a'\n\u0007Manager\u0012\u001c\n\u0014is_bluetooth_enabled\u0018\u0001 \u0001(\b\"<\n\u001dCMsgSystemPerfDiagnosticEntry\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"¥\u0001\n\u001eCMsgSystemPerfNetworkInterface\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\u0001\u0012\u0016\n\u000etx_bytes_total\u0018\u0003 \u0001(\u0003\u0012\u0016\n\u000erx_bytes_total\u0018\u0004 \u0001(\u0003\u0012\u0018\n\u0010tx_bytes_per_sec\u0018\u0005 \u0001(\u0005\u0012\u0018\n\u0010rx_bytes_per_sec\u0018\u0006 \u0001(\u0005\"\u009c\u0001\n\u001cCMsgSystemPerfDiagnosticInfo\u0012/\n\u0007entries\u0018\u0001 \u0003(\u000b2\u001e.CMsgSystemPerfDiagnosticEntry\u00123\n\ninterfaces\u0018\u0002 \u0003(\u000b2\u001f.CMsgSystemPerfNetworkInterface\u0012\u0016\n\u000ebattery_temp_c\u0018\u0003 \u0001(\u0002\"¯\u0007\n\u0014CMsgSystemPerfLimits\u0012#\n\u001bcpu_governor_manual_min_mhz\u0018\u0001 \u0001(\u0005\u0012#\n\u001bcpu_governor_manual_max_mhz\u0018\u0002 \u0001(\u0005\u0012\u0019\n\u0011fsr_sharpness_min\u0018\u0003 \u0001(\u0005\u0012\u0019\n\u0011fsr_sharpness_max\u0018\u0004 \u0001(\u0005\u0012&\n\u001egpu_performance_manual_min_mhz\u0018\u0005 \u0001(\u0005\u0012&\n\u001egpu_performance_manual_max_mhz\u0018\u0006 \u0001(\u0005\u0012\"\n\u001aperf_overlay_is_standalone\u0018\u0007 \u0001(\b\u0012 \n\u0018is_dynamic_vrs_available\u0018\b \u0001(\b\u00120\n(is_manual_display_refresh_rate_available\u0018\t \u0001(\b\u0012?\n gpu_performance_levels_available\u0018\n \u0003(\u000e2\u0015.EGPUPerformanceLevel\u0012%\n\u001ddisplay_refresh_manual_hz_min\u0018\u000b \u0001(\u0005\u0012%\n\u001ddisplay_refresh_manual_hz_max\u0018\f \u0001(\u0005\u0012\u0019\n\u0011fps_limit_options\u0018\r \u0003(\u0005\u0012\u0015\n\rtdp_limit_min\u0018\u000e \u0001(\u0005\u0012\u0015\n\rtdp_limit_max\u0018\u000f \u0001(\u0005\u0012.\n&display_external_refresh_manual_hz_min\u0018\u0013 \u0001(\u0005\u0012.\n&display_external_refresh_manual_hz_max\u0018\u0014 \u0001(\u0005\u0012\"\n\u001afps_limit_options_external\u0018\u0015 \u0003(\u0005\u0012\u0018\n\u0010is_vrr_supported\u0018\u0017 \u0001(\b\u00122\n*is_dynamic_refresh_rate_in_steam_supported\u0018\u0018 \u0001(\b\u0012=\n\u001fsplit_scaling_filters_available\u0018\u001a \u0003(\u000e2\u0014.ESplitScalingFilter\u0012=\n\u001fsplit_scaling_scalers_available\u0018\u001b \u0003(\u000e2\u0014.ESplitScalingScaler\u0012'\n\u001fdisable_refresh_rate_management\u0018\u001e \u0001(\b\"¯\u0006\n\u001cCMsgSystemPerfSettingsGlobal\u0012\u001e\n\u0016diagnostic_update_rate\u0018\u0001 \u0001(\u0002\u0012[\n\u001asystem_trace_service_state\u0018\u0002 \u0001(\u000e2\u0014.ESystemServiceState:!k_ESystemServiceState_Unavailable\u0012a\n graphics_profiling_service_state\u0018\u0003 \u0001(\u000e2\u0014.ESystemServiceState:!k_ESystemServiceState_Unavailable\u0012[\n\u001aperf_overlay_service_state\u0018\u0004 \u0001(\u000e2\u0014.ESystemServiceState:!k_ESystemServiceState_Unavailable\u0012Z\n\u0012perf_overlay_level\u0018\u0005 \u0001(\u000e2\u001a.EGraphicsPerfOverlayLevel:\"k_EGraphicsPerfOverlayLevel_Hidden\u0012/\n'is_show_perf_overlay_over_steam_enabled\u0018\u0006 \u0001(\b\u0012$\n\u001cis_advanced_settings_enabled\u0018\u0007 \u0001(\b\u0012.\n&allow_external_display_refresh_control\u0018\b \u0001(\b\u0012X\n\u001bhdr_on_sdr_tonemap_operator\u0018\f \u0001(\u000e2\u0014.EHDRToneMapOperator:\u001dk_EHDRToneMapOperator_Invalid\u0012$\n\u001cis_hdr_debug_heatmap_enabled\u0018\r \u0001(\b\u0012+\n\u001dforce_hdr_wide_gammut_for_sdr\u0018\u000f \u0001(\b:\u0004true\u0012\u001d\n\u0015sdr_to_hdr_brightness\u0018\u0016 \u0001(\u0002\u0012#\n\u001bis_color_management_enabled\u0018\u0015 \u0001(\b\"\u0093\u0007\n\u001cCMsgSystemPerfSettingsPerApp\u0012\"\n\u001agpu_performance_manual_mhz\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tfps_limit\u0018\u0002 \u0001(\u0005\u0012&\n\u001eis_variable_resolution_enabled\u0018\u0003 \u0001(\b\u0012'\n\u001fis_dynamic_refresh_rate_enabled\u0018\u0004 \u0001(\b\u0012\u0011\n\ttdp_limit\u0018\u0005 \u0001(\u0005\u0012;\n\fcpu_governor\u0018\u0006 \u0001(\u000e2\r.ECPUGovernor:\u0016k_ECPUGovernor_Invalid\u0012\u001f\n\u0017cpu_governor_manual_mhz\u0018\u0007 \u0001(\u0005\u0012\u0016\n\u000escaling_filter\u0018\b \u0001(\u0005\u0012\u0015\n\rfsr_sharpness\u0018\t \u0001(\u0005\u0012\u001c\n\u0014is_fps_limit_enabled\u0018\n \u0001(\b\u0012\u001c\n\u0014is_tdp_limit_enabled\u0018\u000b \u0001(\b\u0012#\n\u001bis_low_latency_mode_enabled\u0018\f \u0001(\b\u0012!\n\u0019display_refresh_manual_hz\u0018\r \u0001(\u0005\u0012$\n\u001cis_game_perf_profile_enabled\u0018\u000e \u0001(\b\u0012T\n\u0015gpu_performance_level\u0018\u000f \u0001(\u000e2\u0015.EGPUPerformanceLevel:\u001ek_EGPUPerformanceLevel_Invalid\u0012*\n\"display_external_refresh_manual_hz\u0018\u0011 \u0001(\u0005\u0012\u001a\n\u0012fps_limit_external\u0018\u0012 \u0001(\u0005\u0012\u001a\n\u0012is_tearing_enabled\u0018\u0013 \u0001(\b\u0012\u0016\n\u000eis_vrr_enabled\u0018\u0014 \u0001(\b\u0012)\n!use_dynamic_refresh_rate_in_steam\u0018\u0017 \u0001(\b\u0012Q\n\u0014split_scaling_filter\u0018\u0018 \u0001(\u000e2\u0014.ESplitScalingFilter:\u001dk_ESplitScalingFilter_Invalid\u0012Q\n\u0014split_scaling_scaler\u0018\u0019 \u0001(\u000e2\u0014.ESplitScalingScaler:\u001dk_ESplitScalingScaler_Invalid\"w\n\u0016CMsgSystemPerfSettings\u0012-\n\u0006global\u0018\u0001 \u0001(\u000b2\u001d.CMsgSystemPerfSettingsGlobal\u0012.\n\u0007per_app\u0018\u0002 \u0001(\u000b2\u001d.CMsgSystemPerfSettingsPerApp\"\u008c\b\n\u0018CMsgSystemPerfSettingsV1\u0012\u001e\n\u0016diagnostic_update_rate\u0018\u0001 \u0001(\u0002\u0012[\n\u001asystem_trace_service_state\u0018\u0002 \u0001(\u000e2\u0014.ESystemServiceState:!k_ESystemServiceState_Unavailable\u0012a\n graphics_profiling_service_state\u0018\u0003 \u0001(\u000e2\u0014.ESystemServiceState:!k_ESystemServiceState_Unavailable\u0012[\n\u001aperf_overlay_service_state\u0018\u0004 \u0001(\u000e2\u0014.ESystemServiceState:!k_ESystemServiceState_Unavailable\u0012Z\n\u0012perf_overlay_level\u0018\u0005 \u0001(\u000e2\u001a.EGraphicsPerfOverlayLevel:\"k_EGraphicsPerfOverlayLevel_Hidden\u0012T\n\u0015gpu_performance_level\u0018\u0006 \u0001(\u000e2\u0015.EGPUPerformanceLevel:\u001ek_EGPUPerformanceLevel_Invalid\u0012\"\n\u001agpu_performance_manual_mhz\u0018\u0007 \u0001(\u0005\u0012\u0011\n\tfps_limit\u0018\b \u0001(\u0005\u0012&\n\u001eis_variable_resolution_enabled\u0018\t \u0001(\b\u0012'\n\u001fis_dynamic_refresh_rate_enabled\u0018\n \u0001(\b\u0012\u0011\n\ttdp_limit\u0018\u000b \u0001(\u0005\u0012;\n\fcpu_governor\u0018\f \u0001(\u000e2\r.ECPUGovernor:\u0016k_ECPUGovernor_Invalid\u0012\u001f\n\u0017cpu_governor_manual_mhz\u0018\r \u0001(\u0005\u0012\u0016\n\u000escaling_filter\u0018\u000e \u0001(\u0005\u0012\u0015\n\rfsr_sharpness\u0018\u000f \u0001(\u0005\u0012\u001c\n\u0014is_fps_limit_enabled\u0018\u0010 \u0001(\b\u0012\u001c\n\u0014is_tdp_limit_enabled\u0018\u0011 \u0001(\b\u0012/\n'is_show_perf_overlay_over_steam_enabled\u0018\u0012 \u0001(\b\u0012#\n\u001bis_low_latency_mode_enabled\u0018\u0013 \u0001(\b\u0012!\n\u0019display_refresh_manual_hz\u0018\u0014 \u0001(\u0005\u0012$\n\u001cis_game_perf_profile_enabled\u0018\u0015 \u0001(\b\" \u0001\n\u0013CMsgSystemPerfState\u0012%\n\u0006limits\u0018\u0001 \u0001(\u000b2\u0015.CMsgSystemPerfLimits\u0012)\n\bsettings\u0018\u0002 \u0001(\u000b2\u0017.CMsgSystemPerfSettings\u0012\u0017\n\u000fcurrent_game_id\u0018\u0003 \u0001(\u0004\u0012\u001e\n\u0016active_profile_game_id\u0018\u0004 \u0001(\u0004\"¤\u0001\n\u001cCMsgSystemPerfUpdateSettings\u0012\u000e\n\u0006gameid\u0018\u0001 \u0001(\u0004\u0012\u001b\n\u0013skip_storage_update\u0018\u0004 \u0001(\b\u0012\u001a\n\u0010reset_to_default\u0018\u0002 \u0001(\bH\u0000\u00121\n\u000esettings_delta\u0018\u0003 \u0001(\u000b2\u0017.CMsgSystemPerfSettingsH\u0000B\b\n\u0006update\"l\n CMsgSystemPerfLegacySettingEntry\u0012\u0017\n\u000fprofile_game_id\u0018\u0001 \u0001(\u0004\u0012/\n\bsettings\u0018\u0002 \u0001(\u000b2\u001d.CMsgSystemPerfSettingsPerApp\"\u008a\u0001\n\u001cCMsgSystemPerfLegacySettings\u0012-\n\u0006global\u0018\u0001 \u0001(\u000b2\u001d.CMsgSystemPerfSettingsGlobal\u0012;\n\u0010per_app_settings\u0018\u0002 \u0003(\u000b2!.CMsgSystemPerfLegacySettingEntry\"ú\u0001\n\u0019CMsgSystemDockUpdateState\u00126\n\u0005state\u0018\u0001 \u0001(\u000e2\u000e.EUpdaterState:\u0017k_EUpdaterState_Invalid\u0012\u001a\n\u0012rtime_last_checked\u0018\u0002 \u0001(\u0007\u0012\u0017\n\u000fversion_current\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011version_available\u0018\u0004 \u0001(\t\u0012\u0016\n\u000estage_progress\u0018\u0005 \u0001(\u0002\u0012\"\n\u001artime_estimated_completion\u0018\u0006 \u0001(\u0007\u0012\u0019\n\u0011old_fw_workaround\u0018\u0007 \u0001(\u0005\"G\n\u0013CMsgSystemDockState\u00120\n\fupdate_state\u0018\u0001 \u0001(\u000b2\u001a.CMsgSystemDockUpdateState\"2\n\u001cCMsgSystemDockUpdateFirmware\u0012\u0012\n\ncheck_only\u0018\u0001 \u0001(\b\"Å\u0001\n\u0015CMsgSystemAudioVolume\u00124\n\u0007entries\u0018\u0001 \u0003(\u000b2#.CMsgSystemAudioVolume.ChannelEntry\u0012\u0010\n\bis_muted\u0018\u0002 \u0001(\b\u001ad\n\fChannelEntry\u0012D\n\bechannel\u0018\u0001 \u0001(\u000e2\u0014.ESystemAudioChannel:\u001ck_SystemAudioChannel_Invalid\u0012\u000e\n\u0006volume\u0018\u0002 \u0001(\u0002\"E\n\u001cCMsgSystemAudioManagerObject\u0012\n\n\u0002id\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011rtime_last_update\u0018\u0002 \u0001(\u0007\"\u0089\u0001\n\u001cCMsgSystemAudioManagerDevice\u0012+\n\u0004base\u0018\u0001 \u0001(\u000b2\u001d.CMsgSystemAudioManagerObject\u0012\f\n\u0004name\u0018\u0002 \u0001(\t\u0012\f\n\u0004nick\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003api\u0018\u0005 \u0001(\t\"\u0081\u0002\n\u001aCMsgSystemAudioManagerNode\u0012+\n\u0004base\u0018\u0001 \u0001(\u000b2\u001d.CMsgSystemAudioManagerObject\u0012\u0011\n\tdevice_id\u0018\u0002 \u0001(\r\u0012\f\n\u0004name\u0018\u0003 \u0001(\t\u0012\f\n\u0004nick\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0005 \u0001(\t\u0012J\n\nedirection\u0018\u0006 \u0001(\u000e2\u0016.ESystemAudioDirection:\u001ek_SystemAudioDirection_Invalid\u0012&\n\u0006volume\u0018\u0007 \u0001(\u000b2\u0016.CMsgSystemAudioVolume\"â\u0002\n\u001aCMsgSystemAudioManagerPort\u0012+\n\u0004base\u0018\u0001 \u0001(\u000b2\u001d.CMsgSystemAudioManagerObject\u0012\u000f\n\u0007node_id\u0018\u0003 \u0001(\r\u0012\f\n\u0004name\u0018\u0004 \u0001(\t\u0012\r\n\u0005alias\u0018\u0005 \u0001(\t\u0012C\n\u0005etype\u0018\u0006 \u0001(\u000e2\u0015.ESystemAudioPortType:\u001dk_SystemAudioPortType_Invalid\u0012R\n\nedirection\u0018\u0007 \u0001(\u000e2\u001a.ESystemAudioPortDirection:\"k_SystemAudioPortDirection_Invalid\u0012\u0013\n\u000bis_physical\u0018\b \u0001(\b\u0012\u0013\n\u000bis_terminal\u0018\t \u0001(\b\u0012\u0012\n\nis_control\u0018\n \u0001(\b\u0012\u0012\n\nis_monitor\u0018\u000b \u0001(\b\"§\u0001\n\u001aCMsgSystemAudioManagerLink\u0012+\n\u0004base\u0018\u0001 \u0001(\u000b2\u001d.CMsgSystemAudioManagerObject\u0012\u0016\n\u000eoutput_node_id\u0018\u0002 \u0001(\r\u0012\u0016\n\u000eoutput_port_id\u0018\u0003 \u0001(\r\u0012\u0015\n\rinput_node_id\u0018\u0004 \u0001(\r\u0012\u0015\n\rinput_port_id\u0018\u0005 \u0001(\r\"Ó\u0001\n\u001dCMsgSystemAudioManagerStateHW\u0012.\n\u0007devices\u0018\u0001 \u0003(\u000b2\u001d.CMsgSystemAudioManagerDevice\u0012*\n\u0005nodes\u0018\u0002 \u0003(\u000b2\u001b.CMsgSystemAudioManagerNode\u0012*\n\u0005ports\u0018\u0003 \u0003(\u000b2\u001b.CMsgSystemAudioManagerPort\u0012*\n\u0005links\u0018\u0004 \u0003(\u000b2\u001b.CMsgSystemAudioManagerLink\"p\n\u001bCMsgSystemAudioManagerState\u0012\u0014\n\frtime_filter\u0018\u0001 \u0001(\u0007\u0012\u000f\n\u0007counter\u0018\u0002 \u0001(\u0005\u0012*\n\u0002hw\u0018\u0003 \u0001(\u000b2\u001e.CMsgSystemAudioManagerStateHW\"8\n%CMsgSystemAudioManagerUpdateSomething\u0012\u000f\n\u0007counter\u0018\u0001 \u0001(\u0005\"V\n\u0015CMsgSystemDisplayMode\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005width\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006height\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nrefresh_hz\u0018\u0004 \u0001(\u0005\"À\u0003\n\u0011CMsgSystemDisplay\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0005\u0012\f\n\u0004name\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012\u0012\n\nis_primary\u0018\u0004 \u0001(\b\u0012\u0012\n\nis_enabled\u0018\u0005 \u0001(\b\u0012\u0013\n\u000bis_internal\u0018\u0006 \u0001(\b\u0012\u0019\n\u0011has_mode_override\u0018\u0007 \u0001(\b\u0012\u0010\n\bwidth_mm\u0018\b \u0001(\u0005\u0012\u0011\n\theight_mm\u0018\t \u0001(\u0005\u0012\u0017\n\u000fcurrent_mode_id\u0018\n \u0001(\u0005\u0012%\n\u0005modes\u0018\u000b \u0003(\u000b2\u0016.CMsgSystemDisplayMode\u0012\u0018\n\u0010refresh_rate_min\u0018\f \u0001(\u0005\u0012\u0018\n\u0010refresh_rate_max\u0018\r \u0001(\u0005\u0012\u0016\n\u000eis_vrr_capable\u0018\u000e \u0001(\b\u0012\u001c\n\u0014is_vrr_output_active\u0018\u000f \u0001(\b\u0012\u0016\n\u000eis_hdr_capable\u0018\u0010 \u0001(\b\u0012\u001c\n\u0014is_hdr_output_active\u0018\u0011 \u0001(\b\u0012\u001f\n\u0017supported_refresh_rates\u0018\u0012 \u0003(\u0005\"Ó\u0001\n\u001dCMsgSystemDisplayManagerState\u0012$\n\bdisplays\u0018\u0001 \u0003(\u000b2\u0012.CMsgSystemDisplay\u0012#\n\u001bis_mode_switching_supported\u0018\u0002 \u0001(\b\u0012g\n\u0012compatibility_mode\u0018\u0003 \u0001(\u000e2 .ESystemDisplayCompatibilityMode:)k_ESystemDisplayCompatibilityMode_Invalid\"F\n\u001fCMsgSystemDisplayManagerSetMode\u0012\u0012\n\ndisplay_id\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007mode_id\u0018\u0002 \u0001(\u0005\" \u000b\n\u0019CMsgSystemManagerSettings\u0012*\n\"idle_backlight_dim_battery_seconds\u0018\u0001 \u0001(\u0002\u0012%\n\u001didle_backlight_dim_ac_seconds\u0018\u0002 \u0001(\u0002\u0012$\n\u001cidle_suspend_battery_seconds\u0018\u0003 \u0001(\u0002\u0012\u001f\n\u0017idle_suspend_ac_seconds\u0018\u0004 \u0001(\u0002\u0012\u001e\n\u0016idle_suspend_supressed\u0018\u0005 \u0001(\b\u0012(\n is_adaptive_brightness_available\u0018\u0006 \u0001(\b\u0012+\n#display_adaptive_brightness_enabled\u0018\u0007 \u0001(\b\u0012!\n\u0019display_nightmode_enabled\u0018\n \u0001(\b\u0012&\n\u001edisplay_nightmode_tintstrength\u0018\u000b \u0001(\u0002\u0012 \n\u0018display_nightmode_maxhue\u0018\f \u0001(\u0002\u0012 \n\u0018display_nightmode_maxsat\u0018\r \u0001(\u0002\u0012\u001f\n\u0017display_nightmode_uiexp\u0018\u000e \u0001(\u0002\u0012\u001f\n\u0017display_nightmode_blend\u0018\u000f \u0001(\u0002\u0012\u001f\n\u0017display_nightmode_reset\u0018\u0010 \u0001(\b\u0012*\n\"display_nightmode_schedule_enabled\u0018\u0011 \u0001(\b\u0012,\n$display_nightmode_schedule_starttime\u0018\u0012 \u0001(\u0002\u0012*\n\"display_nightmode_schedule_endtime\u0018\u0013 \u0001(\u0002\u0012#\n\u001bdisplay_diagnostics_enabled\u0018\u0014 \u0001(\b\u0012\u0017\n\u000fals_lux_primary\u0018\u0015 \u0001(\u0002\u0012\u0016\n\u000eals_lux_median\u0018\u0016 \u0001(\u0002\u0012\u001d\n\u0015display_backlight_raw\u0018\u0017 \u0001(\u0002\u0012&\n\u001edisplay_brightness_adaptivemin\u0018\u0018 \u0001(\u0002\u0012&\n\u001edisplay_brightness_adaptivemax\u0018\u0019 \u0001(\u0002\u0012!\n\u0019is_wifi_powersave_enabled\u0018\u001a \u0001(\b\u0012 \n\u0018is_fan_control_available\u0018\u001b \u0001(\b\u0012P\n\u0010fan_control_mode\u0018\u001c \u0001(\u000e2\u0016.ESystemFanControlMode:\u001ek_SystemFanControlMode_Invalid\u0012'\n\u001fis_display_brightness_available\u0018\u001d \u0001(\b\u0012,\n$is_display_colormanagement_available\u0018\u001f \u0001(\b\u0012\u001a\n\u0012display_colorgamut\u0018  \u0001(\u0002\u0012\u0019\n\u0011als_lux_alternate\u0018! \u0001(\u0002\u0012&\n\u001eis_display_colortemp_available\u0018\" \u0001(\b\u0012\u0019\n\u0011display_colortemp\u0018# \u0001(\u0002\u0012!\n\u0019display_colortemp_default\u0018$ \u0001(\u0002\u0012!\n\u0019display_colortemp_enabled\u0018% \u0001(\b\u0012W\n\u001bdisplay_colorgamut_labelset\u0018& \u0001(\u000e2\u0014.EColorGamutLabelSet:\u001ck_ColorGamutLabelSet_Default\u0012.\n&display_brightness_overdrive_hdr_split\u0018' \u0001(\u0002\"b\n\u0018CMsgSelectOSBranchParams\u0012/\n\u0006branch\u0018\u0001 \u0001(\u000e2\n.EOSBranch:\u0013k_EOSBranch_Unknown\u0012\u0015\n\rcustom_branch\u0018\u0002 \u0001(\t\"p\n\u0018CMsgSystemUpdateProgress\u0012\u0016\n\u000estage_progress\u0018\u0001 \u0001(\u0002\u0012\u0018\n\u0010stage_size_bytes\u0018\u0002 \u0001(\u0003\u0012\"\n\u001artime_estimated_completion\u0018\u0003 \u0001(\u0007\"×\u0001\n\u001bCMsgSystemUpdateCheckResult\u00123\n\u0004type\u0018\u0001 \u0001(\u000e2\r.EUpdaterType:\u0016k_EUpdaterType_Invalid\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\r:\u00012\u0012\u0015\n\rrtime_checked\u0018\u0003 \u0001(\u0007\u0012\u0011\n\tavailable\u0018\u0004 \u0001(\b\u0012\u000f\n\u0007version\u0018\u0005 \u0001(\t\u0012\u0014\n\fauto_message\u0018\u0006 \u0001(\t\u0012\u001e\n\u0016system_restart_pending\u0018\u0007 \u0001(\b\"A\n\u001bCMsgSystemUpdateApplyParams\u0012\"\n\u000bapply_types\u0018\u0001 \u0003(\u000e2\r.EUpdaterType\"¶\u0001\n\u001bCMsgSystemUpdateApplyResult\u00123\n\u0004type\u0018\u0001 \u0001(\u000e2\r.EUpdaterType:\u0016k_EUpdaterType_Invalid\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\r:\u00012\u0012&\n\u0017requires_client_restart\u0018\u0003 \u0001(\b:\u0005false\u0012&\n\u0017requires_system_restart\u0018\u0004 \u0001(\b:\u0005false\"\u0091\u0002\n\u0015CMsgSystemUpdateState\u00126\n\u0005state\u0018\u0001 \u0001(\u000e2\u000e.EUpdaterState:\u0017k_EUpdaterState_Invalid\u0012+\n\bprogress\u0018\u0002 \u0001(\u000b2\u0019.CMsgSystemUpdateProgress\u0012:\n\u0014update_check_results\u0018\u0003 \u0003(\u000b2\u001c.CMsgSystemUpdateCheckResult\u0012:\n\u0014update_apply_results\u0018\u0004 \u0003(\u000b2\u001c.CMsgSystemUpdateApplyResult\u0012\u001b\n\u0013supports_os_updates\u0018\u0005 \u0001(\b\"&\n\u0015CMsgAchievementChange\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\"\\\n\fCMsgCellList\u0012!\n\u0005cells\u0018\u0001 \u0003(\u000b2\u0012.CMsgCellList.Cell\u001a)\n\u0004Cell\u0012\u000f\n\u0007cell_id\u0018\u0001 \u0001(\r\u0012\u0010\n\bloc_name\u0018\u0002 \u0001(\t\"Æ\u0003\n\u0010CMsgShortcutInfo\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003exe\u0018\u0002 \u0001(\t\u0012\u0011\n\tstart_dir\u0018\u0003 \u0001(\t\u0012\f\n\u0004icon\u0018\u0004 \u0001(\t\u0012\f\n\u0004path\u0018\u0005 \u0001(\t\u0012\f\n\u0004args\u0018\u0006 \u0001(\t\u0012\u0010\n\bapp_name\u0018\u0007 \u0001(\t\u0012\u0016\n\u000eoverride_appid\u0018\b \u0001(\r\u0012\u0015\n\rflatpak_appid\u0018\t \u0001(\t\u0012\f\n\u0004tags\u0018\n \u0003(\t\u0012\u0018\n\u0010remote_client_id\u0018\u000b \u0001(\u0004\u0012\u0011\n\tis_hidden\u0018\f \u0001(\b\u0012\u0014\n\fis_temporary\u0018\r \u0001(\b\u0012\u0011\n\tis_openvr\u0018\u000e \u0001(\b\u0012\u001c\n\u0014allow_desktop_config\u0018\u000f \u0001(\b\u0012\u0015\n\rallow_overlay\u0018\u0010 \u0001(\b\u0012\u001b\n\u0013rt_last_played_time\u0018\u0011 \u0001(\r\u0012\u001a\n\u0012is_devkit_shortcut\u0018\u0012 \u0001(\b\u0012\u0015\n\rdevkit_gameid\u0018\u0013 \u0001(\t\u0012\u001f\n\u0017remote_launch_available\u0018\u0014 \u0001(\b\u0012\u000e\n\u0006sortas\u0018\u0015 \u0001(\t\"8\n\u0011CMsgShortcutInfos\u0012#\n\bshorcuts\u0018\u0001 \u0003(\u000b2\u0011.CMsgShortcutInfo\"$\n\u0012CMsgShortcutAppIds\u0012\u000e\n\u0006appids\u0018\u0001 \u0003(\r\"ª\u0001\n\u000fCMsgMonitorInfo\u0012\u001d\n\u0015selected_display_name\u0018\u0001 \u0002(\t\u0012.\n\bmonitors\u0018\u0002 \u0003(\u000b2\u001c.CMsgMonitorInfo.MonitorInfo\u001aH\n\u000bMonitorInfo\u0012\u001b\n\u0013monitor_device_name\u0018\u0001 \u0002(\t\u0012\u001c\n\u0014monitor_display_name\u0018\u0002 \u0002(\t\"2\n\u001dCMsgGenerateSystemReportReply\u0012\u0011\n\treport_id\u0018\u0001 \u0001(\t\"8\n\u0016CMsgWebUITransportInfo\u0012\f\n\u0004port\u0018\u0001 \u0001(\r\u0012\u0010\n\bauth_key\u0018\u0002 \u0001(\t\"2\n\u0019CMsgWebUITransportFailure\u0012\u0015\n\rconnect_count\u0018\u0001 \u0001(\r\"^\n\u001dCMsgClientShaderHitCacheEntry\u0012\u000f\n\u0007key_sha\u0018\u0001 \u0001(\f\u0012\u0010\n\bcode_sha\u0018\u0002 \u0001(\f\u0012\u001a\n\u0012time_last_reported\u0018\u0003 \u0001(\u0004\"K\n\u0018CMsgClientShaderHitCache\u0012/\n\u0007entries\u0018\u0001 \u0003(\u000b2\u001e.CMsgClientShaderHitCacheEntry*\u0096\u0002\n\u001cECloudPendingRemoteOperation\u0012&\n\"k_ECloudPendingRemoteOperationNone\u0010\u0000\u00122\n.k_ECloudPendingRemoteOperationAppSessionActive\u0010\u0001\u00122\n.k_ECloudPendingRemoteOperationUploadInProgress\u0010\u0002\u0012/\n+k_ECloudPendingRemoteOperationUploadPending\u0010\u0003\u00125\n1k_ECloudPendingRemoteOperationAppSessionSuspended\u0010\u0004*Ê\f\n\u0018ESteamDeckKeyboardLayout\u0012%\n!k_ESteamDeckKeyboardLayout_QWERTY\u0010\u0000\u0012(\n$k_ESteamDeckKeyboardLayout_Bulgarian\u0010\u0001\u00121\n-k_ESteamDeckKeyboardLayout_Chinese_Simplified\u0010\u0002\u00122\n.k_ESteamDeckKeyboardLayout_Chinese_Traditional\u0010\u0003\u0012$\n k_ESteamDeckKeyboardLayout_Czech\u0010\u0004\u0012%\n!k_ESteamDeckKeyboardLayout_Danish\u0010\u0005\u0012&\n\"k_ESteamDeckKeyboardLayout_Finnish\u0010\u0006\u0012%\n!k_ESteamDeckKeyboardLayout_French\u0010\u0007\u0012%\n!k_ESteamDeckKeyboardLayout_German\u0010\b\u0012$\n k_ESteamDeckKeyboardLayout_Greek\u0010\t\u0012(\n$k_ESteamDeckKeyboardLayout_Hungarian\u0010\n\u0012&\n\"k_ESteamDeckKeyboardLayout_Italian\u0010\u000b\u0012'\n#k_ESteamDeckKeyboardLayout_Japanese\u0010\f\u0012%\n!k_ESteamDeckKeyboardLa", "yout_Korean\u0010\r\u0012(\n$k_ESteamDeckKeyboardLayout_Norwegian\u0010\u000e\u0012%\n!k_ESteamDeckKeyboardLayout_Polish\u0010\u000f\u0012)\n%k_ESteamDeckKeyboardLayout_Portuguese\u0010\u0010\u0012'\n#k_ESteamDeckKeyboardLayout_Romanian\u0010\u0011\u0012&\n\"k_ESteamDeckKeyboardLayout_Russian\u0010\u0012\u0012&\n\"k_ESteamDeckKeyboardLayout_Spanish\u0010\u0013\u0012&\n\"k_ESteamDeckKeyboardLayout_Swedish\u0010\u0014\u0012#\n\u001fk_ESteamDeckKeyboardLayout_Thai\u0010\u0015\u0012(\n$k_ESteamDeckKeyboardLayout_Turkish_F\u0010\u0016\u0012(\n$k_ESteamDeckKeyboardLayout_Turkish_Q\u0010\u0017\u0012(\n$k_ESteamDeckKeyboardLayout_Ukrainian\u0010\u0018\u0012)\n%k_ESteamDeckKeyboardLayout_Vietnamese\u0010\u0019\u00123\n/k_ESteamDeckKeyboardLayout_QWERTY_International\u0010\u001a\u0012%\n!k_ESteamDeckKeyboardLayout_Dvorak\u0010\u001b\u0012&\n\"k_ESteamDeckKeyboardLayout_Colemak\u0010\u001c\u0012=\n9k_ESteamDeckKeyboardLayout_Bulgarian_Phonetic_Traditional\u0010\u001d\u00121\n-k_ESteamDeckKeyboardLayout_Bulgarian_Phonetic\u0010\u001e\u0012;\n7k_ESteamDeckKeyboardLayout_Chinese_Traditional_Bopomofo\u0010\u001f\u0012:\n6k_ESteamDeckKeyboardLayout_Chinese_Traditional_Cangjie\u0010 \u0012,\n(k_ESteamDeckKeyboardLayout_Japanese_Kana\u0010!\u00128\n4k_ESteamDeckKeyboardLayout_Chinese_Traditional_Quick\u0010\"\u0012)\n%k_ESteamDeckKeyboardLayout_Indonesian\u0010#B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{Enums.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_SteamMessagesClientIClientForcedEnumDependencies_descriptor = descriptor2;
        internal_static_SteamMessagesClientIClientForcedEnumDependencies_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"A", "B", "C", "D"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgNetworkDeviceIP4Address_descriptor = descriptor3;
        internal_static_CMsgNetworkDeviceIP4Address_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Ip", "Netmask"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgNetworkDeviceIP4Config_descriptor = descriptor4;
        internal_static_CMsgNetworkDeviceIP4Config_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Addresses", "DnsIp", "GatewayIp", "IsDhcpEnabled", "IsDefaultRoute", "IsEnabled"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgNetworkDeviceIP6Address_descriptor = descriptor5;
        internal_static_CMsgNetworkDeviceIP6Address_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Ip"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgNetworkDeviceIP6Config_descriptor = descriptor6;
        internal_static_CMsgNetworkDeviceIP6Config_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Addresses", "DnsIp", "GatewayIp", "IsDhcpEnabled", "IsDefaultRoute", "IsEnabled"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgNetworkDevicesData_descriptor = descriptor7;
        internal_static_CMsgNetworkDevicesData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Devices", "IsWifiEnabled", "IsWifiScanningEnabled"});
        Descriptors.Descriptor descriptor8 = descriptor7.getNestedTypes().get(0);
        internal_static_CMsgNetworkDevicesData_Device_descriptor = descriptor8;
        internal_static_CMsgNetworkDevicesData_Device_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Id", "Etype", "Estate", "Mac", "Vendor", "Product", "Ip4", "Ip6", "Wired", "Wireless"});
        Descriptors.Descriptor descriptor9 = descriptor8.getNestedTypes().get(0);
        internal_static_CMsgNetworkDevicesData_Device_Wired_descriptor = descriptor9;
        internal_static_CMsgNetworkDevicesData_Device_Wired_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"IsCablePresent", "SpeedMbit", "FriendlyName"});
        Descriptors.Descriptor descriptor10 = descriptor8.getNestedTypes().get(1);
        internal_static_CMsgNetworkDevicesData_Device_Wireless_descriptor = descriptor10;
        internal_static_CMsgNetworkDevicesData_Device_Wireless_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Aps", "EsecuritySupported"});
        Descriptors.Descriptor descriptor11 = descriptor10.getNestedTypes().get(0);
        internal_static_CMsgNetworkDevicesData_Device_Wireless_AP_descriptor = descriptor11;
        internal_static_CMsgNetworkDevicesData_Device_Wireless_AP_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Id", "Estrength", "Ssid", "IsActive", "IsAutoconnect", "Esecurity", "UserName", "Password", "StrengthRaw"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgNetworkDeviceConnect_descriptor = descriptor12;
        internal_static_CMsgNetworkDeviceConnect_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"DeviceId", "Credentials", "Ip4", "Ip6", "ApKnown", "ApCustom", "ApInfo"});
        Descriptors.Descriptor descriptor13 = descriptor12.getNestedTypes().get(0);
        internal_static_CMsgNetworkDeviceConnect_KnownAP_descriptor = descriptor13;
        internal_static_CMsgNetworkDeviceConnect_KnownAP_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"ApId"});
        Descriptors.Descriptor descriptor14 = descriptor12.getNestedTypes().get(1);
        internal_static_CMsgNetworkDeviceConnect_CustomAP_descriptor = descriptor14;
        internal_static_CMsgNetworkDeviceConnect_CustomAP_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Ssid", "Esecurity"});
        Descriptors.Descriptor descriptor15 = descriptor12.getNestedTypes().get(2);
        internal_static_CMsgNetworkDeviceConnect_Credentials_descriptor = descriptor15;
        internal_static_CMsgNetworkDeviceConnect_Credentials_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Username", "Password"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgStorageDevicesData_descriptor = descriptor16;
        internal_static_CMsgStorageDevicesData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Drives", "BlockDevices", "IsUnmountSupported", "IsTrimSupported", "IsTrimRunning"});
        Descriptors.Descriptor descriptor17 = descriptor16.getNestedTypes().get(0);
        internal_static_CMsgStorageDevicesData_Drive_descriptor = descriptor17;
        internal_static_CMsgStorageDevicesData_Drive_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Id", "Model", "Vendor", "Serial", "IsEjectable", "SizeBytes", "MediaType"});
        Descriptors.Descriptor descriptor18 = descriptor16.getNestedTypes().get(1);
        internal_static_CMsgStorageDevicesData_BlockDevice_descriptor = descriptor18;
        internal_static_CMsgStorageDevicesData_BlockDevice_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"Id", "DriveId", "Path", "FriendlyPath", "Label", "SizeBytes", "IsFormattable", "IsReadOnly", "IsRootDevice", "ContentType", "FilesystemType", "MountPath"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(8);
        internal_static_CCloud_PendingRemoteOperation_descriptor = descriptor19;
        internal_static_CCloud_PendingRemoteOperation_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"Operation", "MachineName", "ClientId", "TimeLastUpdated", "OsType", "DeviceType"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgCloudPendingRemoteOperations_descriptor = descriptor20;
        internal_static_CMsgCloudPendingRemoteOperations_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"Operations"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgBluetoothDevicesData_descriptor = descriptor21;
        internal_static_CMsgBluetoothDevicesData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Adapters", "Devices", "Manager"});
        Descriptors.Descriptor descriptor22 = descriptor21.getNestedTypes().get(0);
        internal_static_CMsgBluetoothDevicesData_Adapter_descriptor = descriptor22;
        internal_static_CMsgBluetoothDevicesData_Adapter_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"Id", "Mac", "Name", "IsEnabled", "IsDiscovering"});
        Descriptors.Descriptor descriptor23 = descriptor21.getNestedTypes().get(1);
        internal_static_CMsgBluetoothDevicesData_Device_descriptor = descriptor23;
        internal_static_CMsgBluetoothDevicesData_Device_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"Id", "AdapterId", "Etype", "Mac", "Name", "IsConnected", "IsPaired", "StrengthRaw", "WakeAllowed", "WakeAllowedSupported", "BatteryPercent"});
        Descriptors.Descriptor descriptor24 = descriptor21.getNestedTypes().get(2);
        internal_static_CMsgBluetoothDevicesData_Manager_descriptor = descriptor24;
        internal_static_CMsgBluetoothDevicesData_Manager_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"IsBluetoothEnabled"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgSystemPerfDiagnosticEntry_descriptor = descriptor25;
        internal_static_CMsgSystemPerfDiagnosticEntry_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"Name", "Value"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgSystemPerfNetworkInterface_descriptor = descriptor26;
        internal_static_CMsgSystemPerfNetworkInterface_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"Name", "Timestamp", "TxBytesTotal", "RxBytesTotal", "TxBytesPerSec", "RxBytesPerSec"});
        Descriptors.Descriptor descriptor27 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgSystemPerfDiagnosticInfo_descriptor = descriptor27;
        internal_static_CMsgSystemPerfDiagnosticInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"Entries", "Interfaces", "BatteryTempC"});
        Descriptors.Descriptor descriptor28 = getDescriptor().getMessageTypes().get(14);
        internal_static_CMsgSystemPerfLimits_descriptor = descriptor28;
        internal_static_CMsgSystemPerfLimits_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[]{"CpuGovernorManualMinMhz", "CpuGovernorManualMaxMhz", "FsrSharpnessMin", "FsrSharpnessMax", "GpuPerformanceManualMinMhz", "GpuPerformanceManualMaxMhz", "PerfOverlayIsStandalone", "IsDynamicVrsAvailable", "IsManualDisplayRefreshRateAvailable", "GpuPerformanceLevelsAvailable", "DisplayRefreshManualHzMin", "DisplayRefreshManualHzMax", "FpsLimitOptions", "TdpLimitMin", "TdpLimitMax", "DisplayExternalRefreshManualHzMin", "DisplayExternalRefreshManualHzMax", "FpsLimitOptionsExternal", "IsVrrSupported", "IsDynamicRefreshRateInSteamSupported", "SplitScalingFiltersAvailable", "SplitScalingScalersAvailable", "DisableRefreshRateManagement"});
        Descriptors.Descriptor descriptor29 = getDescriptor().getMessageTypes().get(15);
        internal_static_CMsgSystemPerfSettingsGlobal_descriptor = descriptor29;
        internal_static_CMsgSystemPerfSettingsGlobal_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor29, new String[]{"DiagnosticUpdateRate", "SystemTraceServiceState", "GraphicsProfilingServiceState", "PerfOverlayServiceState", "PerfOverlayLevel", "IsShowPerfOverlayOverSteamEnabled", "IsAdvancedSettingsEnabled", "AllowExternalDisplayRefreshControl", "HdrOnSdrTonemapOperator", "IsHdrDebugHeatmapEnabled", "ForceHdrWideGammutForSdr", "SdrToHdrBrightness", "IsColorManagementEnabled"});
        Descriptors.Descriptor descriptor30 = getDescriptor().getMessageTypes().get(16);
        internal_static_CMsgSystemPerfSettingsPerApp_descriptor = descriptor30;
        internal_static_CMsgSystemPerfSettingsPerApp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor30, new String[]{"GpuPerformanceManualMhz", "FpsLimit", "IsVariableResolutionEnabled", "IsDynamicRefreshRateEnabled", "TdpLimit", "CpuGovernor", "CpuGovernorManualMhz", "ScalingFilter", "FsrSharpness", "IsFpsLimitEnabled", "IsTdpLimitEnabled", "IsLowLatencyModeEnabled", "DisplayRefreshManualHz", "IsGamePerfProfileEnabled", "GpuPerformanceLevel", "DisplayExternalRefreshManualHz", "FpsLimitExternal", "IsTearingEnabled", "IsVrrEnabled", "UseDynamicRefreshRateInSteam", "SplitScalingFilter", "SplitScalingScaler"});
        Descriptors.Descriptor descriptor31 = getDescriptor().getMessageTypes().get(17);
        internal_static_CMsgSystemPerfSettings_descriptor = descriptor31;
        internal_static_CMsgSystemPerfSettings_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor31, new String[]{"Global", "PerApp"});
        Descriptors.Descriptor descriptor32 = getDescriptor().getMessageTypes().get(18);
        internal_static_CMsgSystemPerfSettingsV1_descriptor = descriptor32;
        internal_static_CMsgSystemPerfSettingsV1_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor32, new String[]{"DiagnosticUpdateRate", "SystemTraceServiceState", "GraphicsProfilingServiceState", "PerfOverlayServiceState", "PerfOverlayLevel", "GpuPerformanceLevel", "GpuPerformanceManualMhz", "FpsLimit", "IsVariableResolutionEnabled", "IsDynamicRefreshRateEnabled", "TdpLimit", "CpuGovernor", "CpuGovernorManualMhz", "ScalingFilter", "FsrSharpness", "IsFpsLimitEnabled", "IsTdpLimitEnabled", "IsShowPerfOverlayOverSteamEnabled", "IsLowLatencyModeEnabled", "DisplayRefreshManualHz", "IsGamePerfProfileEnabled"});
        Descriptors.Descriptor descriptor33 = getDescriptor().getMessageTypes().get(19);
        internal_static_CMsgSystemPerfState_descriptor = descriptor33;
        internal_static_CMsgSystemPerfState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor33, new String[]{"Limits", "Settings", "CurrentGameId", "ActiveProfileGameId"});
        Descriptors.Descriptor descriptor34 = getDescriptor().getMessageTypes().get(20);
        internal_static_CMsgSystemPerfUpdateSettings_descriptor = descriptor34;
        internal_static_CMsgSystemPerfUpdateSettings_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor34, new String[]{"Gameid", "SkipStorageUpdate", "ResetToDefault", "SettingsDelta", "Update"});
        Descriptors.Descriptor descriptor35 = getDescriptor().getMessageTypes().get(21);
        internal_static_CMsgSystemPerfLegacySettingEntry_descriptor = descriptor35;
        internal_static_CMsgSystemPerfLegacySettingEntry_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor35, new String[]{"ProfileGameId", "Settings"});
        Descriptors.Descriptor descriptor36 = getDescriptor().getMessageTypes().get(22);
        internal_static_CMsgSystemPerfLegacySettings_descriptor = descriptor36;
        internal_static_CMsgSystemPerfLegacySettings_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor36, new String[]{"Global", "PerAppSettings"});
        Descriptors.Descriptor descriptor37 = getDescriptor().getMessageTypes().get(23);
        internal_static_CMsgSystemDockUpdateState_descriptor = descriptor37;
        internal_static_CMsgSystemDockUpdateState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor37, new String[]{"State", "RtimeLastChecked", "VersionCurrent", "VersionAvailable", "StageProgress", "RtimeEstimatedCompletion", "OldFwWorkaround"});
        Descriptors.Descriptor descriptor38 = getDescriptor().getMessageTypes().get(24);
        internal_static_CMsgSystemDockState_descriptor = descriptor38;
        internal_static_CMsgSystemDockState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor38, new String[]{"UpdateState"});
        Descriptors.Descriptor descriptor39 = getDescriptor().getMessageTypes().get(25);
        internal_static_CMsgSystemDockUpdateFirmware_descriptor = descriptor39;
        internal_static_CMsgSystemDockUpdateFirmware_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor39, new String[]{"CheckOnly"});
        Descriptors.Descriptor descriptor40 = getDescriptor().getMessageTypes().get(26);
        internal_static_CMsgSystemAudioVolume_descriptor = descriptor40;
        internal_static_CMsgSystemAudioVolume_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor40, new String[]{"Entries", "IsMuted"});
        Descriptors.Descriptor descriptor41 = descriptor40.getNestedTypes().get(0);
        internal_static_CMsgSystemAudioVolume_ChannelEntry_descriptor = descriptor41;
        internal_static_CMsgSystemAudioVolume_ChannelEntry_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor41, new String[]{"Echannel", "Volume"});
        Descriptors.Descriptor descriptor42 = getDescriptor().getMessageTypes().get(27);
        internal_static_CMsgSystemAudioManagerObject_descriptor = descriptor42;
        internal_static_CMsgSystemAudioManagerObject_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor42, new String[]{"Id", "RtimeLastUpdate"});
        Descriptors.Descriptor descriptor43 = getDescriptor().getMessageTypes().get(28);
        internal_static_CMsgSystemAudioManagerDevice_descriptor = descriptor43;
        internal_static_CMsgSystemAudioManagerDevice_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor43, new String[]{"Base", "Name", "Nick", "Description", "Api"});
        Descriptors.Descriptor descriptor44 = getDescriptor().getMessageTypes().get(29);
        internal_static_CMsgSystemAudioManagerNode_descriptor = descriptor44;
        internal_static_CMsgSystemAudioManagerNode_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor44, new String[]{"Base", "DeviceId", "Name", "Nick", "Description", "Edirection", "Volume"});
        Descriptors.Descriptor descriptor45 = getDescriptor().getMessageTypes().get(30);
        internal_static_CMsgSystemAudioManagerPort_descriptor = descriptor45;
        internal_static_CMsgSystemAudioManagerPort_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor45, new String[]{"Base", "NodeId", "Name", "Alias", "Etype", "Edirection", "IsPhysical", "IsTerminal", "IsControl", "IsMonitor"});
        Descriptors.Descriptor descriptor46 = getDescriptor().getMessageTypes().get(31);
        internal_static_CMsgSystemAudioManagerLink_descriptor = descriptor46;
        internal_static_CMsgSystemAudioManagerLink_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor46, new String[]{"Base", "OutputNodeId", "OutputPortId", "InputNodeId", "InputPortId"});
        Descriptors.Descriptor descriptor47 = getDescriptor().getMessageTypes().get(32);
        internal_static_CMsgSystemAudioManagerStateHW_descriptor = descriptor47;
        internal_static_CMsgSystemAudioManagerStateHW_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor47, new String[]{"Devices", "Nodes", "Ports", "Links"});
        Descriptors.Descriptor descriptor48 = getDescriptor().getMessageTypes().get(33);
        internal_static_CMsgSystemAudioManagerState_descriptor = descriptor48;
        internal_static_CMsgSystemAudioManagerState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor48, new String[]{"RtimeFilter", "Counter", "Hw"});
        Descriptors.Descriptor descriptor49 = getDescriptor().getMessageTypes().get(34);
        internal_static_CMsgSystemAudioManagerUpdateSomething_descriptor = descriptor49;
        internal_static_CMsgSystemAudioManagerUpdateSomething_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor49, new String[]{"Counter"});
        Descriptors.Descriptor descriptor50 = getDescriptor().getMessageTypes().get(35);
        internal_static_CMsgSystemDisplayMode_descriptor = descriptor50;
        internal_static_CMsgSystemDisplayMode_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor50, new String[]{"Id", "Width", "Height", "RefreshHz"});
        Descriptors.Descriptor descriptor51 = getDescriptor().getMessageTypes().get(36);
        internal_static_CMsgSystemDisplay_descriptor = descriptor51;
        internal_static_CMsgSystemDisplay_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor51, new String[]{"Id", "Name", "Description", "IsPrimary", "IsEnabled", "IsInternal", "HasModeOverride", "WidthMm", "HeightMm", "CurrentModeId", "Modes", "RefreshRateMin", "RefreshRateMax", "IsVrrCapable", "IsVrrOutputActive", "IsHdrCapable", "IsHdrOutputActive", "SupportedRefreshRates"});
        Descriptors.Descriptor descriptor52 = getDescriptor().getMessageTypes().get(37);
        internal_static_CMsgSystemDisplayManagerState_descriptor = descriptor52;
        internal_static_CMsgSystemDisplayManagerState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor52, new String[]{"Displays", "IsModeSwitchingSupported", "CompatibilityMode"});
        Descriptors.Descriptor descriptor53 = getDescriptor().getMessageTypes().get(38);
        internal_static_CMsgSystemDisplayManagerSetMode_descriptor = descriptor53;
        internal_static_CMsgSystemDisplayManagerSetMode_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor53, new String[]{"DisplayId", "ModeId"});
        Descriptors.Descriptor descriptor54 = getDescriptor().getMessageTypes().get(39);
        internal_static_CMsgSystemManagerSettings_descriptor = descriptor54;
        internal_static_CMsgSystemManagerSettings_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor54, new String[]{"IdleBacklightDimBatterySeconds", "IdleBacklightDimAcSeconds", "IdleSuspendBatterySeconds", "IdleSuspendAcSeconds", "IdleSuspendSupressed", "IsAdaptiveBrightnessAvailable", "DisplayAdaptiveBrightnessEnabled", "DisplayNightmodeEnabled", "DisplayNightmodeTintstrength", "DisplayNightmodeMaxhue", "DisplayNightmodeMaxsat", "DisplayNightmodeUiexp", "DisplayNightmodeBlend", "DisplayNightmodeReset", "DisplayNightmodeScheduleEnabled", "DisplayNightmodeScheduleStarttime", "DisplayNightmodeScheduleEndtime", "DisplayDiagnosticsEnabled", "AlsLuxPrimary", "AlsLuxMedian", "DisplayBacklightRaw", "DisplayBrightnessAdaptivemin", "DisplayBrightnessAdaptivemax", "IsWifiPowersaveEnabled", "IsFanControlAvailable", "FanControlMode", "IsDisplayBrightnessAvailable", "IsDisplayColormanagementAvailable", "DisplayColorgamut", "AlsLuxAlternate", "IsDisplayColortempAvailable", "DisplayColortemp", "DisplayColortempDefault", "DisplayColortempEnabled", "DisplayColorgamutLabelset", "DisplayBrightnessOverdriveHdrSplit"});
        Descriptors.Descriptor descriptor55 = getDescriptor().getMessageTypes().get(40);
        internal_static_CMsgSelectOSBranchParams_descriptor = descriptor55;
        internal_static_CMsgSelectOSBranchParams_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor55, new String[]{"Branch", "CustomBranch"});
        Descriptors.Descriptor descriptor56 = getDescriptor().getMessageTypes().get(41);
        internal_static_CMsgSystemUpdateProgress_descriptor = descriptor56;
        internal_static_CMsgSystemUpdateProgress_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor56, new String[]{"StageProgress", "StageSizeBytes", "RtimeEstimatedCompletion"});
        Descriptors.Descriptor descriptor57 = getDescriptor().getMessageTypes().get(42);
        internal_static_CMsgSystemUpdateCheckResult_descriptor = descriptor57;
        internal_static_CMsgSystemUpdateCheckResult_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor57, new String[]{"Type", "Eresult", "RtimeChecked", "Available", "Version", "AutoMessage", "SystemRestartPending"});
        Descriptors.Descriptor descriptor58 = getDescriptor().getMessageTypes().get(43);
        internal_static_CMsgSystemUpdateApplyParams_descriptor = descriptor58;
        internal_static_CMsgSystemUpdateApplyParams_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor58, new String[]{"ApplyTypes"});
        Descriptors.Descriptor descriptor59 = getDescriptor().getMessageTypes().get(44);
        internal_static_CMsgSystemUpdateApplyResult_descriptor = descriptor59;
        internal_static_CMsgSystemUpdateApplyResult_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor59, new String[]{"Type", "Eresult", "RequiresClientRestart", "RequiresSystemRestart"});
        Descriptors.Descriptor descriptor60 = getDescriptor().getMessageTypes().get(45);
        internal_static_CMsgSystemUpdateState_descriptor = descriptor60;
        internal_static_CMsgSystemUpdateState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor60, new String[]{"State", "Progress", "UpdateCheckResults", "UpdateApplyResults", "SupportsOsUpdates"});
        Descriptors.Descriptor descriptor61 = getDescriptor().getMessageTypes().get(46);
        internal_static_CMsgAchievementChange_descriptor = descriptor61;
        internal_static_CMsgAchievementChange_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor61, new String[]{"Appid"});
        Descriptors.Descriptor descriptor62 = getDescriptor().getMessageTypes().get(47);
        internal_static_CMsgCellList_descriptor = descriptor62;
        internal_static_CMsgCellList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor62, new String[]{"Cells"});
        Descriptors.Descriptor descriptor63 = descriptor62.getNestedTypes().get(0);
        internal_static_CMsgCellList_Cell_descriptor = descriptor63;
        internal_static_CMsgCellList_Cell_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor63, new String[]{"CellId", "LocName"});
        Descriptors.Descriptor descriptor64 = getDescriptor().getMessageTypes().get(48);
        internal_static_CMsgShortcutInfo_descriptor = descriptor64;
        internal_static_CMsgShortcutInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor64, new String[]{"Appid", "Exe", "StartDir", "Icon", "Path", "Args", "AppName", "OverrideAppid", "FlatpakAppid", "Tags", "RemoteClientId", "IsHidden", "IsTemporary", "IsOpenvr", "AllowDesktopConfig", "AllowOverlay", "RtLastPlayedTime", "IsDevkitShortcut", "DevkitGameid", "RemoteLaunchAvailable", "Sortas"});
        Descriptors.Descriptor descriptor65 = getDescriptor().getMessageTypes().get(49);
        internal_static_CMsgShortcutInfos_descriptor = descriptor65;
        internal_static_CMsgShortcutInfos_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor65, new String[]{"Shorcuts"});
        Descriptors.Descriptor descriptor66 = getDescriptor().getMessageTypes().get(50);
        internal_static_CMsgShortcutAppIds_descriptor = descriptor66;
        internal_static_CMsgShortcutAppIds_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor66, new String[]{"Appids"});
        Descriptors.Descriptor descriptor67 = getDescriptor().getMessageTypes().get(51);
        internal_static_CMsgMonitorInfo_descriptor = descriptor67;
        internal_static_CMsgMonitorInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor67, new String[]{"SelectedDisplayName", "Monitors"});
        Descriptors.Descriptor descriptor68 = descriptor67.getNestedTypes().get(0);
        internal_static_CMsgMonitorInfo_MonitorInfo_descriptor = descriptor68;
        internal_static_CMsgMonitorInfo_MonitorInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor68, new String[]{"MonitorDeviceName", "MonitorDisplayName"});
        Descriptors.Descriptor descriptor69 = getDescriptor().getMessageTypes().get(52);
        internal_static_CMsgGenerateSystemReportReply_descriptor = descriptor69;
        internal_static_CMsgGenerateSystemReportReply_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor69, new String[]{"ReportId"});
        Descriptors.Descriptor descriptor70 = getDescriptor().getMessageTypes().get(53);
        internal_static_CMsgWebUITransportInfo_descriptor = descriptor70;
        internal_static_CMsgWebUITransportInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor70, new String[]{"Port", "AuthKey"});
        Descriptors.Descriptor descriptor71 = getDescriptor().getMessageTypes().get(54);
        internal_static_CMsgWebUITransportFailure_descriptor = descriptor71;
        internal_static_CMsgWebUITransportFailure_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor71, new String[]{"ConnectCount"});
        Descriptors.Descriptor descriptor72 = getDescriptor().getMessageTypes().get(55);
        internal_static_CMsgClientShaderHitCacheEntry_descriptor = descriptor72;
        internal_static_CMsgClientShaderHitCacheEntry_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor72, new String[]{"KeySha", "CodeSha", "TimeLastReported"});
        Descriptors.Descriptor descriptor73 = getDescriptor().getMessageTypes().get(56);
        internal_static_CMsgClientShaderHitCache_descriptor = descriptor73;
        internal_static_CMsgClientShaderHitCache_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor73, new String[]{"Entries"});
        descriptor.resolveAllFeaturesImmutable();
        Enums.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum ECloudPendingRemoteOperation implements ProtocolMessageEnum {
        k_ECloudPendingRemoteOperationNone(0),
        k_ECloudPendingRemoteOperationAppSessionActive(1),
        k_ECloudPendingRemoteOperationUploadInProgress(2),
        k_ECloudPendingRemoteOperationUploadPending(3),
        k_ECloudPendingRemoteOperationAppSessionSuspended(4);

        private static final ECloudPendingRemoteOperation[] VALUES;
        private static final Internal.EnumLiteMap<ECloudPendingRemoteOperation> internalValueMap;
        public static final int k_ECloudPendingRemoteOperationAppSessionActive_VALUE = 1;
        public static final int k_ECloudPendingRemoteOperationAppSessionSuspended_VALUE = 4;
        public static final int k_ECloudPendingRemoteOperationNone_VALUE = 0;
        public static final int k_ECloudPendingRemoteOperationUploadInProgress_VALUE = 2;
        public static final int k_ECloudPendingRemoteOperationUploadPending_VALUE = 3;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ECloudPendingRemoteOperation.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ECloudPendingRemoteOperation>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.ECloudPendingRemoteOperation.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ECloudPendingRemoteOperation findValueByNumber(int i) {
                    return ECloudPendingRemoteOperation.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ECloudPendingRemoteOperation valueOf(int i) {
            return forNumber(i);
        }

        public static ECloudPendingRemoteOperation forNumber(int i) {
            if (i == 0) {
                return k_ECloudPendingRemoteOperationNone;
            }
            if (i == 1) {
                return k_ECloudPendingRemoteOperationAppSessionActive;
            }
            if (i == 2) {
                return k_ECloudPendingRemoteOperationUploadInProgress;
            }
            if (i == 3) {
                return k_ECloudPendingRemoteOperationUploadPending;
            }
            if (i != 4) {
                return null;
            }
            return k_ECloudPendingRemoteOperationAppSessionSuspended;
        }

        public static Internal.EnumLiteMap<ECloudPendingRemoteOperation> internalGetValueMap() {
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
            return SteammessagesClientObjects.getDescriptor().getEnumTypes().get(0);
        }

        public static ECloudPendingRemoteOperation valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ECloudPendingRemoteOperation(int i) {
            this.value = i;
        }
    }

    public static final class CCloud_PendingRemoteOperation extends GeneratedMessage implements CCloud_PendingRemoteOperationOrBuilder {
        public static final int CLIENT_ID_FIELD_NUMBER = 3;
        private static final CCloud_PendingRemoteOperation DEFAULT_INSTANCE;
        public static final int DEVICE_TYPE_FIELD_NUMBER = 6;
        public static final int MACHINE_NAME_FIELD_NUMBER = 2;
        public static final int OPERATION_FIELD_NUMBER = 1;
        public static final int OS_TYPE_FIELD_NUMBER = 5;
        private static final Parser<CCloud_PendingRemoteOperation> PARSER;
        public static final int TIME_LAST_UPDATED_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientId_;
        private int deviceType_;
        private volatile Object machineName_;
        private byte memoizedIsInitialized;
        private int operation_;
        private int osType_;
        private int timeLastUpdated_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CCloud_PendingRemoteOperation.class.getName());
            DEFAULT_INSTANCE = new CCloud_PendingRemoteOperation();
            PARSER = new AbstractParser<CCloud_PendingRemoteOperation>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperation.1
                @Override // com.google.protobuf.Parser
                public CCloud_PendingRemoteOperation parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CCloud_PendingRemoteOperation.newBuilder();
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

        private CCloud_PendingRemoteOperation(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.operation_ = 0;
            this.machineName_ = "";
            this.clientId_ = 0L;
            this.timeLastUpdated_ = 0;
            this.osType_ = 0;
            this.deviceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CCloud_PendingRemoteOperation() {
            this.operation_ = 0;
            this.machineName_ = "";
            this.clientId_ = 0L;
            this.timeLastUpdated_ = 0;
            this.osType_ = 0;
            this.deviceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.operation_ = 0;
            this.machineName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientObjects.internal_static_CCloud_PendingRemoteOperation_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientObjects.internal_static_CCloud_PendingRemoteOperation_fieldAccessorTable.ensureFieldAccessorsInitialized(CCloud_PendingRemoteOperation.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public boolean hasOperation() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public ECloudPendingRemoteOperation getOperation() {
            ECloudPendingRemoteOperation eCloudPendingRemoteOperationForNumber = ECloudPendingRemoteOperation.forNumber(this.operation_);
            return eCloudPendingRemoteOperationForNumber == null ? ECloudPendingRemoteOperation.k_ECloudPendingRemoteOperationNone : eCloudPendingRemoteOperationForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public boolean hasMachineName() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public ByteString getMachineNameBytes() {
            Object obj = this.machineName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.machineName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public boolean hasClientId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public long getClientId() {
            return this.clientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public boolean hasTimeLastUpdated() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public int getTimeLastUpdated() {
            return this.timeLastUpdated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public boolean hasOsType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public int getOsType() {
            return this.osType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
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
                codedOutputStream.writeEnum(1, this.operation_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.machineName_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.clientId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.timeLastUpdated_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.osType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt32(6, this.deviceType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeEnumSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeEnumSize(1, this.operation_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeEnumSize += GeneratedMessage.computeStringSize(2, this.machineName_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeEnumSize += CodedOutputStream.computeUInt64Size(3, this.clientId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeEnumSize += CodedOutputStream.computeUInt32Size(4, this.timeLastUpdated_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeEnumSize += CodedOutputStream.computeInt32Size(5, this.osType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeEnumSize += CodedOutputStream.computeInt32Size(6, this.deviceType_);
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
            if (!(obj instanceof CCloud_PendingRemoteOperation)) {
                return super.equals(obj);
            }
            CCloud_PendingRemoteOperation cCloud_PendingRemoteOperation = (CCloud_PendingRemoteOperation) obj;
            if (hasOperation() != cCloud_PendingRemoteOperation.hasOperation()) {
                return false;
            }
            if ((hasOperation() && this.operation_ != cCloud_PendingRemoteOperation.operation_) || hasMachineName() != cCloud_PendingRemoteOperation.hasMachineName()) {
                return false;
            }
            if ((hasMachineName() && !getMachineName().equals(cCloud_PendingRemoteOperation.getMachineName())) || hasClientId() != cCloud_PendingRemoteOperation.hasClientId()) {
                return false;
            }
            if ((hasClientId() && getClientId() != cCloud_PendingRemoteOperation.getClientId()) || hasTimeLastUpdated() != cCloud_PendingRemoteOperation.hasTimeLastUpdated()) {
                return false;
            }
            if ((hasTimeLastUpdated() && getTimeLastUpdated() != cCloud_PendingRemoteOperation.getTimeLastUpdated()) || hasOsType() != cCloud_PendingRemoteOperation.hasOsType()) {
                return false;
            }
            if ((!hasOsType() || getOsType() == cCloud_PendingRemoteOperation.getOsType()) && hasDeviceType() == cCloud_PendingRemoteOperation.hasDeviceType()) {
                return (!hasDeviceType() || getDeviceType() == cCloud_PendingRemoteOperation.getDeviceType()) && getUnknownFields().equals(cCloud_PendingRemoteOperation.getUnknownFields());
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
            if (hasOperation()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + this.operation_;
            }
            if (hasMachineName()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMachineName().hashCode();
            }
            if (hasClientId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getClientId());
            }
            if (hasTimeLastUpdated()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getTimeLastUpdated();
            }
            if (hasOsType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getOsType();
            }
            if (hasDeviceType()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getDeviceType();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CCloud_PendingRemoteOperation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CCloud_PendingRemoteOperation parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CCloud_PendingRemoteOperation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CCloud_PendingRemoteOperation parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CCloud_PendingRemoteOperation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CCloud_PendingRemoteOperation parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CCloud_PendingRemoteOperation parseFrom(InputStream inputStream) throws IOException {
            return (CCloud_PendingRemoteOperation) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CCloud_PendingRemoteOperation parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CCloud_PendingRemoteOperation) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CCloud_PendingRemoteOperation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CCloud_PendingRemoteOperation) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CCloud_PendingRemoteOperation parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CCloud_PendingRemoteOperation) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CCloud_PendingRemoteOperation parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CCloud_PendingRemoteOperation) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CCloud_PendingRemoteOperation parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CCloud_PendingRemoteOperation) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CCloud_PendingRemoteOperation cCloud_PendingRemoteOperation) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cCloud_PendingRemoteOperation);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CCloud_PendingRemoteOperationOrBuilder {
            private int bitField0_;
            private long clientId_;
            private int deviceType_;
            private Object machineName_;
            private int operation_;
            private int osType_;
            private int timeLastUpdated_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientObjects.internal_static_CCloud_PendingRemoteOperation_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientObjects.internal_static_CCloud_PendingRemoteOperation_fieldAccessorTable.ensureFieldAccessorsInitialized(CCloud_PendingRemoteOperation.class, Builder.class);
            }

            private Builder() {
                this.operation_ = 0;
                this.machineName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.operation_ = 0;
                this.machineName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.operation_ = 0;
                this.machineName_ = "";
                this.clientId_ = 0L;
                this.timeLastUpdated_ = 0;
                this.osType_ = 0;
                this.deviceType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientObjects.internal_static_CCloud_PendingRemoteOperation_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CCloud_PendingRemoteOperation getDefaultInstanceForType() {
                return CCloud_PendingRemoteOperation.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CCloud_PendingRemoteOperation build() {
                CCloud_PendingRemoteOperation cCloud_PendingRemoteOperationBuildPartial = buildPartial();
                if (cCloud_PendingRemoteOperationBuildPartial.isInitialized()) {
                    return cCloud_PendingRemoteOperationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cCloud_PendingRemoteOperationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CCloud_PendingRemoteOperation buildPartial() {
                CCloud_PendingRemoteOperation cCloud_PendingRemoteOperation = new CCloud_PendingRemoteOperation(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cCloud_PendingRemoteOperation);
                }
                onBuilt();
                return cCloud_PendingRemoteOperation;
            }

            private void buildPartial0(CCloud_PendingRemoteOperation cCloud_PendingRemoteOperation) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cCloud_PendingRemoteOperation.operation_ = this.operation_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cCloud_PendingRemoteOperation.machineName_ = this.machineName_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cCloud_PendingRemoteOperation.clientId_ = this.clientId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cCloud_PendingRemoteOperation.timeLastUpdated_ = this.timeLastUpdated_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cCloud_PendingRemoteOperation.osType_ = this.osType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cCloud_PendingRemoteOperation.deviceType_ = this.deviceType_;
                    i |= 32;
                }
                cCloud_PendingRemoteOperation.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CCloud_PendingRemoteOperation) {
                    return mergeFrom((CCloud_PendingRemoteOperation) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CCloud_PendingRemoteOperation cCloud_PendingRemoteOperation) {
                if (cCloud_PendingRemoteOperation == CCloud_PendingRemoteOperation.getDefaultInstance()) {
                    return this;
                }
                if (cCloud_PendingRemoteOperation.hasOperation()) {
                    setOperation(cCloud_PendingRemoteOperation.getOperation());
                }
                if (cCloud_PendingRemoteOperation.hasMachineName()) {
                    this.machineName_ = cCloud_PendingRemoteOperation.machineName_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cCloud_PendingRemoteOperation.hasClientId()) {
                    setClientId(cCloud_PendingRemoteOperation.getClientId());
                }
                if (cCloud_PendingRemoteOperation.hasTimeLastUpdated()) {
                    setTimeLastUpdated(cCloud_PendingRemoteOperation.getTimeLastUpdated());
                }
                if (cCloud_PendingRemoteOperation.hasOsType()) {
                    setOsType(cCloud_PendingRemoteOperation.getOsType());
                }
                if (cCloud_PendingRemoteOperation.hasDeviceType()) {
                    setDeviceType(cCloud_PendingRemoteOperation.getDeviceType());
                }
                mergeUnknownFields(cCloud_PendingRemoteOperation.getUnknownFields());
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
                                    if (ECloudPendingRemoteOperation.forNumber(i) == null) {
                                        mergeUnknownVarintField(1, i);
                                    } else {
                                        this.operation_ = i;
                                        this.bitField0_ |= 1;
                                    }
                                } else if (tag == 18) {
                                    this.machineName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.clientId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.timeLastUpdated_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.osType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.deviceType_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public boolean hasOperation() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public ECloudPendingRemoteOperation getOperation() {
                ECloudPendingRemoteOperation eCloudPendingRemoteOperationForNumber = ECloudPendingRemoteOperation.forNumber(this.operation_);
                return eCloudPendingRemoteOperationForNumber == null ? ECloudPendingRemoteOperation.k_ECloudPendingRemoteOperationNone : eCloudPendingRemoteOperationForNumber;
            }

            public Builder setOperation(ECloudPendingRemoteOperation eCloudPendingRemoteOperation) {
                eCloudPendingRemoteOperation.getClass();
                this.bitField0_ |= 1;
                this.operation_ = eCloudPendingRemoteOperation.getNumber();
                onChanged();
                return this;
            }

            public Builder clearOperation() {
                this.bitField0_ &= -2;
                this.operation_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public boolean hasMachineName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
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
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMachineName() {
                this.machineName_ = CCloud_PendingRemoteOperation.getDefaultInstance().getMachineName();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setMachineNameBytes(ByteString byteString) {
                byteString.getClass();
                this.machineName_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public boolean hasClientId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public long getClientId() {
                return this.clientId_;
            }

            public Builder setClientId(long j) {
                this.clientId_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearClientId() {
                this.bitField0_ &= -5;
                this.clientId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public boolean hasTimeLastUpdated() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public int getTimeLastUpdated() {
                return this.timeLastUpdated_;
            }

            public Builder setTimeLastUpdated(int i) {
                this.timeLastUpdated_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearTimeLastUpdated() {
                this.bitField0_ &= -9;
                this.timeLastUpdated_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public boolean hasOsType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects.CCloud_PendingRemoteOperationOrBuilder
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
        }

        public static CCloud_PendingRemoteOperation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CCloud_PendingRemoteOperation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CCloud_PendingRemoteOperation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CCloud_PendingRemoteOperation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }
}
