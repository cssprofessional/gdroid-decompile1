###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums (in.dragonbra.javasteam.protobufs.steamclient.Enums)
.class public final Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.super Ljava/lang/Object;
.source "Enums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;,
        Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 12
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 12
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 10849
    const-string v0, "\n8in/dragonbra/javasteam/protobufs/steamclient/enums.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto*\u0080\n\n\u0017EPublishedFileQueryType\u0012)\n%k_PublishedFileQueryType_RankedByVote\u0010\u0000\u00124\n0k_PublishedFileQueryType_RankedByPublicationDate\u0010\u0001\u0012B\n>k_PublishedFileQueryType_AcceptedForGameRankedByAcceptanceDate\u0010\u0002\u0012*\n&k_PublishedFileQueryType_RankedByTrend\u0010\u0003\u0012F\nBk_PublishedFileQueryType_FavoritedByFriendsRankedByPublicationDate\u0010\u0004\u0012D\n@k_PublishedFileQueryType_CreatedByFriendsRankedByPublicationDate\u0010\u0005\u00125\n1k_PublishedFileQueryType_RankedByNumTimesReported\u0010\u0006\u0012J\nFk_PublishedFileQueryType_CreatedByFollowedUsersRankedByPublicationDate\u0010\u0007\u0012(\n$k_PublishedFileQueryType_NotYetRated\u0010\u0008\u0012=\n9k_PublishedFileQueryType_RankedByTotalUniqueSubscriptions\u0010\t\u00122\n.k_PublishedFileQueryType_RankedByTotalVotesAsc\u0010\n\u0012,\n(k_PublishedFileQueryType_RankedByVotesUp\u0010\u000b\u0012/\n+k_PublishedFileQueryType_RankedByTextSearch\u0010\u000c\u00122\n.k_PublishedFileQueryType_RankedByPlaytimeTrend\u0010\r\u00122\n.k_PublishedFileQueryType_RankedByTotalPlaytime\u0010\u000e\u00129\n5k_PublishedFileQueryType_RankedByAveragePlaytimeTrend\u0010\u000f\u0012<\n8k_PublishedFileQueryType_RankedByLifetimeAveragePlaytime\u0010\u0010\u0012:\n6k_PublishedFileQueryType_RankedByPlaytimeSessionsTrend\u0010\u0011\u0012=\n9k_PublishedFileQueryType_RankedByLifetimePlaytimeSessions\u0010\u0012\u0012?\n;k_PublishedFileQueryType_RankedByInappropriateContentRating\u0010\u0013\u00124\n0k_PublishedFileQueryType_RankedByBanContentCheck\u0010\u0014\u00124\n0k_PublishedFileQueryType_RankedByLastUpdatedDate\u0010\u0015*\u00bc\u0001\n#EPublishedFileInappropriateProvider\u00121\n-k_EPublishedFileInappropriateProvider_Invalid\u0010\u0000\u00120\n,k_EPublishedFileInappropriateProvider_Google\u0010\u0001\u00120\n,k_EPublishedFileInappropriateProvider_Amazon\u0010\u0002*\u00d5\u0002\n!EPublishedFileInappropriateResult\u00122\n.k_EPublishedFileInappropriateResult_NotScanned\u0010\u0000\u00124\n0k_EPublishedFileInappropriateResult_VeryUnlikely\u0010\u0001\u00120\n,k_EPublishedFileInappropriateResult_Unlikely\u0010\u001e\u00120\n,k_EPublishedFileInappropriateResult_Possible\u00102\u0012.\n*k_EPublishedFileInappropriateResult_Likely\u0010K\u00122\n.k_EPublishedFileInappropriateResult_VeryLikely\u0010d*\u00b1\u0003\n\u0011EPersonaStateFlag\u0012\'\n#k_EPersonaStateFlag_HasRichPresence\u0010\u0001\u0012&\n\"k_EPersonaStateFlag_InJoinableGame\u0010\u0002\u0012\u001e\n\u001ak_EPersonaStateFlag_Golden\u0010\u0004\u0012*\n&k_EPersonaStateFlag_RemotePlayTogether\u0010\u0008\u0012&\n!k_EPersonaStateFlag_ClientTypeWeb\u0010\u0080\u0002\u0012)\n$k_EPersonaStateFlag_ClientTypeMobile\u0010\u0080\u0004\u0012*\n%k_EPersonaStateFlag_ClientTypeTenfoot\u0010\u0080\u0008\u0012%\n k_EPersonaStateFlag_ClientTypeVR\u0010\u0080\u0010\u0012*\n%k_EPersonaStateFlag_LaunchTypeGamepad\u0010\u0080 \u0012-\n(k_EPersonaStateFlag_LaunchTypeCompatTool\u0010\u0080@*\u00b0\u0002\n\u0015EContentCheckProvider\u0012#\n\u001fk_EContentCheckProvider_Invalid\u0010\u0000\u0012-\n)k_EContentCheckProvider_Google_DEPRECATED\u0010\u0001\u0012\"\n\u001ek_EContentCheckProvider_Amazon\u0010\u0002\u0012!\n\u001dk_EContentCheckProvider_Local\u0010\u0003\u0012*\n&k_EContentCheckProvider_GoogleVertexAI\u0010\u0004\u0012(\n$k_EContentCheckProvider_GoogleGemini\u0010\u0005\u0012&\n\"k_EContentCheckProvider_SteamLearn\u0010\u0006*\u0093\t\n\u0019EProfileCustomizationType\u0012&\n\"k_EProfileCustomizationTypeInvalid\u0010\u0000\u00126\n2k_EProfileCustomizationTypeRareAchievementShowcase\u0010\u0001\u0012,\n(k_EProfileCustomizationTypeGameCollector\u0010\u0002\u0012+\n\'k_EProfileCustomizationTypeItemShowcase\u0010\u0003\u0012,\n(k_EProfileCustomizationTypeTradeShowcase\u0010\u0004\u0012%\n!k_EProfileCustomizationTypeBadges\u0010\u0005\u0012+\n\'k_EProfileCustomizationTypeFavoriteGame\u0010\u0006\u00121\n-k_EProfileCustomizationTypeScreenshotShowcase\u0010\u0007\u0012)\n%k_EProfileCustomizationTypeCustomText\u0010\u0008\u0012,\n(k_EProfileCustomizationTypeFavoriteGroup\u0010\t\u0012-\n)k_EProfileCustomizationTypeRecommendation\u0010\n\u0012+\n\'k_EProfileCustomizationTypeWorkshopItem\u0010\u000b\u0012)\n%k_EProfileCustomizationTypeMyWorkshop\u0010\u000c\u0012.\n*k_EProfileCustomizationTypeArtworkShowcase\u0010\r\u0012,\n(k_EProfileCustomizationTypeVideoShowcase\u0010\u000e\u0012%\n!k_EProfileCustomizationTypeGuides\u0010\u000f\u0012\'\n#k_EProfileCustomizationTypeMyGuides\u0010\u0010\u0012+\n\'k_EProfileCustomizationTypeAchievements\u0010\u0011\u0012)\n%k_EProfileCustomizationTypeGreenlight\u0010\u0012\u0012+\n\'k_EProfileCustomizationTypeMyGreenlight\u0010\u0013\u0012%\n!k_EProfileCustomizationTypeSalien\u0010\u0014\u00125\n1k_EProfileCustomizationTypeLoyaltyRewardReactions\u0010\u0015\u00124\n0k_EProfileCustomizationTypeSingleArtworkShowcase\u0010\u0016\u00128\n4k_EProfileCustomizationTypeAchievementsCompletionist\u0010\u0017\u0012%\n!k_EProfileCustomizationTypeReplay\u0010\u0018*\u00c8\u0001\n\u001bEPublishedFileStorageSystem\u0012(\n$k_EPublishedFileStorageSystemInvalid\u0010\u0000\u0012,\n(k_EPublishedFileStorageSystemLegacyCloud\u0010\u0001\u0012&\n\"k_EPublishedFileStorageSystemDepot\u0010\u0002\u0012)\n%k_EPublishedFileStorageSystemUGCCloud\u0010\u0003*\u0097\u0001\n\u0019ECloudStoragePersistState\u0012(\n$k_ECloudStoragePersistStatePersisted\u0010\u0000\u0012(\n$k_ECloudStoragePersistStateForgotten\u0010\u0001\u0012&\n\"k_ECloudStoragePersistStateDeleted\u0010\u0002*\u00e8\u0001\n\u0012ESDCardFormatStage\u0012 \n\u001ck_ESDCardFormatStage_Invalid\u0010\u0000\u0012!\n\u001dk_ESDCardFormatStage_Starting\u0010\u0001\u0012 \n\u001ck_ESDCardFormatStage_Testing\u0010\u0002\u0012!\n\u001dk_ESDCardFormatStage_Rescuing\u0010\u0003\u0012#\n\u001fk_ESDCardFormatStage_Formatting\u0010\u0004\u0012#\n\u001fk_ESDCardFormatStage_Finalizing\u0010\u0005*\u0095\u0002\n\u0013EStorageFormatStage\u0012!\n\u001dk_EStorageFormatStage_Invalid\u0010\u0000\u0012$\n k_EStorageFormatStage_NotRunning\u0010\u0001\u0012\"\n\u001ek_EStorageFormatStage_Starting\u0010\u0002\u0012!\n\u001dk_EStorageFormatStage_Testing\u0010\u0003\u0012\"\n\u001ek_EStorageFormatStage_Rescuing\u0010\u0004\u0012$\n k_EStorageFormatStage_Formatting\u0010\u0005\u0012$\n k_EStorageFormatStage_Finalizing\u0010\u0006*\u0084\u0001\n\u0015ESystemFanControlMode\u0012\"\n\u001ek_SystemFanControlMode_Invalid\u0010\u0000\u0012#\n\u001fk_SystemFanControlMode_Disabled\u0010\u0001\u0012\"\n\u001ek_SystemFanControlMode_Default\u0010\u0002*\u00aa\u0001\n\u0014EStartupMovieVariant\u0012\"\n\u001ek_EStartupMovieVariant_Invalid\u0010\u0000\u0012\"\n\u001ek_EStartupMovieVariant_Generic\u0010\u0001\u0012#\n\u001fk_EStartupMovieVariant_DeckBlue\u0010\u0002\u0012%\n!k_EStartupMovieVariant_DeckOrange\u0010\u0003*\u008b\u0001\n\u0013EColorGamutLabelSet\u0012 \n\u001ck_ColorGamutLabelSet_Default\u0010\u0000\u0012$\n k_ColorGamutLabelSet_sRGB_Native\u0010\u0001\u0012,\n(k_ColorGamutLabelSet_Native_sRGB_Boosted\u0010\u0002*}\n\u0014EWindowStackingOrder\u0012\"\n\u001ek_EWindowStackingOrder_Invalid\u0010\u0000\u0012\u001e\n\u001ak_EWindowStackingOrder_Top\u0010\u0001\u0012!\n\u001dk_EWindowStackingOrder_Bottom\u0010\u0002*\u00c0\u0003\n\u0014EBluetoothDeviceType\u0012!\n\u001dk_BluetoothDeviceType_Invalid\u0010\u0000\u0012!\n\u001dk_BluetoothDeviceType_Unknown\u0010\u0001\u0012\u001f\n\u001bk_BluetoothDeviceType_Phone\u0010\u0002\u0012\"\n\u001ek_BluetoothDeviceType_Computer\u0010\u0003\u0012!\n\u001dk_BluetoothDeviceType_Headset\u0010\u0004\u0012$\n k_BluetoothDeviceType_Headphones\u0010\u0005\u0012\"\n\u001ek_BluetoothDeviceType_Speakers\u0010\u0006\u0012$\n k_BluetoothDeviceType_OtherAudio\u0010\u0007\u0012\u001f\n\u001bk_BluetoothDeviceType_Mouse\u0010\u0008\u0012\"\n\u001ek_BluetoothDeviceType_Joystick\u0010\t\u0012!\n\u001dk_BluetoothDeviceType_Gamepad\u0010\n\u0012\"\n\u001ek_BluetoothDeviceType_Keyboard\u0010\u000b*\u0080\u0001\n\u0015ESystemAudioDirection\u0012\"\n\u001ek_SystemAudioDirection_Invalid\u0010\u0000\u0012 \n\u001ck_SystemAudioDirection_Input\u0010\u0001\u0012!\n\u001dk_SystemAudioDirection_Output\u0010\u0002*\u00f1\u0002\n\u0013ESystemAudioChannel\u0012 \n\u001ck_SystemAudioChannel_Invalid\u0010\u0000\u0012#\n\u001fk_SystemAudioChannel_Aggregated\u0010\u0001\u0012\"\n\u001ek_SystemAudioChannel_FrontLeft\u0010\u0002\u0012#\n\u001fk_SystemAudioChannel_FrontRight\u0010\u0003\u0012\u001c\n\u0018k_SystemAudioChannel_LFE\u0010\u0004\u0012!\n\u001dk_SystemAudioChannel_BackLeft\u0010\u0005\u0012\"\n\u001ek_SystemAudioChannel_BackRight\u0010\u0006\u0012$\n k_SystemAudioChannel_FrontCenter\u0010\u0007\u0012 \n\u001ck_SystemAudioChannel_Unknown\u0010\u0008\u0012\u001d\n\u0019k_SystemAudioChannel_Mono\u0010\t*\u00c9\u0001\n\u0014ESystemAudioPortType\u0012!\n\u001dk_SystemAudioPortType_Invalid\u0010\u0000\u0012!\n\u001dk_SystemAudioPortType_Unknown\u0010\u0001\u0012\"\n\u001ek_SystemAudioPortType_Audio32f\u0010\u0002\u0012 \n\u001ck_SystemAudioPortType_Midi8b\u0010\u0003\u0012%\n!k_SystemAudioPortType_Video32RGBA\u0010\u0004*\u0090\u0001\n\u0019ESystemAudioPortDirection\u0012&\n\"k_SystemAudioPortDirection_Invalid\u0010\u0000\u0012$\n k_SystemAudioPortDirection_Input\u0010\u0001\u0012%\n!k_SystemAudioPortDirection_Output\u0010\u0002*\u0083\u0001\n\u0013ESystemServiceState\u0012%\n!k_ESystemServiceState_Unavailable\u0010\u0000\u0012\"\n\u001ek_ESystemServiceState_Disabled\u0010\u0001\u0012!\n\u001dk_ESystemServiceState_Enabled\u0010\u0002*\u00e1\u0001\n\u0019EGraphicsPerfOverlayLevel\u0012&\n\"k_EGraphicsPerfOverlayLevel_Hidden\u0010\u0000\u0012%\n!k_EGraphicsPerfOverlayLevel_Basic\u0010\u0001\u0012&\n\"k_EGraphicsPerfOverlayLevel_Medium\u0010\u0002\u0012$\n k_EGraphicsPerfOverlayLevel_Full\u0010\u0003\u0012\'\n#k_EGraphicsPerfOverlayLevel_Minimal\u0010\u0004*\u00e5\u0001\n\u0014EGPUPerformanceLevel\u0012\"\n\u001ek_EGPUPerformanceLevel_Invalid\u0010\u0000\u0012\u001f\n\u001bk_EGPUPerformanceLevel_Auto\u0010\u0001\u0012!\n\u001dk_EGPUPerformanceLevel_Manual\u0010\u0002\u0012\u001e\n\u001ak_EGPUPerformanceLevel_Low\u0010\u0003\u0012\u001f\n\u001bk_EGPUPerformanceLevel_High\u0010\u0004\u0012$\n k_EGPUPerformanceLevel_Profiling\u0010\u0005*\u00c8\u0001\n\u0013ESplitScalingFilter\u0012!\n\u001dk_ESplitScalingFilter_Invalid\u0010\u0000\u0012 \n\u001ck_ESplitScalingFilter_Linear\u0010\u0001\u0012!\n\u001dk_ESplitScalingFilter_Nearest\u0010\u0002\u0012\u001f\n\u001bk_ESplitScalingFilter_Sharp\u0010\u0003\u0012(\n$k_ESplitScalingFilter_NIS_Deprecated\u0010\u0004*\u00dd\u0001\n\u0013ESplitScalingScaler\u0012!\n\u001dk_ESplitScalingScaler_Invalid\u0010\u0000\u0012\u001e\n\u001ak_ESplitScalingScaler_Auto\u0010\u0001\u0012!\n\u001dk_ESplitScalingScaler_Integer\u0010\u0002\u0012\u001d\n\u0019k_ESplitScalingScaler_Fit\u0010\u0003\u0012\u001e\n\u001ak_ESplitScalingScaler_Fill\u0010\u0004\u0012!\n\u001dk_ESplitScalingScaler_Stretch\u0010\u0005*}\n\u0012EGamescopeBlurMode\u0012!\n\u001dk_EGamescopeBlurMode_Disabled\u0010\u0000\u0012#\n\u001fk_EGamescopeBlurMode_IfOccluded\u0010\u0001\u0012\u001f\n\u001bk_EGamescopeBlurMode_Always\u0010\u0002*\u00c4\u0001\n\nESLSHelper\u0012\u0018\n\u0014k_ESLSHelper_Invalid\u0010\u0000\u0012\u0019\n\u0015k_ESLSHelper_Minidump\u0010\u0001\u0012\u0016\n\u0012k_ESLSHelper_Kdump\u0010\u0002\u0012\u0018\n\u0014k_ESLSHelper_Journal\u0010\u0003\u0012\u0014\n\u0010k_ESLSHelper_Gpu\u0010\u0004\u0012\u001b\n\u0017k_ESLSHelper_SystemInfo\u0010\u0005\u0012\u001c\n\u0018k_ESLSHelper_Devcoredump\u0010\u0006*\u00c5\u0001\n\u0011EHDRVisualization\u0012\u001c\n\u0018k_EHDRVisualization_None\u0010\u0000\u0012\u001f\n\u001bk_EHDRVisualization_Heatmap\u0010\u0001\u0012 \n\u001ck_EHDRVisualization_Analysis\u0010\u0002\u0012\'\n#k_EHDRVisualization_HeatmapExtended\u0010\u0003\u0012&\n\"k_EHDRVisualization_HeatmapClassic\u0010\u0004*\u0081\u0001\n\u0013EHDRToneMapOperator\u0012!\n\u001dk_EHDRToneMapOperator_Invalid\u0010\u0000\u0012#\n\u001fk_EHDRToneMapOperator_Uncharted\u0010\u0001\u0012\"\n\u001ek_EHDRToneMapOperator_Reinhard\u0010\u0002*|\n\u000cECPUGovernor\u0012\u001a\n\u0016k_ECPUGovernor_Invalid\u0010\u0000\u0012\u0017\n\u0013k_ECPUGovernor_Perf\u0010\u0001\u0012\u001c\n\u0018k_ECPUGovernor_Powersave\u0010\u0002\u0012\u0019\n\u0015k_ECPUGovernor_Manual\u0010\u0003*\u00e2\u0001\n\u000cEUpdaterType\u0012\u001a\n\u0016k_EUpdaterType_Invalid\u0010\u0000\u0012\u0019\n\u0015k_EUpdaterType_Client\u0010\u0001\u0012\u0015\n\u0011k_EUpdaterType_OS\u0010\u0002\u0012\u0017\n\u0013k_EUpdaterType_BIOS\u0010\u0003\u0012\u001d\n\u0019k_EUpdaterType_Aggregated\u0010\u0004\u0012\u0018\n\u0014k_EUpdaterType_Test1\u0010\u0005\u0012\u0018\n\u0014k_EUpdaterType_Test2\u0010\u0006\u0012\u0018\n\u0014k_EUpdaterType_Dummy\u0010\u0007*\u0097\u0002\n\rEUpdaterState\u0012\u001b\n\u0017k_EUpdaterState_Invalid\u0010\u0000\u0012\u001c\n\u0018k_EUpdaterState_UpToDate\u0010\u0002\u0012\u001c\n\u0018k_EUpdaterState_Checking\u0010\u0003\u0012\u001d\n\u0019k_EUpdaterState_Available\u0010\u0004\u0012\u001c\n\u0018k_EUpdaterState_Applying\u0010\u0005\u0012(\n$k_EUpdaterState_ClientRestartPending\u0010\u0006\u0012(\n$k_EUpdaterState_SystemRestartPending\u0010\u0007\u0012\u001c\n\u0018k_EUpdaterState_RollBack\u0010\u0008*\u00e1\u0001\n\u0018EStorageBlockContentType\u0012&\n\"k_EStorageBlockContentType_Invalid\u0010\u0000\u0012&\n\"k_EStorageBlockContentType_Unknown\u0010\u0001\u0012)\n%k_EStorageBlockContentType_FileSystem\u0010\u0002\u0012%\n!k_EStorageBlockContentType_Crypto\u0010\u0003\u0012#\n\u001fk_EStorageBlockContentType_Raid\u0010\u0004*\u00c3\u0001\n\u001bEStorageBlockFileSystemType\u0012)\n%k_EStorageBlockFileSystemType_Invalid\u0010\u0000\u0012)\n%k_EStorageBlockFileSystemType_Unknown\u0010\u0001\u0012&\n\"k_EStorageBlockFileSystemType_VFat\u0010\u0002\u0012&\n\"k_EStorageBlockFileSystemType_Ext4\u0010\u0003*\u00d0\u0001\n\u0016EStorageDriveMediaType\u0012$\n k_EStorageDriveMediaType_Invalid\u0010\u0000\u0012$\n k_EStorageDriveMediaType_Unknown\u0010\u0001\u0012 \n\u001ck_EStorageDriveMediaType_HDD\u0010\u0002\u0012 \n\u001ck_EStorageDriveMediaType_SSD\u0010\u0003\u0012&\n\"k_EStorageDriveMediaType_Removable\u0010\u0004*\u00b3\u0001\n\u001fESystemDisplayCompatibilityMode\u0012-\n)k_ESystemDisplayCompatibilityMode_Invalid\u0010\u0000\u0012*\n&k_ESystemDisplayCompatibilityMode_None\u0010\u0001\u00125\n1k_ESystemDisplayCompatibilityMode_MinimalBandwith\u0010\u0002*\u00ad\u0001\n\u001dESteamOSCompatibilityCategory\u0012+\n\'k_ESteamOSCompatibilityCategory_Unknown\u0010\u0000\u0012/\n+k_ESteamOSCompatibilityCategory_Unsupported\u0010\u0001\u0012.\n*k_ESteamOSCompatibilityCategory_Compatible\u0010\u0002*\u008f\u0002\n&ESteamOSCompatibilityResultDisplayType\u00126\n2k_ESteamOSCompatibilityResultDisplayType_Invisible\u0010\u0000\u0012:\n6k_ESteamOSCompatibilityResultDisplayType_Informational\u0010\u0001\u00128\n4k_ESteamOSCompatibilityResultDisplayType_Unsupported\u0010\u0002\u00127\n3k_ESteamOSCompatibilityResultDisplayType_Compatible\u0010\u0003*\u00e3\u0001\n\u001fESteamDeckCompatibilityCategory\u0012-\n)k_ESteamDeckCompatibilityCategory_Unknown\u0010\u0000\u00121\n-k_ESteamDeckCompatibilityCategory_Unsupported\u0010\u0001\u0012.\n*k_ESteamDeckCompatibilityCategory_Playable\u0010\u0002\u0012.\n*k_ESteamDeckCompatibilityCategory_Verified\u0010\u0003*\u00d0\u0002\n(ESteamDeckCompatibilityResultDisplayType\u00128\n4k_ESteamDeckCompatibilityResultDisplayType_Invisible\u0010\u0000\u0012<\n8k_ESteamDeckCompatibilityResultDisplayType_Informational\u0010\u0001\u0012:\n6k_ESteamDeckCompatibilityResultDisplayType_Unsupported\u0010\u0002\u00127\n3k_ESteamDeckCompatibilityResultDisplayType_Playable\u0010\u0003\u00127\n3k_ESteamDeckCompatibilityResultDisplayType_Verified\u0010\u0004*\u009a\u0002\n!ESteamDeckCompatibilityTestResult\u0012/\n+k_ESteamDeckCompatibilityTestResult_Invalid\u0010\u0000\u00125\n1k_ESteamDeckCompatibilityTestResult_NotApplicable\u0010\u0001\u0012,\n(k_ESteamDeckCompatibilityTestResult_Pass\u0010\u0002\u0012,\n(k_ESteamDeckCompatibilityTestResult_Fail\u0010\u0003\u00121\n-k_ESteamDeckCompatibilityTestResult_FailMinor\u0010\u0004*w\n\u0008EACState\u0012\u0016\n\u0012k_EACState_Unknown\u0010\u0000\u0012\u001b\n\u0017k_EACState_Disconnected\u0010\u0001\u0012\u0018\n\u0014k_EACState_Connected\u0010\u0002\u0012\u001c\n\u0018k_EACState_ConnectedSlow\u0010\u0003*\u0085\u0001\n\rEBatteryState\u0012\u001b\n\u0017k_EBatteryState_Unknown\u0010\u0000\u0012\u001f\n\u001bk_EBatteryState_Discharging\u0010\u0001\u0012\u001c\n\u0018k_EBatteryState_Charging\u0010\u0002\u0012\u0018\n\u0014k_EBatteryState_Full\u0010\u0003*\u00fe\u0001\n\tEOSBranch\u0012\u0017\n\u0013k_EOSBranch_Unknown\u0010\u0000\u0012\u0017\n\u0013k_EOSBranch_Release\u0010\u0001\u0012 \n\u001ck_EOSBranch_ReleaseCandidate\u0010\u0002\u0012\u0014\n\u0010k_EOSBranch_Beta\u0010\u0003\u0012\u001d\n\u0019k_EOSBranch_BetaCandidate\u0010\u0004\u0012\u0017\n\u0013k_EOSBranch_Preview\u0010\u0005\u0012 \n\u001ck_EOSBranch_PreviewCandidate\u0010\u0006\u0012\u0014\n\u0010k_EOSBranch_Main\u0010\u0007\u0012\u0017\n\u0013k_EOSBranch_Staging\u0010\u0008*\u00c6\u0003\n\u0011EBrowserGPUStatus\u0012\u001f\n\u001bk_EBrowserGPUStatus_Invalid\u0010\u0000\u0012\u001f\n\u001bk_EBrowserGPUStatus_Enabled\u0010\u0001\u0012\'\n#k_EBrowserGPUStatus_DisabledUnknown\u0010\u0002\u0012*\n&k_EBrowserGPUStatus_DisabledCrashCount\u0010\u0004\u0012)\n%k_EBrowserGPUStatus_DisabledBlocklist\u0010\u0005\u0012)\n%k_EBrowserGPUStatus_DisabledJSRequest\u0010\u0006\u0012+\n\'k_EBrowserGPUStatus_DisabledCommandLine\u0010\u0007\u0012-\n)k_EBrowserGPUStatus_DisabledRuntimeDetect\u0010\u0008\u00120\n,k_EBrowserGPUStatus_DisabledChildCommandLine\u0010\t\u00126\n2k_EBrowserGPUStatus_DisabledCompositingCommandLine\u0010\n*\u00e3\u0004\n\u0015EBrowserFeatureStatus\u0012#\n\u001fk_EBrowserFeatureStatus_Invalid\u0010\u0000\u0012$\n k_EBrowserFeatureStatus_NotFound\u0010\u0001\u0012#\n\u001fk_EBrowserFeatureStatus_Unknown\u0010\u0002\u0012,\n(k_EBrowserFeatureStatus_DisabledSoftware\u0010\u0003\u0012\'\n#k_EBrowserFeatureStatus_DisabledOff\u0010\u0004\u0012)\n%k_EBrowserFeatureStatus_DisabledOffOk\u0010\u0005\u0012/\n+k_EBrowserFeatureStatus_UnavailableSoftware\u0010\u0006\u0012*\n&k_EBrowserFeatureStatus_UnavailableOff\u0010\u0007\u0012,\n(k_EBrowserFeatureStatus_UnavailableOffOk\u0010\u0008\u0012+\n\'k_EBrowserFeatureStatus_EnabledReadback\u0010\t\u0012(\n$k_EBrowserFeatureStatus_EnabledForce\u0010\n\u0012#\n\u001fk_EBrowserFeatureStatus_Enabled\u0010\u000b\u0012%\n!k_EBrowserFeatureStatus_EnabledOn\u0010\u000c\u0012*\n&k_EBrowserFeatureStatus_EnabledForceOn\u0010\r*\u009f\u0005\n\u000cEGpuDriverId\u0012\u001a\n\u0016k_EGpuDriverId_Invalid\u0010\u0000\u0012\u001a\n\u0016k_EGpuDriverId_Unknown\u0010\u0001\u0012!\n\u001dk_EGpuDriverId_AmdProprietary\u0010\u0002\u0012 \n\u001ck_EGpuDriverId_AmdOpenSource\u0010\u0003\u0012\u001b\n\u0017k_EGpuDriverId_MesaRadv\u0010\u0004\u0012$\n k_EGpuDriverId_NvidiaProprietary\u0010\u0005\u0012\"\n\u001ek_EGpuDriverId_IntelPropietary\u0010\u0006\u0012\u001c\n\u0018k_EGpuDriverId_MesaIntel\u0010\u0007\u0012&\n\"k_EGpuDriverId_QualcommProprietary\u0010\u0008\u0012!\n\u001dk_EGpuDriverId_ArmProprietary\u0010\t\u0012$\n k_EGpuDriverId_GoogleSwiftshader\u0010\n\u0012&\n\"k_EGpuDriverId_BroadcomProprietary\u0010\u000b\u0012\u001f\n\u001bk_EGpuDriverId_MesaLLVMPipe\u0010\u000c\u0012\u001b\n\u0017k_EGpuDriverId_MoltenVK\u0010\r\u0012\u001d\n\u0019k_EGpuDriverId_MesaTurnip\u0010\u000e\u0012\u001c\n\u0018k_EGpuDriverId_MesaPanVK\u0010\u000f\u0012\u001c\n\u0018k_EGpuDriverId_MesaVenus\u0010\u0010\u0012\u001c\n\u0018k_EGpuDriverId_MesaDozen\u0010\u0011\u0012\u001a\n\u0016k_EGpuDriverId_MesaNVK\u0010\u0012\u0012!\n\u001dk_EGpuDriverId_MesaHoneyKrisp\u0010\u0013*\u00dd\u0005\n\u0013ECommunityItemClass\u0012!\n\u001dk_ECommunityItemClass_Invalid\u0010\u0000\u0012\u001f\n\u001bk_ECommunityItemClass_Badge\u0010\u0001\u0012\"\n\u001ek_ECommunityItemClass_GameCard\u0010\u0002\u0012+\n\'k_ECommunityItemClass_ProfileBackground\u0010\u0003\u0012\"\n\u001ek_ECommunityItemClass_Emoticon\u0010\u0004\u0012%\n!k_ECommunityItemClass_BoosterPack\u0010\u0005\u0012$\n k_ECommunityItemClass_Consumable\u0010\u0006\u0012!\n\u001dk_ECommunityItemClass_GameGoo\u0010\u0007\u0012)\n%k_ECommunityItemClass_ProfileModifier\u0010\u0008\u0012\u001f\n\u001bk_ECommunityItemClass_Scene\u0010\t\u0012$\n k_ECommunityItemClass_SalienItem\u0010\n\u0012!\n\u001dk_ECommunityItemClass_Sticker\u0010\u000b\u0012$\n k_ECommunityItemClass_ChatEffect\u0010\u000c\u0012/\n+k_ECommunityItemClass_MiniProfileBackground\u0010\r\u0012%\n!k_ECommunityItemClass_AvatarFrame\u0010\u000e\u0012(\n$k_ECommunityItemClass_AnimatedAvatar\u0010\u000f\u0012/\n+k_ECommunityItemClass_SteamDeckKeyboardSkin\u0010\u0010\u0012/\n+k_ECommunityItemClass_SteamDeckStartupMovie\u0010\u0011*\u00d9\u0001\n\u001fESteamDeckCompatibilityFeedback\u0012+\n\'k_ESteamDeckCompatibilityFeedback_Unset\u0010\u0000\u0012+\n\'k_ESteamDeckCompatibilityFeedback_Agree\u0010\u0001\u0012.\n*k_ESteamDeckCompatibilityFeedback_Disagree\u0010\u0002\u0012,\n(k_ESteamDeckCompatibilityFeedback_Ignore\u0010\u0003*\u009f\u0001\n\u001eEProvideDeckFeedbackPreference\u0012*\n&k_EProvideDeckFeedbackPreference_Unset\u0010\u0000\u0012(\n$k_EProvideDeckFeedbackPreference_Yes\u0010\u0001\u0012\'\n#k_EProvideDeckFeedbackPreference_No\u0010\u0002*\u00b1\u0003\n\rETouchGesture\u0012\u0017\n\u0013k_ETouchGestureNone\u0010\u0000\u0012\u0018\n\u0014k_ETouchGestureTouch\u0010\u0001\u0012\u0016\n\u0012k_ETouchGestureTap\u0010\u0002\u0012\u001c\n\u0018k_ETouchGestureDoubleTap\u0010\u0003\u0012\u001d\n\u0019k_ETouchGestureShortPress\u0010\u0004\u0012\u001c\n\u0018k_ETouchGestureLongPress\u0010\u0005\u0012\u001a\n\u0016k_ETouchGestureLongTap\u0010\u0006\u0012\u001f\n\u001bk_ETouchGestureTwoFingerTap\u0010\u0007\u0012\u001f\n\u001bk_ETouchGestureTapCancelled\u0010\u0008\u0012\u001d\n\u0019k_ETouchGesturePinchBegin\u0010\t\u0012\u001e\n\u001ak_ETouchGesturePinchUpdate\u0010\n\u0012\u001b\n\u0017k_ETouchGesturePinchEnd\u0010\u000b\u0012\u001d\n\u0019k_ETouchGestureFlingStart\u0010\u000c\u0012!\n\u001dk_ETouchGestureFlingCancelled\u0010\r*\u008c\u0001\n\u0013ESessionPersistence\u0012*\n\u001dk_ESessionPersistence_Invalid\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012#\n\u001fk_ESessionPersistence_Ephemeral\u0010\u0000\u0012$\n k_ESessionPersistence_Persistent\u0010\u0001*\u00d9\u0001\n\u001aENewSteamAnnouncementState\u0012(\n$k_ENewSteamAnnouncementState_Invalid\u0010\u0000\u0012(\n$k_ENewSteamAnnouncementState_AllRead\u0010\u0001\u00120\n,k_ENewSteamAnnouncementState_NewAnnouncement\u0010\u0002\u00125\n1k_ENewSteamAnnouncementState_FeaturedAnnouncement\u0010\u0003*\u00fe\u0001\n\nEForumType\u0012\u0018\n\u0014k_EForumType_Invalid\u0010\u0000\u0012\u0018\n\u0014k_EForumType_General\u0010\u0001\u0012\u001e\n\u001ak_EForumType_ReportedPosts\u0010\u0002\u0012\u0019\n\u0015k_EForumType_Workshop\u0010\u0003\u0012\u001e\n\u001ak_EForumType_PublishedFile\u0010\u0004\u0012\u0018\n\u0014k_EForumType_Trading\u0010\u0005\u0012\u0019\n\u0015k_EForumType_PlayTest\u0010\u0006\u0012\u0016\n\u0012k_EForumType_Event\u0010\u0007\u0012\u0014\n\u0010k_EForumType_Max\u0010\u0008*\u008b\u0007\n\u0012ECommentThreadType\u0012\u001f\n\u001bk_ECommentThreadTypeInvalid\u0010\u0000\u0012-\n)k_ECommentThreadTypeScreenshot_Deprecated\u0010\u0001\u00121\n-k_ECommentThreadTypeWorkshopAccount_Developer\u0010\u0002\u0012.\n*k_ECommentThreadTypeWorkshopAccount_Public\u0010\u0003\u0012/\n+k_ECommentThreadTypePublishedFile_Developer\u0010\u0004\u0012,\n(k_ECommentThreadTypePublishedFile_Public\u0010\u0005\u0012\u001c\n\u0018k_ECommentThreadTypeTest\u0010\u0006\u0012\"\n\u001ek_ECommentThreadTypeForumTopic\u0010\u0007\u0012&\n\"k_ECommentThreadTypeRecommendation\u0010\u0008\u0012(\n$k_ECommentThreadTypeVideo_Deprecated\u0010\t\u0012\u001f\n\u001bk_ECommentThreadTypeProfile\u0010\n\u0012 \n\u001ck_ECommentThreadTypeNewsPost"

    const-string v1, "\u0010\u000b\u0012\u001c\n\u0018k_ECommentThreadTypeClan\u0010\u000c\u0012(\n$k_ECommentThreadTypeClanAnnouncement\u0010\r\u0012!\n\u001dk_ECommentThreadTypeClanEvent\u0010\u000e\u0012+\n\'k_ECommentThreadTypeUserStatusPublished\u0010\u000f\u0012+\n\'k_ECommentThreadTypeUserReceivedNewGame\u0010\u0010\u00122\n.k_ECommentThreadTypePublishedFile_Announcement\u0010\u0011\u0012(\n$k_ECommentThreadTypeModeratorMessage\u0010\u0012\u0012&\n\"k_ECommentThreadTypeClanCuratedApp\u0010\u0013\u0012$\n k_ECommentThreadTypeQAndASession\u0010\u0014\u0012\u001b\n\u0017k_ECommentThreadTypeMax\u0010\u0015*\u00d7\u0001\n\u0014EBroadcastPermission\u0012\"\n\u001ek_EBroadcastPermissionDisabled\u0010\u0000\u0012(\n$k_EBroadcastPermissionFriendsApprove\u0010\u0001\u0012(\n$k_EBroadcastPermissionFriendsAllowed\u0010\u0002\u0012 \n\u001ck_EBroadcastPermissionPublic\u0010\u0003\u0012%\n!k_EBroadcastPermissionSubscribers\u0010\u0004*f\n\u0018EBroadcastEncoderSetting\u0012\"\n\u001ek_EBroadcastEncoderBestQuality\u0010\u0000\u0012&\n\"k_EBroadcastEncoderBestPerformance\u0010\u0001*y\n\u0014ECloudGamingPlatform\u0012\u001e\n\u001ak_ECloudGamingPlatformNone\u0010\u0000\u0012\u001f\n\u001bk_ECloudGamingPlatformValve\u0010\u0001\u0012 \n\u001ck_ECloudGamingPlatformNVIDIA\u0010\u0002*\u00ed\u0002\n\u0018ECompromiseDetectionType\u0012#\n\u001fk_ECompromiseDetectionType_None\u0010\u0000\u0012)\n%k_ECompromiseDetectionType_TradeEvent\u0010\u0001\u0012*\n&k_ECompromiseDetectionType_ApiCallRate\u0010\u0002\u0012%\n!k_ECompromiseDetectionType_Manual\u0010\u0003\u0012+\n\'k_ECompromiseDetectionType_TicketAction\u0010\u0004\u0012.\n*k_ECompromiseDetectionType_MaliciousRefund\u0010\u0005\u0012&\n\"k_ECompromiseDetectionType_Move2FA\u0010\u0006\u0012)\n%k_ECompromiseDetectionType_DeviceType\u0010\u0007*\u00d6\u0001\n\u001aEAsyncGameSessionUserState\u00120\n#k_EAsyncGameSessionUserStateUnknown\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00120\n,k_EAsyncGameSessionUserStateWaitingForOthers\u0010\u0000\u0012.\n*k_EAsyncGameSessionUserStateReadyForAction\u0010\u0001\u0012$\n k_EAsyncGameSessionUserStateDone\u0010\u0002*\u00c4\u0001\n\u001fEAsyncGameSessionUserVisibility\u0012;\n7k_EAsyncGameSessionUserVisibilityEnvelopeAndSessionList\u0010\u0000\u00124\n0k_EAsyncGameSessionUserVisibilitySessionListOnly\u0010\u0001\u0012.\n*k_EAsyncGameSessionUserVisibilityDismissed\u0010\u0002*\u00d4\u0001\n\u0012EGameRecordingType\u0012 \n\u001ck_EGameRecordingType_Unknown\u0010\u0000\u0012%\n!k_EGameRecordingType_NotRecording\u0010\u0001\u0012(\n$k_EGameRecordingType_ManualRecording\u0010\u0002\u0012,\n(k_EGameRecordingType_BackgroundRecording\u0010\u0003\u0012\u001d\n\u0019k_EGameRecordingType_Clip\u0010\u0004*\\\n\u000cEExportCodec\u0012\u001a\n\u0016k_EExportCodec_Default\u0010\u0000\u0012\u0017\n\u0013k_EExportCodec_H264\u0010\u0001\u0012\u0017\n\u0013k_EExportCodec_H265\u0010\u0002*\u00ea\u0003\n\rEProtoAppType\u0012\u0015\n\u0011k_EAppTypeInvalid\u0010\u0000\u0012\u0012\n\u000ek_EAppTypeGame\u0010\u0001\u0012\u0019\n\u0015k_EAppTypeApplication\u0010\u0002\u0012\u0012\n\u000ek_EAppTypeTool\u0010\u0004\u0012\u0012\n\u000ek_EAppTypeDemo\u0010\u0008\u0012\u0017\n\u0013k_EAppTypeDeprected\u0010\u0010\u0012\u0011\n\rk_EAppTypeDLC\u0010 \u0012\u0013\n\u000fk_EAppTypeGuide\u0010@\u0012\u0015\n\u0010k_EAppTypeDriver\u0010\u0080\u0001\u0012\u0015\n\u0010k_EAppTypeConfig\u0010\u0080\u0002\u0012\u0017\n\u0012k_EAppTypeHardware\u0010\u0080\u0004\u0012\u0018\n\u0013k_EAppTypeFranchise\u0010\u0080\u0008\u0012\u0014\n\u000fk_EAppTypeVideo\u0010\u0080\u0010\u0012\u0015\n\u0010k_EAppTypePlugin\u0010\u0080 \u0012\u0019\n\u0014k_EAppTypeMusicAlbum\u0010\u0080@\u0012\u0016\n\u0010k_EAppTypeSeries\u0010\u0080\u0080\u0001\u0012\u0015\n\u000fk_EAppTypeComic\u0010\u0080\u0080\u0002\u0012\u0014\n\u000ek_EAppTypeBeta\u0010\u0080\u0080\u0004\u0012\u001a\n\u0012k_EAppTypeShortcut\u0010\u0080\u0080\u0080\u0080\u0004\u0012 \n\u0013k_EAppTypeDepotOnly\u0010\u0080\u0080\u0080\u0080\u00f8\u00ff\u00ff\u00ff\u00ff\u0001*\u0096\u0001\n\u0019EChildProcessQueryCommand\u0012\'\n#k_EChildProcessQueryCommand_Invalid\u0010\u0000\u0012+\n\'k_EChildProcessQueryCommand_GpuTopology\u0010\u0001\u0012#\n\u001fk_EChildProcessQueryCommand_Max\u0010\u0002*\u00f6\u0002\n\u001aEChildProcessQueryExitCode\u0012(\n$k_EChildProcessQueryExitCode_Success\u0010\u0000\u0012:\n-k_EChildProcessQueryExitCode_ErrorCommandline\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00124\n\'k_EChildProcessQueryExitCode_ErrorOther\u0010\u00fe\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012<\n/k_EChildProcessQueryExitCode_ErrorUnimplemented\u0010\u00fd\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00127\n*k_EChildProcessQueryExitCode_ErrorFileSave\u0010\u00fc\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012E\n8k_EChildProcessQueryExitCode_ErrorNotSupportedByPlatform\u0010\u00fb\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001*\u00f2\u0001\n EWindowsUpdateInstallationImpact\u00127\n*k_EWindowsUpdateInstallationImpact_Unknown\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012-\n)k_EWindowsUpdateInstallationImpact_Normal\u0010\u0000\u0012,\n(k_EWindowsUpdateInstallationImpact_Minor\u0010\u0001\u00128\n4k_EWindowsUpdateInstallationImpact_ExclusiveHandling\u0010\u0002*\u00f2\u0001\n\u001cEWindowsUpdateRebootBehavior\u00123\n&k_EWindowsUpdateRebootBehavior_Unknown\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00123\n/k_EWindowsUpdateRebootBehavior_NeverNeedsReboot\u0010\u0000\u00124\n0k_EWindowsUpdateRebootBehavior_AlwaysNeedsReboot\u0010\u0001\u00122\n.k_EWindowsUpdateRebootBehavior_MightNeedReboot\u0010\u0002*\u00fe\u0001\n\u0016EExternalSaleEventType\u0012$\n k_EExternalSaleEventType_Unknown\u0010\u0000\u0012&\n\"k_EExternalSaleEventType_Publisher\u0010\u0001\u0012%\n!k_EExternalSaleEventType_Showcase\u0010\u0002\u0012#\n\u001fk_EExternalSaleEventType_Region\u0010\u0003\u0012\"\n\u001ek_EExternalSaleEventType_Theme\u0010\u0004\u0012&\n\"k_EExternalSaleEventType_Franchise\u0010\u0005*\u00e9\u0001\n\u0019EContentReportSubjectType\u0012\'\n#k_EContentReportSubjectType_Invalid\u0010\u0000\u0012)\n%k_EContentReportSubjectType_ForumPost\u0010\u0001\u0012*\n&k_EContentReportSubjectType_UGCComment\u0010\u0002\u0012\'\n#k_EContentReportSubjectType_UGCFile\u0010\u0003\u0012#\n\u001fk_EContentReportSubjectType_MAX\u0010\u0004*\u00da\u0002\n\u0014EContentReportReason\u0012\"\n\u001ek_EContentReportReason_Invalid\u0010\u0000\u0012\"\n\u001ek_EContentReportReason_Abusive\u0010\u0001\u0012%\n!k_EContentReportReason_Commercial\u0010\u0002\u0012#\n\u001fk_EContentReportReason_OffTopic\u0010\u0003\u0012%\n!k_EContentReportReason_Prohibited\u0010\u0004\u0012 \n\u001ck_EContentReportReason_Other\u0010\u0005\u0012\u001f\n\u001bk_EContentReportReason_CSAM\u0010\u0006\u0012$\n k_EContentReportReason_Terrorism\u0010\u0007\u0012\u001e\n\u001ak_EContentReportReason_MAX\u0010\u0008*\u00d9\u0001\n\u001eEControlledLegalCategoryStatus\u0012)\n%k_EControlledLegalCategoryStatus_None\u0010\u0000\u0012,\n(k_EControlledLegalCategoryStatus_Accused\u0010\u0001\u0012.\n*k_EControlledLegalCategoryStatus_Convicted\u0010\u0002\u0012.\n*k_EControlledLegalCategoryStatus_Acquitted\u0010\u0003*\u00a9\u0001\n\u0016EContentModeratorLevel\u0012 \n\u001ck_EContentModeratorLevel_Any\u0010\u0000\u0012\'\n#k_EContentModeratorLevel_Supervisor\u0010\u0001\u0012\"\n\u001ek_EContentModeratorLevel_Valve\u0010\n\u0012 \n\u001ck_EContentModeratorLevel_MAX\u0010\u000b*\u00e6\u0001\n\u0018EContentReportResolution\u0012)\n%k_EContentReportResolution_Unresolved\u0010\u0000\u0012(\n$k_EContentReportResolution_Acquitted\u0010\u0001\u0012&\n\"k_EContentReportResolution_Removed\u0010\u0002\u0012)\n%k_EContentReportResolution_Relabelled\u0010\u0003\u0012\"\n\u001ek_EContentReportResolution_MAX\u0010\u0004*\u00d8\u0001\n\u0017EContentModeratedReason\u0012%\n!k_EContentModeratedReason_Invalid\u0010\u0000\u0012\"\n\u001ek_EContentModeratedReason_None\u0010\u0001\u0012%\n!k_EContentModeratedReason_Unknown\u0010\u0002\u0012(\n$k_EContentModeratedReason_AnimalHarm\u0010\u0003\u0012!\n\u001dk_EContentModeratedReason_MAX\u0010\u0004B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 11384
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    filled-new-array {v1}, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 11382
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11386
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->resolveAllFeaturesImmutable()V

    .line 11387
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 10844
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EBluetoothDeviceType (in.dragonbra.javasteam.protobufs.steamclient.Enums$EBluetoothDeviceType)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EBluetoothDeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_BluetoothDeviceType_Computer:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Computer_VALUE:I = 0x3

