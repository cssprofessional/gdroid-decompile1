package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RuntimeVersion;

/* JADX INFO: loaded from: classes.dex */
public final class Enums {
    private static Descriptors.FileDescriptor descriptor;

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private Enums() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Enums.class.getName());
        Descriptors.FileDescriptor fileDescriptorInternalBuildGeneratedFileFrom = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n8in/dragonbra/javasteam/protobufs/steamclient/enums.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto*\u0080\n\n\u0017EPublishedFileQueryType\u0012)\n%k_PublishedFileQueryType_RankedByVote\u0010\u0000\u00124\n0k_PublishedFileQueryType_RankedByPublicationDate\u0010\u0001\u0012B\n>k_PublishedFileQueryType_AcceptedForGameRankedByAcceptanceDate\u0010\u0002\u0012*\n&k_PublishedFileQueryType_RankedByTrend\u0010\u0003\u0012F\nBk_PublishedFileQueryType_FavoritedByFriendsRankedByPublicationDate\u0010\u0004\u0012D\n@k_PublishedFileQueryType_CreatedByFriendsRankedByPublicationDate\u0010\u0005\u00125\n1k_PublishedFileQueryType_RankedByNumTimesReported\u0010\u0006\u0012J\nFk_PublishedFileQueryType_CreatedByFollowedUsersRankedByPublicationDate\u0010\u0007\u0012(\n$k_PublishedFileQueryType_NotYetRated\u0010\b\u0012=\n9k_PublishedFileQueryType_RankedByTotalUniqueSubscriptions\u0010\t\u00122\n.k_PublishedFileQueryType_RankedByTotalVotesAsc\u0010\n\u0012,\n(k_PublishedFileQueryType_RankedByVotesUp\u0010\u000b\u0012/\n+k_PublishedFileQueryType_RankedByTextSearch\u0010\f\u00122\n.k_PublishedFileQueryType_RankedByPlaytimeTrend\u0010\r\u00122\n.k_PublishedFileQueryType_RankedByTotalPlaytime\u0010\u000e\u00129\n5k_PublishedFileQueryType_RankedByAveragePlaytimeTrend\u0010\u000f\u0012<\n8k_PublishedFileQueryType_RankedByLifetimeAveragePlaytime\u0010\u0010\u0012:\n6k_PublishedFileQueryType_RankedByPlaytimeSessionsTrend\u0010\u0011\u0012=\n9k_PublishedFileQueryType_RankedByLifetimePlaytimeSessions\u0010\u0012\u0012?\n;k_PublishedFileQueryType_RankedByInappropriateContentRating\u0010\u0013\u00124\n0k_PublishedFileQueryType_RankedByBanContentCheck\u0010\u0014\u00124\n0k_PublishedFileQueryType_RankedByLastUpdatedDate\u0010\u0015*¼\u0001\n#EPublishedFileInappropriateProvider\u00121\n-k_EPublishedFileInappropriateProvider_Invalid\u0010\u0000\u00120\n,k_EPublishedFileInappropriateProvider_Google\u0010\u0001\u00120\n,k_EPublishedFileInappropriateProvider_Amazon\u0010\u0002*Õ\u0002\n!EPublishedFileInappropriateResult\u00122\n.k_EPublishedFileInappropriateResult_NotScanned\u0010\u0000\u00124\n0k_EPublishedFileInappropriateResult_VeryUnlikely\u0010\u0001\u00120\n,k_EPublishedFileInappropriateResult_Unlikely\u0010\u001e\u00120\n,k_EPublishedFileInappropriateResult_Possible\u00102\u0012.\n*k_EPublishedFileInappropriateResult_Likely\u0010K\u00122\n.k_EPublishedFileInappropriateResult_VeryLikely\u0010d*±\u0003\n\u0011EPersonaStateFlag\u0012'\n#k_EPersonaStateFlag_HasRichPresence\u0010\u0001\u0012&\n\"k_EPersonaStateFlag_InJoinableGame\u0010\u0002\u0012\u001e\n\u001ak_EPersonaStateFlag_Golden\u0010\u0004\u0012*\n&k_EPersonaStateFlag_RemotePlayTogether\u0010\b\u0012&\n!k_EPersonaStateFlag_ClientTypeWeb\u0010\u0080\u0002\u0012)\n$k_EPersonaStateFlag_ClientTypeMobile\u0010\u0080\u0004\u0012*\n%k_EPersonaStateFlag_ClientTypeTenfoot\u0010\u0080\b\u0012%\n k_EPersonaStateFlag_ClientTypeVR\u0010\u0080\u0010\u0012*\n%k_EPersonaStateFlag_LaunchTypeGamepad\u0010\u0080 \u0012-\n(k_EPersonaStateFlag_LaunchTypeCompatTool\u0010\u0080@*°\u0002\n\u0015EContentCheckProvider\u0012#\n\u001fk_EContentCheckProvider_Invalid\u0010\u0000\u0012-\n)k_EContentCheckProvider_Google_DEPRECATED\u0010\u0001\u0012\"\n\u001ek_EContentCheckProvider_Amazon\u0010\u0002\u0012!\n\u001dk_EContentCheckProvider_Local\u0010\u0003\u0012*\n&k_EContentCheckProvider_GoogleVertexAI\u0010\u0004\u0012(\n$k_EContentCheckProvider_GoogleGemini\u0010\u0005\u0012&\n\"k_EContentCheckProvider_SteamLearn\u0010\u0006*\u0093\t\n\u0019EProfileCustomizationType\u0012&\n\"k_EProfileCustomizationTypeInvalid\u0010\u0000\u00126\n2k_EProfileCustomizationTypeRareAchievementShowcase\u0010\u0001\u0012,\n(k_EProfileCustomizationTypeGameCollector\u0010\u0002\u0012+\n'k_EProfileCustomizationTypeItemShowcase\u0010\u0003\u0012,\n(k_EProfileCustomizationTypeTradeShowcase\u0010\u0004\u0012%\n!k_EProfileCustomizationTypeBadges\u0010\u0005\u0012+\n'k_EProfileCustomizationTypeFavoriteGame\u0010\u0006\u00121\n-k_EProfileCustomizationTypeScreenshotShowcase\u0010\u0007\u0012)\n%k_EProfileCustomizationTypeCustomText\u0010\b\u0012,\n(k_EProfileCustomizationTypeFavoriteGroup\u0010\t\u0012-\n)k_EProfileCustomizationTypeRecommendation\u0010\n\u0012+\n'k_EProfileCustomizationTypeWorkshopItem\u0010\u000b\u0012)\n%k_EProfileCustomizationTypeMyWorkshop\u0010\f\u0012.\n*k_EProfileCustomizationTypeArtworkShowcase\u0010\r\u0012,\n(k_EProfileCustomizationTypeVideoShowcase\u0010\u000e\u0012%\n!k_EProfileCustomizationTypeGuides\u0010\u000f\u0012'\n#k_EProfileCustomizationTypeMyGuides\u0010\u0010\u0012+\n'k_EProfileCustomizationTypeAchievements\u0010\u0011\u0012)\n%k_EProfileCustomizationTypeGreenlight\u0010\u0012\u0012+\n'k_EProfileCustomizationTypeMyGreenlight\u0010\u0013\u0012%\n!k_EProfileCustomizationTypeSalien\u0010\u0014\u00125\n1k_EProfileCustomizationTypeLoyaltyRewardReactions\u0010\u0015\u00124\n0k_EProfileCustomizationTypeSingleArtworkShowcase\u0010\u0016\u00128\n4k_EProfileCustomizationTypeAchievementsCompletionist\u0010\u0017\u0012%\n!k_EProfileCustomizationTypeReplay\u0010\u0018*È\u0001\n\u001bEPublishedFileStorageSystem\u0012(\n$k_EPublishedFileStorageSystemInvalid\u0010\u0000\u0012,\n(k_EPublishedFileStorageSystemLegacyCloud\u0010\u0001\u0012&\n\"k_EPublishedFileStorageSystemDepot\u0010\u0002\u0012)\n%k_EPublishedFileStorageSystemUGCCloud\u0010\u0003*\u0097\u0001\n\u0019ECloudStoragePersistState\u0012(\n$k_ECloudStoragePersistStatePersisted\u0010\u0000\u0012(\n$k_ECloudStoragePersistStateForgotten\u0010\u0001\u0012&\n\"k_ECloudStoragePersistStateDeleted\u0010\u0002*è\u0001\n\u0012ESDCardFormatStage\u0012 \n\u001ck_ESDCardFormatStage_Invalid\u0010\u0000\u0012!\n\u001dk_ESDCardFormatStage_Starting\u0010\u0001\u0012 \n\u001ck_ESDCardFormatStage_Testing\u0010\u0002\u0012!\n\u001dk_ESDCardFormatStage_Rescuing\u0010\u0003\u0012#\n\u001fk_ESDCardFormatStage_Formatting\u0010\u0004\u0012#\n\u001fk_ESDCardFormatStage_Finalizing\u0010\u0005*\u0095\u0002\n\u0013EStorageFormatStage\u0012!\n\u001dk_EStorageFormatStage_Invalid\u0010\u0000\u0012$\n k_EStorageFormatStage_NotRunning\u0010\u0001\u0012\"\n\u001ek_EStorageFormatStage_Starting\u0010\u0002\u0012!\n\u001dk_EStorageFormatStage_Testing\u0010\u0003\u0012\"\n\u001ek_EStorageFormatStage_Rescuing\u0010\u0004\u0012$\n k_EStorageFormatStage_Formatting\u0010\u0005\u0012$\n k_EStorageFormatStage_Finalizing\u0010\u0006*\u0084\u0001\n\u0015ESystemFanControlMode\u0012\"\n\u001ek_SystemFanControlMode_Invalid\u0010\u0000\u0012#\n\u001fk_SystemFanControlMode_Disabled\u0010\u0001\u0012\"\n\u001ek_SystemFanControlMode_Default\u0010\u0002*ª\u0001\n\u0014EStartupMovieVariant\u0012\"\n\u001ek_EStartupMovieVariant_Invalid\u0010\u0000\u0012\"\n\u001ek_EStartupMovieVariant_Generic\u0010\u0001\u0012#\n\u001fk_EStartupMovieVariant_DeckBlue\u0010\u0002\u0012%\n!k_EStartupMovieVariant_DeckOrange\u0010\u0003*\u008b\u0001\n\u0013EColorGamutLabelSet\u0012 \n\u001ck_ColorGamutLabelSet_Default\u0010\u0000\u0012$\n k_ColorGamutLabelSet_sRGB_Native\u0010\u0001\u0012,\n(k_ColorGamutLabelSet_Native_sRGB_Boosted\u0010\u0002*}\n\u0014EWindowStackingOrder\u0012\"\n\u001ek_EWindowStackingOrder_Invalid\u0010\u0000\u0012\u001e\n\u001ak_EWindowStackingOrder_Top\u0010\u0001\u0012!\n\u001dk_EWindowStackingOrder_Bottom\u0010\u0002*À\u0003\n\u0014EBluetoothDeviceType\u0012!\n\u001dk_BluetoothDeviceType_Invalid\u0010\u0000\u0012!\n\u001dk_BluetoothDeviceType_Unknown\u0010\u0001\u0012\u001f\n\u001bk_BluetoothDeviceType_Phone\u0010\u0002\u0012\"\n\u001ek_BluetoothDeviceType_Computer\u0010\u0003\u0012!\n\u001dk_BluetoothDeviceType_Headset\u0010\u0004\u0012$\n k_BluetoothDeviceType_Headphones\u0010\u0005\u0012\"\n\u001ek_BluetoothDeviceType_Speakers\u0010\u0006\u0012$\n k_BluetoothDeviceType_OtherAudio\u0010\u0007\u0012\u001f\n\u001bk_BluetoothDeviceType_Mouse\u0010\b\u0012\"\n\u001ek_BluetoothDeviceType_Joystick\u0010\t\u0012!\n\u001dk_BluetoothDeviceType_Gamepad\u0010\n\u0012\"\n\u001ek_BluetoothDeviceType_Keyboard\u0010\u000b*\u0080\u0001\n\u0015ESystemAudioDirection\u0012\"\n\u001ek_SystemAudioDirection_Invalid\u0010\u0000\u0012 \n\u001ck_SystemAudioDirection_Input\u0010\u0001\u0012!\n\u001dk_SystemAudioDirection_Output\u0010\u0002*ñ\u0002\n\u0013ESystemAudioChannel\u0012 \n\u001ck_SystemAudioChannel_Invalid\u0010\u0000\u0012#\n\u001fk_SystemAudioChannel_Aggregated\u0010\u0001\u0012\"\n\u001ek_SystemAudioChannel_FrontLeft\u0010\u0002\u0012#\n\u001fk_SystemAudioChannel_FrontRight\u0010\u0003\u0012\u001c\n\u0018k_SystemAudioChannel_LFE\u0010\u0004\u0012!\n\u001dk_SystemAudioChannel_BackLeft\u0010\u0005\u0012\"\n\u001ek_SystemAudioChannel_BackRight\u0010\u0006\u0012$\n k_SystemAudioChannel_FrontCenter\u0010\u0007\u0012 \n\u001ck_SystemAudioChannel_Unknown\u0010\b\u0012\u001d\n\u0019k_SystemAudioChannel_Mono\u0010\t*É\u0001\n\u0014ESystemAudioPortType\u0012!\n\u001dk_SystemAudioPortType_Invalid\u0010\u0000\u0012!\n\u001dk_SystemAudioPortType_Unknown\u0010\u0001\u0012\"\n\u001ek_SystemAudioPortType_Audio32f\u0010\u0002\u0012 \n\u001ck_SystemAudioPortType_Midi8b\u0010\u0003\u0012%\n!k_SystemAudioPortType_Video32RGBA\u0010\u0004*\u0090\u0001\n\u0019ESystemAudioPortDirection\u0012&\n\"k_SystemAudioPortDirection_Invalid\u0010\u0000\u0012$\n k_SystemAudioPortDirection_Input\u0010\u0001\u0012%\n!k_SystemAudioPortDirection_Output\u0010\u0002*\u0083\u0001\n\u0013ESystemServiceState\u0012%\n!k_ESystemServiceState_Unavailable\u0010\u0000\u0012\"\n\u001ek_ESystemServiceState_Disabled\u0010\u0001\u0012!\n\u001dk_ESystemServiceState_Enabled\u0010\u0002*á\u0001\n\u0019EGraphicsPerfOverlayLevel\u0012&\n\"k_EGraphicsPerfOverlayLevel_Hidden\u0010\u0000\u0012%\n!k_EGraphicsPerfOverlayLevel_Basic\u0010\u0001\u0012&\n\"k_EGraphicsPerfOverlayLevel_Medium\u0010\u0002\u0012$\n k_EGraphicsPerfOverlayLevel_Full\u0010\u0003\u0012'\n#k_EGraphicsPerfOverlayLevel_Minimal\u0010\u0004*å\u0001\n\u0014EGPUPerformanceLevel\u0012\"\n\u001ek_EGPUPerformanceLevel_Invalid\u0010\u0000\u0012\u001f\n\u001bk_EGPUPerformanceLevel_Auto\u0010\u0001\u0012!\n\u001dk_EGPUPerformanceLevel_Manual\u0010\u0002\u0012\u001e\n\u001ak_EGPUPerformanceLevel_Low\u0010\u0003\u0012\u001f\n\u001bk_EGPUPerformanceLevel_High\u0010\u0004\u0012$\n k_EGPUPerformanceLevel_Profiling\u0010\u0005*È\u0001\n\u0013ESplitScalingFilter\u0012!\n\u001dk_ESplitScalingFilter_Invalid\u0010\u0000\u0012 \n\u001ck_ESplitScalingFilter_Linear\u0010\u0001\u0012!\n\u001dk_ESplitScalingFilter_Nearest\u0010\u0002\u0012\u001f\n\u001bk_ESplitScalingFilter_Sharp\u0010\u0003\u0012(\n$k_ESplitScalingFilter_NIS_Deprecated\u0010\u0004*Ý\u0001\n\u0013ESplitScalingScaler\u0012!\n\u001dk_ESplitScalingScaler_Invalid\u0010\u0000\u0012\u001e\n\u001ak_ESplitScalingScaler_Auto\u0010\u0001\u0012!\n\u001dk_ESplitScalingScaler_Integer\u0010\u0002\u0012\u001d\n\u0019k_ESplitScalingScaler_Fit\u0010\u0003\u0012\u001e\n\u001ak_ESplitScalingScaler_Fill\u0010\u0004\u0012!\n\u001dk_ESplitScalingScaler_Stretch\u0010\u0005*}\n\u0012EGamescopeBlurMode\u0012!\n\u001dk_EGamescopeBlurMode_Disabled\u0010\u0000\u0012#\n\u001fk_EGamescopeBlurMode_IfOccluded\u0010\u0001\u0012\u001f\n\u001bk_EGamescopeBlurMode_Always\u0010\u0002*Ä\u0001\n\nESLSHelper\u0012\u0018\n\u0014k_ESLSHelper_Invalid\u0010\u0000\u0012\u0019\n\u0015k_ESLSHelper_Minidump\u0010\u0001\u0012\u0016\n\u0012k_ESLSHelper_Kdump\u0010\u0002\u0012\u0018\n\u0014k_ESLSHelper_Journal\u0010\u0003\u0012\u0014\n\u0010k_ESLSHelper_Gpu\u0010\u0004\u0012\u001b\n\u0017k_ESLSHelper_SystemInfo\u0010\u0005\u0012\u001c\n\u0018k_ESLSHelper_Devcoredump\u0010\u0006*Å\u0001\n\u0011EHDRVisualization\u0012\u001c\n\u0018k_EHDRVisualization_None\u0010\u0000\u0012\u001f\n\u001bk_EHDRVisualization_Heatmap\u0010\u0001\u0012 \n\u001ck_EHDRVisualization_Analysis\u0010\u0002\u0012'\n#k_EHDRVisualization_HeatmapExtended\u0010\u0003\u0012&\n\"k_EHDRVisualization_HeatmapClassic\u0010\u0004*\u0081\u0001\n\u0013EHDRToneMapOperator\u0012!\n\u001dk_EHDRToneMapOperator_Invalid\u0010\u0000\u0012#\n\u001fk_EHDRToneMapOperator_Uncharted\u0010\u0001\u0012\"\n\u001ek_EHDRToneMapOperator_Reinhard\u0010\u0002*|\n\fECPUGovernor\u0012\u001a\n\u0016k_ECPUGovernor_Invalid\u0010\u0000\u0012\u0017\n\u0013k_ECPUGovernor_Perf\u0010\u0001\u0012\u001c\n\u0018k_ECPUGovernor_Powersave\u0010\u0002\u0012\u0019\n\u0015k_ECPUGovernor_Manual\u0010\u0003*â\u0001\n\fEUpdaterType\u0012\u001a\n\u0016k_EUpdaterType_Invalid\u0010\u0000\u0012\u0019\n\u0015k_EUpdaterType_Client\u0010\u0001\u0012\u0015\n\u0011k_EUpdaterType_OS\u0010\u0002\u0012\u0017\n\u0013k_EUpdaterType_BIOS\u0010\u0003\u0012\u001d\n\u0019k_EUpdaterType_Aggregated\u0010\u0004\u0012\u0018\n\u0014k_EUpdaterType_Test1\u0010\u0005\u0012\u0018\n\u0014k_EUpdaterType_Test2\u0010\u0006\u0012\u0018\n\u0014k_EUpdaterType_Dummy\u0010\u0007*\u0097\u0002\n\rEUpdaterState\u0012\u001b\n\u0017k_EUpdaterState_Invalid\u0010\u0000\u0012\u001c\n\u0018k_EUpdaterState_UpToDate\u0010\u0002\u0012\u001c\n\u0018k_EUpdaterState_Checking\u0010\u0003\u0012\u001d\n\u0019k_EUpdaterState_Available\u0010\u0004\u0012\u001c\n\u0018k_EUpdaterState_Applying\u0010\u0005\u0012(\n$k_EUpdaterState_ClientRestartPending\u0010\u0006\u0012(\n$k_EUpdaterState_SystemRestartPending\u0010\u0007\u0012\u001c\n\u0018k_EUpdaterState_RollBack\u0010\b*á\u0001\n\u0018EStorageBlockContentType\u0012&\n\"k_EStorageBlockContentType_Invalid\u0010\u0000\u0012&\n\"k_EStorageBlockContentType_Unknown\u0010\u0001\u0012)\n%k_EStorageBlockContentType_FileSystem\u0010\u0002\u0012%\n!k_EStorageBlockContentType_Crypto\u0010\u0003\u0012#\n\u001fk_EStorageBlockContentType_Raid\u0010\u0004*Ã\u0001\n\u001bEStorageBlockFileSystemType\u0012)\n%k_EStorageBlockFileSystemType_Invalid\u0010\u0000\u0012)\n%k_EStorageBlockFileSystemType_Unknown\u0010\u0001\u0012&\n\"k_EStorageBlockFileSystemType_VFat\u0010\u0002\u0012&\n\"k_EStorageBlockFileSystemType_Ext4\u0010\u0003*Ð\u0001\n\u0016EStorageDriveMediaType\u0012$\n k_EStorageDriveMediaType_Invalid\u0010\u0000\u0012$\n k_EStorageDriveMediaType_Unknown\u0010\u0001\u0012 \n\u001ck_EStorageDriveMediaType_HDD\u0010\u0002\u0012 \n\u001ck_EStorageDriveMediaType_SSD\u0010\u0003\u0012&\n\"k_EStorageDriveMediaType_Removable\u0010\u0004*³\u0001\n\u001fESystemDisplayCompatibilityMode\u0012-\n)k_ESystemDisplayCompatibilityMode_Invalid\u0010\u0000\u0012*\n&k_ESystemDisplayCompatibilityMode_None\u0010\u0001\u00125\n1k_ESystemDisplayCompatibilityMode_MinimalBandwith\u0010\u0002*\u00ad\u0001\n\u001dESteamOSCompatibilityCategory\u0012+\n'k_ESteamOSCompatibilityCategory_Unknown\u0010\u0000\u0012/\n+k_ESteamOSCompatibilityCategory_Unsupported\u0010\u0001\u0012.\n*k_ESteamOSCompatibilityCategory_Compatible\u0010\u0002*\u008f\u0002\n&ESteamOSCompatibilityResultDisplayType\u00126\n2k_ESteamOSCompatibilityResultDisplayType_Invisible\u0010\u0000\u0012:\n6k_ESteamOSCompatibilityResultDisplayType_Informational\u0010\u0001\u00128\n4k_ESteamOSCompatibilityResultDisplayType_Unsupported\u0010\u0002\u00127\n3k_ESteamOSCompatibilityResultDisplayType_Compatible\u0010\u0003*ã\u0001\n\u001fESteamDeckCompatibilityCategory\u0012-\n)k_ESteamDeckCompatibilityCategory_Unknown\u0010\u0000\u00121\n-k_ESteamDeckCompatibilityCategory_Unsupported\u0010\u0001\u0012.\n*k_ESteamDeckCompatibilityCategory_Playable\u0010\u0002\u0012.\n*k_ESteamDeckCompatibilityCategory_Verified\u0010\u0003*Ð\u0002\n(ESteamDeckCompatibilityResultDisplayType\u00128\n4k_ESteamDeckCompatibilityResultDisplayType_Invisible\u0010\u0000\u0012<\n8k_ESteamDeckCompatibilityResultDisplayType_Informational\u0010\u0001\u0012:\n6k_ESteamDeckCompatibilityResultDisplayType_Unsupported\u0010\u0002\u00127\n3k_ESteamDeckCompatibilityResultDisplayType_Playable\u0010\u0003\u00127\n3k_ESteamDeckCompatibilityResultDisplayType_Verified\u0010\u0004*\u009a\u0002\n!ESteamDeckCompatibilityTestResult\u0012/\n+k_ESteamDeckCompatibilityTestResult_Invalid\u0010\u0000\u00125\n1k_ESteamDeckCompatibilityTestResult_NotApplicable\u0010\u0001\u0012,\n(k_ESteamDeckCompatibilityTestResult_Pass\u0010\u0002\u0012,\n(k_ESteamDeckCompatibilityTestResult_Fail\u0010\u0003\u00121\n-k_ESteamDeckCompatibilityTestResult_FailMinor\u0010\u0004*w\n\bEACState\u0012\u0016\n\u0012k_EACState_Unknown\u0010\u0000\u0012\u001b\n\u0017k_EACState_Disconnected\u0010\u0001\u0012\u0018\n\u0014k_EACState_Connected\u0010\u0002\u0012\u001c\n\u0018k_EACState_ConnectedSlow\u0010\u0003*\u0085\u0001\n\rEBatteryState\u0012\u001b\n\u0017k_EBatteryState_Unknown\u0010\u0000\u0012\u001f\n\u001bk_EBatteryState_Discharging\u0010\u0001\u0012\u001c\n\u0018k_EBatteryState_Charging\u0010\u0002\u0012\u0018\n\u0014k_EBatteryState_Full\u0010\u0003*þ\u0001\n\tEOSBranch\u0012\u0017\n\u0013k_EOSBranch_Unknown\u0010\u0000\u0012\u0017\n\u0013k_EOSBranch_Release\u0010\u0001\u0012 \n\u001ck_EOSBranch_ReleaseCandidate\u0010\u0002\u0012\u0014\n\u0010k_EOSBranch_Beta\u0010\u0003\u0012\u001d\n\u0019k_EOSBranch_BetaCandidate\u0010\u0004\u0012\u0017\n\u0013k_EOSBranch_Preview\u0010\u0005\u0012 \n\u001ck_EOSBranch_PreviewCandidate\u0010\u0006\u0012\u0014\n\u0010k_EOSBranch_Main\u0010\u0007\u0012\u0017\n\u0013k_EOSBranch_Staging\u0010\b*Æ\u0003\n\u0011EBrowserGPUStatus\u0012\u001f\n\u001bk_EBrowserGPUStatus_Invalid\u0010\u0000\u0012\u001f\n\u001bk_EBrowserGPUStatus_Enabled\u0010\u0001\u0012'\n#k_EBrowserGPUStatus_DisabledUnknown\u0010\u0002\u0012*\n&k_EBrowserGPUStatus_DisabledCrashCount\u0010\u0004\u0012)\n%k_EBrowserGPUStatus_DisabledBlocklist\u0010\u0005\u0012)\n%k_EBrowserGPUStatus_DisabledJSRequest\u0010\u0006\u0012+\n'k_EBrowserGPUStatus_DisabledCommandLine\u0010\u0007\u0012-\n)k_EBrowserGPUStatus_DisabledRuntimeDetect\u0010\b\u00120\n,k_EBrowserGPUStatus_DisabledChildCommandLine\u0010\t\u00126\n2k_EBrowserGPUStatus_DisabledCompositingCommandLine\u0010\n*ã\u0004\n\u0015EBrowserFeatureStatus\u0012#\n\u001fk_EBrowserFeatureStatus_Invalid\u0010\u0000\u0012$\n k_EBrowserFeatureStatus_NotFound\u0010\u0001\u0012#\n\u001fk_EBrowserFeatureStatus_Unknown\u0010\u0002\u0012,\n(k_EBrowserFeatureStatus_DisabledSoftware\u0010\u0003\u0012'\n#k_EBrowserFeatureStatus_DisabledOff\u0010\u0004\u0012)\n%k_EBrowserFeatureStatus_DisabledOffOk\u0010\u0005\u0012/\n+k_EBrowserFeatureStatus_UnavailableSoftware\u0010\u0006\u0012*\n&k_EBrowserFeatureStatus_UnavailableOff\u0010\u0007\u0012,\n(k_EBrowserFeatureStatus_UnavailableOffOk\u0010\b\u0012+\n'k_EBrowserFeatureStatus_EnabledReadback\u0010\t\u0012(\n$k_EBrowserFeatureStatus_EnabledForce\u0010\n\u0012#\n\u001fk_EBrowserFeatureStatus_Enabled\u0010\u000b\u0012%\n!k_EBrowserFeatureStatus_EnabledOn\u0010\f\u0012*\n&k_EBrowserFeatureStatus_EnabledForceOn\u0010\r*\u009f\u0005\n\fEGpuDriverId\u0012\u001a\n\u0016k_EGpuDriverId_Invalid\u0010\u0000\u0012\u001a\n\u0016k_EGpuDriverId_Unknown\u0010\u0001\u0012!\n\u001dk_EGpuDriverId_AmdProprietary\u0010\u0002\u0012 \n\u001ck_EGpuDriverId_AmdOpenSource\u0010\u0003\u0012\u001b\n\u0017k_EGpuDriverId_MesaRadv\u0010\u0004\u0012$\n k_EGpuDriverId_NvidiaProprietary\u0010\u0005\u0012\"\n\u001ek_EGpuDriverId_IntelPropietary\u0010\u0006\u0012\u001c\n\u0018k_EGpuDriverId_MesaIntel\u0010\u0007\u0012&\n\"k_EGpuDriverId_QualcommProprietary\u0010\b\u0012!\n\u001dk_EGpuDriverId_ArmProprietary\u0010\t\u0012$\n k_EGpuDriverId_GoogleSwiftshader\u0010\n\u0012&\n\"k_EGpuDriverId_BroadcomProprietary\u0010\u000b\u0012\u001f\n\u001bk_EGpuDriverId_MesaLLVMPipe\u0010\f\u0012\u001b\n\u0017k_EGpuDriverId_MoltenVK\u0010\r\u0012\u001d\n\u0019k_EGpuDriverId_MesaTurnip\u0010\u000e\u0012\u001c\n\u0018k_EGpuDriverId_MesaPanVK\u0010\u000f\u0012\u001c\n\u0018k_EGpuDriverId_MesaVenus\u0010\u0010\u0012\u001c\n\u0018k_EGpuDriverId_MesaDozen\u0010\u0011\u0012\u001a\n\u0016k_EGpuDriverId_MesaNVK\u0010\u0012\u0012!\n\u001dk_EGpuDriverId_MesaHoneyKrisp\u0010\u0013*Ý\u0005\n\u0013ECommunityItemClass\u0012!\n\u001dk_ECommunityItemClass_Invalid\u0010\u0000\u0012\u001f\n\u001bk_ECommunityItemClass_Badge\u0010\u0001\u0012\"\n\u001ek_ECommunityItemClass_GameCard\u0010\u0002\u0012+\n'k_ECommunityItemClass_ProfileBackground\u0010\u0003\u0012\"\n\u001ek_ECommunityItemClass_Emoticon\u0010\u0004\u0012%\n!k_ECommunityItemClass_BoosterPack\u0010\u0005\u0012$\n k_ECommunityItemClass_Consumable\u0010\u0006\u0012!\n\u001dk_ECommunityItemClass_GameGoo\u0010\u0007\u0012)\n%k_ECommunityItemClass_ProfileModifier\u0010\b\u0012\u001f\n\u001bk_ECommunityItemClass_Scene\u0010\t\u0012$\n k_ECommunityItemClass_SalienItem\u0010\n\u0012!\n\u001dk_ECommunityItemClass_Sticker\u0010\u000b\u0012$\n k_ECommunityItemClass_ChatEffect\u0010\f\u0012/\n+k_ECommunityItemClass_MiniProfileBackground\u0010\r\u0012%\n!k_ECommunityItemClass_AvatarFrame\u0010\u000e\u0012(\n$k_ECommunityItemClass_AnimatedAvatar\u0010\u000f\u0012/\n+k_ECommunityItemClass_SteamDeckKeyboardSkin\u0010\u0010\u0012/\n+k_ECommunityItemClass_SteamDeckStartupMovie\u0010\u0011*Ù\u0001\n\u001fESteamDeckCompatibilityFeedback\u0012+\n'k_ESteamDeckCompatibilityFeedback_Unset\u0010\u0000\u0012+\n'k_ESteamDeckCompatibilityFeedback_Agree\u0010\u0001\u0012.\n*k_ESteamDeckCompatibilityFeedback_Disagree\u0010\u0002\u0012,\n(k_ESteamDeckCompatibilityFeedback_Ignore\u0010\u0003*\u009f\u0001\n\u001eEProvideDeckFeedbackPreference\u0012*\n&k_EProvideDeckFeedbackPreference_Unset\u0010\u0000\u0012(\n$k_EProvideDeckFeedbackPreference_Yes\u0010\u0001\u0012'\n#k_EProvideDeckFeedbackPreference_No\u0010\u0002*±\u0003\n\rETouchGesture\u0012\u0017\n\u0013k_ETouchGestureNone\u0010\u0000\u0012\u0018\n\u0014k_ETouchGestureTouch\u0010\u0001\u0012\u0016\n\u0012k_ETouchGestureTap\u0010\u0002\u0012\u001c\n\u0018k_ETouchGestureDoubleTap\u0010\u0003\u0012\u001d\n\u0019k_ETouchGestureShortPress\u0010\u0004\u0012\u001c\n\u0018k_ETouchGestureLongPress\u0010\u0005\u0012\u001a\n\u0016k_ETouchGestureLongTap\u0010\u0006\u0012\u001f\n\u001bk_ETouchGestureTwoFingerTap\u0010\u0007\u0012\u001f\n\u001bk_ETouchGestureTapCancelled\u0010\b\u0012\u001d\n\u0019k_ETouchGesturePinchBegin\u0010\t\u0012\u001e\n\u001ak_ETouchGesturePinchUpdate\u0010\n\u0012\u001b\n\u0017k_ETouchGesturePinchEnd\u0010\u000b\u0012\u001d\n\u0019k_ETouchGestureFlingStart\u0010\f\u0012!\n\u001dk_ETouchGestureFlingCancelled\u0010\r*\u008c\u0001\n\u0013ESessionPersistence\u0012*\n\u001dk_ESessionPersistence_Invalid\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u0012#\n\u001fk_ESessionPersistence_Ephemeral\u0010\u0000\u0012$\n k_ESessionPersistence_Persistent\u0010\u0001*Ù\u0001\n\u001aENewSteamAnnouncementState\u0012(\n$k_ENewSteamAnnouncementState_Invalid\u0010\u0000\u0012(\n$k_ENewSteamAnnouncementState_AllRead\u0010\u0001\u00120\n,k_ENewSteamAnnouncementState_NewAnnouncement\u0010\u0002\u00125\n1k_ENewSteamAnnouncementState_FeaturedAnnouncement\u0010\u0003*þ\u0001\n\nEForumType\u0012\u0018\n\u0014k_EForumType_Invalid\u0010\u0000\u0012\u0018\n\u0014k_EForumType_General\u0010\u0001\u0012\u001e\n\u001ak_EForumType_ReportedPosts\u0010\u0002\u0012\u0019\n\u0015k_EForumType_Workshop\u0010\u0003\u0012\u001e\n\u001ak_EForumType_PublishedFile\u0010\u0004\u0012\u0018\n\u0014k_EForumType_Trading\u0010\u0005\u0012\u0019\n\u0015k_EForumType_PlayTest\u0010\u0006\u0012\u0016\n\u0012k_EForumType_Event\u0010\u0007\u0012\u0014\n\u0010k_EForumType_Max\u0010\b*\u008b\u0007\n\u0012ECommentThreadType\u0012\u001f\n\u001bk_ECommentThreadTypeInvalid\u0010\u0000\u0012-\n)k_ECommentThreadTypeScreenshot_Deprecated\u0010\u0001\u00121\n-k_ECommentThreadTypeWorkshopAccount_Developer\u0010\u0002\u0012.\n*k_ECommentThreadTypeWorkshopAccount_Public\u0010\u0003\u0012/\n+k_ECommentThreadTypePublishedFile_Developer\u0010\u0004\u0012,\n(k_ECommentThreadTypePublishedFile_Public\u0010\u0005\u0012\u001c\n\u0018k_ECommentThreadTypeTest\u0010\u0006\u0012\"\n\u001ek_ECommentThreadTypeForumTopic\u0010\u0007\u0012&\n\"k_ECommentThreadTypeRecommendation\u0010\b\u0012(\n$k_ECommentThreadTypeVideo_Deprecated\u0010\t\u0012\u001f\n\u001bk_ECommentThreadTypeProfile\u0010\n\u0012 \n\u001ck_ECommentThreadTypeNewsPost", "\u0010\u000b\u0012\u001c\n\u0018k_ECommentThreadTypeClan\u0010\f\u0012(\n$k_ECommentThreadTypeClanAnnouncement\u0010\r\u0012!\n\u001dk_ECommentThreadTypeClanEvent\u0010\u000e\u0012+\n'k_ECommentThreadTypeUserStatusPublished\u0010\u000f\u0012+\n'k_ECommentThreadTypeUserReceivedNewGame\u0010\u0010\u00122\n.k_ECommentThreadTypePublishedFile_Announcement\u0010\u0011\u0012(\n$k_ECommentThreadTypeModeratorMessage\u0010\u0012\u0012&\n\"k_ECommentThreadTypeClanCuratedApp\u0010\u0013\u0012$\n k_ECommentThreadTypeQAndASession\u0010\u0014\u0012\u001b\n\u0017k_ECommentThreadTypeMax\u0010\u0015*×\u0001\n\u0014EBroadcastPermission\u0012\"\n\u001ek_EBroadcastPermissionDisabled\u0010\u0000\u0012(\n$k_EBroadcastPermissionFriendsApprove\u0010\u0001\u0012(\n$k_EBroadcastPermissionFriendsAllowed\u0010\u0002\u0012 \n\u001ck_EBroadcastPermissionPublic\u0010\u0003\u0012%\n!k_EBroadcastPermissionSubscribers\u0010\u0004*f\n\u0018EBroadcastEncoderSetting\u0012\"\n\u001ek_EBroadcastEncoderBestQuality\u0010\u0000\u0012&\n\"k_EBroadcastEncoderBestPerformance\u0010\u0001*y\n\u0014ECloudGamingPlatform\u0012\u001e\n\u001ak_ECloudGamingPlatformNone\u0010\u0000\u0012\u001f\n\u001bk_ECloudGamingPlatformValve\u0010\u0001\u0012 \n\u001ck_ECloudGamingPlatformNVIDIA\u0010\u0002*í\u0002\n\u0018ECompromiseDetectionType\u0012#\n\u001fk_ECompromiseDetectionType_None\u0010\u0000\u0012)\n%k_ECompromiseDetectionType_TradeEvent\u0010\u0001\u0012*\n&k_ECompromiseDetectionType_ApiCallRate\u0010\u0002\u0012%\n!k_ECompromiseDetectionType_Manual\u0010\u0003\u0012+\n'k_ECompromiseDetectionType_TicketAction\u0010\u0004\u0012.\n*k_ECompromiseDetectionType_MaliciousRefund\u0010\u0005\u0012&\n\"k_ECompromiseDetectionType_Move2FA\u0010\u0006\u0012)\n%k_ECompromiseDetectionType_DeviceType\u0010\u0007*Ö\u0001\n\u001aEAsyncGameSessionUserState\u00120\n#k_EAsyncGameSessionUserStateUnknown\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u00120\n,k_EAsyncGameSessionUserStateWaitingForOthers\u0010\u0000\u0012.\n*k_EAsyncGameSessionUserStateReadyForAction\u0010\u0001\u0012$\n k_EAsyncGameSessionUserStateDone\u0010\u0002*Ä\u0001\n\u001fEAsyncGameSessionUserVisibility\u0012;\n7k_EAsyncGameSessionUserVisibilityEnvelopeAndSessionList\u0010\u0000\u00124\n0k_EAsyncGameSessionUserVisibilitySessionListOnly\u0010\u0001\u0012.\n*k_EAsyncGameSessionUserVisibilityDismissed\u0010\u0002*Ô\u0001\n\u0012EGameRecordingType\u0012 \n\u001ck_EGameRecordingType_Unknown\u0010\u0000\u0012%\n!k_EGameRecordingType_NotRecording\u0010\u0001\u0012(\n$k_EGameRecordingType_ManualRecording\u0010\u0002\u0012,\n(k_EGameRecordingType_BackgroundRecording\u0010\u0003\u0012\u001d\n\u0019k_EGameRecordingType_Clip\u0010\u0004*\\\n\fEExportCodec\u0012\u001a\n\u0016k_EExportCodec_Default\u0010\u0000\u0012\u0017\n\u0013k_EExportCodec_H264\u0010\u0001\u0012\u0017\n\u0013k_EExportCodec_H265\u0010\u0002*ê\u0003\n\rEProtoAppType\u0012\u0015\n\u0011k_EAppTypeInvalid\u0010\u0000\u0012\u0012\n\u000ek_EAppTypeGame\u0010\u0001\u0012\u0019\n\u0015k_EAppTypeApplication\u0010\u0002\u0012\u0012\n\u000ek_EAppTypeTool\u0010\u0004\u0012\u0012\n\u000ek_EAppTypeDemo\u0010\b\u0012\u0017\n\u0013k_EAppTypeDeprected\u0010\u0010\u0012\u0011\n\rk_EAppTypeDLC\u0010 \u0012\u0013\n\u000fk_EAppTypeGuide\u0010@\u0012\u0015\n\u0010k_EAppTypeDriver\u0010\u0080\u0001\u0012\u0015\n\u0010k_EAppTypeConfig\u0010\u0080\u0002\u0012\u0017\n\u0012k_EAppTypeHardware\u0010\u0080\u0004\u0012\u0018\n\u0013k_EAppTypeFranchise\u0010\u0080\b\u0012\u0014\n\u000fk_EAppTypeVideo\u0010\u0080\u0010\u0012\u0015\n\u0010k_EAppTypePlugin\u0010\u0080 \u0012\u0019\n\u0014k_EAppTypeMusicAlbum\u0010\u0080@\u0012\u0016\n\u0010k_EAppTypeSeries\u0010\u0080\u0080\u0001\u0012\u0015\n\u000fk_EAppTypeComic\u0010\u0080\u0080\u0002\u0012\u0014\n\u000ek_EAppTypeBeta\u0010\u0080\u0080\u0004\u0012\u001a\n\u0012k_EAppTypeShortcut\u0010\u0080\u0080\u0080\u0080\u0004\u0012 \n\u0013k_EAppTypeDepotOnly\u0010\u0080\u0080\u0080\u0080øÿÿÿÿ\u0001*\u0096\u0001\n\u0019EChildProcessQueryCommand\u0012'\n#k_EChildProcessQueryCommand_Invalid\u0010\u0000\u0012+\n'k_EChildProcessQueryCommand_GpuTopology\u0010\u0001\u0012#\n\u001fk_EChildProcessQueryCommand_Max\u0010\u0002*ö\u0002\n\u001aEChildProcessQueryExitCode\u0012(\n$k_EChildProcessQueryExitCode_Success\u0010\u0000\u0012:\n-k_EChildProcessQueryExitCode_ErrorCommandline\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u00124\n'k_EChildProcessQueryExitCode_ErrorOther\u0010þÿÿÿÿÿÿÿÿ\u0001\u0012<\n/k_EChildProcessQueryExitCode_ErrorUnimplemented\u0010ýÿÿÿÿÿÿÿÿ\u0001\u00127\n*k_EChildProcessQueryExitCode_ErrorFileSave\u0010üÿÿÿÿÿÿÿÿ\u0001\u0012E\n8k_EChildProcessQueryExitCode_ErrorNotSupportedByPlatform\u0010ûÿÿÿÿÿÿÿÿ\u0001*ò\u0001\n EWindowsUpdateInstallationImpact\u00127\n*k_EWindowsUpdateInstallationImpact_Unknown\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u0012-\n)k_EWindowsUpdateInstallationImpact_Normal\u0010\u0000\u0012,\n(k_EWindowsUpdateInstallationImpact_Minor\u0010\u0001\u00128\n4k_EWindowsUpdateInstallationImpact_ExclusiveHandling\u0010\u0002*ò\u0001\n\u001cEWindowsUpdateRebootBehavior\u00123\n&k_EWindowsUpdateRebootBehavior_Unknown\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u00123\n/k_EWindowsUpdateRebootBehavior_NeverNeedsReboot\u0010\u0000\u00124\n0k_EWindowsUpdateRebootBehavior_AlwaysNeedsReboot\u0010\u0001\u00122\n.k_EWindowsUpdateRebootBehavior_MightNeedReboot\u0010\u0002*þ\u0001\n\u0016EExternalSaleEventType\u0012$\n k_EExternalSaleEventType_Unknown\u0010\u0000\u0012&\n\"k_EExternalSaleEventType_Publisher\u0010\u0001\u0012%\n!k_EExternalSaleEventType_Showcase\u0010\u0002\u0012#\n\u001fk_EExternalSaleEventType_Region\u0010\u0003\u0012\"\n\u001ek_EExternalSaleEventType_Theme\u0010\u0004\u0012&\n\"k_EExternalSaleEventType_Franchise\u0010\u0005*é\u0001\n\u0019EContentReportSubjectType\u0012'\n#k_EContentReportSubjectType_Invalid\u0010\u0000\u0012)\n%k_EContentReportSubjectType_ForumPost\u0010\u0001\u0012*\n&k_EContentReportSubjectType_UGCComment\u0010\u0002\u0012'\n#k_EContentReportSubjectType_UGCFile\u0010\u0003\u0012#\n\u001fk_EContentReportSubjectType_MAX\u0010\u0004*Ú\u0002\n\u0014EContentReportReason\u0012\"\n\u001ek_EContentReportReason_Invalid\u0010\u0000\u0012\"\n\u001ek_EContentReportReason_Abusive\u0010\u0001\u0012%\n!k_EContentReportReason_Commercial\u0010\u0002\u0012#\n\u001fk_EContentReportReason_OffTopic\u0010\u0003\u0012%\n!k_EContentReportReason_Prohibited\u0010\u0004\u0012 \n\u001ck_EContentReportReason_Other\u0010\u0005\u0012\u001f\n\u001bk_EContentReportReason_CSAM\u0010\u0006\u0012$\n k_EContentReportReason_Terrorism\u0010\u0007\u0012\u001e\n\u001ak_EContentReportReason_MAX\u0010\b*Ù\u0001\n\u001eEControlledLegalCategoryStatus\u0012)\n%k_EControlledLegalCategoryStatus_None\u0010\u0000\u0012,\n(k_EControlledLegalCategoryStatus_Accused\u0010\u0001\u0012.\n*k_EControlledLegalCategoryStatus_Convicted\u0010\u0002\u0012.\n*k_EControlledLegalCategoryStatus_Acquitted\u0010\u0003*©\u0001\n\u0016EContentModeratorLevel\u0012 \n\u001ck_EContentModeratorLevel_Any\u0010\u0000\u0012'\n#k_EContentModeratorLevel_Supervisor\u0010\u0001\u0012\"\n\u001ek_EContentModeratorLevel_Valve\u0010\n\u0012 \n\u001ck_EContentModeratorLevel_MAX\u0010\u000b*æ\u0001\n\u0018EContentReportResolution\u0012)\n%k_EContentReportResolution_Unresolved\u0010\u0000\u0012(\n$k_EContentReportResolution_Acquitted\u0010\u0001\u0012&\n\"k_EContentReportResolution_Removed\u0010\u0002\u0012)\n%k_EContentReportResolution_Relabelled\u0010\u0003\u0012\"\n\u001ek_EContentReportResolution_MAX\u0010\u0004*Ø\u0001\n\u0017EContentModeratedReason\u0012%\n!k_EContentModeratedReason_Invalid\u0010\u0000\u0012\"\n\u001ek_EContentModeratedReason_None\u0010\u0001\u0012%\n!k_EContentModeratedReason_Unknown\u0010\u0002\u0012(\n$k_EContentModeratedReason_AnimalHarm\u0010\u0003\u0012!\n\u001dk_EContentModeratedReason_MAX\u0010\u0004B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        descriptor = fileDescriptorInternalBuildGeneratedFileFrom;
        fileDescriptorInternalBuildGeneratedFileFrom.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum EProfileCustomizationType implements ProtocolMessageEnum {
        k_EProfileCustomizationTypeInvalid(0),
        k_EProfileCustomizationTypeRareAchievementShowcase(1),
        k_EProfileCustomizationTypeGameCollector(2),
        k_EProfileCustomizationTypeItemShowcase(3),
        k_EProfileCustomizationTypeTradeShowcase(4),
        k_EProfileCustomizationTypeBadges(5),
        k_EProfileCustomizationTypeFavoriteGame(6),
        k_EProfileCustomizationTypeScreenshotShowcase(7),
        k_EProfileCustomizationTypeCustomText(8),
        k_EProfileCustomizationTypeFavoriteGroup(9),
        k_EProfileCustomizationTypeRecommendation(10),
        k_EProfileCustomizationTypeWorkshopItem(11),
        k_EProfileCustomizationTypeMyWorkshop(12),
        k_EProfileCustomizationTypeArtworkShowcase(13),
        k_EProfileCustomizationTypeVideoShowcase(14),
        k_EProfileCustomizationTypeGuides(15),
        k_EProfileCustomizationTypeMyGuides(16),
        k_EProfileCustomizationTypeAchievements(17),
        k_EProfileCustomizationTypeGreenlight(18),
        k_EProfileCustomizationTypeMyGreenlight(19),
        k_EProfileCustomizationTypeSalien(20),
        k_EProfileCustomizationTypeLoyaltyRewardReactions(21),
        k_EProfileCustomizationTypeSingleArtworkShowcase(22),
        k_EProfileCustomizationTypeAchievementsCompletionist(23),
        k_EProfileCustomizationTypeReplay(24);

        private static final EProfileCustomizationType[] VALUES;
        private static final Internal.EnumLiteMap<EProfileCustomizationType> internalValueMap;
        public static final int k_EProfileCustomizationTypeAchievementsCompletionist_VALUE = 23;
        public static final int k_EProfileCustomizationTypeAchievements_VALUE = 17;
        public static final int k_EProfileCustomizationTypeArtworkShowcase_VALUE = 13;
        public static final int k_EProfileCustomizationTypeBadges_VALUE = 5;
        public static final int k_EProfileCustomizationTypeCustomText_VALUE = 8;
        public static final int k_EProfileCustomizationTypeFavoriteGame_VALUE = 6;
        public static final int k_EProfileCustomizationTypeFavoriteGroup_VALUE = 9;
        public static final int k_EProfileCustomizationTypeGameCollector_VALUE = 2;
        public static final int k_EProfileCustomizationTypeGreenlight_VALUE = 18;
        public static final int k_EProfileCustomizationTypeGuides_VALUE = 15;
        public static final int k_EProfileCustomizationTypeInvalid_VALUE = 0;
        public static final int k_EProfileCustomizationTypeItemShowcase_VALUE = 3;
        public static final int k_EProfileCustomizationTypeLoyaltyRewardReactions_VALUE = 21;
        public static final int k_EProfileCustomizationTypeMyGreenlight_VALUE = 19;
        public static final int k_EProfileCustomizationTypeMyGuides_VALUE = 16;
        public static final int k_EProfileCustomizationTypeMyWorkshop_VALUE = 12;
        public static final int k_EProfileCustomizationTypeRareAchievementShowcase_VALUE = 1;
        public static final int k_EProfileCustomizationTypeRecommendation_VALUE = 10;
        public static final int k_EProfileCustomizationTypeReplay_VALUE = 24;
        public static final int k_EProfileCustomizationTypeSalien_VALUE = 20;
        public static final int k_EProfileCustomizationTypeScreenshotShowcase_VALUE = 7;
        public static final int k_EProfileCustomizationTypeSingleArtworkShowcase_VALUE = 22;
        public static final int k_EProfileCustomizationTypeTradeShowcase_VALUE = 4;
        public static final int k_EProfileCustomizationTypeVideoShowcase_VALUE = 14;
        public static final int k_EProfileCustomizationTypeWorkshopItem_VALUE = 11;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EProfileCustomizationType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EProfileCustomizationType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.EProfileCustomizationType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EProfileCustomizationType findValueByNumber(int i) {
                    return EProfileCustomizationType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EProfileCustomizationType valueOf(int i) {
            return forNumber(i);
        }

        public static EProfileCustomizationType forNumber(int i) {
            switch (i) {
                case 0:
                    return k_EProfileCustomizationTypeInvalid;
                case 1:
                    return k_EProfileCustomizationTypeRareAchievementShowcase;
                case 2:
                    return k_EProfileCustomizationTypeGameCollector;
                case 3:
                    return k_EProfileCustomizationTypeItemShowcase;
                case 4:
                    return k_EProfileCustomizationTypeTradeShowcase;
                case 5:
                    return k_EProfileCustomizationTypeBadges;
                case 6:
                    return k_EProfileCustomizationTypeFavoriteGame;
                case 7:
                    return k_EProfileCustomizationTypeScreenshotShowcase;
                case 8:
                    return k_EProfileCustomizationTypeCustomText;
                case 9:
                    return k_EProfileCustomizationTypeFavoriteGroup;
                case 10:
                    return k_EProfileCustomizationTypeRecommendation;
                case 11:
                    return k_EProfileCustomizationTypeWorkshopItem;
                case 12:
                    return k_EProfileCustomizationTypeMyWorkshop;
                case 13:
                    return k_EProfileCustomizationTypeArtworkShowcase;
                case 14:
                    return k_EProfileCustomizationTypeVideoShowcase;
                case 15:
                    return k_EProfileCustomizationTypeGuides;
                case 16:
                    return k_EProfileCustomizationTypeMyGuides;
                case 17:
                    return k_EProfileCustomizationTypeAchievements;
                case 18:
                    return k_EProfileCustomizationTypeGreenlight;
                case 19:
                    return k_EProfileCustomizationTypeMyGreenlight;
                case 20:
                    return k_EProfileCustomizationTypeSalien;
                case 21:
                    return k_EProfileCustomizationTypeLoyaltyRewardReactions;
                case 22:
                    return k_EProfileCustomizationTypeSingleArtworkShowcase;
                case 23:
                    return k_EProfileCustomizationTypeAchievementsCompletionist;
                case 24:
                    return k_EProfileCustomizationTypeReplay;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<EProfileCustomizationType> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(5);
        }

        public static EProfileCustomizationType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EProfileCustomizationType(int i) {
            this.value = i;
        }
    }

    public enum EPublishedFileStorageSystem implements ProtocolMessageEnum {
        k_EPublishedFileStorageSystemInvalid(0),
        k_EPublishedFileStorageSystemLegacyCloud(1),
        k_EPublishedFileStorageSystemDepot(2),
        k_EPublishedFileStorageSystemUGCCloud(3);

        private static final EPublishedFileStorageSystem[] VALUES;
        private static final Internal.EnumLiteMap<EPublishedFileStorageSystem> internalValueMap;
        public static final int k_EPublishedFileStorageSystemDepot_VALUE = 2;
        public static final int k_EPublishedFileStorageSystemInvalid_VALUE = 0;
        public static final int k_EPublishedFileStorageSystemLegacyCloud_VALUE = 1;
        public static final int k_EPublishedFileStorageSystemUGCCloud_VALUE = 3;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EPublishedFileStorageSystem.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EPublishedFileStorageSystem>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.EPublishedFileStorageSystem.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EPublishedFileStorageSystem findValueByNumber(int i) {
                    return EPublishedFileStorageSystem.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EPublishedFileStorageSystem valueOf(int i) {
            return forNumber(i);
        }

        public static EPublishedFileStorageSystem forNumber(int i) {
            if (i == 0) {
                return k_EPublishedFileStorageSystemInvalid;
            }
            if (i == 1) {
                return k_EPublishedFileStorageSystemLegacyCloud;
            }
            if (i == 2) {
                return k_EPublishedFileStorageSystemDepot;
            }
            if (i != 3) {
                return null;
            }
            return k_EPublishedFileStorageSystemUGCCloud;
        }

        public static Internal.EnumLiteMap<EPublishedFileStorageSystem> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(6);
        }

        public static EPublishedFileStorageSystem valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EPublishedFileStorageSystem(int i) {
            this.value = i;
        }
    }

    public enum ECloudStoragePersistState implements ProtocolMessageEnum {
        k_ECloudStoragePersistStatePersisted(0),
        k_ECloudStoragePersistStateForgotten(1),
        k_ECloudStoragePersistStateDeleted(2);

        private static final ECloudStoragePersistState[] VALUES;
        private static final Internal.EnumLiteMap<ECloudStoragePersistState> internalValueMap;
        public static final int k_ECloudStoragePersistStateDeleted_VALUE = 2;
        public static final int k_ECloudStoragePersistStateForgotten_VALUE = 1;
        public static final int k_ECloudStoragePersistStatePersisted_VALUE = 0;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ECloudStoragePersistState.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ECloudStoragePersistState>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.ECloudStoragePersistState.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ECloudStoragePersistState findValueByNumber(int i) {
                    return ECloudStoragePersistState.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ECloudStoragePersistState valueOf(int i) {
            return forNumber(i);
        }

        public static ECloudStoragePersistState forNumber(int i) {
            if (i == 0) {
                return k_ECloudStoragePersistStatePersisted;
            }
            if (i == 1) {
                return k_ECloudStoragePersistStateForgotten;
            }
            if (i != 2) {
                return null;
            }
            return k_ECloudStoragePersistStateDeleted;
        }

        public static Internal.EnumLiteMap<ECloudStoragePersistState> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(7);
        }

        public static ECloudStoragePersistState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ECloudStoragePersistState(int i) {
            this.value = i;
        }
    }

    public enum EBluetoothDeviceType implements ProtocolMessageEnum {
        k_BluetoothDeviceType_Invalid(0),
        k_BluetoothDeviceType_Unknown(1),
        k_BluetoothDeviceType_Phone(2),
        k_BluetoothDeviceType_Computer(3),
        k_BluetoothDeviceType_Headset(4),
        k_BluetoothDeviceType_Headphones(5),
        k_BluetoothDeviceType_Speakers(6),
        k_BluetoothDeviceType_OtherAudio(7),
        k_BluetoothDeviceType_Mouse(8),
        k_BluetoothDeviceType_Joystick(9),
        k_BluetoothDeviceType_Gamepad(10),
        k_BluetoothDeviceType_Keyboard(11);

        private static final EBluetoothDeviceType[] VALUES;
        private static final Internal.EnumLiteMap<EBluetoothDeviceType> internalValueMap;
        public static final int k_BluetoothDeviceType_Computer_VALUE = 3;
        public static final int k_BluetoothDeviceType_Gamepad_VALUE = 10;
        public static final int k_BluetoothDeviceType_Headphones_VALUE = 5;
        public static final int k_BluetoothDeviceType_Headset_VALUE = 4;
        public static final int k_BluetoothDeviceType_Invalid_VALUE = 0;
        public static final int k_BluetoothDeviceType_Joystick_VALUE = 9;
        public static final int k_BluetoothDeviceType_Keyboard_VALUE = 11;
        public static final int k_BluetoothDeviceType_Mouse_VALUE = 8;
        public static final int k_BluetoothDeviceType_OtherAudio_VALUE = 7;
        public static final int k_BluetoothDeviceType_Phone_VALUE = 2;
        public static final int k_BluetoothDeviceType_Speakers_VALUE = 6;
        public static final int k_BluetoothDeviceType_Unknown_VALUE = 1;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EBluetoothDeviceType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EBluetoothDeviceType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.EBluetoothDeviceType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EBluetoothDeviceType findValueByNumber(int i) {
                    return EBluetoothDeviceType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EBluetoothDeviceType valueOf(int i) {
            return forNumber(i);
        }

        public static EBluetoothDeviceType forNumber(int i) {
            switch (i) {
                case 0:
                    return k_BluetoothDeviceType_Invalid;
                case 1:
                    return k_BluetoothDeviceType_Unknown;
                case 2:
                    return k_BluetoothDeviceType_Phone;
                case 3:
                    return k_BluetoothDeviceType_Computer;
                case 4:
                    return k_BluetoothDeviceType_Headset;
                case 5:
                    return k_BluetoothDeviceType_Headphones;
                case 6:
                    return k_BluetoothDeviceType_Speakers;
                case 7:
                    return k_BluetoothDeviceType_OtherAudio;
                case 8:
                    return k_BluetoothDeviceType_Mouse;
                case 9:
                    return k_BluetoothDeviceType_Joystick;
                case 10:
                    return k_BluetoothDeviceType_Gamepad;
                case 11:
                    return k_BluetoothDeviceType_Keyboard;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<EBluetoothDeviceType> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(14);
        }

        public static EBluetoothDeviceType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EBluetoothDeviceType(int i) {
            this.value = i;
        }
    }

    public enum ECommunityItemClass implements ProtocolMessageEnum {
        k_ECommunityItemClass_Invalid(0),
        k_ECommunityItemClass_Badge(1),
        k_ECommunityItemClass_GameCard(2),
        k_ECommunityItemClass_ProfileBackground(3),
        k_ECommunityItemClass_Emoticon(4),
        k_ECommunityItemClass_BoosterPack(5),
        k_ECommunityItemClass_Consumable(6),
        k_ECommunityItemClass_GameGoo(7),
        k_ECommunityItemClass_ProfileModifier(8),
        k_ECommunityItemClass_Scene(9),
        k_ECommunityItemClass_SalienItem(10),
        k_ECommunityItemClass_Sticker(11),
        k_ECommunityItemClass_ChatEffect(12),
        k_ECommunityItemClass_MiniProfileBackground(13),
        k_ECommunityItemClass_AvatarFrame(14),
        k_ECommunityItemClass_AnimatedAvatar(15),
        k_ECommunityItemClass_SteamDeckKeyboardSkin(16),
        k_ECommunityItemClass_SteamDeckStartupMovie(17);

        private static final ECommunityItemClass[] VALUES;
        private static final Internal.EnumLiteMap<ECommunityItemClass> internalValueMap;
        public static final int k_ECommunityItemClass_AnimatedAvatar_VALUE = 15;
        public static final int k_ECommunityItemClass_AvatarFrame_VALUE = 14;
        public static final int k_ECommunityItemClass_Badge_VALUE = 1;
        public static final int k_ECommunityItemClass_BoosterPack_VALUE = 5;
        public static final int k_ECommunityItemClass_ChatEffect_VALUE = 12;
        public static final int k_ECommunityItemClass_Consumable_VALUE = 6;
        public static final int k_ECommunityItemClass_Emoticon_VALUE = 4;
        public static final int k_ECommunityItemClass_GameCard_VALUE = 2;
        public static final int k_ECommunityItemClass_GameGoo_VALUE = 7;
        public static final int k_ECommunityItemClass_Invalid_VALUE = 0;
        public static final int k_ECommunityItemClass_MiniProfileBackground_VALUE = 13;
        public static final int k_ECommunityItemClass_ProfileBackground_VALUE = 3;
        public static final int k_ECommunityItemClass_ProfileModifier_VALUE = 8;
        public static final int k_ECommunityItemClass_SalienItem_VALUE = 10;
        public static final int k_ECommunityItemClass_Scene_VALUE = 9;
        public static final int k_ECommunityItemClass_SteamDeckKeyboardSkin_VALUE = 16;
        public static final int k_ECommunityItemClass_SteamDeckStartupMovie_VALUE = 17;
        public static final int k_ECommunityItemClass_Sticker_VALUE = 11;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ECommunityItemClass.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ECommunityItemClass>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.ECommunityItemClass.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ECommunityItemClass findValueByNumber(int i) {
                    return ECommunityItemClass.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ECommunityItemClass valueOf(int i) {
            return forNumber(i);
        }

        public static ECommunityItemClass forNumber(int i) {
            switch (i) {
                case 0:
                    return k_ECommunityItemClass_Invalid;
                case 1:
                    return k_ECommunityItemClass_Badge;
                case 2:
                    return k_ECommunityItemClass_GameCard;
                case 3:
                    return k_ECommunityItemClass_ProfileBackground;
                case 4:
                    return k_ECommunityItemClass_Emoticon;
                case 5:
                    return k_ECommunityItemClass_BoosterPack;
                case 6:
                    return k_ECommunityItemClass_Consumable;
                case 7:
                    return k_ECommunityItemClass_GameGoo;
                case 8:
                    return k_ECommunityItemClass_ProfileModifier;
                case 9:
                    return k_ECommunityItemClass_Scene;
                case 10:
                    return k_ECommunityItemClass_SalienItem;
                case 11:
                    return k_ECommunityItemClass_Sticker;
                case 12:
                    return k_ECommunityItemClass_ChatEffect;
                case 13:
                    return k_ECommunityItemClass_MiniProfileBackground;
                case 14:
                    return k_ECommunityItemClass_AvatarFrame;
                case 15:
                    return k_ECommunityItemClass_AnimatedAvatar;
                case 16:
                    return k_ECommunityItemClass_SteamDeckKeyboardSkin;
                case 17:
                    return k_ECommunityItemClass_SteamDeckStartupMovie;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ECommunityItemClass> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(46);
        }

        public static ECommunityItemClass valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ECommunityItemClass(int i) {
            this.value = i;
        }
    }

    public enum ESessionPersistence implements ProtocolMessageEnum {
        k_ESessionPersistence_Invalid(-1),
        k_ESessionPersistence_Ephemeral(0),
        k_ESessionPersistence_Persistent(1);

        private static final ESessionPersistence[] VALUES;
        private static final Internal.EnumLiteMap<ESessionPersistence> internalValueMap;
        public static final int k_ESessionPersistence_Ephemeral_VALUE = 0;
        public static final int k_ESessionPersistence_Invalid_VALUE = -1;
        public static final int k_ESessionPersistence_Persistent_VALUE = 1;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ESessionPersistence.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ESessionPersistence>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.ESessionPersistence.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ESessionPersistence findValueByNumber(int i) {
                    return ESessionPersistence.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ESessionPersistence valueOf(int i) {
            return forNumber(i);
        }

        public static ESessionPersistence forNumber(int i) {
            if (i == -1) {
                return k_ESessionPersistence_Invalid;
            }
            if (i == 0) {
                return k_ESessionPersistence_Ephemeral;
            }
            if (i != 1) {
                return null;
            }
            return k_ESessionPersistence_Persistent;
        }

        public static Internal.EnumLiteMap<ESessionPersistence> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(50);
        }

        public static ESessionPersistence valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ESessionPersistence(int i) {
            this.value = i;
        }
    }

    public enum ENewSteamAnnouncementState implements ProtocolMessageEnum {
        k_ENewSteamAnnouncementState_Invalid(0),
        k_ENewSteamAnnouncementState_AllRead(1),
        k_ENewSteamAnnouncementState_NewAnnouncement(2),
        k_ENewSteamAnnouncementState_FeaturedAnnouncement(3);

        private static final ENewSteamAnnouncementState[] VALUES;
        private static final Internal.EnumLiteMap<ENewSteamAnnouncementState> internalValueMap;
        public static final int k_ENewSteamAnnouncementState_AllRead_VALUE = 1;
        public static final int k_ENewSteamAnnouncementState_FeaturedAnnouncement_VALUE = 3;
        public static final int k_ENewSteamAnnouncementState_Invalid_VALUE = 0;
        public static final int k_ENewSteamAnnouncementState_NewAnnouncement_VALUE = 2;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ENewSteamAnnouncementState.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ENewSteamAnnouncementState>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.ENewSteamAnnouncementState.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ENewSteamAnnouncementState findValueByNumber(int i) {
                    return ENewSteamAnnouncementState.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ENewSteamAnnouncementState valueOf(int i) {
            return forNumber(i);
        }

        public static ENewSteamAnnouncementState forNumber(int i) {
            if (i == 0) {
                return k_ENewSteamAnnouncementState_Invalid;
            }
            if (i == 1) {
                return k_ENewSteamAnnouncementState_AllRead;
            }
            if (i == 2) {
                return k_ENewSteamAnnouncementState_NewAnnouncement;
            }
            if (i != 3) {
                return null;
            }
            return k_ENewSteamAnnouncementState_FeaturedAnnouncement;
        }

        public static Internal.EnumLiteMap<ENewSteamAnnouncementState> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(51);
        }

        public static ENewSteamAnnouncementState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ENewSteamAnnouncementState(int i) {
            this.value = i;
        }
    }

    public enum EGameRecordingType implements ProtocolMessageEnum {
        k_EGameRecordingType_Unknown(0),
        k_EGameRecordingType_NotRecording(1),
        k_EGameRecordingType_ManualRecording(2),
        k_EGameRecordingType_BackgroundRecording(3),
        k_EGameRecordingType_Clip(4);

        private static final EGameRecordingType[] VALUES;
        private static final Internal.EnumLiteMap<EGameRecordingType> internalValueMap;
        public static final int k_EGameRecordingType_BackgroundRecording_VALUE = 3;
        public static final int k_EGameRecordingType_Clip_VALUE = 4;
        public static final int k_EGameRecordingType_ManualRecording_VALUE = 2;
        public static final int k_EGameRecordingType_NotRecording_VALUE = 1;
        public static final int k_EGameRecordingType_Unknown_VALUE = 0;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EGameRecordingType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EGameRecordingType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.EGameRecordingType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EGameRecordingType findValueByNumber(int i) {
                    return EGameRecordingType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EGameRecordingType valueOf(int i) {
            return forNumber(i);
        }

        public static EGameRecordingType forNumber(int i) {
            if (i == 0) {
                return k_EGameRecordingType_Unknown;
            }
            if (i == 1) {
                return k_EGameRecordingType_NotRecording;
            }
            if (i == 2) {
                return k_EGameRecordingType_ManualRecording;
            }
            if (i == 3) {
                return k_EGameRecordingType_BackgroundRecording;
            }
            if (i != 4) {
                return null;
            }
            return k_EGameRecordingType_Clip;
        }

        public static Internal.EnumLiteMap<EGameRecordingType> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(60);
        }

        public static EGameRecordingType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EGameRecordingType(int i) {
            this.value = i;
        }
    }

    public enum EProtoAppType implements ProtocolMessageEnum {
        k_EAppTypeInvalid(0),
        k_EAppTypeGame(1),
        k_EAppTypeApplication(2),
        k_EAppTypeTool(4),
        k_EAppTypeDemo(8),
        k_EAppTypeDeprected(16),
        k_EAppTypeDLC(32),
        k_EAppTypeGuide(64),
        k_EAppTypeDriver(128),
        k_EAppTypeConfig(256),
        k_EAppTypeHardware(512),
        k_EAppTypeFranchise(1024),
        k_EAppTypeVideo(2048),
        k_EAppTypePlugin(4096),
        k_EAppTypeMusicAlbum(k_EAppTypeMusicAlbum_VALUE),
        k_EAppTypeSeries(k_EAppTypeSeries_VALUE),
        k_EAppTypeComic(32768),
        k_EAppTypeBeta(k_EAppTypeBeta_VALUE),
        k_EAppTypeShortcut(k_EAppTypeShortcut_VALUE),
        k_EAppTypeDepotOnly(k_EAppTypeDepotOnly_VALUE);

        private static final EProtoAppType[] VALUES;
        private static final Internal.EnumLiteMap<EProtoAppType> internalValueMap;
        public static final int k_EAppTypeApplication_VALUE = 2;
        public static final int k_EAppTypeBeta_VALUE = 65536;
        public static final int k_EAppTypeComic_VALUE = 32768;
        public static final int k_EAppTypeConfig_VALUE = 256;
        public static final int k_EAppTypeDLC_VALUE = 32;
        public static final int k_EAppTypeDemo_VALUE = 8;
        public static final int k_EAppTypeDepotOnly_VALUE = Integer.MIN_VALUE;
        public static final int k_EAppTypeDeprected_VALUE = 16;
        public static final int k_EAppTypeDriver_VALUE = 128;
        public static final int k_EAppTypeFranchise_VALUE = 1024;
        public static final int k_EAppTypeGame_VALUE = 1;
        public static final int k_EAppTypeGuide_VALUE = 64;
        public static final int k_EAppTypeHardware_VALUE = 512;
        public static final int k_EAppTypeInvalid_VALUE = 0;
        public static final int k_EAppTypeMusicAlbum_VALUE = 8192;
        public static final int k_EAppTypePlugin_VALUE = 4096;
        public static final int k_EAppTypeSeries_VALUE = 16384;
        public static final int k_EAppTypeShortcut_VALUE = 1073741824;
        public static final int k_EAppTypeTool_VALUE = 4;
        public static final int k_EAppTypeVideo_VALUE = 2048;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EProtoAppType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EProtoAppType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Enums.EProtoAppType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EProtoAppType findValueByNumber(int i) {
                    return EProtoAppType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EProtoAppType valueOf(int i) {
            return forNumber(i);
        }

        public static EProtoAppType forNumber(int i) {
            if (i == 0) {
                return k_EAppTypeInvalid;
            }
            if (i == 1) {
                return k_EAppTypeGame;
            }
            if (i == 2) {
                return k_EAppTypeApplication;
            }
            switch (i) {
                case k_EAppTypeDepotOnly_VALUE:
                    return k_EAppTypeDepotOnly;
                case 4:
                    return k_EAppTypeTool;
                case 8:
                    return k_EAppTypeDemo;
                case 16:
                    return k_EAppTypeDeprected;
                case 32:
                    return k_EAppTypeDLC;
                case 64:
                    return k_EAppTypeGuide;
                case 128:
                    return k_EAppTypeDriver;
                case 256:
                    return k_EAppTypeConfig;
                case 512:
                    return k_EAppTypeHardware;
                case 1024:
                    return k_EAppTypeFranchise;
                case 2048:
                    return k_EAppTypeVideo;
                case 4096:
                    return k_EAppTypePlugin;
                case k_EAppTypeMusicAlbum_VALUE:
                    return k_EAppTypeMusicAlbum;
                case k_EAppTypeSeries_VALUE:
                    return k_EAppTypeSeries;
                case 32768:
                    return k_EAppTypeComic;
                case k_EAppTypeBeta_VALUE:
                    return k_EAppTypeBeta;
                case k_EAppTypeShortcut_VALUE:
                    return k_EAppTypeShortcut;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<EProtoAppType> internalGetValueMap() {
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
            return Enums.getDescriptor().getEnumTypes().get(62);
        }

        public static EProtoAppType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EProtoAppType(int i) {
            this.value = i;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