.field public static final enum k_BluetoothDeviceType_Gamepad:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Gamepad_VALUE:I = 0xa

.field public static final enum k_BluetoothDeviceType_Headphones:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Headphones_VALUE:I = 0x5

.field public static final enum k_BluetoothDeviceType_Headset:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Headset_VALUE:I = 0x4

.field public static final enum k_BluetoothDeviceType_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Invalid_VALUE:I = 0x0

.field public static final enum k_BluetoothDeviceType_Joystick:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Joystick_VALUE:I = 0x9

.field public static final enum k_BluetoothDeviceType_Keyboard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Keyboard_VALUE:I = 0xb

.field public static final enum k_BluetoothDeviceType_Mouse:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Mouse_VALUE:I = 0x8

.field public static final enum k_BluetoothDeviceType_OtherAudio:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_OtherAudio_VALUE:I = 0x7

.field public static final enum k_BluetoothDeviceType_Phone:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Phone_VALUE:I = 0x2

.field public static final enum k_BluetoothDeviceType_Speakers:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Speakers_VALUE:I = 0x6

.field public static final enum k_BluetoothDeviceType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field public static final k_BluetoothDeviceType_Unknown_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 12

    .line 2204
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Phone:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Computer:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Headset:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Headphones:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v6, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Speakers:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v7, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_OtherAudio:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Mouse:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v9, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Joystick:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Gamepad:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    sget-object v11, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Keyboard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    filled-new-array/range {v0 .. v11}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 2209
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2213
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Unknown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2217
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Phone"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Phone:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2221
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Computer"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Computer:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2225
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Headset"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Headset:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2229
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Headphones"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Headphones:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2233
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Speakers"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Speakers:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2237
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_OtherAudio"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_OtherAudio:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2241
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Mouse"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Mouse:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2245
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Joystick"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Joystick:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2249
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Gamepad"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Gamepad:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2253
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const-string v1, "k_BluetoothDeviceType_Keyboard"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Keyboard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2204
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2257
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 2263
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 2257
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 2356
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2376
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2390
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 1

    packed-switch p0, :pswitch_data_2a

    const/4 p0, 0x0

    return-object p0

    .line 2346
    :pswitch_5
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Keyboard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2345
    :pswitch_8
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Gamepad:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2344
    :pswitch_b
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Joystick:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2343
    :pswitch_e
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Mouse:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2342
    :pswitch_11
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_OtherAudio:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2341
    :pswitch_14
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Speakers:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2340
    :pswitch_17
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Headphones:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2339
    :pswitch_1a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Headset:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2338
    :pswitch_1d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Computer:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2337
    :pswitch_20
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Phone:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2336
    :pswitch_23
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    .line 2335
    :pswitch_26
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 2373
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
            ">;"
        }
    .end annotation

    .line 2353
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2326
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 3

    .line 2380
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 2384
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 2381
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2204
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 1

    .line 2204
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 2369
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 2316
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 2365
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EBluetoothDeviceType.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$EBluetoothDeviceType$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2357
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;
    .registers 2

    .line 2359
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ECloudStoragePersistState (in.dragonbra.javasteam.protobufs.steamclient.Enums$ECloudStoragePersistState)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECloudStoragePersistState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_ECloudStoragePersistStateDeleted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

.field public static final k_ECloudStoragePersistStateDeleted_VALUE:I = 0x2

.field public static final enum k_ECloudStoragePersistStateForgotten:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

.field public static final k_ECloudStoragePersistStateForgotten_VALUE:I = 0x1

.field public static final enum k_ECloudStoragePersistStatePersisted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

.field public static final k_ECloudStoragePersistStatePersisted_VALUE:I


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 3

    .line 1334
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStatePersisted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStateForgotten:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStateDeleted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    filled-new-array {v0, v1, v2}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 1339
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    const-string v1, "k_ECloudStoragePersistStatePersisted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStatePersisted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    .line 1343
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    const-string v1, "k_ECloudStoragePersistStateForgotten"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStateForgotten:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    .line 1347
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    const-string v1, "k_ECloudStoragePersistStateDeleted"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStateDeleted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    .line 1334
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    .line 1351
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    .line 1357
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 1351
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1405
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1425
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1439
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1395
    :cond_a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStateDeleted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-object p0

    .line 1394
    :cond_d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStateForgotten:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-object p0

    .line 1393
    :cond_10
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->k_ECloudStoragePersistStatePersisted:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 1422
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;",
            ">;"
        }
    .end annotation

    .line 1402
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1384
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 3

    .line 1429
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 1433
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 1430
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1334
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 1

    .line 1334
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 1418
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 1374
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 1414
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ECloudStoragePersistState.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$ECloudStoragePersistState$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1406
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 2

    .line 1408
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ECommunityItemClass (in.dragonbra.javasteam.protobufs.steamclient.Enums$ECommunityItemClass)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECommunityItemClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_ECommunityItemClass_AnimatedAvatar:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_AnimatedAvatar_VALUE:I = 0xf

.field public static final enum k_ECommunityItemClass_AvatarFrame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_AvatarFrame_VALUE:I = 0xe

.field public static final enum k_ECommunityItemClass_Badge:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_Badge_VALUE:I = 0x1

.field public static final enum k_ECommunityItemClass_BoosterPack:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_BoosterPack_VALUE:I = 0x5

.field public static final enum k_ECommunityItemClass_ChatEffect:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_ChatEffect_VALUE:I = 0xc

.field public static final enum k_ECommunityItemClass_Consumable:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_Consumable_VALUE:I = 0x6

.field public static final enum k_ECommunityItemClass_Emoticon:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_Emoticon_VALUE:I = 0x4

.field public static final enum k_ECommunityItemClass_GameCard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_GameCard_VALUE:I = 0x2

.field public static final enum k_ECommunityItemClass_GameGoo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_GameGoo_VALUE:I = 0x7

.field public static final enum k_ECommunityItemClass_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_Invalid_VALUE:I = 0x0

.field public static final enum k_ECommunityItemClass_MiniProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_MiniProfileBackground_VALUE:I = 0xd

.field public static final enum k_ECommunityItemClass_ProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_ProfileBackground_VALUE:I = 0x3

.field public static final enum k_ECommunityItemClass_ProfileModifier:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_ProfileModifier_VALUE:I = 0x8

.field public static final enum k_ECommunityItemClass_SalienItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_SalienItem_VALUE:I = 0xa

.field public static final enum k_ECommunityItemClass_Scene:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_Scene_VALUE:I = 0x9

.field public static final enum k_ECommunityItemClass_SteamDeckKeyboardSkin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_SteamDeckKeyboardSkin_VALUE:I = 0x10

.field public static final enum k_ECommunityItemClass_SteamDeckStartupMovie:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_SteamDeckStartupMovie_VALUE:I = 0x11

.field public static final enum k_ECommunityItemClass_Sticker:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

.field public static final k_ECommunityItemClass_Sticker_VALUE:I = 0xb


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 18

    .line 6743
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Badge:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_GameCard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Emoticon:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_BoosterPack:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v6, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Consumable:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v7, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_GameGoo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ProfileModifier:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v9, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Scene:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SalienItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v11, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Sticker:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v12, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ChatEffect:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v13, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_MiniProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v14, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_AvatarFrame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v15, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_AnimatedAvatar:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v16, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SteamDeckKeyboardSkin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    sget-object v17, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SteamDeckStartupMovie:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    filled-new-array/range {v0 .. v17}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 6748
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6752
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_Badge"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Badge:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6756
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_GameCard"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_GameCard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6760
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_ProfileBackground"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6764
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_Emoticon"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Emoticon:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6768
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_BoosterPack"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_BoosterPack:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6772
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_Consumable"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Consumable:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6776
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_GameGoo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_GameGoo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6780
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_ProfileModifier"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ProfileModifier:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6784
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_Scene"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Scene:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6788
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_SalienItem"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SalienItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6792
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_Sticker"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Sticker:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6796
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_ChatEffect"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ChatEffect:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6800
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_MiniProfileBackground"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_MiniProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6804
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_AvatarFrame"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_AvatarFrame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6808
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_AnimatedAvatar"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_AnimatedAvatar:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6812
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_SteamDeckKeyboardSkin"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SteamDeckKeyboardSkin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6816
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    const-string v1, "k_ECommunityItemClass_SteamDeckStartupMovie"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SteamDeckStartupMovie:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6743
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6820
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    .line 6826
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 6820
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 6949
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6969
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6982
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6983
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 1

    packed-switch p0, :pswitch_data_3c

    const/4 p0, 0x0

    return-object p0

    .line 6939
    :pswitch_5
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SteamDeckStartupMovie:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6938
    :pswitch_8
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SteamDeckKeyboardSkin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6937
    :pswitch_b
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_AnimatedAvatar:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6936
    :pswitch_e
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_AvatarFrame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6935
    :pswitch_11
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_MiniProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6934
    :pswitch_14
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ChatEffect:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6933
    :pswitch_17
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Sticker:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6932
    :pswitch_1a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_SalienItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6931
    :pswitch_1d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Scene:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6930
    :pswitch_20
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ProfileModifier:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6929
    :pswitch_23
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_GameGoo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6928
    :pswitch_26
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Consumable:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6927
    :pswitch_29
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_BoosterPack:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6926
    :pswitch_2c
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Emoticon:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6925
    :pswitch_2f
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_ProfileBackground:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6924
    :pswitch_32
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_GameCard:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6923
    :pswitch_35
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Badge:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    .line 6922
    :pswitch_38
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->k_ECommunityItemClass_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 6966
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;",
            ">;"
        }
    .end annotation

    .line 6946
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6913
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 3

    .line 6973
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 6977
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 6974
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6743
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 1

    .line 6743
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 6962
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 6903
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 6958
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ECommunityItemClass.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$ECommunityItemClass$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 6950
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;
    .registers 2

    .line 6952
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECommunityItemClass;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EGameRecordingType (in.dragonbra.javasteam.protobufs.steamclient.Enums$EGameRecordingType)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EGameRecordingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EGameRecordingType_BackgroundRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field public static final k_EGameRecordingType_BackgroundRecording_VALUE:I = 0x3

.field public static final enum k_EGameRecordingType_Clip:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field public static final k_EGameRecordingType_Clip_VALUE:I = 0x4

.field public static final enum k_EGameRecordingType_ManualRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field public static final k_EGameRecordingType_ManualRecording_VALUE:I = 0x2

.field public static final enum k_EGameRecordingType_NotRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field public static final k_EGameRecordingType_NotRecording_VALUE:I = 0x1

.field public static final enum k_EGameRecordingType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

.field public static final k_EGameRecordingType_Unknown_VALUE:I


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 5

    .line 8879
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_NotRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_ManualRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_BackgroundRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_Clip:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 8884
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    const-string v1, "k_EGameRecordingType_Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8888
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    const-string v1, "k_EGameRecordingType_NotRecording"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_NotRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8892
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    const-string v1, "k_EGameRecordingType_ManualRecording"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_ManualRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8896
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    const-string v1, "k_EGameRecordingType_BackgroundRecording"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_BackgroundRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8900
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    const-string v1, "k_EGameRecordingType_Clip"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_Clip:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8879
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8904
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    .line 8910
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 8904
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 8968
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8988
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9001
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9002
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 8958
    :cond_10
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_Clip:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object p0

    .line 8957
    :cond_13
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_BackgroundRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object p0

    .line 8956
    :cond_16
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_ManualRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object p0

    .line 8955
    :cond_19
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_NotRecording:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object p0

    .line 8954
    :cond_1c
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->k_EGameRecordingType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 8985
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;",
            ">;"
        }
    .end annotation

    .line 8965
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8945
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 3

    .line 8992
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 8996
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 8993
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8879
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 1

    .line 8879
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 8981
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 8935
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 8977
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EGameRecordingType.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$EGameRecordingType$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8969
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;
    .registers 2

    .line 8971
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EGameRecordingType;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ENewSteamAnnouncementState (in.dragonbra.javasteam.protobufs.steamclient.Enums$ENewSteamAnnouncementState)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENewSteamAnnouncementState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_ENewSteamAnnouncementState_AllRead:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

.field public static final k_ENewSteamAnnouncementState_AllRead_VALUE:I = 0x1

.field public static final enum k_ENewSteamAnnouncementState_FeaturedAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

.field public static final k_ENewSteamAnnouncementState_FeaturedAnnouncement_VALUE:I = 0x3

.field public static final enum k_ENewSteamAnnouncementState_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

.field public static final k_ENewSteamAnnouncementState_Invalid_VALUE:I = 0x0

.field public static final enum k_ENewSteamAnnouncementState_NewAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

.field public static final k_ENewSteamAnnouncementState_NewAnnouncement_VALUE:I = 0x2


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 4

    .line 7556
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_AllRead:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_NewAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_FeaturedAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    filled-new-array {v0, v1, v2, v3}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 7561
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    const-string v1, "k_ENewSteamAnnouncementState_Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    .line 7565
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    const-string v1, "k_ENewSteamAnnouncementState_AllRead"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_AllRead:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    .line 7569
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    const-string v1, "k_ENewSteamAnnouncementState_NewAnnouncement"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_NewAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    .line 7573
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    const-string v1, "k_ENewSteamAnnouncementState_FeaturedAnnouncement"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_FeaturedAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    .line 7556
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    .line 7577
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    .line 7583
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 7577
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 7636
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7656
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7669
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7670
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 7626
    :cond_d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_FeaturedAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-object p0

    .line 7625
    :cond_10
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_NewAnnouncement:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-object p0

    .line 7624
    :cond_13
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_AllRead:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-object p0

    .line 7623
    :cond_16
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->k_ENewSteamAnnouncementState_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 7653
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;",
            ">;"
        }
    .end annotation

    .line 7633
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7614
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 3

    .line 7660
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 7664
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7661
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7556
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 1

    .line 7556
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 7649
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 7604
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 7645
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ENewSteamAnnouncementState.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$ENewSteamAnnouncementState$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7637
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;
    .registers 2

    .line 7639
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ENewSteamAnnouncementState;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EProfileCustomizationType (in.dragonbra.javasteam.protobufs.steamclient.Enums$EProfileCustomizationType)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EProfileCustomizationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EProfileCustomizationTypeAchievements:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final enum k_EProfileCustomizationTypeAchievementsCompletionist:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeAchievementsCompletionist_VALUE:I = 0x17

.field public static final k_EProfileCustomizationTypeAchievements_VALUE:I = 0x11

.field public static final enum k_EProfileCustomizationTypeArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeArtworkShowcase_VALUE:I = 0xd

.field public static final enum k_EProfileCustomizationTypeBadges:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeBadges_VALUE:I = 0x5

.field public static final enum k_EProfileCustomizationTypeCustomText:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeCustomText_VALUE:I = 0x8

.field public static final enum k_EProfileCustomizationTypeFavoriteGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeFavoriteGame_VALUE:I = 0x6

.field public static final enum k_EProfileCustomizationTypeFavoriteGroup:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeFavoriteGroup_VALUE:I = 0x9

.field public static final enum k_EProfileCustomizationTypeGameCollector:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeGameCollector_VALUE:I = 0x2

.field public static final enum k_EProfileCustomizationTypeGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeGreenlight_VALUE:I = 0x12

.field public static final enum k_EProfileCustomizationTypeGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeGuides_VALUE:I = 0xf

.field public static final enum k_EProfileCustomizationTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeInvalid_VALUE:I = 0x0

.field public static final enum k_EProfileCustomizationTypeItemShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeItemShowcase_VALUE:I = 0x3

.field public static final enum k_EProfileCustomizationTypeLoyaltyRewardReactions:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeLoyaltyRewardReactions_VALUE:I = 0x15

.field public static final enum k_EProfileCustomizationTypeMyGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeMyGreenlight_VALUE:I = 0x13

.field public static final enum k_EProfileCustomizationTypeMyGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeMyGuides_VALUE:I = 0x10

.field public static final enum k_EProfileCustomizationTypeMyWorkshop:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeMyWorkshop_VALUE:I = 0xc

.field public static final enum k_EProfileCustomizationTypeRareAchievementShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeRareAchievementShowcase_VALUE:I = 0x1

.field public static final enum k_EProfileCustomizationTypeRecommendation:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeRecommendation_VALUE:I = 0xa

.field public static final enum k_EProfileCustomizationTypeReplay:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeReplay_VALUE:I = 0x18

.field public static final enum k_EProfileCustomizationTypeSalien:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeSalien_VALUE:I = 0x14

.field public static final enum k_EProfileCustomizationTypeScreenshotShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeScreenshotShowcase_VALUE:I = 0x7

.field public static final enum k_EProfileCustomizationTypeSingleArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeSingleArtworkShowcase_VALUE:I = 0x16

.field public static final enum k_EProfileCustomizationTypeTradeShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeTradeShowcase_VALUE:I = 0x4

.field public static final enum k_EProfileCustomizationTypeVideoShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeVideoShowcase_VALUE:I = 0xe

.field public static final enum k_EProfileCustomizationTypeWorkshopItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

.field public static final k_EProfileCustomizationTypeWorkshopItem_VALUE:I = 0xb


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 25

    .line 899
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeRareAchievementShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGameCollector:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeItemShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeTradeShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeBadges:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v6, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeFavoriteGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v7, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeScreenshotShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeCustomText:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v9, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeFavoriteGroup:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeRecommendation:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v11, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeWorkshopItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v12, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyWorkshop:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v13, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v14, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeVideoShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v15, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v16, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v17, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeAchievements:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v18, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v19, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v20, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeSalien:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v21, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeLoyaltyRewardReactions:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v22, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeSingleArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v23, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeAchievementsCompletionist:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    sget-object v24, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeReplay:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    filled-new-array/range {v0 .. v24}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 904
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeInvalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 908
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeRareAchievementShowcase"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeRareAchievementShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 912
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeGameCollector"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGameCollector:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 916
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeItemShowcase"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeItemShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 920
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeTradeShowcase"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeTradeShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 924
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeBadges"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeBadges:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 928
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeFavoriteGame"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeFavoriteGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 932
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeScreenshotShowcase"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeScreenshotShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 936
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeCustomText"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeCustomText:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 940
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeFavoriteGroup"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeFavoriteGroup:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 944
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeRecommendation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeRecommendation:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 948
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeWorkshopItem"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeWorkshopItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 952
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeMyWorkshop"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyWorkshop:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 956
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeArtworkShowcase"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 960
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeVideoShowcase"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeVideoShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 964
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeGuides"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 968
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeMyGuides"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 972
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeAchievements"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeAchievements:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 976
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeGreenlight"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 980
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeMyGreenlight"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 984
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeSalien"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeSalien:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 988
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const-string v1, "k_EProfileCustomizationTypeLoyaltyRewardReactions"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeLoyaltyRewardReactions:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 992
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "k_EProfileCustomizationTypeSingleArtworkShowcase"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeSingleArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 996
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "k_EProfileCustomizationTypeAchievementsCompletionist"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeAchievementsCompletionist:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 1000
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "k_EProfileCustomizationTypeReplay"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeReplay:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 899
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 1004
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    .line 1010
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 1004
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1168
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1188
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1202
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 1

    packed-switch p0, :pswitch_data_50

    const/4 p0, 0x0

    return-object p0

    .line 1158
    :pswitch_5
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeReplay:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1157
    :pswitch_8
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeAchievementsCompletionist:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1156
    :pswitch_b
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeSingleArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1155
    :pswitch_e
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeLoyaltyRewardReactions:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1154
    :pswitch_11
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeSalien:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1153
    :pswitch_14
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1152
    :pswitch_17
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGreenlight:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1151
    :pswitch_1a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeAchievements:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1150
    :pswitch_1d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1149
    :pswitch_20
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGuides:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1148
    :pswitch_23
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeVideoShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1147
    :pswitch_26
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeArtworkShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1146
    :pswitch_29
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeMyWorkshop:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1145
    :pswitch_2c
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeWorkshopItem:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1144
    :pswitch_2f
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeRecommendation:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1143
    :pswitch_32
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeFavoriteGroup:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1142
    :pswitch_35
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeCustomText:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1141
    :pswitch_38
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeScreenshotShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1140
    :pswitch_3b
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeFavoriteGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1139
    :pswitch_3e
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeBadges:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1138
    :pswitch_41
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeTradeShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1137
    :pswitch_44
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeItemShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1136
    :pswitch_47
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeGameCollector:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1135
    :pswitch_4a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeRareAchievementShowcase:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    .line 1134
    :pswitch_4d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->k_EProfileCustomizationTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 1185
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;",
            ">;"
        }
    .end annotation

    .line 1165
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1125
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 3

    .line 1192
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 1196
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 1193
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 899
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 1

    .line 899
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 1181
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 1115
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 1177
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EProfileCustomizationType.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$EProfileCustomizationType$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1169
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;
    .registers 2

    .line 1171
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProfileCustomizationType;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EProtoAppType (in.dragonbra.javasteam.protobufs.steamclient.Enums$EProtoAppType)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EProtoAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EAppTypeApplication:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeApplication_VALUE:I = 0x2

.field public static final enum k_EAppTypeBeta:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeBeta_VALUE:I = 0x10000

.field public static final enum k_EAppTypeComic:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeComic_VALUE:I = 0x8000

.field public static final enum k_EAppTypeConfig:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeConfig_VALUE:I = 0x100

.field public static final enum k_EAppTypeDLC:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeDLC_VALUE:I = 0x20

.field public static final enum k_EAppTypeDemo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeDemo_VALUE:I = 0x8

.field public static final enum k_EAppTypeDepotOnly:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeDepotOnly_VALUE:I = -0x80000000

.field public static final enum k_EAppTypeDeprected:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeDeprected_VALUE:I = 0x10

.field public static final enum k_EAppTypeDriver:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeDriver_VALUE:I = 0x80

.field public static final enum k_EAppTypeFranchise:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeFranchise_VALUE:I = 0x400

.field public static final enum k_EAppTypeGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeGame_VALUE:I = 0x1

.field public static final enum k_EAppTypeGuide:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeGuide_VALUE:I = 0x40

.field public static final enum k_EAppTypeHardware:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeHardware_VALUE:I = 0x200

.field public static final enum k_EAppTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeInvalid_VALUE:I = 0x0

.field public static final enum k_EAppTypeMusicAlbum:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeMusicAlbum_VALUE:I = 0x2000

.field public static final enum k_EAppTypePlugin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypePlugin_VALUE:I = 0x1000

.field public static final enum k_EAppTypeSeries:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeSeries_VALUE:I = 0x4000

.field public static final enum k_EAppTypeShortcut:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeShortcut_VALUE:I = 0x40000000

.field public static final enum k_EAppTypeTool:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeTool_VALUE:I = 0x4

.field public static final enum k_EAppTypeVideo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

.field public static final k_EAppTypeVideo_VALUE:I = 0x800


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 20

    .line 9125
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeApplication:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeTool:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDemo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDeprected:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v6, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDLC:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v7, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeGuide:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDriver:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v9, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeConfig:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeHardware:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v11, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeFranchise:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v12, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeVideo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v13, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypePlugin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v14, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeMusicAlbum:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v15, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeSeries:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v16, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeComic:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v17, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeBeta:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v18, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeShortcut:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    sget-object v19, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDepotOnly:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    filled-new-array/range {v0 .. v19}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 9130
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeInvalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9134
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeGame"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9138
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeApplication"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeApplication:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9142
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeTool"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeTool:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9146
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeDemo"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDemo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9150
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeDeprected"

    const/4 v3, 0x5

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDeprected:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9154
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/4 v1, 0x6

    const/16 v3, 0x20

    const-string v5, "k_EAppTypeDLC"

    invoke-direct {v0, v5, v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDLC:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9158
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/4 v1, 0x7

    const/16 v3, 0x40

    const-string v5, "k_EAppTypeGuide"

    invoke-direct {v0, v5, v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeGuide:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9162
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeDriver"

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDriver:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9166
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0x9

    const/16 v2, 0x100

    const-string v3, "k_EAppTypeConfig"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeConfig:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9170
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0xa

    const/16 v2, 0x200

    const-string v3, "k_EAppTypeHardware"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeHardware:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9174
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0xb

    const/16 v2, 0x400

    const-string v3, "k_EAppTypeFranchise"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeFranchise:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9178
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0xc

    const/16 v2, 0x800

    const-string v3, "k_EAppTypeVideo"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeVideo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9182
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0xd

    const/16 v2, 0x1000

    const-string v3, "k_EAppTypePlugin"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypePlugin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9186
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0xe

    const/16 v2, 0x2000

    const-string v3, "k_EAppTypeMusicAlbum"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeMusicAlbum:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9190
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0xf

    const/16 v2, 0x4000

    const-string v3, "k_EAppTypeSeries"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeSeries:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9194
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const-string v1, "k_EAppTypeComic"

    const v2, 0x8000

    invoke-direct {v0, v1, v4, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeComic:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9198
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0x11

    const/high16 v2, 0x10000

    const-string v3, "k_EAppTypeBeta"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeBeta:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9202
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0x12

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "k_EAppTypeShortcut"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeShortcut:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9206
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    const/16 v1, 0x13

    const/high16 v2, -0x80000000

    const-string v3, "k_EAppTypeDepotOnly"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDepotOnly:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9125
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9210
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    .line 9216
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 9210
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 9349
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 9369
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9383
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 2

    if-eqz p0, :cond_46

    const/4 v0, 0x1

    if-eq p0, v0, :cond_43

    const/4 v0, 0x2

    if-eq p0, v0, :cond_40

    sparse-switch p0, :sswitch_data_4a

    const/4 p0, 0x0

    return-object p0

    .line 9338
    :sswitch_d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeShortcut:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9337
    :sswitch_10
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeBeta:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9336
    :sswitch_13
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeComic:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9335
    :sswitch_16
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeSeries:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9334
    :sswitch_19
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeMusicAlbum:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9333
    :sswitch_1c
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypePlugin:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9332
    :sswitch_1f
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeVideo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9331
    :sswitch_22
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeFranchise:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9330
    :sswitch_25
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeHardware:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9329
    :sswitch_28
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeConfig:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9328
    :sswitch_2b
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDriver:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9327
    :sswitch_2e
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeGuide:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9326
    :sswitch_31
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDLC:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9325
    :sswitch_34
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDeprected:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9324
    :sswitch_37
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDemo:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9323
    :sswitch_3a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeTool:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9339
    :sswitch_3d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeDepotOnly:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9322
    :cond_40
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeApplication:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9321
    :cond_43
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeGame:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    .line 9320
    :cond_46
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->k_EAppTypeInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x80000000 -> :sswitch_3d
        0x4 -> :sswitch_3a
        0x8 -> :sswitch_37
        0x10 -> :sswitch_34
        0x20 -> :sswitch_31
        0x40 -> :sswitch_2e
        0x80 -> :sswitch_2b
        0x100 -> :sswitch_28
        0x200 -> :sswitch_25
        0x400 -> :sswitch_22
        0x800 -> :sswitch_1f
        0x1000 -> :sswitch_1c
        0x2000 -> :sswitch_19
        0x4000 -> :sswitch_16
        0x8000 -> :sswitch_13
        0x10000 -> :sswitch_10
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 9366
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;",
            ">;"
        }
    .end annotation

    .line 9346
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9311
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 3

    .line 9373
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 9377
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 9374
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9125
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 1

    .line 9125
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 9362
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 9301
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 9358
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EProtoAppType.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$EProtoAppType$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9350
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;
    .registers 2

    .line 9352
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EProtoAppType;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EPublishedFileStorageSystem (in.dragonbra.javasteam.protobufs.steamclient.Enums$EPublishedFileStorageSystem)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EPublishedFileStorageSystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EPublishedFileStorageSystemDepot:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

.field public static final k_EPublishedFileStorageSystemDepot_VALUE:I = 0x2

.field public static final enum k_EPublishedFileStorageSystemInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

.field public static final k_EPublishedFileStorageSystemInvalid_VALUE:I = 0x0

.field public static final enum k_EPublishedFileStorageSystemLegacyCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

.field public static final k_EPublishedFileStorageSystemLegacyCloud_VALUE:I = 0x1

.field public static final enum k_EPublishedFileStorageSystemUGCCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

.field public static final k_EPublishedFileStorageSystemUGCCloud_VALUE:I = 0x3


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 4

    .line 1211
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemLegacyCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemDepot:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemUGCCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    filled-new-array {v0, v1, v2, v3}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 1216
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    const-string v1, "k_EPublishedFileStorageSystemInvalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    .line 1220
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    const-string v1, "k_EPublishedFileStorageSystemLegacyCloud"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemLegacyCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    .line 1224
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    const-string v1, "k_EPublishedFileStorageSystemDepot"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemDepot:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    .line 1228
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    const-string v1, "k_EPublishedFileStorageSystemUGCCloud"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemUGCCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    .line 1211
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    .line 1232
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    .line 1238
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 1232
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1291
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1311
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1325
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1281
    :cond_d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemUGCCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-object p0

    .line 1280
    :cond_10
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemDepot:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-object p0

    .line 1279
    :cond_13
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemLegacyCloud:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-object p0

    .line 1278
    :cond_16
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->k_EPublishedFileStorageSystemInvalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 1308
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;",
            ">;"
        }
    .end annotation

    .line 1288
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1269
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 3

    .line 1315
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 1319
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 1316
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1211
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 1

    .line 1211
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 1304
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 1259
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 1300
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.EPublishedFileStorageSystem.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$EPublishedFileStorageSystem$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1292
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;
    .registers 2

    .line 1294
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EPublishedFileStorageSystem;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ESessionPersistence (in.dragonbra.javasteam.protobufs.steamclient.Enums$ESessionPersistence)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
.super Ljava/lang/Enum;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ESessionPersistence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_ESessionPersistence_Ephemeral:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

.field public static final k_ESessionPersistence_Ephemeral_VALUE:I = 0x0

.field public static final enum k_ESessionPersistence_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

.field public static final k_ESessionPersistence_Invalid_VALUE:I = -0x1

.field public static final enum k_ESessionPersistence_Persistent:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

.field public static final k_ESessionPersistence_Persistent_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 3

    .line 7442
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Ephemeral:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Persistent:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    filled-new-array {v0, v1, v2}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 7447
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    const/4 v1, -0x1

    const-string v2, "k_ESessionPersistence_Invalid"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    .line 7451
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    const-string v1, "k_ESessionPersistence_Ephemeral"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Ephemeral:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    .line 7455
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    const-string v1, "k_ESessionPersistence_Persistent"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Persistent:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    .line 7442
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    .line 7459
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    .line 7465
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 7459
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 7513
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7533
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7546
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7547
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 7503
    :cond_a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Persistent:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    return-object p0

    .line 7502
    :cond_d
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Ephemeral:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    return-object p0

    .line 7501
    :cond_10
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Invalid:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 7530
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;",
            ">;"
        }
    .end annotation

    .line 7510
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7492
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 3

    .line 7537
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 7541
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7538
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7442
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 1

    .line 7442
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 7526
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 7482
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 7522
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.Enums.ESessionPersistence.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.Enums$ESessionPersistence$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence$1;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7514
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;
    .registers 2

    .line 7516
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    move-result-object p0

    return-object p0
.end method
