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
import com.google.protobuf.UninitializedMessageException;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SteammessagesClientserverAppinfo {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientAppInfoChanges_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAppInfoChanges_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAppInfoRequest_App_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAppInfoRequest_App_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAppInfoRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAppInfoRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAppInfoUpdate_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAppInfoUpdate_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSAccessTokenRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSAccessTokenRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSAccessTokenResponse_AppToken_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSAccessTokenResponse_AppToken_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSAccessTokenResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSAccessTokenResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSChangesSinceRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSChangesSinceRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSChangesSinceResponse_AppChange_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSChangesSinceResponse_AppChange_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSChangesSinceResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSChangesSinceResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSPrivateBetaRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSPrivateBetaRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSPrivateBetaResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSPrivateBetaResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSProductInfoRequest_AppInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSProductInfoRequest_AppInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSProductInfoRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSProductInfoRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSProductInfoResponse_AppInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSProductInfoResponse_AppInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPICSProductInfoResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPICSProductInfoResponse_fieldAccessorTable;

    public interface CMsgClientPICSAccessTokenRequestOrBuilder extends MessageOrBuilder {
        int getAppids(int i);

        int getAppidsCount();

        List<Integer> getAppidsList();

        int getPackageids(int i);

        int getPackageidsCount();

        List<Integer> getPackageidsList();
    }

    public interface CMsgClientPICSAccessTokenResponseOrBuilder extends MessageOrBuilder {
        CMsgClientPICSAccessTokenResponse.AppToken getAppAccessTokens(int i);

        int getAppAccessTokensCount();

        List<CMsgClientPICSAccessTokenResponse.AppToken> getAppAccessTokensList();

        CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder getAppAccessTokensOrBuilder(int i);

        List<? extends CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder> getAppAccessTokensOrBuilderList();

        int getAppDeniedTokens(int i);

        int getAppDeniedTokensCount();

        List<Integer> getAppDeniedTokensList();

        CMsgClientPICSAccessTokenResponse.PackageToken getPackageAccessTokens(int i);

        int getPackageAccessTokensCount();

        List<CMsgClientPICSAccessTokenResponse.PackageToken> getPackageAccessTokensList();

        CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder getPackageAccessTokensOrBuilder(int i);

        List<? extends CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder> getPackageAccessTokensOrBuilderList();

        int getPackageDeniedTokens(int i);

        int getPackageDeniedTokensCount();

        List<Integer> getPackageDeniedTokensList();
    }

    public interface CMsgClientPICSChangesSinceRequestOrBuilder extends MessageOrBuilder {
        int getNumAppInfoCached();

        int getNumPackageInfoCached();

        boolean getSendAppInfoChanges();

        boolean getSendPackageInfoChanges();

        int getSinceChangeNumber();

        boolean hasNumAppInfoCached();

        boolean hasNumPackageInfoCached();

        boolean hasSendAppInfoChanges();

        boolean hasSendPackageInfoChanges();

        boolean hasSinceChangeNumber();
    }

    public interface CMsgClientPICSChangesSinceResponseOrBuilder extends MessageOrBuilder {
        CMsgClientPICSChangesSinceResponse.AppChange getAppChanges(int i);

        int getAppChangesCount();

        List<CMsgClientPICSChangesSinceResponse.AppChange> getAppChangesList();

        CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder getAppChangesOrBuilder(int i);

        List<? extends CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder> getAppChangesOrBuilderList();

        int getCurrentChangeNumber();

        boolean getForceFullAppUpdate();

        boolean getForceFullPackageUpdate();

        boolean getForceFullUpdate();

        CMsgClientPICSChangesSinceResponse.PackageChange getPackageChanges(int i);

        int getPackageChangesCount();

        List<CMsgClientPICSChangesSinceResponse.PackageChange> getPackageChangesList();

        CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder getPackageChangesOrBuilder(int i);

        List<? extends CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder> getPackageChangesOrBuilderList();

        int getSinceChangeNumber();

        boolean hasCurrentChangeNumber();

        boolean hasForceFullAppUpdate();

        boolean hasForceFullPackageUpdate();

        boolean hasForceFullUpdate();

        boolean hasSinceChangeNumber();
    }

    public interface CMsgClientPICSPrivateBetaRequestOrBuilder extends MessageOrBuilder {
        long getAccessToken();

        int getAppid();

        String getBetaName();

        ByteString getBetaNameBytes();

        ByteString getPasswordHash();

        boolean hasAccessToken();

        boolean hasAppid();

        boolean hasBetaName();

        boolean hasPasswordHash();
    }

    public interface CMsgClientPICSPrivateBetaResponseOrBuilder extends MessageOrBuilder {
        ByteString getDepotSection();

        int getEresult();

        boolean hasDepotSection();

        boolean hasEresult();
    }

    public interface CMsgClientPICSProductInfoRequestOrBuilder extends MessageOrBuilder {
        CMsgClientPICSProductInfoRequest.AppInfo getApps(int i);

        int getAppsCount();

        List<CMsgClientPICSProductInfoRequest.AppInfo> getAppsList();

        CMsgClientPICSProductInfoRequest.AppInfoOrBuilder getAppsOrBuilder(int i);

        List<? extends CMsgClientPICSProductInfoRequest.AppInfoOrBuilder> getAppsOrBuilderList();

        boolean getMetaDataOnly();

        int getNumPrevFailed();

        int getOBSOLETESupportsPackageTokens();

        CMsgClientPICSProductInfoRequest.PackageInfo getPackages(int i);

        int getPackagesCount();

        List<CMsgClientPICSProductInfoRequest.PackageInfo> getPackagesList();

        CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder getPackagesOrBuilder(int i);

        List<? extends CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder> getPackagesOrBuilderList();

        int getSequenceNumber();

        boolean getSingleResponse();

        boolean hasMetaDataOnly();

        boolean hasNumPrevFailed();

        boolean hasOBSOLETESupportsPackageTokens();

        boolean hasSequenceNumber();

        boolean hasSingleResponse();
    }

    public interface CMsgClientPICSProductInfoResponseOrBuilder extends MessageOrBuilder {
        CMsgClientPICSProductInfoResponse.AppInfo getApps(int i);

        int getAppsCount();

        List<CMsgClientPICSProductInfoResponse.AppInfo> getAppsList();

        CMsgClientPICSProductInfoResponse.AppInfoOrBuilder getAppsOrBuilder(int i);

        List<? extends CMsgClientPICSProductInfoResponse.AppInfoOrBuilder> getAppsOrBuilderList();

        String getHttpHost();

        ByteString getHttpHostBytes();

        int getHttpMinSize();

        boolean getMetaDataOnly();

        CMsgClientPICSProductInfoResponse.PackageInfo getPackages(int i);

        int getPackagesCount();

        List<CMsgClientPICSProductInfoResponse.PackageInfo> getPackagesList();

        CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder getPackagesOrBuilder(int i);

        List<? extends CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder> getPackagesOrBuilderList();

        boolean getResponsePending();

        int getUnknownAppids(int i);

        int getUnknownAppidsCount();

        List<Integer> getUnknownAppidsList();

        int getUnknownPackageids(int i);

        int getUnknownPackageidsCount();

        List<Integer> getUnknownPackageidsList();

        boolean hasHttpHost();

        boolean hasHttpMinSize();

        boolean hasMetaDataOnly();

        boolean hasResponsePending();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverAppinfo() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverAppinfo.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nUin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_appinfo.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"M\n\u0017CMsgClientAppInfoUpdate\u0012\u0019\n\u0011last_changenumber\u0018\u0001 \u0001(\r\u0012\u0017\n\u000fsend_changelist\u0018\u0002 \u0001(\b\"d\n\u0018CMsgClientAppInfoChanges\u0012\u001d\n\u0015current_change_number\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011force_full_update\u0018\u0002 \u0001(\b\u0012\u000e\n\u0006appIDs\u0018\u0003 \u0003(\r\"«\u0001\n\u0018CMsgClientAppInfoRequest\u0012+\n\u0004apps\u0018\u0001 \u0003(\u000b2\u001d.CMsgClientAppInfoRequest.App\u0012\u001f\n\u0010supports_batches\u0018\u0002 \u0001(\b:\u0005false\u001aA\n\u0003App\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0015\n\rsection_flags\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bsection_CRC\u0018\u0003 \u0003(\r\"À\u0001\n!CMsgClientPICSChangesSinceRequest\u0012\u001b\n\u0013since_change_number\u0018\u0001 \u0001(\r\u0012\u001d\n\u0015send_app_info_changes\u0018\u0002 \u0001(\b\u0012!\n\u0019send_package_info_changes\u0018\u0003 \u0001(\b\u0012\u001b\n\u0013num_app_info_cached\u0018\u0004 \u0001(\r\u0012\u001f\n\u0017num_package_info_cached\u0018\u0005 \u0001(\r\"å\u0003\n\"CMsgClientPICSChangesSinceResponse\u0012\u001d\n\u0015current_change_number\u0018\u0001 \u0001(\r\u0012\u001b\n\u0013since_change_number\u0018\u0002 \u0001(\r\u0012\u0019\n\u0011force_full_update\u0018\u0003 \u0001(\b\u0012J\n\u000fpackage_changes\u0018\u0004 \u0003(\u000b21.CMsgClientPICSChangesSinceResponse.PackageChange\u0012B\n\u000bapp_changes\u0018\u0005 \u0003(\u000b2-.CMsgClientPICSChangesSinceResponse.AppChange\u0012\u001d\n\u0015force_full_app_update\u0018\u0006 \u0001(\b\u0012!\n\u0019force_full_package_update\u0018\u0007 \u0001(\b\u001aN\n\rPackageChange\u0012\u0011\n\tpackageid\u0018\u0001 \u0001(\r\u0012\u0015\n\rchange_number\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bneeds_token\u0018\u0003 \u0001(\b\u001aF\n\tAppChange\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0015\n\rchange_number\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bneeds_token\u0018\u0003 \u0001(\b\"¯\u0003\n CMsgClientPICSProductInfoRequest\u0012?\n\bpackages\u0018\u0001 \u0003(\u000b2-.CMsgClientPICSProductInfoRequest.PackageInfo\u00127\n\u0004apps\u0018\u0002 \u0003(\u000b2).CMsgClientPICSProductInfoRequest.AppInfo\u0012\u0016\n\u000emeta_data_only\u0018\u0003 \u0001(\b\u0012\u0017\n\u000fnum_prev_failed\u0018\u0004 \u0001(\r\u0012(\n OBSOLETE_supports_package_tokens\u0018\u0005 \u0001(\r\u0012\u0017\n\u000fsequence_number\u0018\u0006 \u0001(\r\u0012\u0017\n\u000fsingle_response\u0018\u0007 \u0001(\b\u001aL\n\u0007AppInfo\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0014\n\faccess_token\u0018\u0002 \u0001(\u0004\u0012\u001c\n\u0014only_public_obsolete\u0018\u0003 \u0001(\b\u001a6\n\u000bPackageInfo\u0012\u0011\n\tpackageid\u0018\u0001 \u0001(\r\u0012\u0014\n\faccess_token\u0018\u0002 \u0001(\u0004\"¹\u0004\n!CMsgClientPICSProductInfoResponse\u00128\n\u0004apps\u0018\u0001 \u0003(\u000b2*.CMsgClientPICSProductInfoResponse.AppInfo\u0012\u0016\n\u000eunknown_appids\u0018\u0002 \u0003(\r\u0012@\n\bpackages\u0018\u0003 \u0003(\u000b2..CMsgClientPICSProductInfoResponse.PackageInfo\u0012\u001a\n\u0012unknown_packageids\u0018\u0004 \u0003(\r\u0012\u0016\n\u000emeta_data_only\u0018\u0005 \u0001(\b\u0012\u0018\n\u0010response_pending\u0018\u0006 \u0001(\b\u0012\u0015\n\rhttp_min_size\u0018\u0007 \u0001(\r\u0012\u0011\n\thttp_host\u0018\b \u0001(\t\u001a\u0086\u0001\n\u0007AppInfo\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0015\n\rchange_number\u0018\u0002 \u0001(\r\u0012\u0015\n\rmissing_token\u0018\u0003 \u0001(\b\u0012\u000b\n\u0003sha\u0018\u0004 \u0001(\f\u0012\u000e\n\u0006buffer\u0018\u0005 \u0001(\f\u0012\u0013\n\u000bonly_public\u0018\u0006 \u0001(\b\u0012\f\n\u0004size\u0018\u0007 \u0001(\r\u001ay\n\u000bPackageInfo\u0012\u0011\n\tpackageid\u0018\u0001 \u0001(\r\u0012\u0015\n\rchange_number\u0018\u0002 \u0001(\r\u0012\u0015\n\rmissing_token\u0018\u0003 \u0001(\b\u0012\u000b\n\u0003sha\u0018\u0004 \u0001(\f\u0012\u000e\n\u0006buffer\u0018\u0005 \u0001(\f\u0012\f\n\u0004size\u0018\u0006 \u0001(\r:\u0004\u0088µ\u0018\u0000\"F\n CMsgClientPICSAccessTokenRequest\u0012\u0012\n\npackageids\u0018\u0001 \u0003(\r\u0012\u000e\n\u0006appids\u0018\u0002 \u0003(\r\"ß\u0002\n!CMsgClientPICSAccessTokenResponse\u0012N\n\u0015package_access_tokens\u0018\u0001 \u0003(\u000b2/.CMsgClientPICSAccessTokenResponse.PackageToken\u0012\u001d\n\u0015package_denied_tokens\u0018\u0002 \u0003(\r\u0012F\n\u0011app_access_tokens\u0018\u0003 \u0003(\u000b2+.CMsgClientPICSAccessTokenResponse.AppToken\u0012\u0019\n\u0011app_denied_tokens\u0018\u0004 \u0003(\r\u001a7\n\fPackageToken\u0012\u0011\n\tpackageid\u0018\u0001 \u0001(\r\u0012\u0014\n\faccess_token\u0018\u0002 \u0001(\u0004\u001a/\n\bAppToken\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0014\n\faccess_token\u0018\u0002 \u0001(\u0004\"q\n CMsgClientPICSPrivateBetaRequest\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0014\n\faccess_token\u0018\u0002 \u0001(\u0004\u0012\u0011\n\tbeta_name\u0018\u0003 \u0001(\t\u0012\u0015\n\rpassword_hash\u0018\u0004 \u0001(\f\"N\n!CMsgClientPICSPrivateBetaResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0015\n\rdepot_section\u0018\u0002 \u0001(\fB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientAppInfoUpdate_descriptor = descriptor2;
        internal_static_CMsgClientAppInfoUpdate_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"LastChangenumber", "SendChangelist"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientAppInfoChanges_descriptor = descriptor3;
        internal_static_CMsgClientAppInfoChanges_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"CurrentChangeNumber", "ForceFullUpdate", "AppIDs"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientAppInfoRequest_descriptor = descriptor4;
        internal_static_CMsgClientAppInfoRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Apps", "SupportsBatches"});
        Descriptors.Descriptor descriptor5 = descriptor4.getNestedTypes().get(0);
        internal_static_CMsgClientAppInfoRequest_App_descriptor = descriptor5;
        internal_static_CMsgClientAppInfoRequest_App_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"AppId", "SectionFlags", "SectionCRC"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientPICSChangesSinceRequest_descriptor = descriptor6;
        internal_static_CMsgClientPICSChangesSinceRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"SinceChangeNumber", "SendAppInfoChanges", "SendPackageInfoChanges", "NumAppInfoCached", "NumPackageInfoCached"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientPICSChangesSinceResponse_descriptor = descriptor7;
        internal_static_CMsgClientPICSChangesSinceResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"CurrentChangeNumber", "SinceChangeNumber", "ForceFullUpdate", "PackageChanges", "AppChanges", "ForceFullAppUpdate", "ForceFullPackageUpdate"});
        Descriptors.Descriptor descriptor8 = descriptor7.getNestedTypes().get(0);
        internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_descriptor = descriptor8;
        internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Packageid", "ChangeNumber", "NeedsToken"});
        Descriptors.Descriptor descriptor9 = descriptor7.getNestedTypes().get(1);
        internal_static_CMsgClientPICSChangesSinceResponse_AppChange_descriptor = descriptor9;
        internal_static_CMsgClientPICSChangesSinceResponse_AppChange_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Appid", "ChangeNumber", "NeedsToken"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientPICSProductInfoRequest_descriptor = descriptor10;
        internal_static_CMsgClientPICSProductInfoRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Packages", "Apps", "MetaDataOnly", "NumPrevFailed", "OBSOLETESupportsPackageTokens", "SequenceNumber", "SingleResponse"});
        Descriptors.Descriptor descriptor11 = descriptor10.getNestedTypes().get(0);
        internal_static_CMsgClientPICSProductInfoRequest_AppInfo_descriptor = descriptor11;
        internal_static_CMsgClientPICSProductInfoRequest_AppInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Appid", "AccessToken", "OnlyPublicObsolete"});
        Descriptors.Descriptor descriptor12 = descriptor10.getNestedTypes().get(1);
        internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_descriptor = descriptor12;
        internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Packageid", "AccessToken"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientPICSProductInfoResponse_descriptor = descriptor13;
        internal_static_CMsgClientPICSProductInfoResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Apps", "UnknownAppids", "Packages", "UnknownPackageids", "MetaDataOnly", "ResponsePending", "HttpMinSize", "HttpHost"});
        Descriptors.Descriptor descriptor14 = descriptor13.getNestedTypes().get(0);
        internal_static_CMsgClientPICSProductInfoResponse_AppInfo_descriptor = descriptor14;
        internal_static_CMsgClientPICSProductInfoResponse_AppInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Appid", "ChangeNumber", "MissingToken", "Sha", "Buffer", "OnlyPublic", "Size"});
        Descriptors.Descriptor descriptor15 = descriptor13.getNestedTypes().get(1);
        internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_descriptor = descriptor15;
        internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Packageid", "ChangeNumber", "MissingToken", "Sha", "Buffer", "Size"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientPICSAccessTokenRequest_descriptor = descriptor16;
        internal_static_CMsgClientPICSAccessTokenRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Packageids", "Appids"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgClientPICSAccessTokenResponse_descriptor = descriptor17;
        internal_static_CMsgClientPICSAccessTokenResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"PackageAccessTokens", "PackageDeniedTokens", "AppAccessTokens", "AppDeniedTokens"});
        Descriptors.Descriptor descriptor18 = descriptor17.getNestedTypes().get(0);
        internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_descriptor = descriptor18;
        internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"Packageid", "AccessToken"});
        Descriptors.Descriptor descriptor19 = descriptor17.getNestedTypes().get(1);
        internal_static_CMsgClientPICSAccessTokenResponse_AppToken_descriptor = descriptor19;
        internal_static_CMsgClientPICSAccessTokenResponse_AppToken_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"Appid", "AccessToken"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgClientPICSPrivateBetaRequest_descriptor = descriptor20;
        internal_static_CMsgClientPICSPrivateBetaRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"Appid", "AccessToken", "BetaName", "PasswordHash"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgClientPICSPrivateBetaResponse_descriptor = descriptor21;
        internal_static_CMsgClientPICSPrivateBetaResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Eresult", "DepotSection"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        ExtensionRegistry extensionRegistryNewInstance = ExtensionRegistry.newInstance();
        extensionRegistryNewInstance.add((GeneratedMessage.GeneratedExtension<?, ?>) SteammessagesBase.msgpoolHardLimit);
        Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, extensionRegistryNewInstance);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientPICSChangesSinceRequest extends GeneratedMessage implements CMsgClientPICSChangesSinceRequestOrBuilder {
        private static final CMsgClientPICSChangesSinceRequest DEFAULT_INSTANCE;
        public static final int NUM_APP_INFO_CACHED_FIELD_NUMBER = 4;
        public static final int NUM_PACKAGE_INFO_CACHED_FIELD_NUMBER = 5;
        private static final Parser<CMsgClientPICSChangesSinceRequest> PARSER;
        public static final int SEND_APP_INFO_CHANGES_FIELD_NUMBER = 2;
        public static final int SEND_PACKAGE_INFO_CHANGES_FIELD_NUMBER = 3;
        public static final int SINCE_CHANGE_NUMBER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int numAppInfoCached_;
        private int numPackageInfoCached_;
        private boolean sendAppInfoChanges_;
        private boolean sendPackageInfoChanges_;
        private int sinceChangeNumber_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSChangesSinceRequest.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSChangesSinceRequest();
            PARSER = new AbstractParser<CMsgClientPICSChangesSinceRequest>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequest.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSChangesSinceRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSChangesSinceRequest.newBuilder();
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

        private CMsgClientPICSChangesSinceRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sinceChangeNumber_ = 0;
            this.sendAppInfoChanges_ = false;
            this.sendPackageInfoChanges_ = false;
            this.numAppInfoCached_ = 0;
            this.numPackageInfoCached_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSChangesSinceRequest() {
            this.sinceChangeNumber_ = 0;
            this.sendAppInfoChanges_ = false;
            this.sendPackageInfoChanges_ = false;
            this.numAppInfoCached_ = 0;
            this.numPackageInfoCached_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceRequest_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSChangesSinceRequest.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean hasSinceChangeNumber() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public int getSinceChangeNumber() {
            return this.sinceChangeNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean hasSendAppInfoChanges() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean getSendAppInfoChanges() {
            return this.sendAppInfoChanges_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean hasSendPackageInfoChanges() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean getSendPackageInfoChanges() {
            return this.sendPackageInfoChanges_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean hasNumAppInfoCached() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public int getNumAppInfoCached() {
            return this.numAppInfoCached_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public boolean hasNumPackageInfoCached() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
        public int getNumPackageInfoCached() {
            return this.numPackageInfoCached_;
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
                codedOutputStream.writeUInt32(1, this.sinceChangeNumber_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.sendAppInfoChanges_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.sendPackageInfoChanges_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.numAppInfoCached_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.numPackageInfoCached_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.sinceChangeNumber_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(2, this.sendAppInfoChanges_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.sendPackageInfoChanges_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.numAppInfoCached_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.numPackageInfoCached_);
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
            if (!(obj instanceof CMsgClientPICSChangesSinceRequest)) {
                return super.equals(obj);
            }
            CMsgClientPICSChangesSinceRequest cMsgClientPICSChangesSinceRequest = (CMsgClientPICSChangesSinceRequest) obj;
            if (hasSinceChangeNumber() != cMsgClientPICSChangesSinceRequest.hasSinceChangeNumber()) {
                return false;
            }
            if ((hasSinceChangeNumber() && getSinceChangeNumber() != cMsgClientPICSChangesSinceRequest.getSinceChangeNumber()) || hasSendAppInfoChanges() != cMsgClientPICSChangesSinceRequest.hasSendAppInfoChanges()) {
                return false;
            }
            if ((hasSendAppInfoChanges() && getSendAppInfoChanges() != cMsgClientPICSChangesSinceRequest.getSendAppInfoChanges()) || hasSendPackageInfoChanges() != cMsgClientPICSChangesSinceRequest.hasSendPackageInfoChanges()) {
                return false;
            }
            if ((hasSendPackageInfoChanges() && getSendPackageInfoChanges() != cMsgClientPICSChangesSinceRequest.getSendPackageInfoChanges()) || hasNumAppInfoCached() != cMsgClientPICSChangesSinceRequest.hasNumAppInfoCached()) {
                return false;
            }
            if ((!hasNumAppInfoCached() || getNumAppInfoCached() == cMsgClientPICSChangesSinceRequest.getNumAppInfoCached()) && hasNumPackageInfoCached() == cMsgClientPICSChangesSinceRequest.hasNumPackageInfoCached()) {
                return (!hasNumPackageInfoCached() || getNumPackageInfoCached() == cMsgClientPICSChangesSinceRequest.getNumPackageInfoCached()) && getUnknownFields().equals(cMsgClientPICSChangesSinceRequest.getUnknownFields());
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
            if (hasSinceChangeNumber()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSinceChangeNumber();
            }
            if (hasSendAppInfoChanges()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getSendAppInfoChanges());
            }
            if (hasSendPackageInfoChanges()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getSendPackageInfoChanges());
            }
            if (hasNumAppInfoCached()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getNumAppInfoCached();
            }
            if (hasNumPackageInfoCached()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getNumPackageInfoCached();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSChangesSinceRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSChangesSinceRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSChangesSinceRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSChangesSinceRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSChangesSinceRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSChangesSinceRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSChangesSinceRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSChangesSinceRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSChangesSinceRequest cMsgClientPICSChangesSinceRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSChangesSinceRequest);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSChangesSinceRequestOrBuilder {
            private int bitField0_;
            private int numAppInfoCached_;
            private int numPackageInfoCached_;
            private boolean sendAppInfoChanges_;
            private boolean sendPackageInfoChanges_;
            private int sinceChangeNumber_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSChangesSinceRequest.class, Builder.class);
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
                this.sinceChangeNumber_ = 0;
                this.sendAppInfoChanges_ = false;
                this.sendPackageInfoChanges_ = false;
                this.numAppInfoCached_ = 0;
                this.numPackageInfoCached_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceRequest_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSChangesSinceRequest getDefaultInstanceForType() {
                return CMsgClientPICSChangesSinceRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSChangesSinceRequest build() {
                CMsgClientPICSChangesSinceRequest cMsgClientPICSChangesSinceRequestBuildPartial = buildPartial();
                if (cMsgClientPICSChangesSinceRequestBuildPartial.isInitialized()) {
                    return cMsgClientPICSChangesSinceRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSChangesSinceRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSChangesSinceRequest buildPartial() {
                CMsgClientPICSChangesSinceRequest cMsgClientPICSChangesSinceRequest = new CMsgClientPICSChangesSinceRequest(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSChangesSinceRequest);
                }
                onBuilt();
                return cMsgClientPICSChangesSinceRequest;
            }

            private void buildPartial0(CMsgClientPICSChangesSinceRequest cMsgClientPICSChangesSinceRequest) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPICSChangesSinceRequest.sinceChangeNumber_ = this.sinceChangeNumber_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPICSChangesSinceRequest.sendAppInfoChanges_ = this.sendAppInfoChanges_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientPICSChangesSinceRequest.sendPackageInfoChanges_ = this.sendPackageInfoChanges_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientPICSChangesSinceRequest.numAppInfoCached_ = this.numAppInfoCached_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientPICSChangesSinceRequest.numPackageInfoCached_ = this.numPackageInfoCached_;
                    i |= 16;
                }
                cMsgClientPICSChangesSinceRequest.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSChangesSinceRequest) {
                    return mergeFrom((CMsgClientPICSChangesSinceRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSChangesSinceRequest cMsgClientPICSChangesSinceRequest) {
                if (cMsgClientPICSChangesSinceRequest == CMsgClientPICSChangesSinceRequest.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPICSChangesSinceRequest.hasSinceChangeNumber()) {
                    setSinceChangeNumber(cMsgClientPICSChangesSinceRequest.getSinceChangeNumber());
                }
                if (cMsgClientPICSChangesSinceRequest.hasSendAppInfoChanges()) {
                    setSendAppInfoChanges(cMsgClientPICSChangesSinceRequest.getSendAppInfoChanges());
                }
                if (cMsgClientPICSChangesSinceRequest.hasSendPackageInfoChanges()) {
                    setSendPackageInfoChanges(cMsgClientPICSChangesSinceRequest.getSendPackageInfoChanges());
                }
                if (cMsgClientPICSChangesSinceRequest.hasNumAppInfoCached()) {
                    setNumAppInfoCached(cMsgClientPICSChangesSinceRequest.getNumAppInfoCached());
                }
                if (cMsgClientPICSChangesSinceRequest.hasNumPackageInfoCached()) {
                    setNumPackageInfoCached(cMsgClientPICSChangesSinceRequest.getNumPackageInfoCached());
                }
                mergeUnknownFields(cMsgClientPICSChangesSinceRequest.getUnknownFields());
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
                                    this.sinceChangeNumber_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.sendAppInfoChanges_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.sendPackageInfoChanges_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.numAppInfoCached_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.numPackageInfoCached_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean hasSinceChangeNumber() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public int getSinceChangeNumber() {
                return this.sinceChangeNumber_;
            }

            public Builder setSinceChangeNumber(int i) {
                this.sinceChangeNumber_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSinceChangeNumber() {
                this.bitField0_ &= -2;
                this.sinceChangeNumber_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean hasSendAppInfoChanges() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean getSendAppInfoChanges() {
                return this.sendAppInfoChanges_;
            }

            public Builder setSendAppInfoChanges(boolean z) {
                this.sendAppInfoChanges_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSendAppInfoChanges() {
                this.bitField0_ &= -3;
                this.sendAppInfoChanges_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean hasSendPackageInfoChanges() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean getSendPackageInfoChanges() {
                return this.sendPackageInfoChanges_;
            }

            public Builder setSendPackageInfoChanges(boolean z) {
                this.sendPackageInfoChanges_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSendPackageInfoChanges() {
                this.bitField0_ &= -5;
                this.sendPackageInfoChanges_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean hasNumAppInfoCached() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public int getNumAppInfoCached() {
                return this.numAppInfoCached_;
            }

            public Builder setNumAppInfoCached(int i) {
                this.numAppInfoCached_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearNumAppInfoCached() {
                this.bitField0_ &= -9;
                this.numAppInfoCached_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public boolean hasNumPackageInfoCached() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequestOrBuilder
            public int getNumPackageInfoCached() {
                return this.numPackageInfoCached_;
            }

            public Builder setNumPackageInfoCached(int i) {
                this.numPackageInfoCached_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearNumPackageInfoCached() {
                this.bitField0_ &= -17;
                this.numPackageInfoCached_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSChangesSinceRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSChangesSinceRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSChangesSinceRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSChangesSinceRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSChangesSinceResponse extends GeneratedMessage implements CMsgClientPICSChangesSinceResponseOrBuilder {
        public static final int APP_CHANGES_FIELD_NUMBER = 5;
        public static final int CURRENT_CHANGE_NUMBER_FIELD_NUMBER = 1;
        private static final CMsgClientPICSChangesSinceResponse DEFAULT_INSTANCE;
        public static final int FORCE_FULL_APP_UPDATE_FIELD_NUMBER = 6;
        public static final int FORCE_FULL_PACKAGE_UPDATE_FIELD_NUMBER = 7;
        public static final int FORCE_FULL_UPDATE_FIELD_NUMBER = 3;
        public static final int PACKAGE_CHANGES_FIELD_NUMBER = 4;
        private static final Parser<CMsgClientPICSChangesSinceResponse> PARSER;
        public static final int SINCE_CHANGE_NUMBER_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private List<AppChange> appChanges_;
        private int bitField0_;
        private int currentChangeNumber_;
        private boolean forceFullAppUpdate_;
        private boolean forceFullPackageUpdate_;
        private boolean forceFullUpdate_;
        private byte memoizedIsInitialized;
        private List<PackageChange> packageChanges_;
        private int sinceChangeNumber_;

        public interface AppChangeOrBuilder extends MessageOrBuilder {
            int getAppid();

            int getChangeNumber();

            boolean getNeedsToken();

            boolean hasAppid();

            boolean hasChangeNumber();

            boolean hasNeedsToken();
        }

        public interface PackageChangeOrBuilder extends MessageOrBuilder {
            int getChangeNumber();

            boolean getNeedsToken();

            int getPackageid();

            boolean hasChangeNumber();

            boolean hasNeedsToken();

            boolean hasPackageid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSChangesSinceResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSChangesSinceResponse();
            PARSER = new AbstractParser<CMsgClientPICSChangesSinceResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSChangesSinceResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSChangesSinceResponse.newBuilder();
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

        private CMsgClientPICSChangesSinceResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.currentChangeNumber_ = 0;
            this.sinceChangeNumber_ = 0;
            this.forceFullUpdate_ = false;
            this.forceFullAppUpdate_ = false;
            this.forceFullPackageUpdate_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSChangesSinceResponse() {
            this.currentChangeNumber_ = 0;
            this.sinceChangeNumber_ = 0;
            this.forceFullUpdate_ = false;
            this.forceFullAppUpdate_ = false;
            this.forceFullPackageUpdate_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.packageChanges_ = Collections.emptyList();
            this.appChanges_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSChangesSinceResponse.class, Builder.class);
        }

        public static final class PackageChange extends GeneratedMessage implements PackageChangeOrBuilder {
            public static final int CHANGE_NUMBER_FIELD_NUMBER = 2;
            private static final PackageChange DEFAULT_INSTANCE;
            public static final int NEEDS_TOKEN_FIELD_NUMBER = 3;
            public static final int PACKAGEID_FIELD_NUMBER = 1;
            private static final Parser<PackageChange> PARSER;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int changeNumber_;
            private byte memoizedIsInitialized;
            private boolean needsToken_;
            private int packageid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", PackageChange.class.getName());
                DEFAULT_INSTANCE = new PackageChange();
                PARSER = new AbstractParser<PackageChange>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChange.1
                    @Override // com.google.protobuf.Parser
                    public PackageChange parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = PackageChange.newBuilder();
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

            private PackageChange(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.packageid_ = 0;
                this.changeNumber_ = 0;
                this.needsToken_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private PackageChange() {
                this.packageid_ = 0;
                this.changeNumber_ = 0;
                this.needsToken_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageChange.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
            public boolean hasPackageid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
            public int getPackageid() {
                return this.packageid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
            public boolean hasChangeNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
            public int getChangeNumber() {
                return this.changeNumber_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
            public boolean hasNeedsToken() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
            public boolean getNeedsToken() {
                return this.needsToken_;
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
                    codedOutputStream.writeUInt32(1, this.packageid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBool(3, this.needsToken_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.packageid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.needsToken_);
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
                if (!(obj instanceof PackageChange)) {
                    return super.equals(obj);
                }
                PackageChange packageChange = (PackageChange) obj;
                if (hasPackageid() != packageChange.hasPackageid()) {
                    return false;
                }
                if ((hasPackageid() && getPackageid() != packageChange.getPackageid()) || hasChangeNumber() != packageChange.hasChangeNumber()) {
                    return false;
                }
                if ((!hasChangeNumber() || getChangeNumber() == packageChange.getChangeNumber()) && hasNeedsToken() == packageChange.hasNeedsToken()) {
                    return (!hasNeedsToken() || getNeedsToken() == packageChange.getNeedsToken()) && getUnknownFields().equals(packageChange.getUnknownFields());
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
                if (hasPackageid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageid();
                }
                if (hasChangeNumber()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getChangeNumber();
                }
                if (hasNeedsToken()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getNeedsToken());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PackageChange parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PackageChange parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PackageChange parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PackageChange parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PackageChange parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PackageChange parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PackageChange parseFrom(InputStream inputStream) throws IOException {
                return (PackageChange) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static PackageChange parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageChange) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageChange parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PackageChange) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PackageChange parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageChange) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageChange parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PackageChange) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static PackageChange parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageChange) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PackageChange packageChange) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(packageChange);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PackageChangeOrBuilder {
                private int bitField0_;
                private int changeNumber_;
                private boolean needsToken_;
                private int packageid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageChange.class, Builder.class);
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
                    this.packageid_ = 0;
                    this.changeNumber_ = 0;
                    this.needsToken_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_PackageChange_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public PackageChange getDefaultInstanceForType() {
                    return PackageChange.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageChange build() {
                    PackageChange packageChangeBuildPartial = buildPartial();
                    if (packageChangeBuildPartial.isInitialized()) {
                        return packageChangeBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) packageChangeBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageChange buildPartial() {
                    PackageChange packageChange = new PackageChange(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(packageChange);
                    }
                    onBuilt();
                    return packageChange;
                }

                private void buildPartial0(PackageChange packageChange) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        packageChange.packageid_ = this.packageid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        packageChange.changeNumber_ = this.changeNumber_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        packageChange.needsToken_ = this.needsToken_;
                        i |= 4;
                    }
                    packageChange.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof PackageChange) {
                        return mergeFrom((PackageChange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PackageChange packageChange) {
                    if (packageChange == PackageChange.getDefaultInstance()) {
                        return this;
                    }
                    if (packageChange.hasPackageid()) {
                        setPackageid(packageChange.getPackageid());
                    }
                    if (packageChange.hasChangeNumber()) {
                        setChangeNumber(packageChange.getChangeNumber());
                    }
                    if (packageChange.hasNeedsToken()) {
                        setNeedsToken(packageChange.getNeedsToken());
                    }
                    mergeUnknownFields(packageChange.getUnknownFields());
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
                                        this.packageid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.changeNumber_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.needsToken_ = codedInputStream.readBool();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
                public boolean hasPackageid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
                public int getPackageid() {
                    return this.packageid_;
                }

                public Builder setPackageid(int i) {
                    this.packageid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearPackageid() {
                    this.bitField0_ &= -2;
                    this.packageid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
                public boolean hasChangeNumber() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
                public int getChangeNumber() {
                    return this.changeNumber_;
                }

                public Builder setChangeNumber(int i) {
                    this.changeNumber_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearChangeNumber() {
                    this.bitField0_ &= -3;
                    this.changeNumber_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
                public boolean hasNeedsToken() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChangeOrBuilder
                public boolean getNeedsToken() {
                    return this.needsToken_;
                }

                public Builder setNeedsToken(boolean z) {
                    this.needsToken_ = z;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearNeedsToken() {
                    this.bitField0_ &= -5;
                    this.needsToken_ = false;
                    onChanged();
                    return this;
                }
            }

            public static PackageChange getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PackageChange> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<PackageChange> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PackageChange getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class AppChange extends GeneratedMessage implements AppChangeOrBuilder {
            public static final int APPID_FIELD_NUMBER = 1;
            public static final int CHANGE_NUMBER_FIELD_NUMBER = 2;
            private static final AppChange DEFAULT_INSTANCE;
            public static final int NEEDS_TOKEN_FIELD_NUMBER = 3;
            private static final Parser<AppChange> PARSER;
            private static final long serialVersionUID = 0;
            private int appid_;
            private int bitField0_;
            private int changeNumber_;
            private byte memoizedIsInitialized;
            private boolean needsToken_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", AppChange.class.getName());
                DEFAULT_INSTANCE = new AppChange();
                PARSER = new AbstractParser<AppChange>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChange.1
                    @Override // com.google.protobuf.Parser
                    public AppChange parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = AppChange.newBuilder();
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

            private AppChange(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.appid_ = 0;
                this.changeNumber_ = 0;
                this.needsToken_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private AppChange() {
                this.appid_ = 0;
                this.changeNumber_ = 0;
                this.needsToken_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_AppChange_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_AppChange_fieldAccessorTable.ensureFieldAccessorsInitialized(AppChange.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
            public boolean hasChangeNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
            public int getChangeNumber() {
                return this.changeNumber_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
            public boolean hasNeedsToken() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
            public boolean getNeedsToken() {
                return this.needsToken_;
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
                    codedOutputStream.writeUInt32(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBool(3, this.needsToken_);
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
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.needsToken_);
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
                if (!(obj instanceof AppChange)) {
                    return super.equals(obj);
                }
                AppChange appChange = (AppChange) obj;
                if (hasAppid() != appChange.hasAppid()) {
                    return false;
                }
                if ((hasAppid() && getAppid() != appChange.getAppid()) || hasChangeNumber() != appChange.hasChangeNumber()) {
                    return false;
                }
                if ((!hasChangeNumber() || getChangeNumber() == appChange.getChangeNumber()) && hasNeedsToken() == appChange.hasNeedsToken()) {
                    return (!hasNeedsToken() || getNeedsToken() == appChange.getNeedsToken()) && getUnknownFields().equals(appChange.getUnknownFields());
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
                if (hasChangeNumber()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getChangeNumber();
                }
                if (hasNeedsToken()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getNeedsToken());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static AppChange parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static AppChange parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static AppChange parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static AppChange parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static AppChange parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static AppChange parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static AppChange parseFrom(InputStream inputStream) throws IOException {
                return (AppChange) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static AppChange parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppChange) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppChange parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AppChange) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AppChange parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppChange) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppChange parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (AppChange) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static AppChange parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppChange) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(AppChange appChange) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(appChange);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements AppChangeOrBuilder {
                private int appid_;
                private int bitField0_;
                private int changeNumber_;
                private boolean needsToken_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_AppChange_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_AppChange_fieldAccessorTable.ensureFieldAccessorsInitialized(AppChange.class, Builder.class);
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
                    this.changeNumber_ = 0;
                    this.needsToken_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_AppChange_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public AppChange getDefaultInstanceForType() {
                    return AppChange.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppChange build() {
                    AppChange appChangeBuildPartial = buildPartial();
                    if (appChangeBuildPartial.isInitialized()) {
                        return appChangeBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) appChangeBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppChange buildPartial() {
                    AppChange appChange = new AppChange(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(appChange);
                    }
                    onBuilt();
                    return appChange;
                }

                private void buildPartial0(AppChange appChange) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        appChange.appid_ = this.appid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        appChange.changeNumber_ = this.changeNumber_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        appChange.needsToken_ = this.needsToken_;
                        i |= 4;
                    }
                    appChange.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof AppChange) {
                        return mergeFrom((AppChange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(AppChange appChange) {
                    if (appChange == AppChange.getDefaultInstance()) {
                        return this;
                    }
                    if (appChange.hasAppid()) {
                        setAppid(appChange.getAppid());
                    }
                    if (appChange.hasChangeNumber()) {
                        setChangeNumber(appChange.getChangeNumber());
                    }
                    if (appChange.hasNeedsToken()) {
                        setNeedsToken(appChange.getNeedsToken());
                    }
                    mergeUnknownFields(appChange.getUnknownFields());
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
                                        this.changeNumber_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.needsToken_ = codedInputStream.readBool();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
                public boolean hasAppid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
                public boolean hasChangeNumber() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
                public int getChangeNumber() {
                    return this.changeNumber_;
                }

                public Builder setChangeNumber(int i) {
                    this.changeNumber_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearChangeNumber() {
                    this.bitField0_ &= -3;
                    this.changeNumber_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
                public boolean hasNeedsToken() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChangeOrBuilder
                public boolean getNeedsToken() {
                    return this.needsToken_;
                }

                public Builder setNeedsToken(boolean z) {
                    this.needsToken_ = z;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearNeedsToken() {
                    this.bitField0_ &= -5;
                    this.needsToken_ = false;
                    onChanged();
                    return this;
                }
            }

            public static AppChange getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AppChange> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<AppChange> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public AppChange getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean hasCurrentChangeNumber() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public int getCurrentChangeNumber() {
            return this.currentChangeNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean hasSinceChangeNumber() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public int getSinceChangeNumber() {
            return this.sinceChangeNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean hasForceFullUpdate() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean getForceFullUpdate() {
            return this.forceFullUpdate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public List<PackageChange> getPackageChangesList() {
            return this.packageChanges_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public List<? extends PackageChangeOrBuilder> getPackageChangesOrBuilderList() {
            return this.packageChanges_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public int getPackageChangesCount() {
            return this.packageChanges_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public PackageChange getPackageChanges(int i) {
            return this.packageChanges_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public PackageChangeOrBuilder getPackageChangesOrBuilder(int i) {
            return this.packageChanges_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public List<AppChange> getAppChangesList() {
            return this.appChanges_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public List<? extends AppChangeOrBuilder> getAppChangesOrBuilderList() {
            return this.appChanges_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public int getAppChangesCount() {
            return this.appChanges_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public AppChange getAppChanges(int i) {
            return this.appChanges_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public AppChangeOrBuilder getAppChangesOrBuilder(int i) {
            return this.appChanges_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean hasForceFullAppUpdate() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean getForceFullAppUpdate() {
            return this.forceFullAppUpdate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean hasForceFullPackageUpdate() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
        public boolean getForceFullPackageUpdate() {
            return this.forceFullPackageUpdate_;
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
                codedOutputStream.writeUInt32(1, this.currentChangeNumber_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.sinceChangeNumber_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.forceFullUpdate_);
            }
            for (int i = 0; i < this.packageChanges_.size(); i++) {
                codedOutputStream.writeMessage(4, this.packageChanges_.get(i));
            }
            for (int i2 = 0; i2 < this.appChanges_.size(); i2++) {
                codedOutputStream.writeMessage(5, this.appChanges_.get(i2));
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(6, this.forceFullAppUpdate_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(7, this.forceFullPackageUpdate_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.currentChangeNumber_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.sinceChangeNumber_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.forceFullUpdate_);
            }
            for (int i2 = 0; i2 < this.packageChanges_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(4, this.packageChanges_.get(i2));
            }
            for (int i3 = 0; i3 < this.appChanges_.size(); i3++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(5, this.appChanges_.get(i3));
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(6, this.forceFullAppUpdate_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(7, this.forceFullPackageUpdate_);
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
            if (!(obj instanceof CMsgClientPICSChangesSinceResponse)) {
                return super.equals(obj);
            }
            CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponse = (CMsgClientPICSChangesSinceResponse) obj;
            if (hasCurrentChangeNumber() != cMsgClientPICSChangesSinceResponse.hasCurrentChangeNumber()) {
                return false;
            }
            if ((hasCurrentChangeNumber() && getCurrentChangeNumber() != cMsgClientPICSChangesSinceResponse.getCurrentChangeNumber()) || hasSinceChangeNumber() != cMsgClientPICSChangesSinceResponse.hasSinceChangeNumber()) {
                return false;
            }
            if ((hasSinceChangeNumber() && getSinceChangeNumber() != cMsgClientPICSChangesSinceResponse.getSinceChangeNumber()) || hasForceFullUpdate() != cMsgClientPICSChangesSinceResponse.hasForceFullUpdate()) {
                return false;
            }
            if ((hasForceFullUpdate() && getForceFullUpdate() != cMsgClientPICSChangesSinceResponse.getForceFullUpdate()) || !getPackageChangesList().equals(cMsgClientPICSChangesSinceResponse.getPackageChangesList()) || !getAppChangesList().equals(cMsgClientPICSChangesSinceResponse.getAppChangesList()) || hasForceFullAppUpdate() != cMsgClientPICSChangesSinceResponse.hasForceFullAppUpdate()) {
                return false;
            }
            if ((!hasForceFullAppUpdate() || getForceFullAppUpdate() == cMsgClientPICSChangesSinceResponse.getForceFullAppUpdate()) && hasForceFullPackageUpdate() == cMsgClientPICSChangesSinceResponse.hasForceFullPackageUpdate()) {
                return (!hasForceFullPackageUpdate() || getForceFullPackageUpdate() == cMsgClientPICSChangesSinceResponse.getForceFullPackageUpdate()) && getUnknownFields().equals(cMsgClientPICSChangesSinceResponse.getUnknownFields());
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
            if (hasCurrentChangeNumber()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCurrentChangeNumber();
            }
            if (hasSinceChangeNumber()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSinceChangeNumber();
            }
            if (hasForceFullUpdate()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getForceFullUpdate());
            }
            if (getPackageChangesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getPackageChangesList().hashCode();
            }
            if (getAppChangesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getAppChangesList().hashCode();
            }
            if (hasForceFullAppUpdate()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getForceFullAppUpdate());
            }
            if (hasForceFullPackageUpdate()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getForceFullPackageUpdate());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSChangesSinceResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSChangesSinceResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSChangesSinceResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSChangesSinceResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSChangesSinceResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSChangesSinceResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSChangesSinceResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSChangesSinceResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSChangesSinceResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSChangesSinceResponseOrBuilder {
            private RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> appChangesBuilder_;
            private List<AppChange> appChanges_;
            private int bitField0_;
            private int currentChangeNumber_;
            private boolean forceFullAppUpdate_;
            private boolean forceFullPackageUpdate_;
            private boolean forceFullUpdate_;
            private RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> packageChangesBuilder_;
            private List<PackageChange> packageChanges_;
            private int sinceChangeNumber_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSChangesSinceResponse.class, Builder.class);
            }

            private Builder() {
                this.packageChanges_ = Collections.emptyList();
                this.appChanges_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.packageChanges_ = Collections.emptyList();
                this.appChanges_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.currentChangeNumber_ = 0;
                this.sinceChangeNumber_ = 0;
                this.forceFullUpdate_ = false;
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packageChanges_ = Collections.emptyList();
                } else {
                    this.packageChanges_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder2 = this.appChangesBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.appChanges_ = Collections.emptyList();
                } else {
                    this.appChanges_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -17;
                this.forceFullAppUpdate_ = false;
                this.forceFullPackageUpdate_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSChangesSinceResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSChangesSinceResponse getDefaultInstanceForType() {
                return CMsgClientPICSChangesSinceResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSChangesSinceResponse build() {
                CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponseBuildPartial = buildPartial();
                if (cMsgClientPICSChangesSinceResponseBuildPartial.isInitialized()) {
                    return cMsgClientPICSChangesSinceResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSChangesSinceResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSChangesSinceResponse buildPartial() {
                CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponse = new CMsgClientPICSChangesSinceResponse(this);
                buildPartialRepeatedFields(cMsgClientPICSChangesSinceResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSChangesSinceResponse);
                }
                onBuilt();
                return cMsgClientPICSChangesSinceResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponse) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.packageChanges_ = Collections.unmodifiableList(this.packageChanges_);
                        this.bitField0_ &= -9;
                    }
                    cMsgClientPICSChangesSinceResponse.packageChanges_ = this.packageChanges_;
                } else {
                    cMsgClientPICSChangesSinceResponse.packageChanges_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder2 = this.appChangesBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.appChanges_ = Collections.unmodifiableList(this.appChanges_);
                        this.bitField0_ &= -17;
                    }
                    cMsgClientPICSChangesSinceResponse.appChanges_ = this.appChanges_;
                    return;
                }
                cMsgClientPICSChangesSinceResponse.appChanges_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPICSChangesSinceResponse.currentChangeNumber_ = this.currentChangeNumber_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPICSChangesSinceResponse.sinceChangeNumber_ = this.sinceChangeNumber_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientPICSChangesSinceResponse.forceFullUpdate_ = this.forceFullUpdate_;
                    i |= 4;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientPICSChangesSinceResponse.forceFullAppUpdate_ = this.forceFullAppUpdate_;
                    i |= 8;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientPICSChangesSinceResponse.forceFullPackageUpdate_ = this.forceFullPackageUpdate_;
                    i |= 16;
                }
                cMsgClientPICSChangesSinceResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSChangesSinceResponse) {
                    return mergeFrom((CMsgClientPICSChangesSinceResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSChangesSinceResponse cMsgClientPICSChangesSinceResponse) {
                if (cMsgClientPICSChangesSinceResponse == CMsgClientPICSChangesSinceResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPICSChangesSinceResponse.hasCurrentChangeNumber()) {
                    setCurrentChangeNumber(cMsgClientPICSChangesSinceResponse.getCurrentChangeNumber());
                }
                if (cMsgClientPICSChangesSinceResponse.hasSinceChangeNumber()) {
                    setSinceChangeNumber(cMsgClientPICSChangesSinceResponse.getSinceChangeNumber());
                }
                if (cMsgClientPICSChangesSinceResponse.hasForceFullUpdate()) {
                    setForceFullUpdate(cMsgClientPICSChangesSinceResponse.getForceFullUpdate());
                }
                if (this.packageChangesBuilder_ == null) {
                    if (!cMsgClientPICSChangesSinceResponse.packageChanges_.isEmpty()) {
                        if (this.packageChanges_.isEmpty()) {
                            this.packageChanges_ = cMsgClientPICSChangesSinceResponse.packageChanges_;
                            this.bitField0_ &= -9;
                        } else {
                            ensurePackageChangesIsMutable();
                            this.packageChanges_.addAll(cMsgClientPICSChangesSinceResponse.packageChanges_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSChangesSinceResponse.packageChanges_.isEmpty()) {
                    if (this.packageChangesBuilder_.isEmpty()) {
                        this.packageChangesBuilder_.dispose();
                        this.packageChangesBuilder_ = null;
                        this.packageChanges_ = cMsgClientPICSChangesSinceResponse.packageChanges_;
                        this.bitField0_ &= -9;
                        this.packageChangesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPackageChangesFieldBuilder() : null;
                    } else {
                        this.packageChangesBuilder_.addAllMessages(cMsgClientPICSChangesSinceResponse.packageChanges_);
                    }
                }
                if (this.appChangesBuilder_ == null) {
                    if (!cMsgClientPICSChangesSinceResponse.appChanges_.isEmpty()) {
                        if (this.appChanges_.isEmpty()) {
                            this.appChanges_ = cMsgClientPICSChangesSinceResponse.appChanges_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureAppChangesIsMutable();
                            this.appChanges_.addAll(cMsgClientPICSChangesSinceResponse.appChanges_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSChangesSinceResponse.appChanges_.isEmpty()) {
                    if (this.appChangesBuilder_.isEmpty()) {
                        this.appChangesBuilder_.dispose();
                        this.appChangesBuilder_ = null;
                        this.appChanges_ = cMsgClientPICSChangesSinceResponse.appChanges_;
                        this.bitField0_ &= -17;
                        this.appChangesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetAppChangesFieldBuilder() : null;
                    } else {
                        this.appChangesBuilder_.addAllMessages(cMsgClientPICSChangesSinceResponse.appChanges_);
                    }
                }
                if (cMsgClientPICSChangesSinceResponse.hasForceFullAppUpdate()) {
                    setForceFullAppUpdate(cMsgClientPICSChangesSinceResponse.getForceFullAppUpdate());
                }
                if (cMsgClientPICSChangesSinceResponse.hasForceFullPackageUpdate()) {
                    setForceFullPackageUpdate(cMsgClientPICSChangesSinceResponse.getForceFullPackageUpdate());
                }
                mergeUnknownFields(cMsgClientPICSChangesSinceResponse.getUnknownFields());
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
                                    this.currentChangeNumber_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.sinceChangeNumber_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.forceFullUpdate_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    PackageChange packageChange = (PackageChange) codedInputStream.readMessage(PackageChange.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensurePackageChangesIsMutable();
                                        this.packageChanges_.add(packageChange);
                                    } else {
                                        repeatedFieldBuilder.addMessage(packageChange);
                                    }
                                } else if (tag == 42) {
                                    AppChange appChange = (AppChange) codedInputStream.readMessage(AppChange.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder2 = this.appChangesBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensureAppChangesIsMutable();
                                        this.appChanges_.add(appChange);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(appChange);
                                    }
                                } else if (tag == 48) {
                                    this.forceFullAppUpdate_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.forceFullPackageUpdate_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean hasCurrentChangeNumber() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public int getCurrentChangeNumber() {
                return this.currentChangeNumber_;
            }

            public Builder setCurrentChangeNumber(int i) {
                this.currentChangeNumber_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCurrentChangeNumber() {
                this.bitField0_ &= -2;
                this.currentChangeNumber_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean hasSinceChangeNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public int getSinceChangeNumber() {
                return this.sinceChangeNumber_;
            }

            public Builder setSinceChangeNumber(int i) {
                this.sinceChangeNumber_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSinceChangeNumber() {
                this.bitField0_ &= -3;
                this.sinceChangeNumber_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean hasForceFullUpdate() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean getForceFullUpdate() {
                return this.forceFullUpdate_;
            }

            public Builder setForceFullUpdate(boolean z) {
                this.forceFullUpdate_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearForceFullUpdate() {
                this.bitField0_ &= -5;
                this.forceFullUpdate_ = false;
                onChanged();
                return this;
            }

            private void ensurePackageChangesIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.packageChanges_ = new ArrayList(this.packageChanges_);
                    this.bitField0_ |= 8;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public List<PackageChange> getPackageChangesList() {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.packageChanges_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public int getPackageChangesCount() {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageChanges_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public PackageChange getPackageChanges(int i) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageChanges_.get(i);
                }
                return (PackageChange) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPackageChanges(int i, PackageChange packageChange) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageChange.getClass();
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.set(i, packageChange);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, packageChange);
                }
                return this;
            }

            public Builder setPackageChanges(int i, PackageChange.Builder builder) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPackageChanges(PackageChange packageChange) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageChange.getClass();
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.add(packageChange);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(packageChange);
                }
                return this;
            }

            public Builder addPackageChanges(int i, PackageChange packageChange) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageChange.getClass();
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.add(i, packageChange);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, packageChange);
                }
                return this;
            }

            public Builder addPackageChanges(PackageChange.Builder builder) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPackageChanges(int i, PackageChange.Builder builder) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPackageChanges(Iterable<? extends PackageChange> iterable) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageChangesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packageChanges_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPackageChanges() {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packageChanges_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePackageChanges(int i) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageChangesIsMutable();
                    this.packageChanges_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public PackageChange.Builder getPackageChangesBuilder(int i) {
                return (PackageChange.Builder) internalGetPackageChangesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public PackageChangeOrBuilder getPackageChangesOrBuilder(int i) {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageChanges_.get(i);
                }
                return (PackageChangeOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public List<? extends PackageChangeOrBuilder> getPackageChangesOrBuilderList() {
                RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> repeatedFieldBuilder = this.packageChangesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.packageChanges_);
            }

            public PackageChange.Builder addPackageChangesBuilder() {
                return (PackageChange.Builder) internalGetPackageChangesFieldBuilder().addBuilder(PackageChange.getDefaultInstance());
            }

            public PackageChange.Builder addPackageChangesBuilder(int i) {
                return (PackageChange.Builder) internalGetPackageChangesFieldBuilder().addBuilder(i, PackageChange.getDefaultInstance());
            }

            public List<PackageChange.Builder> getPackageChangesBuilderList() {
                return internalGetPackageChangesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<PackageChange, PackageChange.Builder, PackageChangeOrBuilder> internalGetPackageChangesFieldBuilder() {
                if (this.packageChangesBuilder_ == null) {
                    this.packageChangesBuilder_ = new RepeatedFieldBuilder<>(this.packageChanges_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                    this.packageChanges_ = null;
                }
                return this.packageChangesBuilder_;
            }

            private void ensureAppChangesIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.appChanges_ = new ArrayList(this.appChanges_);
                    this.bitField0_ |= 16;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public List<AppChange> getAppChangesList() {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.appChanges_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public int getAppChangesCount() {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.appChanges_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public AppChange getAppChanges(int i) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.appChanges_.get(i);
                }
                return (AppChange) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setAppChanges(int i, AppChange appChange) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    appChange.getClass();
                    ensureAppChangesIsMutable();
                    this.appChanges_.set(i, appChange);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, appChange);
                }
                return this;
            }

            public Builder setAppChanges(int i, AppChange.Builder builder) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppChangesIsMutable();
                    this.appChanges_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAppChanges(AppChange appChange) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    appChange.getClass();
                    ensureAppChangesIsMutable();
                    this.appChanges_.add(appChange);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(appChange);
                }
                return this;
            }

            public Builder addAppChanges(int i, AppChange appChange) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    appChange.getClass();
                    ensureAppChangesIsMutable();
                    this.appChanges_.add(i, appChange);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, appChange);
                }
                return this;
            }

            public Builder addAppChanges(AppChange.Builder builder) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppChangesIsMutable();
                    this.appChanges_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addAppChanges(int i, AppChange.Builder builder) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppChangesIsMutable();
                    this.appChanges_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllAppChanges(Iterable<? extends AppChange> iterable) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppChangesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.appChanges_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearAppChanges() {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.appChanges_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeAppChanges(int i) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppChangesIsMutable();
                    this.appChanges_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public AppChange.Builder getAppChangesBuilder(int i) {
                return (AppChange.Builder) internalGetAppChangesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public AppChangeOrBuilder getAppChangesOrBuilder(int i) {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.appChanges_.get(i);
                }
                return (AppChangeOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public List<? extends AppChangeOrBuilder> getAppChangesOrBuilderList() {
                RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> repeatedFieldBuilder = this.appChangesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.appChanges_);
            }

            public AppChange.Builder addAppChangesBuilder() {
                return (AppChange.Builder) internalGetAppChangesFieldBuilder().addBuilder(AppChange.getDefaultInstance());
            }

            public AppChange.Builder addAppChangesBuilder(int i) {
                return (AppChange.Builder) internalGetAppChangesFieldBuilder().addBuilder(i, AppChange.getDefaultInstance());
            }

            public List<AppChange.Builder> getAppChangesBuilderList() {
                return internalGetAppChangesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<AppChange, AppChange.Builder, AppChangeOrBuilder> internalGetAppChangesFieldBuilder() {
                if (this.appChangesBuilder_ == null) {
                    this.appChangesBuilder_ = new RepeatedFieldBuilder<>(this.appChanges_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.appChanges_ = null;
                }
                return this.appChangesBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean hasForceFullAppUpdate() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean getForceFullAppUpdate() {
                return this.forceFullAppUpdate_;
            }

            public Builder setForceFullAppUpdate(boolean z) {
                this.forceFullAppUpdate_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearForceFullAppUpdate() {
                this.bitField0_ &= -33;
                this.forceFullAppUpdate_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean hasForceFullPackageUpdate() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponseOrBuilder
            public boolean getForceFullPackageUpdate() {
                return this.forceFullPackageUpdate_;
            }

            public Builder setForceFullPackageUpdate(boolean z) {
                this.forceFullPackageUpdate_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearForceFullPackageUpdate() {
                this.bitField0_ &= -65;
                this.forceFullPackageUpdate_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSChangesSinceResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSChangesSinceResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSChangesSinceResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSChangesSinceResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSProductInfoRequest extends GeneratedMessage implements CMsgClientPICSProductInfoRequestOrBuilder {
        public static final int APPS_FIELD_NUMBER = 2;
        private static final CMsgClientPICSProductInfoRequest DEFAULT_INSTANCE;
        public static final int META_DATA_ONLY_FIELD_NUMBER = 3;
        public static final int NUM_PREV_FAILED_FIELD_NUMBER = 4;
        public static final int OBSOLETE_SUPPORTS_PACKAGE_TOKENS_FIELD_NUMBER = 5;
        public static final int PACKAGES_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientPICSProductInfoRequest> PARSER;
        public static final int SEQUENCE_NUMBER_FIELD_NUMBER = 6;
        public static final int SINGLE_RESPONSE_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private List<AppInfo> apps_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean metaDataOnly_;
        private int numPrevFailed_;
        private int oBSOLETESupportsPackageTokens_;
        private List<PackageInfo> packages_;
        private int sequenceNumber_;
        private boolean singleResponse_;

        public interface AppInfoOrBuilder extends MessageOrBuilder {
            long getAccessToken();

            int getAppid();

            boolean getOnlyPublicObsolete();

            boolean hasAccessToken();

            boolean hasAppid();

            boolean hasOnlyPublicObsolete();
        }

        public interface PackageInfoOrBuilder extends MessageOrBuilder {
            long getAccessToken();

            int getPackageid();

            boolean hasAccessToken();

            boolean hasPackageid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSProductInfoRequest.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSProductInfoRequest();
            PARSER = new AbstractParser<CMsgClientPICSProductInfoRequest>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSProductInfoRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSProductInfoRequest.newBuilder();
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

        private CMsgClientPICSProductInfoRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.metaDataOnly_ = false;
            this.numPrevFailed_ = 0;
            this.oBSOLETESupportsPackageTokens_ = 0;
            this.sequenceNumber_ = 0;
            this.singleResponse_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSProductInfoRequest() {
            this.metaDataOnly_ = false;
            this.numPrevFailed_ = 0;
            this.oBSOLETESupportsPackageTokens_ = 0;
            this.sequenceNumber_ = 0;
            this.singleResponse_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.packages_ = Collections.emptyList();
            this.apps_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSProductInfoRequest.class, Builder.class);
        }

        public static final class AppInfo extends GeneratedMessage implements AppInfoOrBuilder {
            public static final int ACCESS_TOKEN_FIELD_NUMBER = 2;
            public static final int APPID_FIELD_NUMBER = 1;
            private static final AppInfo DEFAULT_INSTANCE;
            public static final int ONLY_PUBLIC_OBSOLETE_FIELD_NUMBER = 3;
            private static final Parser<AppInfo> PARSER;
            private static final long serialVersionUID = 0;
            private long accessToken_;
            private int appid_;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private boolean onlyPublicObsolete_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", AppInfo.class.getName());
                DEFAULT_INSTANCE = new AppInfo();
                PARSER = new AbstractParser<AppInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfo.1
                    @Override // com.google.protobuf.Parser
                    public AppInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = AppInfo.newBuilder();
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

            private AppInfo(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.appid_ = 0;
                this.accessToken_ = 0L;
                this.onlyPublicObsolete_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private AppInfo() {
                this.appid_ = 0;
                this.accessToken_ = 0L;
                this.onlyPublicObsolete_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_AppInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_AppInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(AppInfo.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
            public long getAccessToken() {
                return this.accessToken_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
            public boolean hasOnlyPublicObsolete() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
            public boolean getOnlyPublicObsolete() {
                return this.onlyPublicObsolete_;
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
                    codedOutputStream.writeUInt64(2, this.accessToken_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBool(3, this.onlyPublicObsolete_);
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
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.accessToken_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.onlyPublicObsolete_);
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
                if (!(obj instanceof AppInfo)) {
                    return super.equals(obj);
                }
                AppInfo appInfo = (AppInfo) obj;
                if (hasAppid() != appInfo.hasAppid()) {
                    return false;
                }
                if ((hasAppid() && getAppid() != appInfo.getAppid()) || hasAccessToken() != appInfo.hasAccessToken()) {
                    return false;
                }
                if ((!hasAccessToken() || getAccessToken() == appInfo.getAccessToken()) && hasOnlyPublicObsolete() == appInfo.hasOnlyPublicObsolete()) {
                    return (!hasOnlyPublicObsolete() || getOnlyPublicObsolete() == appInfo.getOnlyPublicObsolete()) && getUnknownFields().equals(appInfo.getUnknownFields());
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
                if (hasAccessToken()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAccessToken());
                }
                if (hasOnlyPublicObsolete()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getOnlyPublicObsolete());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static AppInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static AppInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static AppInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static AppInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static AppInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static AppInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static AppInfo parseFrom(InputStream inputStream) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static AppInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AppInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AppInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static AppInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(AppInfo appInfo) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(appInfo);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements AppInfoOrBuilder {
                private long accessToken_;
                private int appid_;
                private int bitField0_;
                private boolean onlyPublicObsolete_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_AppInfo_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_AppInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(AppInfo.class, Builder.class);
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
                    this.accessToken_ = 0L;
                    this.onlyPublicObsolete_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_AppInfo_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public AppInfo getDefaultInstanceForType() {
                    return AppInfo.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppInfo build() {
                    AppInfo appInfoBuildPartial = buildPartial();
                    if (appInfoBuildPartial.isInitialized()) {
                        return appInfoBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) appInfoBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppInfo buildPartial() {
                    AppInfo appInfo = new AppInfo(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(appInfo);
                    }
                    onBuilt();
                    return appInfo;
                }

                private void buildPartial0(AppInfo appInfo) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        appInfo.appid_ = this.appid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        appInfo.accessToken_ = this.accessToken_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        appInfo.onlyPublicObsolete_ = this.onlyPublicObsolete_;
                        i |= 4;
                    }
                    appInfo.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof AppInfo) {
                        return mergeFrom((AppInfo) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(AppInfo appInfo) {
                    if (appInfo == AppInfo.getDefaultInstance()) {
                        return this;
                    }
                    if (appInfo.hasAppid()) {
                        setAppid(appInfo.getAppid());
                    }
                    if (appInfo.hasAccessToken()) {
                        setAccessToken(appInfo.getAccessToken());
                    }
                    if (appInfo.hasOnlyPublicObsolete()) {
                        setOnlyPublicObsolete(appInfo.getOnlyPublicObsolete());
                    }
                    mergeUnknownFields(appInfo.getUnknownFields());
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
                                        this.accessToken_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.onlyPublicObsolete_ = codedInputStream.readBool();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
                public boolean hasAppid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
                public boolean hasAccessToken() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
                public long getAccessToken() {
                    return this.accessToken_;
                }

                public Builder setAccessToken(long j) {
                    this.accessToken_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearAccessToken() {
                    this.bitField0_ &= -3;
                    this.accessToken_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
                public boolean hasOnlyPublicObsolete() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfoOrBuilder
                public boolean getOnlyPublicObsolete() {
                    return this.onlyPublicObsolete_;
                }

                public Builder setOnlyPublicObsolete(boolean z) {
                    this.onlyPublicObsolete_ = z;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearOnlyPublicObsolete() {
                    this.bitField0_ &= -5;
                    this.onlyPublicObsolete_ = false;
                    onChanged();
                    return this;
                }
            }

            public static AppInfo getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AppInfo> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<AppInfo> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public AppInfo getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class PackageInfo extends GeneratedMessage implements PackageInfoOrBuilder {
            public static final int ACCESS_TOKEN_FIELD_NUMBER = 2;
            private static final PackageInfo DEFAULT_INSTANCE;
            public static final int PACKAGEID_FIELD_NUMBER = 1;
            private static final Parser<PackageInfo> PARSER;
            private static final long serialVersionUID = 0;
            private long accessToken_;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private int packageid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", PackageInfo.class.getName());
                DEFAULT_INSTANCE = new PackageInfo();
                PARSER = new AbstractParser<PackageInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfo.1
                    @Override // com.google.protobuf.Parser
                    public PackageInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = PackageInfo.newBuilder();
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

            private PackageInfo(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.packageid_ = 0;
                this.accessToken_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            private PackageInfo() {
                this.packageid_ = 0;
                this.accessToken_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageInfo.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
            public boolean hasPackageid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
            public int getPackageid() {
                return this.packageid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
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
                    codedOutputStream.writeUInt32(1, this.packageid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt64(2, this.accessToken_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.packageid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.accessToken_);
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
                if (!(obj instanceof PackageInfo)) {
                    return super.equals(obj);
                }
                PackageInfo packageInfo = (PackageInfo) obj;
                if (hasPackageid() != packageInfo.hasPackageid()) {
                    return false;
                }
                if ((!hasPackageid() || getPackageid() == packageInfo.getPackageid()) && hasAccessToken() == packageInfo.hasAccessToken()) {
                    return (!hasAccessToken() || getAccessToken() == packageInfo.getAccessToken()) && getUnknownFields().equals(packageInfo.getUnknownFields());
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
                if (hasPackageid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageid();
                }
                if (hasAccessToken()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAccessToken());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PackageInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PackageInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PackageInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PackageInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(InputStream inputStream) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static PackageInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PackageInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PackageInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static PackageInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PackageInfo packageInfo) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(packageInfo);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PackageInfoOrBuilder {
                private long accessToken_;
                private int bitField0_;
                private int packageid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageInfo.class, Builder.class);
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
                    this.packageid_ = 0;
                    this.accessToken_ = 0L;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_PackageInfo_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public PackageInfo getDefaultInstanceForType() {
                    return PackageInfo.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageInfo build() {
                    PackageInfo packageInfoBuildPartial = buildPartial();
                    if (packageInfoBuildPartial.isInitialized()) {
                        return packageInfoBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) packageInfoBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageInfo buildPartial() {
                    PackageInfo packageInfo = new PackageInfo(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(packageInfo);
                    }
                    onBuilt();
                    return packageInfo;
                }

                private void buildPartial0(PackageInfo packageInfo) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        packageInfo.packageid_ = this.packageid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        packageInfo.accessToken_ = this.accessToken_;
                        i |= 2;
                    }
                    packageInfo.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof PackageInfo) {
                        return mergeFrom((PackageInfo) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PackageInfo packageInfo) {
                    if (packageInfo == PackageInfo.getDefaultInstance()) {
                        return this;
                    }
                    if (packageInfo.hasPackageid()) {
                        setPackageid(packageInfo.getPackageid());
                    }
                    if (packageInfo.hasAccessToken()) {
                        setAccessToken(packageInfo.getAccessToken());
                    }
                    mergeUnknownFields(packageInfo.getUnknownFields());
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
                                        this.packageid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.accessToken_ = codedInputStream.readUInt64();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
                public boolean hasPackageid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
                public int getPackageid() {
                    return this.packageid_;
                }

                public Builder setPackageid(int i) {
                    this.packageid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearPackageid() {
                    this.bitField0_ &= -2;
                    this.packageid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
                public boolean hasAccessToken() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfoOrBuilder
                public long getAccessToken() {
                    return this.accessToken_;
                }

                public Builder setAccessToken(long j) {
                    this.accessToken_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearAccessToken() {
                    this.bitField0_ &= -3;
                    this.accessToken_ = 0L;
                    onChanged();
                    return this;
                }
            }

            public static PackageInfo getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PackageInfo> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<PackageInfo> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PackageInfo getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public List<PackageInfo> getPackagesList() {
            return this.packages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public List<? extends PackageInfoOrBuilder> getPackagesOrBuilderList() {
            return this.packages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public int getPackagesCount() {
            return this.packages_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public PackageInfo getPackages(int i) {
            return this.packages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public PackageInfoOrBuilder getPackagesOrBuilder(int i) {
            return this.packages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public List<AppInfo> getAppsList() {
            return this.apps_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public List<? extends AppInfoOrBuilder> getAppsOrBuilderList() {
            return this.apps_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public int getAppsCount() {
            return this.apps_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public AppInfo getApps(int i) {
            return this.apps_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public AppInfoOrBuilder getAppsOrBuilder(int i) {
            return this.apps_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean hasMetaDataOnly() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean getMetaDataOnly() {
            return this.metaDataOnly_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean hasNumPrevFailed() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public int getNumPrevFailed() {
            return this.numPrevFailed_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean hasOBSOLETESupportsPackageTokens() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public int getOBSOLETESupportsPackageTokens() {
            return this.oBSOLETESupportsPackageTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean hasSequenceNumber() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public int getSequenceNumber() {
            return this.sequenceNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean hasSingleResponse() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
        public boolean getSingleResponse() {
            return this.singleResponse_;
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
            for (int i = 0; i < this.packages_.size(); i++) {
                codedOutputStream.writeMessage(1, this.packages_.get(i));
            }
            for (int i2 = 0; i2 < this.apps_.size(); i2++) {
                codedOutputStream.writeMessage(2, this.apps_.get(i2));
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeBool(3, this.metaDataOnly_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(4, this.numPrevFailed_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(5, this.oBSOLETESupportsPackageTokens_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(6, this.sequenceNumber_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(7, this.singleResponse_);
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
            for (int i2 = 0; i2 < this.packages_.size(); i2++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(1, this.packages_.get(i2));
            }
            for (int i3 = 0; i3 < this.apps_.size(); i3++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(2, this.apps_.get(i3));
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(3, this.metaDataOnly_);
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(4, this.numPrevFailed_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(5, this.oBSOLETESupportsPackageTokens_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(6, this.sequenceNumber_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(7, this.singleResponse_);
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
            if (!(obj instanceof CMsgClientPICSProductInfoRequest)) {
                return super.equals(obj);
            }
            CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequest = (CMsgClientPICSProductInfoRequest) obj;
            if (!getPackagesList().equals(cMsgClientPICSProductInfoRequest.getPackagesList()) || !getAppsList().equals(cMsgClientPICSProductInfoRequest.getAppsList()) || hasMetaDataOnly() != cMsgClientPICSProductInfoRequest.hasMetaDataOnly()) {
                return false;
            }
            if ((hasMetaDataOnly() && getMetaDataOnly() != cMsgClientPICSProductInfoRequest.getMetaDataOnly()) || hasNumPrevFailed() != cMsgClientPICSProductInfoRequest.hasNumPrevFailed()) {
                return false;
            }
            if ((hasNumPrevFailed() && getNumPrevFailed() != cMsgClientPICSProductInfoRequest.getNumPrevFailed()) || hasOBSOLETESupportsPackageTokens() != cMsgClientPICSProductInfoRequest.hasOBSOLETESupportsPackageTokens()) {
                return false;
            }
            if ((hasOBSOLETESupportsPackageTokens() && getOBSOLETESupportsPackageTokens() != cMsgClientPICSProductInfoRequest.getOBSOLETESupportsPackageTokens()) || hasSequenceNumber() != cMsgClientPICSProductInfoRequest.hasSequenceNumber()) {
                return false;
            }
            if ((!hasSequenceNumber() || getSequenceNumber() == cMsgClientPICSProductInfoRequest.getSequenceNumber()) && hasSingleResponse() == cMsgClientPICSProductInfoRequest.hasSingleResponse()) {
                return (!hasSingleResponse() || getSingleResponse() == cMsgClientPICSProductInfoRequest.getSingleResponse()) && getUnknownFields().equals(cMsgClientPICSProductInfoRequest.getUnknownFields());
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
            if (getPackagesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPackagesList().hashCode();
            }
            if (getAppsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppsList().hashCode();
            }
            if (hasMetaDataOnly()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getMetaDataOnly());
            }
            if (hasNumPrevFailed()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getNumPrevFailed();
            }
            if (hasOBSOLETESupportsPackageTokens()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getOBSOLETESupportsPackageTokens();
            }
            if (hasSequenceNumber()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getSequenceNumber();
            }
            if (hasSingleResponse()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getSingleResponse());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSProductInfoRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSProductInfoRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSProductInfoRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSProductInfoRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSProductInfoRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSProductInfoRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSProductInfoRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSProductInfoRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSProductInfoRequest);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSProductInfoRequestOrBuilder {
            private RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> appsBuilder_;
            private List<AppInfo> apps_;
            private int bitField0_;
            private boolean metaDataOnly_;
            private int numPrevFailed_;
            private int oBSOLETESupportsPackageTokens_;
            private RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> packagesBuilder_;
            private List<PackageInfo> packages_;
            private int sequenceNumber_;
            private boolean singleResponse_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSProductInfoRequest.class, Builder.class);
            }

            private Builder() {
                this.packages_ = Collections.emptyList();
                this.apps_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.packages_ = Collections.emptyList();
                this.apps_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packages_ = Collections.emptyList();
                } else {
                    this.packages_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder2 = this.appsBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.apps_ = Collections.emptyList();
                } else {
                    this.apps_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -3;
                this.metaDataOnly_ = false;
                this.numPrevFailed_ = 0;
                this.oBSOLETESupportsPackageTokens_ = 0;
                this.sequenceNumber_ = 0;
                this.singleResponse_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoRequest_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSProductInfoRequest getDefaultInstanceForType() {
                return CMsgClientPICSProductInfoRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSProductInfoRequest build() {
                CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequestBuildPartial = buildPartial();
                if (cMsgClientPICSProductInfoRequestBuildPartial.isInitialized()) {
                    return cMsgClientPICSProductInfoRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSProductInfoRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSProductInfoRequest buildPartial() {
                CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequest = new CMsgClientPICSProductInfoRequest(this);
                buildPartialRepeatedFields(cMsgClientPICSProductInfoRequest);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSProductInfoRequest);
                }
                onBuilt();
                return cMsgClientPICSProductInfoRequest;
            }

            private void buildPartialRepeatedFields(CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequest) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.packages_ = Collections.unmodifiableList(this.packages_);
                        this.bitField0_ &= -2;
                    }
                    cMsgClientPICSProductInfoRequest.packages_ = this.packages_;
                } else {
                    cMsgClientPICSProductInfoRequest.packages_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder2 = this.appsBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.apps_ = Collections.unmodifiableList(this.apps_);
                        this.bitField0_ &= -3;
                    }
                    cMsgClientPICSProductInfoRequest.apps_ = this.apps_;
                    return;
                }
                cMsgClientPICSProductInfoRequest.apps_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequest) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 4) != 0) {
                    cMsgClientPICSProductInfoRequest.metaDataOnly_ = this.metaDataOnly_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientPICSProductInfoRequest.numPrevFailed_ = this.numPrevFailed_;
                    i |= 2;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientPICSProductInfoRequest.oBSOLETESupportsPackageTokens_ = this.oBSOLETESupportsPackageTokens_;
                    i |= 4;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientPICSProductInfoRequest.sequenceNumber_ = this.sequenceNumber_;
                    i |= 8;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientPICSProductInfoRequest.singleResponse_ = this.singleResponse_;
                    i |= 16;
                }
                cMsgClientPICSProductInfoRequest.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSProductInfoRequest) {
                    return mergeFrom((CMsgClientPICSProductInfoRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSProductInfoRequest cMsgClientPICSProductInfoRequest) {
                if (cMsgClientPICSProductInfoRequest == CMsgClientPICSProductInfoRequest.getDefaultInstance()) {
                    return this;
                }
                if (this.packagesBuilder_ == null) {
                    if (!cMsgClientPICSProductInfoRequest.packages_.isEmpty()) {
                        if (this.packages_.isEmpty()) {
                            this.packages_ = cMsgClientPICSProductInfoRequest.packages_;
                            this.bitField0_ &= -2;
                        } else {
                            ensurePackagesIsMutable();
                            this.packages_.addAll(cMsgClientPICSProductInfoRequest.packages_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSProductInfoRequest.packages_.isEmpty()) {
                    if (this.packagesBuilder_.isEmpty()) {
                        this.packagesBuilder_.dispose();
                        this.packagesBuilder_ = null;
                        this.packages_ = cMsgClientPICSProductInfoRequest.packages_;
                        this.bitField0_ &= -2;
                        this.packagesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPackagesFieldBuilder() : null;
                    } else {
                        this.packagesBuilder_.addAllMessages(cMsgClientPICSProductInfoRequest.packages_);
                    }
                }
                if (this.appsBuilder_ == null) {
                    if (!cMsgClientPICSProductInfoRequest.apps_.isEmpty()) {
                        if (this.apps_.isEmpty()) {
                            this.apps_ = cMsgClientPICSProductInfoRequest.apps_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureAppsIsMutable();
                            this.apps_.addAll(cMsgClientPICSProductInfoRequest.apps_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSProductInfoRequest.apps_.isEmpty()) {
                    if (this.appsBuilder_.isEmpty()) {
                        this.appsBuilder_.dispose();
                        this.appsBuilder_ = null;
                        this.apps_ = cMsgClientPICSProductInfoRequest.apps_;
                        this.bitField0_ &= -3;
                        this.appsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetAppsFieldBuilder() : null;
                    } else {
                        this.appsBuilder_.addAllMessages(cMsgClientPICSProductInfoRequest.apps_);
                    }
                }
                if (cMsgClientPICSProductInfoRequest.hasMetaDataOnly()) {
                    setMetaDataOnly(cMsgClientPICSProductInfoRequest.getMetaDataOnly());
                }
                if (cMsgClientPICSProductInfoRequest.hasNumPrevFailed()) {
                    setNumPrevFailed(cMsgClientPICSProductInfoRequest.getNumPrevFailed());
                }
                if (cMsgClientPICSProductInfoRequest.hasOBSOLETESupportsPackageTokens()) {
                    setOBSOLETESupportsPackageTokens(cMsgClientPICSProductInfoRequest.getOBSOLETESupportsPackageTokens());
                }
                if (cMsgClientPICSProductInfoRequest.hasSequenceNumber()) {
                    setSequenceNumber(cMsgClientPICSProductInfoRequest.getSequenceNumber());
                }
                if (cMsgClientPICSProductInfoRequest.hasSingleResponse()) {
                    setSingleResponse(cMsgClientPICSProductInfoRequest.getSingleResponse());
                }
                mergeUnknownFields(cMsgClientPICSProductInfoRequest.getUnknownFields());
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
                                    PackageInfo packageInfo = (PackageInfo) codedInputStream.readMessage(PackageInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensurePackagesIsMutable();
                                        this.packages_.add(packageInfo);
                                    } else {
                                        repeatedFieldBuilder.addMessage(packageInfo);
                                    }
                                } else if (tag == 18) {
                                    AppInfo appInfo = (AppInfo) codedInputStream.readMessage(AppInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder2 = this.appsBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensureAppsIsMutable();
                                        this.apps_.add(appInfo);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(appInfo);
                                    }
                                } else if (tag == 24) {
                                    this.metaDataOnly_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.numPrevFailed_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.oBSOLETESupportsPackageTokens_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.sequenceNumber_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.singleResponse_ = codedInputStream.readBool();
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

            private void ensurePackagesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.packages_ = new ArrayList(this.packages_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public List<PackageInfo> getPackagesList() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.packages_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public int getPackagesCount() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packages_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public PackageInfo getPackages(int i) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packages_.get(i);
                }
                return (PackageInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPackages(int i, PackageInfo packageInfo) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageInfo.getClass();
                    ensurePackagesIsMutable();
                    this.packages_.set(i, packageInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, packageInfo);
                }
                return this;
            }

            public Builder setPackages(int i, PackageInfo.Builder builder) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPackages(PackageInfo packageInfo) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageInfo.getClass();
                    ensurePackagesIsMutable();
                    this.packages_.add(packageInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(packageInfo);
                }
                return this;
            }

            public Builder addPackages(int i, PackageInfo packageInfo) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageInfo.getClass();
                    ensurePackagesIsMutable();
                    this.packages_.add(i, packageInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, packageInfo);
                }
                return this;
            }

            public Builder addPackages(PackageInfo.Builder builder) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPackages(int i, PackageInfo.Builder builder) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPackages(Iterable<? extends PackageInfo> iterable) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packages_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPackages() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packages_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePackages(int i) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public PackageInfo.Builder getPackagesBuilder(int i) {
                return (PackageInfo.Builder) internalGetPackagesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public PackageInfoOrBuilder getPackagesOrBuilder(int i) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packages_.get(i);
                }
                return (PackageInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public List<? extends PackageInfoOrBuilder> getPackagesOrBuilderList() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.packages_);
            }

            public PackageInfo.Builder addPackagesBuilder() {
                return (PackageInfo.Builder) internalGetPackagesFieldBuilder().addBuilder(PackageInfo.getDefaultInstance());
            }

            public PackageInfo.Builder addPackagesBuilder(int i) {
                return (PackageInfo.Builder) internalGetPackagesFieldBuilder().addBuilder(i, PackageInfo.getDefaultInstance());
            }

            public List<PackageInfo.Builder> getPackagesBuilderList() {
                return internalGetPackagesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> internalGetPackagesFieldBuilder() {
                if (this.packagesBuilder_ == null) {
                    this.packagesBuilder_ = new RepeatedFieldBuilder<>(this.packages_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.packages_ = null;
                }
                return this.packagesBuilder_;
            }

            private void ensureAppsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.apps_ = new ArrayList(this.apps_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public List<AppInfo> getAppsList() {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.apps_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public int getAppsCount() {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public AppInfo getApps(int i) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.get(i);
                }
                return (AppInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setApps(int i, AppInfo appInfo) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    appInfo.getClass();
                    ensureAppsIsMutable();
                    this.apps_.set(i, appInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, appInfo);
                }
                return this;
            }

            public Builder setApps(int i, AppInfo.Builder builder) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addApps(AppInfo appInfo) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    appInfo.getClass();
                    ensureAppsIsMutable();
                    this.apps_.add(appInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(appInfo);
                }
                return this;
            }

            public Builder addApps(int i, AppInfo appInfo) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    appInfo.getClass();
                    ensureAppsIsMutable();
                    this.apps_.add(i, appInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, appInfo);
                }
                return this;
            }

            public Builder addApps(AppInfo.Builder builder) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addApps(int i, AppInfo.Builder builder) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllApps(Iterable<? extends AppInfo> iterable) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
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
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
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
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public AppInfo.Builder getAppsBuilder(int i) {
                return (AppInfo.Builder) internalGetAppsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public AppInfoOrBuilder getAppsOrBuilder(int i) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.get(i);
                }
                return (AppInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public List<? extends AppInfoOrBuilder> getAppsOrBuilderList() {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.apps_);
            }

            public AppInfo.Builder addAppsBuilder() {
                return (AppInfo.Builder) internalGetAppsFieldBuilder().addBuilder(AppInfo.getDefaultInstance());
            }

            public AppInfo.Builder addAppsBuilder(int i) {
                return (AppInfo.Builder) internalGetAppsFieldBuilder().addBuilder(i, AppInfo.getDefaultInstance());
            }

            public List<AppInfo.Builder> getAppsBuilderList() {
                return internalGetAppsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> internalGetAppsFieldBuilder() {
                if (this.appsBuilder_ == null) {
                    this.appsBuilder_ = new RepeatedFieldBuilder<>(this.apps_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.apps_ = null;
                }
                return this.appsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean hasMetaDataOnly() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean getMetaDataOnly() {
                return this.metaDataOnly_;
            }

            public Builder setMetaDataOnly(boolean z) {
                this.metaDataOnly_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMetaDataOnly() {
                this.bitField0_ &= -5;
                this.metaDataOnly_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean hasNumPrevFailed() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public int getNumPrevFailed() {
                return this.numPrevFailed_;
            }

            public Builder setNumPrevFailed(int i) {
                this.numPrevFailed_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearNumPrevFailed() {
                this.bitField0_ &= -9;
                this.numPrevFailed_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean hasOBSOLETESupportsPackageTokens() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public int getOBSOLETESupportsPackageTokens() {
                return this.oBSOLETESupportsPackageTokens_;
            }

            public Builder setOBSOLETESupportsPackageTokens(int i) {
                this.oBSOLETESupportsPackageTokens_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearOBSOLETESupportsPackageTokens() {
                this.bitField0_ &= -17;
                this.oBSOLETESupportsPackageTokens_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean hasSequenceNumber() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public int getSequenceNumber() {
                return this.sequenceNumber_;
            }

            public Builder setSequenceNumber(int i) {
                this.sequenceNumber_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearSequenceNumber() {
                this.bitField0_ &= -33;
                this.sequenceNumber_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean hasSingleResponse() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequestOrBuilder
            public boolean getSingleResponse() {
                return this.singleResponse_;
            }

            public Builder setSingleResponse(boolean z) {
                this.singleResponse_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSingleResponse() {
                this.bitField0_ &= -65;
                this.singleResponse_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSProductInfoRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSProductInfoRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSProductInfoRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSProductInfoRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSProductInfoResponse extends GeneratedMessage implements CMsgClientPICSProductInfoResponseOrBuilder {
        public static final int APPS_FIELD_NUMBER = 1;
        private static final CMsgClientPICSProductInfoResponse DEFAULT_INSTANCE;
        public static final int HTTP_HOST_FIELD_NUMBER = 8;
        public static final int HTTP_MIN_SIZE_FIELD_NUMBER = 7;
        public static final int META_DATA_ONLY_FIELD_NUMBER = 5;
        public static final int PACKAGES_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientPICSProductInfoResponse> PARSER;
        public static final int RESPONSE_PENDING_FIELD_NUMBER = 6;
        public static final int UNKNOWN_APPIDS_FIELD_NUMBER = 2;
        public static final int UNKNOWN_PACKAGEIDS_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private List<AppInfo> apps_;
        private int bitField0_;
        private volatile Object httpHost_;
        private int httpMinSize_;
        private byte memoizedIsInitialized;
        private boolean metaDataOnly_;
        private List<PackageInfo> packages_;
        private boolean responsePending_;
        private Internal.IntList unknownAppids_;
        private Internal.IntList unknownPackageids_;

        public interface AppInfoOrBuilder extends MessageOrBuilder {
            int getAppid();

            ByteString getBuffer();

            int getChangeNumber();

            boolean getMissingToken();

            boolean getOnlyPublic();

            ByteString getSha();

            int getSize();

            boolean hasAppid();

            boolean hasBuffer();

            boolean hasChangeNumber();

            boolean hasMissingToken();

            boolean hasOnlyPublic();

            boolean hasSha();

            boolean hasSize();
        }

        public interface PackageInfoOrBuilder extends MessageOrBuilder {
            ByteString getBuffer();

            int getChangeNumber();

            boolean getMissingToken();

            int getPackageid();

            ByteString getSha();

            int getSize();

            boolean hasBuffer();

            boolean hasChangeNumber();

            boolean hasMissingToken();

            boolean hasPackageid();

            boolean hasSha();

            boolean hasSize();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSProductInfoResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSProductInfoResponse();
            PARSER = new AbstractParser<CMsgClientPICSProductInfoResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSProductInfoResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSProductInfoResponse.newBuilder();
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

        private CMsgClientPICSProductInfoResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownAppids_ = GeneratedMessage.emptyIntList();
            this.unknownPackageids_ = GeneratedMessage.emptyIntList();
            this.metaDataOnly_ = false;
            this.responsePending_ = false;
            this.httpMinSize_ = 0;
            this.httpHost_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSProductInfoResponse() {
            this.unknownAppids_ = GeneratedMessage.emptyIntList();
            this.unknownPackageids_ = GeneratedMessage.emptyIntList();
            this.metaDataOnly_ = false;
            this.responsePending_ = false;
            this.httpMinSize_ = 0;
            this.httpHost_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.apps_ = Collections.emptyList();
            this.unknownAppids_ = GeneratedMessage.emptyIntList();
            this.packages_ = Collections.emptyList();
            this.unknownPackageids_ = GeneratedMessage.emptyIntList();
            this.httpHost_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSProductInfoResponse.class, Builder.class);
        }

        public static final class AppInfo extends GeneratedMessage implements AppInfoOrBuilder {
            public static final int APPID_FIELD_NUMBER = 1;
            public static final int BUFFER_FIELD_NUMBER = 5;
            public static final int CHANGE_NUMBER_FIELD_NUMBER = 2;
            private static final AppInfo DEFAULT_INSTANCE;
            public static final int MISSING_TOKEN_FIELD_NUMBER = 3;
            public static final int ONLY_PUBLIC_FIELD_NUMBER = 6;
            private static final Parser<AppInfo> PARSER;
            public static final int SHA_FIELD_NUMBER = 4;
            public static final int SIZE_FIELD_NUMBER = 7;
            private static final long serialVersionUID = 0;
            private int appid_;
            private int bitField0_;
            private ByteString buffer_;
            private int changeNumber_;
            private byte memoizedIsInitialized;
            private boolean missingToken_;
            private boolean onlyPublic_;
            private ByteString sha_;
            private int size_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", AppInfo.class.getName());
                DEFAULT_INSTANCE = new AppInfo();
                PARSER = new AbstractParser<AppInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfo.1
                    @Override // com.google.protobuf.Parser
                    public AppInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = AppInfo.newBuilder();
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

            private AppInfo(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.appid_ = 0;
                this.changeNumber_ = 0;
                this.missingToken_ = false;
                ByteString byteString = ByteString.EMPTY;
                this.sha_ = byteString;
                this.buffer_ = byteString;
                this.onlyPublic_ = false;
                this.size_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private AppInfo() {
                this.appid_ = 0;
                this.changeNumber_ = 0;
                this.missingToken_ = false;
                ByteString byteString = ByteString.EMPTY;
                this.onlyPublic_ = false;
                this.size_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.sha_ = byteString;
                this.buffer_ = byteString;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_AppInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_AppInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(AppInfo.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasChangeNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public int getChangeNumber() {
                return this.changeNumber_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasMissingToken() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean getMissingToken() {
                return this.missingToken_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasSha() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public ByteString getSha() {
                return this.sha_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasBuffer() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public ByteString getBuffer() {
                return this.buffer_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasOnlyPublic() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean getOnlyPublic() {
                return this.onlyPublic_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public boolean hasSize() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
            public int getSize() {
                return this.size_;
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
                    codedOutputStream.writeUInt32(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBool(3, this.missingToken_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBytes(4, this.sha_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeBytes(5, this.buffer_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeBool(6, this.onlyPublic_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    codedOutputStream.writeUInt32(7, this.size_);
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
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.missingToken_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBytesSize(4, this.sha_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBytesSize(5, this.buffer_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(6, this.onlyPublic_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.size_);
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
                if (!(obj instanceof AppInfo)) {
                    return super.equals(obj);
                }
                AppInfo appInfo = (AppInfo) obj;
                if (hasAppid() != appInfo.hasAppid()) {
                    return false;
                }
                if ((hasAppid() && getAppid() != appInfo.getAppid()) || hasChangeNumber() != appInfo.hasChangeNumber()) {
                    return false;
                }
                if ((hasChangeNumber() && getChangeNumber() != appInfo.getChangeNumber()) || hasMissingToken() != appInfo.hasMissingToken()) {
                    return false;
                }
                if ((hasMissingToken() && getMissingToken() != appInfo.getMissingToken()) || hasSha() != appInfo.hasSha()) {
                    return false;
                }
                if ((hasSha() && !getSha().equals(appInfo.getSha())) || hasBuffer() != appInfo.hasBuffer()) {
                    return false;
                }
                if ((hasBuffer() && !getBuffer().equals(appInfo.getBuffer())) || hasOnlyPublic() != appInfo.hasOnlyPublic()) {
                    return false;
                }
                if ((!hasOnlyPublic() || getOnlyPublic() == appInfo.getOnlyPublic()) && hasSize() == appInfo.hasSize()) {
                    return (!hasSize() || getSize() == appInfo.getSize()) && getUnknownFields().equals(appInfo.getUnknownFields());
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
                if (hasChangeNumber()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getChangeNumber();
                }
                if (hasMissingToken()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getMissingToken());
                }
                if (hasSha()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getSha().hashCode();
                }
                if (hasBuffer()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getBuffer().hashCode();
                }
                if (hasOnlyPublic()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getOnlyPublic());
                }
                if (hasSize()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + getSize();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static AppInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static AppInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static AppInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static AppInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static AppInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static AppInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static AppInfo parseFrom(InputStream inputStream) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static AppInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AppInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AppInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static AppInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(AppInfo appInfo) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(appInfo);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements AppInfoOrBuilder {
                private int appid_;
                private int bitField0_;
                private ByteString buffer_;
                private int changeNumber_;
                private boolean missingToken_;
                private boolean onlyPublic_;
                private ByteString sha_;
                private int size_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_AppInfo_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_AppInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(AppInfo.class, Builder.class);
                }

                private Builder() {
                    ByteString byteString = ByteString.EMPTY;
                    this.sha_ = byteString;
                    this.buffer_ = byteString;
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    ByteString byteString = ByteString.EMPTY;
                    this.sha_ = byteString;
                    this.buffer_ = byteString;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.appid_ = 0;
                    this.changeNumber_ = 0;
                    this.missingToken_ = false;
                    ByteString byteString = ByteString.EMPTY;
                    this.sha_ = byteString;
                    this.buffer_ = byteString;
                    this.onlyPublic_ = false;
                    this.size_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_AppInfo_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public AppInfo getDefaultInstanceForType() {
                    return AppInfo.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppInfo build() {
                    AppInfo appInfoBuildPartial = buildPartial();
                    if (appInfoBuildPartial.isInitialized()) {
                        return appInfoBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) appInfoBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppInfo buildPartial() {
                    AppInfo appInfo = new AppInfo(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(appInfo);
                    }
                    onBuilt();
                    return appInfo;
                }

                private void buildPartial0(AppInfo appInfo) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        appInfo.appid_ = this.appid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        appInfo.changeNumber_ = this.changeNumber_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        appInfo.missingToken_ = this.missingToken_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        appInfo.sha_ = this.sha_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        appInfo.buffer_ = this.buffer_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        appInfo.onlyPublic_ = this.onlyPublic_;
                        i |= 32;
                    }
                    if ((i2 & 64) != 0) {
                        appInfo.size_ = this.size_;
                        i |= 64;
                    }
                    appInfo.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof AppInfo) {
                        return mergeFrom((AppInfo) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(AppInfo appInfo) {
                    if (appInfo == AppInfo.getDefaultInstance()) {
                        return this;
                    }
                    if (appInfo.hasAppid()) {
                        setAppid(appInfo.getAppid());
                    }
                    if (appInfo.hasChangeNumber()) {
                        setChangeNumber(appInfo.getChangeNumber());
                    }
                    if (appInfo.hasMissingToken()) {
                        setMissingToken(appInfo.getMissingToken());
                    }
                    if (appInfo.hasSha()) {
                        setSha(appInfo.getSha());
                    }
                    if (appInfo.hasBuffer()) {
                        setBuffer(appInfo.getBuffer());
                    }
                    if (appInfo.hasOnlyPublic()) {
                        setOnlyPublic(appInfo.getOnlyPublic());
                    }
                    if (appInfo.hasSize()) {
                        setSize(appInfo.getSize());
                    }
                    mergeUnknownFields(appInfo.getUnknownFields());
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
                                        this.changeNumber_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.missingToken_ = codedInputStream.readBool();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 34) {
                                        this.sha_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 42) {
                                        this.buffer_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 16;
                                    } else if (tag == 48) {
                                        this.onlyPublic_ = codedInputStream.readBool();
                                        this.bitField0_ |= 32;
                                    } else if (tag == 56) {
                                        this.size_ = codedInputStream.readUInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasAppid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasChangeNumber() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public int getChangeNumber() {
                    return this.changeNumber_;
                }

                public Builder setChangeNumber(int i) {
                    this.changeNumber_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearChangeNumber() {
                    this.bitField0_ &= -3;
                    this.changeNumber_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasMissingToken() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean getMissingToken() {
                    return this.missingToken_;
                }

                public Builder setMissingToken(boolean z) {
                    this.missingToken_ = z;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearMissingToken() {
                    this.bitField0_ &= -5;
                    this.missingToken_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasSha() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public ByteString getSha() {
                    return this.sha_;
                }

                public Builder setSha(ByteString byteString) {
                    byteString.getClass();
                    this.sha_ = byteString;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearSha() {
                    this.bitField0_ &= -9;
                    this.sha_ = AppInfo.getDefaultInstance().getSha();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasBuffer() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public ByteString getBuffer() {
                    return this.buffer_;
                }

                public Builder setBuffer(ByteString byteString) {
                    byteString.getClass();
                    this.buffer_ = byteString;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearBuffer() {
                    this.bitField0_ &= -17;
                    this.buffer_ = AppInfo.getDefaultInstance().getBuffer();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasOnlyPublic() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean getOnlyPublic() {
                    return this.onlyPublic_;
                }

                public Builder setOnlyPublic(boolean z) {
                    this.onlyPublic_ = z;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearOnlyPublic() {
                    this.bitField0_ &= -33;
                    this.onlyPublic_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public boolean hasSize() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfoOrBuilder
                public int getSize() {
                    return this.size_;
                }

                public Builder setSize(int i) {
                    this.size_ = i;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearSize() {
                    this.bitField0_ &= -65;
                    this.size_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static AppInfo getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AppInfo> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<AppInfo> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public AppInfo getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class PackageInfo extends GeneratedMessage implements PackageInfoOrBuilder {
            public static final int BUFFER_FIELD_NUMBER = 5;
            public static final int CHANGE_NUMBER_FIELD_NUMBER = 2;
            private static final PackageInfo DEFAULT_INSTANCE;
            public static final int MISSING_TOKEN_FIELD_NUMBER = 3;
            public static final int PACKAGEID_FIELD_NUMBER = 1;
            private static final Parser<PackageInfo> PARSER;
            public static final int SHA_FIELD_NUMBER = 4;
            public static final int SIZE_FIELD_NUMBER = 6;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private ByteString buffer_;
            private int changeNumber_;
            private byte memoizedIsInitialized;
            private boolean missingToken_;
            private int packageid_;
            private ByteString sha_;
            private int size_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", PackageInfo.class.getName());
                DEFAULT_INSTANCE = new PackageInfo();
                PARSER = new AbstractParser<PackageInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfo.1
                    @Override // com.google.protobuf.Parser
                    public PackageInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = PackageInfo.newBuilder();
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

            private PackageInfo(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.packageid_ = 0;
                this.changeNumber_ = 0;
                this.missingToken_ = false;
                ByteString byteString = ByteString.EMPTY;
                this.sha_ = byteString;
                this.buffer_ = byteString;
                this.size_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private PackageInfo() {
                this.packageid_ = 0;
                this.changeNumber_ = 0;
                this.missingToken_ = false;
                ByteString byteString = ByteString.EMPTY;
                this.size_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.sha_ = byteString;
                this.buffer_ = byteString;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageInfo.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean hasPackageid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public int getPackageid() {
                return this.packageid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean hasChangeNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public int getChangeNumber() {
                return this.changeNumber_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean hasMissingToken() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean getMissingToken() {
                return this.missingToken_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean hasSha() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public ByteString getSha() {
                return this.sha_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean hasBuffer() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public ByteString getBuffer() {
                return this.buffer_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public boolean hasSize() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
            public int getSize() {
                return this.size_;
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
                    codedOutputStream.writeUInt32(1, this.packageid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBool(3, this.missingToken_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBytes(4, this.sha_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeBytes(5, this.buffer_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeUInt32(6, this.size_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.packageid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.changeNumber_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.missingToken_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBytesSize(4, this.sha_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBytesSize(5, this.buffer_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.size_);
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
                if (!(obj instanceof PackageInfo)) {
                    return super.equals(obj);
                }
                PackageInfo packageInfo = (PackageInfo) obj;
                if (hasPackageid() != packageInfo.hasPackageid()) {
                    return false;
                }
                if ((hasPackageid() && getPackageid() != packageInfo.getPackageid()) || hasChangeNumber() != packageInfo.hasChangeNumber()) {
                    return false;
                }
                if ((hasChangeNumber() && getChangeNumber() != packageInfo.getChangeNumber()) || hasMissingToken() != packageInfo.hasMissingToken()) {
                    return false;
                }
                if ((hasMissingToken() && getMissingToken() != packageInfo.getMissingToken()) || hasSha() != packageInfo.hasSha()) {
                    return false;
                }
                if ((hasSha() && !getSha().equals(packageInfo.getSha())) || hasBuffer() != packageInfo.hasBuffer()) {
                    return false;
                }
                if ((!hasBuffer() || getBuffer().equals(packageInfo.getBuffer())) && hasSize() == packageInfo.hasSize()) {
                    return (!hasSize() || getSize() == packageInfo.getSize()) && getUnknownFields().equals(packageInfo.getUnknownFields());
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
                if (hasPackageid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageid();
                }
                if (hasChangeNumber()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getChangeNumber();
                }
                if (hasMissingToken()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getMissingToken());
                }
                if (hasSha()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getSha().hashCode();
                }
                if (hasBuffer()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getBuffer().hashCode();
                }
                if (hasSize()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getSize();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PackageInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PackageInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PackageInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PackageInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(InputStream inputStream) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static PackageInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PackageInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PackageInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static PackageInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PackageInfo packageInfo) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(packageInfo);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PackageInfoOrBuilder {
                private int bitField0_;
                private ByteString buffer_;
                private int changeNumber_;
                private boolean missingToken_;
                private int packageid_;
                private ByteString sha_;
                private int size_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageInfo.class, Builder.class);
                }

                private Builder() {
                    ByteString byteString = ByteString.EMPTY;
                    this.sha_ = byteString;
                    this.buffer_ = byteString;
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    ByteString byteString = ByteString.EMPTY;
                    this.sha_ = byteString;
                    this.buffer_ = byteString;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.packageid_ = 0;
                    this.changeNumber_ = 0;
                    this.missingToken_ = false;
                    ByteString byteString = ByteString.EMPTY;
                    this.sha_ = byteString;
                    this.buffer_ = byteString;
                    this.size_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_PackageInfo_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public PackageInfo getDefaultInstanceForType() {
                    return PackageInfo.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageInfo build() {
                    PackageInfo packageInfoBuildPartial = buildPartial();
                    if (packageInfoBuildPartial.isInitialized()) {
                        return packageInfoBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) packageInfoBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageInfo buildPartial() {
                    PackageInfo packageInfo = new PackageInfo(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(packageInfo);
                    }
                    onBuilt();
                    return packageInfo;
                }

                private void buildPartial0(PackageInfo packageInfo) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        packageInfo.packageid_ = this.packageid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        packageInfo.changeNumber_ = this.changeNumber_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        packageInfo.missingToken_ = this.missingToken_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        packageInfo.sha_ = this.sha_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        packageInfo.buffer_ = this.buffer_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        packageInfo.size_ = this.size_;
                        i |= 32;
                    }
                    packageInfo.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof PackageInfo) {
                        return mergeFrom((PackageInfo) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PackageInfo packageInfo) {
                    if (packageInfo == PackageInfo.getDefaultInstance()) {
                        return this;
                    }
                    if (packageInfo.hasPackageid()) {
                        setPackageid(packageInfo.getPackageid());
                    }
                    if (packageInfo.hasChangeNumber()) {
                        setChangeNumber(packageInfo.getChangeNumber());
                    }
                    if (packageInfo.hasMissingToken()) {
                        setMissingToken(packageInfo.getMissingToken());
                    }
                    if (packageInfo.hasSha()) {
                        setSha(packageInfo.getSha());
                    }
                    if (packageInfo.hasBuffer()) {
                        setBuffer(packageInfo.getBuffer());
                    }
                    if (packageInfo.hasSize()) {
                        setSize(packageInfo.getSize());
                    }
                    mergeUnknownFields(packageInfo.getUnknownFields());
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
                                        this.packageid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.changeNumber_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.missingToken_ = codedInputStream.readBool();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 34) {
                                        this.sha_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 42) {
                                        this.buffer_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 16;
                                    } else if (tag == 48) {
                                        this.size_ = codedInputStream.readUInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean hasPackageid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public int getPackageid() {
                    return this.packageid_;
                }

                public Builder setPackageid(int i) {
                    this.packageid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearPackageid() {
                    this.bitField0_ &= -2;
                    this.packageid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean hasChangeNumber() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public int getChangeNumber() {
                    return this.changeNumber_;
                }

                public Builder setChangeNumber(int i) {
                    this.changeNumber_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearChangeNumber() {
                    this.bitField0_ &= -3;
                    this.changeNumber_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean hasMissingToken() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean getMissingToken() {
                    return this.missingToken_;
                }

                public Builder setMissingToken(boolean z) {
                    this.missingToken_ = z;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearMissingToken() {
                    this.bitField0_ &= -5;
                    this.missingToken_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean hasSha() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public ByteString getSha() {
                    return this.sha_;
                }

                public Builder setSha(ByteString byteString) {
                    byteString.getClass();
                    this.sha_ = byteString;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearSha() {
                    this.bitField0_ &= -9;
                    this.sha_ = PackageInfo.getDefaultInstance().getSha();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean hasBuffer() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public ByteString getBuffer() {
                    return this.buffer_;
                }

                public Builder setBuffer(ByteString byteString) {
                    byteString.getClass();
                    this.buffer_ = byteString;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearBuffer() {
                    this.bitField0_ &= -17;
                    this.buffer_ = PackageInfo.getDefaultInstance().getBuffer();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public boolean hasSize() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfoOrBuilder
                public int getSize() {
                    return this.size_;
                }

                public Builder setSize(int i) {
                    this.size_ = i;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearSize() {
                    this.bitField0_ &= -33;
                    this.size_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static PackageInfo getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PackageInfo> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<PackageInfo> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PackageInfo getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public List<AppInfo> getAppsList() {
            return this.apps_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public List<? extends AppInfoOrBuilder> getAppsOrBuilderList() {
            return this.apps_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getAppsCount() {
            return this.apps_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public AppInfo getApps(int i) {
            return this.apps_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public AppInfoOrBuilder getAppsOrBuilder(int i) {
            return this.apps_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public List<Integer> getUnknownAppidsList() {
            return this.unknownAppids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getUnknownAppidsCount() {
            return this.unknownAppids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getUnknownAppids(int i) {
            return this.unknownAppids_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public List<PackageInfo> getPackagesList() {
            return this.packages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public List<? extends PackageInfoOrBuilder> getPackagesOrBuilderList() {
            return this.packages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getPackagesCount() {
            return this.packages_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public PackageInfo getPackages(int i) {
            return this.packages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public PackageInfoOrBuilder getPackagesOrBuilder(int i) {
            return this.packages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public List<Integer> getUnknownPackageidsList() {
            return this.unknownPackageids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getUnknownPackageidsCount() {
            return this.unknownPackageids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getUnknownPackageids(int i) {
            return this.unknownPackageids_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public boolean hasMetaDataOnly() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public boolean getMetaDataOnly() {
            return this.metaDataOnly_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public boolean hasResponsePending() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public boolean getResponsePending() {
            return this.responsePending_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public boolean hasHttpMinSize() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public int getHttpMinSize() {
            return this.httpMinSize_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public boolean hasHttpHost() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public String getHttpHost() {
            Object obj = this.httpHost_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.httpHost_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
        public ByteString getHttpHostBytes() {
            Object obj = this.httpHost_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.httpHost_ = byteStringCopyFromUtf8;
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
            for (int i = 0; i < this.apps_.size(); i++) {
                codedOutputStream.writeMessage(1, this.apps_.get(i));
            }
            for (int i2 = 0; i2 < this.unknownAppids_.size(); i2++) {
                codedOutputStream.writeUInt32(2, this.unknownAppids_.getInt(i2));
            }
            for (int i3 = 0; i3 < this.packages_.size(); i3++) {
                codedOutputStream.writeMessage(3, this.packages_.get(i3));
            }
            for (int i4 = 0; i4 < this.unknownPackageids_.size(); i4++) {
                codedOutputStream.writeUInt32(4, this.unknownPackageids_.getInt(i4));
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeBool(5, this.metaDataOnly_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(6, this.responsePending_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(7, this.httpMinSize_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.httpHost_);
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
            for (int i2 = 0; i2 < this.apps_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.apps_.get(i2));
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.unknownAppids_.size(); i3++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.unknownAppids_.getInt(i3));
            }
            int size = iComputeMessageSize + iComputeUInt32SizeNoTag + getUnknownAppidsList().size();
            for (int i4 = 0; i4 < this.packages_.size(); i4++) {
                size += CodedOutputStream.computeMessageSize(3, this.packages_.get(i4));
            }
            int iComputeUInt32SizeNoTag2 = 0;
            for (int i5 = 0; i5 < this.unknownPackageids_.size(); i5++) {
                iComputeUInt32SizeNoTag2 += CodedOutputStream.computeUInt32SizeNoTag(this.unknownPackageids_.getInt(i5));
            }
            int size2 = size + iComputeUInt32SizeNoTag2 + getUnknownPackageidsList().size();
            if ((this.bitField0_ & 1) != 0) {
                size2 += CodedOutputStream.computeBoolSize(5, this.metaDataOnly_);
            }
            if ((this.bitField0_ & 2) != 0) {
                size2 += CodedOutputStream.computeBoolSize(6, this.responsePending_);
            }
            if ((this.bitField0_ & 4) != 0) {
                size2 += CodedOutputStream.computeUInt32Size(7, this.httpMinSize_);
            }
            if ((this.bitField0_ & 8) != 0) {
                size2 += GeneratedMessage.computeStringSize(8, this.httpHost_);
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
            if (!(obj instanceof CMsgClientPICSProductInfoResponse)) {
                return super.equals(obj);
            }
            CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponse = (CMsgClientPICSProductInfoResponse) obj;
            if (!getAppsList().equals(cMsgClientPICSProductInfoResponse.getAppsList()) || !getUnknownAppidsList().equals(cMsgClientPICSProductInfoResponse.getUnknownAppidsList()) || !getPackagesList().equals(cMsgClientPICSProductInfoResponse.getPackagesList()) || !getUnknownPackageidsList().equals(cMsgClientPICSProductInfoResponse.getUnknownPackageidsList()) || hasMetaDataOnly() != cMsgClientPICSProductInfoResponse.hasMetaDataOnly()) {
                return false;
            }
            if ((hasMetaDataOnly() && getMetaDataOnly() != cMsgClientPICSProductInfoResponse.getMetaDataOnly()) || hasResponsePending() != cMsgClientPICSProductInfoResponse.hasResponsePending()) {
                return false;
            }
            if ((hasResponsePending() && getResponsePending() != cMsgClientPICSProductInfoResponse.getResponsePending()) || hasHttpMinSize() != cMsgClientPICSProductInfoResponse.hasHttpMinSize()) {
                return false;
            }
            if ((!hasHttpMinSize() || getHttpMinSize() == cMsgClientPICSProductInfoResponse.getHttpMinSize()) && hasHttpHost() == cMsgClientPICSProductInfoResponse.hasHttpHost()) {
                return (!hasHttpHost() || getHttpHost().equals(cMsgClientPICSProductInfoResponse.getHttpHost())) && getUnknownFields().equals(cMsgClientPICSProductInfoResponse.getUnknownFields());
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
            if (getAppsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppsList().hashCode();
            }
            if (getUnknownAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getUnknownAppidsList().hashCode();
            }
            if (getPackagesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPackagesList().hashCode();
            }
            if (getUnknownPackageidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getUnknownPackageidsList().hashCode();
            }
            if (hasMetaDataOnly()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getMetaDataOnly());
            }
            if (hasResponsePending()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getResponsePending());
            }
            if (hasHttpMinSize()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getHttpMinSize();
            }
            if (hasHttpHost()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getHttpHost().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSProductInfoResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSProductInfoResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSProductInfoResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSProductInfoResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSProductInfoResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSProductInfoResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSProductInfoResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSProductInfoResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSProductInfoResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSProductInfoResponseOrBuilder {
            private RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> appsBuilder_;
            private List<AppInfo> apps_;
            private int bitField0_;
            private Object httpHost_;
            private int httpMinSize_;
            private boolean metaDataOnly_;
            private RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> packagesBuilder_;
            private List<PackageInfo> packages_;
            private boolean responsePending_;
            private Internal.IntList unknownAppids_;
            private Internal.IntList unknownPackageids_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSProductInfoResponse.class, Builder.class);
            }

            private Builder() {
                this.apps_ = Collections.emptyList();
                this.unknownAppids_ = GeneratedMessage.emptyIntList();
                this.packages_ = Collections.emptyList();
                this.unknownPackageids_ = GeneratedMessage.emptyIntList();
                this.httpHost_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.apps_ = Collections.emptyList();
                this.unknownAppids_ = GeneratedMessage.emptyIntList();
                this.packages_ = Collections.emptyList();
                this.unknownPackageids_ = GeneratedMessage.emptyIntList();
                this.httpHost_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.apps_ = Collections.emptyList();
                } else {
                    this.apps_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.unknownAppids_ = GeneratedMessage.emptyIntList();
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder2 = this.packagesBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.packages_ = Collections.emptyList();
                } else {
                    this.packages_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -5;
                this.unknownPackageids_ = GeneratedMessage.emptyIntList();
                this.metaDataOnly_ = false;
                this.responsePending_ = false;
                this.httpMinSize_ = 0;
                this.httpHost_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSProductInfoResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSProductInfoResponse getDefaultInstanceForType() {
                return CMsgClientPICSProductInfoResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSProductInfoResponse build() {
                CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponseBuildPartial = buildPartial();
                if (cMsgClientPICSProductInfoResponseBuildPartial.isInitialized()) {
                    return cMsgClientPICSProductInfoResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSProductInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSProductInfoResponse buildPartial() {
                CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponse = new CMsgClientPICSProductInfoResponse(this);
                buildPartialRepeatedFields(cMsgClientPICSProductInfoResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSProductInfoResponse);
                }
                onBuilt();
                return cMsgClientPICSProductInfoResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponse) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.apps_ = Collections.unmodifiableList(this.apps_);
                        this.bitField0_ &= -2;
                    }
                    cMsgClientPICSProductInfoResponse.apps_ = this.apps_;
                } else {
                    cMsgClientPICSProductInfoResponse.apps_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder2 = this.packagesBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.packages_ = Collections.unmodifiableList(this.packages_);
                        this.bitField0_ &= -5;
                    }
                    cMsgClientPICSProductInfoResponse.packages_ = this.packages_;
                    return;
                }
                cMsgClientPICSProductInfoResponse.packages_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 2) != 0) {
                    this.unknownAppids_.makeImmutable();
                    cMsgClientPICSProductInfoResponse.unknownAppids_ = this.unknownAppids_;
                }
                if ((i2 & 8) != 0) {
                    this.unknownPackageids_.makeImmutable();
                    cMsgClientPICSProductInfoResponse.unknownPackageids_ = this.unknownPackageids_;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientPICSProductInfoResponse.metaDataOnly_ = this.metaDataOnly_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientPICSProductInfoResponse.responsePending_ = this.responsePending_;
                    i |= 2;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientPICSProductInfoResponse.httpMinSize_ = this.httpMinSize_;
                    i |= 4;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientPICSProductInfoResponse.httpHost_ = this.httpHost_;
                    i |= 8;
                }
                cMsgClientPICSProductInfoResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSProductInfoResponse) {
                    return mergeFrom((CMsgClientPICSProductInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSProductInfoResponse cMsgClientPICSProductInfoResponse) {
                if (cMsgClientPICSProductInfoResponse == CMsgClientPICSProductInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (this.appsBuilder_ == null) {
                    if (!cMsgClientPICSProductInfoResponse.apps_.isEmpty()) {
                        if (this.apps_.isEmpty()) {
                            this.apps_ = cMsgClientPICSProductInfoResponse.apps_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureAppsIsMutable();
                            this.apps_.addAll(cMsgClientPICSProductInfoResponse.apps_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSProductInfoResponse.apps_.isEmpty()) {
                    if (this.appsBuilder_.isEmpty()) {
                        this.appsBuilder_.dispose();
                        this.appsBuilder_ = null;
                        this.apps_ = cMsgClientPICSProductInfoResponse.apps_;
                        this.bitField0_ &= -2;
                        this.appsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetAppsFieldBuilder() : null;
                    } else {
                        this.appsBuilder_.addAllMessages(cMsgClientPICSProductInfoResponse.apps_);
                    }
                }
                if (!cMsgClientPICSProductInfoResponse.unknownAppids_.isEmpty()) {
                    if (this.unknownAppids_.isEmpty()) {
                        Internal.IntList intList = cMsgClientPICSProductInfoResponse.unknownAppids_;
                        this.unknownAppids_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureUnknownAppidsIsMutable();
                        this.unknownAppids_.addAll(cMsgClientPICSProductInfoResponse.unknownAppids_);
                    }
                    onChanged();
                }
                if (this.packagesBuilder_ == null) {
                    if (!cMsgClientPICSProductInfoResponse.packages_.isEmpty()) {
                        if (this.packages_.isEmpty()) {
                            this.packages_ = cMsgClientPICSProductInfoResponse.packages_;
                            this.bitField0_ &= -5;
                        } else {
                            ensurePackagesIsMutable();
                            this.packages_.addAll(cMsgClientPICSProductInfoResponse.packages_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSProductInfoResponse.packages_.isEmpty()) {
                    if (this.packagesBuilder_.isEmpty()) {
                        this.packagesBuilder_.dispose();
                        this.packagesBuilder_ = null;
                        this.packages_ = cMsgClientPICSProductInfoResponse.packages_;
                        this.bitField0_ &= -5;
                        this.packagesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPackagesFieldBuilder() : null;
                    } else {
                        this.packagesBuilder_.addAllMessages(cMsgClientPICSProductInfoResponse.packages_);
                    }
                }
                if (!cMsgClientPICSProductInfoResponse.unknownPackageids_.isEmpty()) {
                    if (this.unknownPackageids_.isEmpty()) {
                        Internal.IntList intList2 = cMsgClientPICSProductInfoResponse.unknownPackageids_;
                        this.unknownPackageids_ = intList2;
                        intList2.makeImmutable();
                        this.bitField0_ |= 8;
                    } else {
                        ensureUnknownPackageidsIsMutable();
                        this.unknownPackageids_.addAll(cMsgClientPICSProductInfoResponse.unknownPackageids_);
                    }
                    onChanged();
                }
                if (cMsgClientPICSProductInfoResponse.hasMetaDataOnly()) {
                    setMetaDataOnly(cMsgClientPICSProductInfoResponse.getMetaDataOnly());
                }
                if (cMsgClientPICSProductInfoResponse.hasResponsePending()) {
                    setResponsePending(cMsgClientPICSProductInfoResponse.getResponsePending());
                }
                if (cMsgClientPICSProductInfoResponse.hasHttpMinSize()) {
                    setHttpMinSize(cMsgClientPICSProductInfoResponse.getHttpMinSize());
                }
                if (cMsgClientPICSProductInfoResponse.hasHttpHost()) {
                    this.httpHost_ = cMsgClientPICSProductInfoResponse.httpHost_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientPICSProductInfoResponse.getUnknownFields());
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
                                    AppInfo appInfo = (AppInfo) codedInputStream.readMessage(AppInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureAppsIsMutable();
                                        this.apps_.add(appInfo);
                                    } else {
                                        repeatedFieldBuilder.addMessage(appInfo);
                                    }
                                    break;
                                case 16:
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureUnknownAppidsIsMutable();
                                    this.unknownAppids_.addInt(uInt32);
                                    break;
                                case 18:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureUnknownAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.unknownAppids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case 26:
                                    PackageInfo packageInfo = (PackageInfo) codedInputStream.readMessage(PackageInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder2 = this.packagesBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensurePackagesIsMutable();
                                        this.packages_.add(packageInfo);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(packageInfo);
                                    }
                                    break;
                                case 32:
                                    int uInt322 = codedInputStream.readUInt32();
                                    ensureUnknownPackageidsIsMutable();
                                    this.unknownPackageids_.addInt(uInt322);
                                    break;
                                case 34:
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureUnknownPackageidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.unknownPackageids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                    break;
                                case 40:
                                    this.metaDataOnly_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.responsePending_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.httpMinSize_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.httpHost_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
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

            private void ensureAppsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.apps_ = new ArrayList(this.apps_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public List<AppInfo> getAppsList() {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.apps_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getAppsCount() {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public AppInfo getApps(int i) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.get(i);
                }
                return (AppInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setApps(int i, AppInfo appInfo) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    appInfo.getClass();
                    ensureAppsIsMutable();
                    this.apps_.set(i, appInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, appInfo);
                }
                return this;
            }

            public Builder setApps(int i, AppInfo.Builder builder) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addApps(AppInfo appInfo) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    appInfo.getClass();
                    ensureAppsIsMutable();
                    this.apps_.add(appInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(appInfo);
                }
                return this;
            }

            public Builder addApps(int i, AppInfo appInfo) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    appInfo.getClass();
                    ensureAppsIsMutable();
                    this.apps_.add(i, appInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, appInfo);
                }
                return this;
            }

            public Builder addApps(AppInfo.Builder builder) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addApps(int i, AppInfo.Builder builder) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllApps(Iterable<? extends AppInfo> iterable) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
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
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.apps_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeApps(int i) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppsIsMutable();
                    this.apps_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public AppInfo.Builder getAppsBuilder(int i) {
                return (AppInfo.Builder) internalGetAppsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public AppInfoOrBuilder getAppsOrBuilder(int i) {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.apps_.get(i);
                }
                return (AppInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public List<? extends AppInfoOrBuilder> getAppsOrBuilderList() {
                RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> repeatedFieldBuilder = this.appsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.apps_);
            }

            public AppInfo.Builder addAppsBuilder() {
                return (AppInfo.Builder) internalGetAppsFieldBuilder().addBuilder(AppInfo.getDefaultInstance());
            }

            public AppInfo.Builder addAppsBuilder(int i) {
                return (AppInfo.Builder) internalGetAppsFieldBuilder().addBuilder(i, AppInfo.getDefaultInstance());
            }

            public List<AppInfo.Builder> getAppsBuilderList() {
                return internalGetAppsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<AppInfo, AppInfo.Builder, AppInfoOrBuilder> internalGetAppsFieldBuilder() {
                if (this.appsBuilder_ == null) {
                    this.appsBuilder_ = new RepeatedFieldBuilder<>(this.apps_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.apps_ = null;
                }
                return this.appsBuilder_;
            }

            private void ensureUnknownAppidsIsMutable() {
                if (!this.unknownAppids_.isModifiable()) {
                    this.unknownAppids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.unknownAppids_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public List<Integer> getUnknownAppidsList() {
                this.unknownAppids_.makeImmutable();
                return this.unknownAppids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getUnknownAppidsCount() {
                return this.unknownAppids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getUnknownAppids(int i) {
                return this.unknownAppids_.getInt(i);
            }

            public Builder setUnknownAppids(int i, int i2) {
                ensureUnknownAppidsIsMutable();
                this.unknownAppids_.setInt(i, i2);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addUnknownAppids(int i) {
                ensureUnknownAppidsIsMutable();
                this.unknownAppids_.addInt(i);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllUnknownAppids(Iterable<? extends Integer> iterable) {
                ensureUnknownAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.unknownAppids_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearUnknownAppids() {
                this.unknownAppids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            private void ensurePackagesIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.packages_ = new ArrayList(this.packages_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public List<PackageInfo> getPackagesList() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.packages_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getPackagesCount() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packages_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public PackageInfo getPackages(int i) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packages_.get(i);
                }
                return (PackageInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPackages(int i, PackageInfo packageInfo) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageInfo.getClass();
                    ensurePackagesIsMutable();
                    this.packages_.set(i, packageInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, packageInfo);
                }
                return this;
            }

            public Builder setPackages(int i, PackageInfo.Builder builder) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPackages(PackageInfo packageInfo) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageInfo.getClass();
                    ensurePackagesIsMutable();
                    this.packages_.add(packageInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(packageInfo);
                }
                return this;
            }

            public Builder addPackages(int i, PackageInfo packageInfo) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageInfo.getClass();
                    ensurePackagesIsMutable();
                    this.packages_.add(i, packageInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, packageInfo);
                }
                return this;
            }

            public Builder addPackages(PackageInfo.Builder builder) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPackages(int i, PackageInfo.Builder builder) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPackages(Iterable<? extends PackageInfo> iterable) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packages_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPackages() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packages_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePackages(int i) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackagesIsMutable();
                    this.packages_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public PackageInfo.Builder getPackagesBuilder(int i) {
                return (PackageInfo.Builder) internalGetPackagesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public PackageInfoOrBuilder getPackagesOrBuilder(int i) {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packages_.get(i);
                }
                return (PackageInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public List<? extends PackageInfoOrBuilder> getPackagesOrBuilderList() {
                RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> repeatedFieldBuilder = this.packagesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.packages_);
            }

            public PackageInfo.Builder addPackagesBuilder() {
                return (PackageInfo.Builder) internalGetPackagesFieldBuilder().addBuilder(PackageInfo.getDefaultInstance());
            }

            public PackageInfo.Builder addPackagesBuilder(int i) {
                return (PackageInfo.Builder) internalGetPackagesFieldBuilder().addBuilder(i, PackageInfo.getDefaultInstance());
            }

            public List<PackageInfo.Builder> getPackagesBuilderList() {
                return internalGetPackagesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<PackageInfo, PackageInfo.Builder, PackageInfoOrBuilder> internalGetPackagesFieldBuilder() {
                if (this.packagesBuilder_ == null) {
                    this.packagesBuilder_ = new RepeatedFieldBuilder<>(this.packages_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.packages_ = null;
                }
                return this.packagesBuilder_;
            }

            private void ensureUnknownPackageidsIsMutable() {
                if (!this.unknownPackageids_.isModifiable()) {
                    this.unknownPackageids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.unknownPackageids_);
                }
                this.bitField0_ |= 8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public List<Integer> getUnknownPackageidsList() {
                this.unknownPackageids_.makeImmutable();
                return this.unknownPackageids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getUnknownPackageidsCount() {
                return this.unknownPackageids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getUnknownPackageids(int i) {
                return this.unknownPackageids_.getInt(i);
            }

            public Builder setUnknownPackageids(int i, int i2) {
                ensureUnknownPackageidsIsMutable();
                this.unknownPackageids_.setInt(i, i2);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addUnknownPackageids(int i) {
                ensureUnknownPackageidsIsMutable();
                this.unknownPackageids_.addInt(i);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addAllUnknownPackageids(Iterable<? extends Integer> iterable) {
                ensureUnknownPackageidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.unknownPackageids_);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearUnknownPackageids() {
                this.unknownPackageids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public boolean hasMetaDataOnly() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public boolean getMetaDataOnly() {
                return this.metaDataOnly_;
            }

            public Builder setMetaDataOnly(boolean z) {
                this.metaDataOnly_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearMetaDataOnly() {
                this.bitField0_ &= -17;
                this.metaDataOnly_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public boolean hasResponsePending() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public boolean getResponsePending() {
                return this.responsePending_;
            }

            public Builder setResponsePending(boolean z) {
                this.responsePending_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearResponsePending() {
                this.bitField0_ &= -33;
                this.responsePending_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public boolean hasHttpMinSize() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public int getHttpMinSize() {
                return this.httpMinSize_;
            }

            public Builder setHttpMinSize(int i) {
                this.httpMinSize_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearHttpMinSize() {
                this.bitField0_ &= -65;
                this.httpMinSize_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public boolean hasHttpHost() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public String getHttpHost() {
                Object obj = this.httpHost_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.httpHost_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponseOrBuilder
            public ByteString getHttpHostBytes() {
                Object obj = this.httpHost_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.httpHost_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHttpHost(String str) {
                str.getClass();
                this.httpHost_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearHttpHost() {
                this.httpHost_ = CMsgClientPICSProductInfoResponse.getDefaultInstance().getHttpHost();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setHttpHostBytes(ByteString byteString) {
                byteString.getClass();
                this.httpHost_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSProductInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSProductInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSProductInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSProductInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSAccessTokenRequest extends GeneratedMessage implements CMsgClientPICSAccessTokenRequestOrBuilder {
        public static final int APPIDS_FIELD_NUMBER = 2;
        private static final CMsgClientPICSAccessTokenRequest DEFAULT_INSTANCE;
        public static final int PACKAGEIDS_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientPICSAccessTokenRequest> PARSER;
        private static final long serialVersionUID = 0;
        private Internal.IntList appids_;
        private byte memoizedIsInitialized;
        private Internal.IntList packageids_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSAccessTokenRequest.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSAccessTokenRequest();
            PARSER = new AbstractParser<CMsgClientPICSAccessTokenRequest>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequest.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSAccessTokenRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSAccessTokenRequest.newBuilder();
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

        private CMsgClientPICSAccessTokenRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.packageids_ = GeneratedMessage.emptyIntList();
            this.appids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSAccessTokenRequest() {
            this.packageids_ = GeneratedMessage.emptyIntList();
            this.appids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.packageids_ = GeneratedMessage.emptyIntList();
            this.appids_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenRequest_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSAccessTokenRequest.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
        public List<Integer> getPackageidsList() {
            return this.packageids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
        public int getPackageidsCount() {
            return this.packageids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
        public int getPackageids(int i) {
            return this.packageids_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
        public List<Integer> getAppidsList() {
            return this.appids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
        public int getAppidsCount() {
            return this.appids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
        public int getAppids(int i) {
            return this.appids_.getInt(i);
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
            for (int i = 0; i < this.packageids_.size(); i++) {
                codedOutputStream.writeUInt32(1, this.packageids_.getInt(i));
            }
            for (int i2 = 0; i2 < this.appids_.size(); i2++) {
                codedOutputStream.writeUInt32(2, this.appids_.getInt(i2));
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
            for (int i2 = 0; i2 < this.packageids_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.packageids_.getInt(i2));
            }
            int size = iComputeUInt32SizeNoTag + getPackageidsList().size();
            int iComputeUInt32SizeNoTag2 = 0;
            for (int i3 = 0; i3 < this.appids_.size(); i3++) {
                iComputeUInt32SizeNoTag2 += CodedOutputStream.computeUInt32SizeNoTag(this.appids_.getInt(i3));
            }
            int size2 = size + iComputeUInt32SizeNoTag2 + getAppidsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientPICSAccessTokenRequest)) {
                return super.equals(obj);
            }
            CMsgClientPICSAccessTokenRequest cMsgClientPICSAccessTokenRequest = (CMsgClientPICSAccessTokenRequest) obj;
            return getPackageidsList().equals(cMsgClientPICSAccessTokenRequest.getPackageidsList()) && getAppidsList().equals(cMsgClientPICSAccessTokenRequest.getAppidsList()) && getUnknownFields().equals(cMsgClientPICSAccessTokenRequest.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getPackageidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageidsList().hashCode();
            }
            if (getAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSAccessTokenRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSAccessTokenRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSAccessTokenRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSAccessTokenRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSAccessTokenRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSAccessTokenRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSAccessTokenRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSAccessTokenRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSAccessTokenRequest cMsgClientPICSAccessTokenRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSAccessTokenRequest);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSAccessTokenRequestOrBuilder {
            private Internal.IntList appids_;
            private int bitField0_;
            private Internal.IntList packageids_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSAccessTokenRequest.class, Builder.class);
            }

            private Builder() {
                this.packageids_ = GeneratedMessage.emptyIntList();
                this.appids_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.packageids_ = GeneratedMessage.emptyIntList();
                this.appids_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.packageids_ = GeneratedMessage.emptyIntList();
                this.appids_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenRequest_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSAccessTokenRequest getDefaultInstanceForType() {
                return CMsgClientPICSAccessTokenRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSAccessTokenRequest build() {
                CMsgClientPICSAccessTokenRequest cMsgClientPICSAccessTokenRequestBuildPartial = buildPartial();
                if (cMsgClientPICSAccessTokenRequestBuildPartial.isInitialized()) {
                    return cMsgClientPICSAccessTokenRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSAccessTokenRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSAccessTokenRequest buildPartial() {
                CMsgClientPICSAccessTokenRequest cMsgClientPICSAccessTokenRequest = new CMsgClientPICSAccessTokenRequest(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSAccessTokenRequest);
                }
                onBuilt();
                return cMsgClientPICSAccessTokenRequest;
            }

            private void buildPartial0(CMsgClientPICSAccessTokenRequest cMsgClientPICSAccessTokenRequest) {
                int i = this.bitField0_;
                if ((i & 1) != 0) {
                    this.packageids_.makeImmutable();
                    cMsgClientPICSAccessTokenRequest.packageids_ = this.packageids_;
                }
                if ((i & 2) != 0) {
                    this.appids_.makeImmutable();
                    cMsgClientPICSAccessTokenRequest.appids_ = this.appids_;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSAccessTokenRequest) {
                    return mergeFrom((CMsgClientPICSAccessTokenRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSAccessTokenRequest cMsgClientPICSAccessTokenRequest) {
                if (cMsgClientPICSAccessTokenRequest == CMsgClientPICSAccessTokenRequest.getDefaultInstance()) {
                    return this;
                }
                if (!cMsgClientPICSAccessTokenRequest.packageids_.isEmpty()) {
                    if (this.packageids_.isEmpty()) {
                        Internal.IntList intList = cMsgClientPICSAccessTokenRequest.packageids_;
                        this.packageids_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 1;
                    } else {
                        ensurePackageidsIsMutable();
                        this.packageids_.addAll(cMsgClientPICSAccessTokenRequest.packageids_);
                    }
                    onChanged();
                }
                if (!cMsgClientPICSAccessTokenRequest.appids_.isEmpty()) {
                    if (this.appids_.isEmpty()) {
                        Internal.IntList intList2 = cMsgClientPICSAccessTokenRequest.appids_;
                        this.appids_ = intList2;
                        intList2.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureAppidsIsMutable();
                        this.appids_.addAll(cMsgClientPICSAccessTokenRequest.appids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientPICSAccessTokenRequest.getUnknownFields());
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
                                    ensurePackageidsIsMutable();
                                    this.packageids_.addInt(uInt32);
                                } else if (tag == 10) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensurePackageidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.packageids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 16) {
                                    int uInt322 = codedInputStream.readUInt32();
                                    ensureAppidsIsMutable();
                                    this.appids_.addInt(uInt322);
                                } else if (tag == 18) {
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.appids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
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

            private void ensurePackageidsIsMutable() {
                if (!this.packageids_.isModifiable()) {
                    this.packageids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.packageids_);
                }
                this.bitField0_ |= 1;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
            public List<Integer> getPackageidsList() {
                this.packageids_.makeImmutable();
                return this.packageids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
            public int getPackageidsCount() {
                return this.packageids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
            public int getPackageids(int i) {
                return this.packageids_.getInt(i);
            }

            public Builder setPackageids(int i, int i2) {
                ensurePackageidsIsMutable();
                this.packageids_.setInt(i, i2);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addPackageids(int i) {
                ensurePackageidsIsMutable();
                this.packageids_.addInt(i);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAllPackageids(Iterable<? extends Integer> iterable) {
                ensurePackageidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packageids_);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPackageids() {
                this.packageids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            private void ensureAppidsIsMutable() {
                if (!this.appids_.isModifiable()) {
                    this.appids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.appids_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
            public List<Integer> getAppidsList() {
                this.appids_.makeImmutable();
                return this.appids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
            public int getAppidsCount() {
                return this.appids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequestOrBuilder
            public int getAppids(int i) {
                return this.appids_.getInt(i);
            }

            public Builder setAppids(int i, int i2) {
                ensureAppidsIsMutable();
                this.appids_.setInt(i, i2);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAppids(int i) {
                ensureAppidsIsMutable();
                this.appids_.addInt(i);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllAppids(Iterable<? extends Integer> iterable) {
                ensureAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.appids_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppids() {
                this.appids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSAccessTokenRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSAccessTokenRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSAccessTokenRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSAccessTokenRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSAccessTokenResponse extends GeneratedMessage implements CMsgClientPICSAccessTokenResponseOrBuilder {
        public static final int APP_ACCESS_TOKENS_FIELD_NUMBER = 3;
        public static final int APP_DENIED_TOKENS_FIELD_NUMBER = 4;
        private static final CMsgClientPICSAccessTokenResponse DEFAULT_INSTANCE;
        public static final int PACKAGE_ACCESS_TOKENS_FIELD_NUMBER = 1;
        public static final int PACKAGE_DENIED_TOKENS_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientPICSAccessTokenResponse> PARSER;
        private static final long serialVersionUID = 0;
        private List<AppToken> appAccessTokens_;
        private Internal.IntList appDeniedTokens_;
        private byte memoizedIsInitialized;
        private List<PackageToken> packageAccessTokens_;
        private Internal.IntList packageDeniedTokens_;

        public interface AppTokenOrBuilder extends MessageOrBuilder {
            long getAccessToken();

            int getAppid();

            boolean hasAccessToken();

            boolean hasAppid();
        }

        public interface PackageTokenOrBuilder extends MessageOrBuilder {
            long getAccessToken();

            int getPackageid();

            boolean hasAccessToken();

            boolean hasPackageid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSAccessTokenResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSAccessTokenResponse();
            PARSER = new AbstractParser<CMsgClientPICSAccessTokenResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSAccessTokenResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSAccessTokenResponse.newBuilder();
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

        private CMsgClientPICSAccessTokenResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
            this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSAccessTokenResponse() {
            this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
            this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.packageAccessTokens_ = Collections.emptyList();
            this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
            this.appAccessTokens_ = Collections.emptyList();
            this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSAccessTokenResponse.class, Builder.class);
        }

        public static final class PackageToken extends GeneratedMessage implements PackageTokenOrBuilder {
            public static final int ACCESS_TOKEN_FIELD_NUMBER = 2;
            private static final PackageToken DEFAULT_INSTANCE;
            public static final int PACKAGEID_FIELD_NUMBER = 1;
            private static final Parser<PackageToken> PARSER;
            private static final long serialVersionUID = 0;
            private long accessToken_;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private int packageid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", PackageToken.class.getName());
                DEFAULT_INSTANCE = new PackageToken();
                PARSER = new AbstractParser<PackageToken>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageToken.1
                    @Override // com.google.protobuf.Parser
                    public PackageToken parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = PackageToken.newBuilder();
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

            private PackageToken(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.packageid_ = 0;
                this.accessToken_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            private PackageToken() {
                this.packageid_ = 0;
                this.accessToken_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageToken.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
            public boolean hasPackageid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
            public int getPackageid() {
                return this.packageid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
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
                    codedOutputStream.writeUInt32(1, this.packageid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt64(2, this.accessToken_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.packageid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.accessToken_);
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
                if (!(obj instanceof PackageToken)) {
                    return super.equals(obj);
                }
                PackageToken packageToken = (PackageToken) obj;
                if (hasPackageid() != packageToken.hasPackageid()) {
                    return false;
                }
                if ((!hasPackageid() || getPackageid() == packageToken.getPackageid()) && hasAccessToken() == packageToken.hasAccessToken()) {
                    return (!hasAccessToken() || getAccessToken() == packageToken.getAccessToken()) && getUnknownFields().equals(packageToken.getUnknownFields());
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
                if (hasPackageid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageid();
                }
                if (hasAccessToken()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAccessToken());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PackageToken parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PackageToken parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PackageToken parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PackageToken parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PackageToken parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PackageToken parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PackageToken parseFrom(InputStream inputStream) throws IOException {
                return (PackageToken) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static PackageToken parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageToken) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageToken parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PackageToken) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PackageToken parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageToken) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PackageToken parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PackageToken) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static PackageToken parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PackageToken) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PackageToken packageToken) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(packageToken);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PackageTokenOrBuilder {
                private long accessToken_;
                private int bitField0_;
                private int packageid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_fieldAccessorTable.ensureFieldAccessorsInitialized(PackageToken.class, Builder.class);
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
                    this.packageid_ = 0;
                    this.accessToken_ = 0L;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_PackageToken_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public PackageToken getDefaultInstanceForType() {
                    return PackageToken.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageToken build() {
                    PackageToken packageTokenBuildPartial = buildPartial();
                    if (packageTokenBuildPartial.isInitialized()) {
                        return packageTokenBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) packageTokenBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PackageToken buildPartial() {
                    PackageToken packageToken = new PackageToken(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(packageToken);
                    }
                    onBuilt();
                    return packageToken;
                }

                private void buildPartial0(PackageToken packageToken) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        packageToken.packageid_ = this.packageid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        packageToken.accessToken_ = this.accessToken_;
                        i |= 2;
                    }
                    packageToken.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof PackageToken) {
                        return mergeFrom((PackageToken) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PackageToken packageToken) {
                    if (packageToken == PackageToken.getDefaultInstance()) {
                        return this;
                    }
                    if (packageToken.hasPackageid()) {
                        setPackageid(packageToken.getPackageid());
                    }
                    if (packageToken.hasAccessToken()) {
                        setAccessToken(packageToken.getAccessToken());
                    }
                    mergeUnknownFields(packageToken.getUnknownFields());
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
                                        this.packageid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.accessToken_ = codedInputStream.readUInt64();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
                public boolean hasPackageid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
                public int getPackageid() {
                    return this.packageid_;
                }

                public Builder setPackageid(int i) {
                    this.packageid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearPackageid() {
                    this.bitField0_ &= -2;
                    this.packageid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
                public boolean hasAccessToken() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageTokenOrBuilder
                public long getAccessToken() {
                    return this.accessToken_;
                }

                public Builder setAccessToken(long j) {
                    this.accessToken_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearAccessToken() {
                    this.bitField0_ &= -3;
                    this.accessToken_ = 0L;
                    onChanged();
                    return this;
                }
            }

            public static PackageToken getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PackageToken> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<PackageToken> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PackageToken getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class AppToken extends GeneratedMessage implements AppTokenOrBuilder {
            public static final int ACCESS_TOKEN_FIELD_NUMBER = 2;
            public static final int APPID_FIELD_NUMBER = 1;
            private static final AppToken DEFAULT_INSTANCE;
            private static final Parser<AppToken> PARSER;
            private static final long serialVersionUID = 0;
            private long accessToken_;
            private int appid_;
            private int bitField0_;
            private byte memoizedIsInitialized;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", AppToken.class.getName());
                DEFAULT_INSTANCE = new AppToken();
                PARSER = new AbstractParser<AppToken>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppToken.1
                    @Override // com.google.protobuf.Parser
                    public AppToken parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = AppToken.newBuilder();
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

            private AppToken(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.appid_ = 0;
                this.accessToken_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            private AppToken() {
                this.appid_ = 0;
                this.accessToken_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_AppToken_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_AppToken_fieldAccessorTable.ensureFieldAccessorsInitialized(AppToken.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
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
                    codedOutputStream.writeUInt32(1, this.appid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt64(2, this.accessToken_);
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
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.accessToken_);
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
                if (!(obj instanceof AppToken)) {
                    return super.equals(obj);
                }
                AppToken appToken = (AppToken) obj;
                if (hasAppid() != appToken.hasAppid()) {
                    return false;
                }
                if ((!hasAppid() || getAppid() == appToken.getAppid()) && hasAccessToken() == appToken.hasAccessToken()) {
                    return (!hasAccessToken() || getAccessToken() == appToken.getAccessToken()) && getUnknownFields().equals(appToken.getUnknownFields());
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
                if (hasAccessToken()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAccessToken());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static AppToken parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static AppToken parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static AppToken parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static AppToken parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static AppToken parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static AppToken parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static AppToken parseFrom(InputStream inputStream) throws IOException {
                return (AppToken) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static AppToken parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppToken) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppToken parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AppToken) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AppToken parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppToken) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static AppToken parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (AppToken) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static AppToken parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (AppToken) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(AppToken appToken) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(appToken);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements AppTokenOrBuilder {
                private long accessToken_;
                private int appid_;
                private int bitField0_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_AppToken_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_AppToken_fieldAccessorTable.ensureFieldAccessorsInitialized(AppToken.class, Builder.class);
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
                    this.accessToken_ = 0L;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_AppToken_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public AppToken getDefaultInstanceForType() {
                    return AppToken.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppToken build() {
                    AppToken appTokenBuildPartial = buildPartial();
                    if (appTokenBuildPartial.isInitialized()) {
                        return appTokenBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) appTokenBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public AppToken buildPartial() {
                    AppToken appToken = new AppToken(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(appToken);
                    }
                    onBuilt();
                    return appToken;
                }

                private void buildPartial0(AppToken appToken) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        appToken.appid_ = this.appid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        appToken.accessToken_ = this.accessToken_;
                        i |= 2;
                    }
                    appToken.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof AppToken) {
                        return mergeFrom((AppToken) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(AppToken appToken) {
                    if (appToken == AppToken.getDefaultInstance()) {
                        return this;
                    }
                    if (appToken.hasAppid()) {
                        setAppid(appToken.getAppid());
                    }
                    if (appToken.hasAccessToken()) {
                        setAccessToken(appToken.getAccessToken());
                    }
                    mergeUnknownFields(appToken.getUnknownFields());
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
                                        this.accessToken_ = codedInputStream.readUInt64();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
                public boolean hasAppid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
                public boolean hasAccessToken() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppTokenOrBuilder
                public long getAccessToken() {
                    return this.accessToken_;
                }

                public Builder setAccessToken(long j) {
                    this.accessToken_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearAccessToken() {
                    this.bitField0_ &= -3;
                    this.accessToken_ = 0L;
                    onChanged();
                    return this;
                }
            }

            public static AppToken getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AppToken> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<AppToken> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public AppToken getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public List<PackageToken> getPackageAccessTokensList() {
            return this.packageAccessTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public List<? extends PackageTokenOrBuilder> getPackageAccessTokensOrBuilderList() {
            return this.packageAccessTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public int getPackageAccessTokensCount() {
            return this.packageAccessTokens_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public PackageToken getPackageAccessTokens(int i) {
            return this.packageAccessTokens_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public PackageTokenOrBuilder getPackageAccessTokensOrBuilder(int i) {
            return this.packageAccessTokens_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public List<Integer> getPackageDeniedTokensList() {
            return this.packageDeniedTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public int getPackageDeniedTokensCount() {
            return this.packageDeniedTokens_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public int getPackageDeniedTokens(int i) {
            return this.packageDeniedTokens_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public List<AppToken> getAppAccessTokensList() {
            return this.appAccessTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public List<? extends AppTokenOrBuilder> getAppAccessTokensOrBuilderList() {
            return this.appAccessTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public int getAppAccessTokensCount() {
            return this.appAccessTokens_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public AppToken getAppAccessTokens(int i) {
            return this.appAccessTokens_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public AppTokenOrBuilder getAppAccessTokensOrBuilder(int i) {
            return this.appAccessTokens_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public List<Integer> getAppDeniedTokensList() {
            return this.appDeniedTokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public int getAppDeniedTokensCount() {
            return this.appDeniedTokens_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
        public int getAppDeniedTokens(int i) {
            return this.appDeniedTokens_.getInt(i);
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
            for (int i = 0; i < this.packageAccessTokens_.size(); i++) {
                codedOutputStream.writeMessage(1, this.packageAccessTokens_.get(i));
            }
            for (int i2 = 0; i2 < this.packageDeniedTokens_.size(); i2++) {
                codedOutputStream.writeUInt32(2, this.packageDeniedTokens_.getInt(i2));
            }
            for (int i3 = 0; i3 < this.appAccessTokens_.size(); i3++) {
                codedOutputStream.writeMessage(3, this.appAccessTokens_.get(i3));
            }
            for (int i4 = 0; i4 < this.appDeniedTokens_.size(); i4++) {
                codedOutputStream.writeUInt32(4, this.appDeniedTokens_.getInt(i4));
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
            for (int i2 = 0; i2 < this.packageAccessTokens_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.packageAccessTokens_.get(i2));
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.packageDeniedTokens_.size(); i3++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.packageDeniedTokens_.getInt(i3));
            }
            int size = iComputeMessageSize + iComputeUInt32SizeNoTag + getPackageDeniedTokensList().size();
            for (int i4 = 0; i4 < this.appAccessTokens_.size(); i4++) {
                size += CodedOutputStream.computeMessageSize(3, this.appAccessTokens_.get(i4));
            }
            int iComputeUInt32SizeNoTag2 = 0;
            for (int i5 = 0; i5 < this.appDeniedTokens_.size(); i5++) {
                iComputeUInt32SizeNoTag2 += CodedOutputStream.computeUInt32SizeNoTag(this.appDeniedTokens_.getInt(i5));
            }
            int size2 = size + iComputeUInt32SizeNoTag2 + getAppDeniedTokensList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientPICSAccessTokenResponse)) {
                return super.equals(obj);
            }
            CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponse = (CMsgClientPICSAccessTokenResponse) obj;
            return getPackageAccessTokensList().equals(cMsgClientPICSAccessTokenResponse.getPackageAccessTokensList()) && getPackageDeniedTokensList().equals(cMsgClientPICSAccessTokenResponse.getPackageDeniedTokensList()) && getAppAccessTokensList().equals(cMsgClientPICSAccessTokenResponse.getAppAccessTokensList()) && getAppDeniedTokensList().equals(cMsgClientPICSAccessTokenResponse.getAppDeniedTokensList()) && getUnknownFields().equals(cMsgClientPICSAccessTokenResponse.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getPackageAccessTokensCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPackageAccessTokensList().hashCode();
            }
            if (getPackageDeniedTokensCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPackageDeniedTokensList().hashCode();
            }
            if (getAppAccessTokensCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAppAccessTokensList().hashCode();
            }
            if (getAppDeniedTokensCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getAppDeniedTokensList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSAccessTokenResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSAccessTokenResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSAccessTokenResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSAccessTokenResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSAccessTokenResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSAccessTokenResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSAccessTokenResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSAccessTokenResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSAccessTokenResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSAccessTokenResponseOrBuilder {
            private RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> appAccessTokensBuilder_;
            private List<AppToken> appAccessTokens_;
            private Internal.IntList appDeniedTokens_;
            private int bitField0_;
            private RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> packageAccessTokensBuilder_;
            private List<PackageToken> packageAccessTokens_;
            private Internal.IntList packageDeniedTokens_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSAccessTokenResponse.class, Builder.class);
            }

            private Builder() {
                this.packageAccessTokens_ = Collections.emptyList();
                this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
                this.appAccessTokens_ = Collections.emptyList();
                this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.packageAccessTokens_ = Collections.emptyList();
                this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
                this.appAccessTokens_ = Collections.emptyList();
                this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packageAccessTokens_ = Collections.emptyList();
                } else {
                    this.packageAccessTokens_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder2 = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.appAccessTokens_ = Collections.emptyList();
                } else {
                    this.appAccessTokens_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -5;
                this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSAccessTokenResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSAccessTokenResponse getDefaultInstanceForType() {
                return CMsgClientPICSAccessTokenResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSAccessTokenResponse build() {
                CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponseBuildPartial = buildPartial();
                if (cMsgClientPICSAccessTokenResponseBuildPartial.isInitialized()) {
                    return cMsgClientPICSAccessTokenResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSAccessTokenResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSAccessTokenResponse buildPartial() {
                CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponse = new CMsgClientPICSAccessTokenResponse(this);
                buildPartialRepeatedFields(cMsgClientPICSAccessTokenResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSAccessTokenResponse);
                }
                onBuilt();
                return cMsgClientPICSAccessTokenResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponse) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.packageAccessTokens_ = Collections.unmodifiableList(this.packageAccessTokens_);
                        this.bitField0_ &= -2;
                    }
                    cMsgClientPICSAccessTokenResponse.packageAccessTokens_ = this.packageAccessTokens_;
                } else {
                    cMsgClientPICSAccessTokenResponse.packageAccessTokens_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder2 = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.appAccessTokens_ = Collections.unmodifiableList(this.appAccessTokens_);
                        this.bitField0_ &= -5;
                    }
                    cMsgClientPICSAccessTokenResponse.appAccessTokens_ = this.appAccessTokens_;
                    return;
                }
                cMsgClientPICSAccessTokenResponse.appAccessTokens_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponse) {
                int i = this.bitField0_;
                if ((i & 2) != 0) {
                    this.packageDeniedTokens_.makeImmutable();
                    cMsgClientPICSAccessTokenResponse.packageDeniedTokens_ = this.packageDeniedTokens_;
                }
                if ((i & 8) != 0) {
                    this.appDeniedTokens_.makeImmutable();
                    cMsgClientPICSAccessTokenResponse.appDeniedTokens_ = this.appDeniedTokens_;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSAccessTokenResponse) {
                    return mergeFrom((CMsgClientPICSAccessTokenResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSAccessTokenResponse cMsgClientPICSAccessTokenResponse) {
                if (cMsgClientPICSAccessTokenResponse == CMsgClientPICSAccessTokenResponse.getDefaultInstance()) {
                    return this;
                }
                if (this.packageAccessTokensBuilder_ == null) {
                    if (!cMsgClientPICSAccessTokenResponse.packageAccessTokens_.isEmpty()) {
                        if (this.packageAccessTokens_.isEmpty()) {
                            this.packageAccessTokens_ = cMsgClientPICSAccessTokenResponse.packageAccessTokens_;
                            this.bitField0_ &= -2;
                        } else {
                            ensurePackageAccessTokensIsMutable();
                            this.packageAccessTokens_.addAll(cMsgClientPICSAccessTokenResponse.packageAccessTokens_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSAccessTokenResponse.packageAccessTokens_.isEmpty()) {
                    if (this.packageAccessTokensBuilder_.isEmpty()) {
                        this.packageAccessTokensBuilder_.dispose();
                        this.packageAccessTokensBuilder_ = null;
                        this.packageAccessTokens_ = cMsgClientPICSAccessTokenResponse.packageAccessTokens_;
                        this.bitField0_ &= -2;
                        this.packageAccessTokensBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPackageAccessTokensFieldBuilder() : null;
                    } else {
                        this.packageAccessTokensBuilder_.addAllMessages(cMsgClientPICSAccessTokenResponse.packageAccessTokens_);
                    }
                }
                if (!cMsgClientPICSAccessTokenResponse.packageDeniedTokens_.isEmpty()) {
                    if (this.packageDeniedTokens_.isEmpty()) {
                        Internal.IntList intList = cMsgClientPICSAccessTokenResponse.packageDeniedTokens_;
                        this.packageDeniedTokens_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensurePackageDeniedTokensIsMutable();
                        this.packageDeniedTokens_.addAll(cMsgClientPICSAccessTokenResponse.packageDeniedTokens_);
                    }
                    onChanged();
                }
                if (this.appAccessTokensBuilder_ == null) {
                    if (!cMsgClientPICSAccessTokenResponse.appAccessTokens_.isEmpty()) {
                        if (this.appAccessTokens_.isEmpty()) {
                            this.appAccessTokens_ = cMsgClientPICSAccessTokenResponse.appAccessTokens_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureAppAccessTokensIsMutable();
                            this.appAccessTokens_.addAll(cMsgClientPICSAccessTokenResponse.appAccessTokens_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPICSAccessTokenResponse.appAccessTokens_.isEmpty()) {
                    if (this.appAccessTokensBuilder_.isEmpty()) {
                        this.appAccessTokensBuilder_.dispose();
                        this.appAccessTokensBuilder_ = null;
                        this.appAccessTokens_ = cMsgClientPICSAccessTokenResponse.appAccessTokens_;
                        this.bitField0_ &= -5;
                        this.appAccessTokensBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetAppAccessTokensFieldBuilder() : null;
                    } else {
                        this.appAccessTokensBuilder_.addAllMessages(cMsgClientPICSAccessTokenResponse.appAccessTokens_);
                    }
                }
                if (!cMsgClientPICSAccessTokenResponse.appDeniedTokens_.isEmpty()) {
                    if (this.appDeniedTokens_.isEmpty()) {
                        Internal.IntList intList2 = cMsgClientPICSAccessTokenResponse.appDeniedTokens_;
                        this.appDeniedTokens_ = intList2;
                        intList2.makeImmutable();
                        this.bitField0_ |= 8;
                    } else {
                        ensureAppDeniedTokensIsMutable();
                        this.appDeniedTokens_.addAll(cMsgClientPICSAccessTokenResponse.appDeniedTokens_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientPICSAccessTokenResponse.getUnknownFields());
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
                                    PackageToken packageToken = (PackageToken) codedInputStream.readMessage(PackageToken.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensurePackageAccessTokensIsMutable();
                                        this.packageAccessTokens_.add(packageToken);
                                    } else {
                                        repeatedFieldBuilder.addMessage(packageToken);
                                    }
                                } else if (tag == 16) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensurePackageDeniedTokensIsMutable();
                                    this.packageDeniedTokens_.addInt(uInt32);
                                } else if (tag == 18) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensurePackageDeniedTokensIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.packageDeniedTokens_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 26) {
                                    AppToken appToken = (AppToken) codedInputStream.readMessage(AppToken.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder2 = this.appAccessTokensBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensureAppAccessTokensIsMutable();
                                        this.appAccessTokens_.add(appToken);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(appToken);
                                    }
                                } else if (tag == 32) {
                                    int uInt322 = codedInputStream.readUInt32();
                                    ensureAppDeniedTokensIsMutable();
                                    this.appDeniedTokens_.addInt(uInt322);
                                } else if (tag == 34) {
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureAppDeniedTokensIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.appDeniedTokens_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
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

            private void ensurePackageAccessTokensIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.packageAccessTokens_ = new ArrayList(this.packageAccessTokens_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public List<PackageToken> getPackageAccessTokensList() {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.packageAccessTokens_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public int getPackageAccessTokensCount() {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageAccessTokens_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public PackageToken getPackageAccessTokens(int i) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageAccessTokens_.get(i);
                }
                return (PackageToken) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPackageAccessTokens(int i, PackageToken packageToken) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageToken.getClass();
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.set(i, packageToken);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, packageToken);
                }
                return this;
            }

            public Builder setPackageAccessTokens(int i, PackageToken.Builder builder) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPackageAccessTokens(PackageToken packageToken) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageToken.getClass();
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.add(packageToken);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(packageToken);
                }
                return this;
            }

            public Builder addPackageAccessTokens(int i, PackageToken packageToken) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    packageToken.getClass();
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.add(i, packageToken);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, packageToken);
                }
                return this;
            }

            public Builder addPackageAccessTokens(PackageToken.Builder builder) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPackageAccessTokens(int i, PackageToken.Builder builder) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPackageAccessTokens(Iterable<? extends PackageToken> iterable) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageAccessTokensIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packageAccessTokens_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPackageAccessTokens() {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packageAccessTokens_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePackageAccessTokens(int i) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageAccessTokensIsMutable();
                    this.packageAccessTokens_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public PackageToken.Builder getPackageAccessTokensBuilder(int i) {
                return (PackageToken.Builder) internalGetPackageAccessTokensFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public PackageTokenOrBuilder getPackageAccessTokensOrBuilder(int i) {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageAccessTokens_.get(i);
                }
                return (PackageTokenOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public List<? extends PackageTokenOrBuilder> getPackageAccessTokensOrBuilderList() {
                RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> repeatedFieldBuilder = this.packageAccessTokensBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.packageAccessTokens_);
            }

            public PackageToken.Builder addPackageAccessTokensBuilder() {
                return (PackageToken.Builder) internalGetPackageAccessTokensFieldBuilder().addBuilder(PackageToken.getDefaultInstance());
            }

            public PackageToken.Builder addPackageAccessTokensBuilder(int i) {
                return (PackageToken.Builder) internalGetPackageAccessTokensFieldBuilder().addBuilder(i, PackageToken.getDefaultInstance());
            }

            public List<PackageToken.Builder> getPackageAccessTokensBuilderList() {
                return internalGetPackageAccessTokensFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<PackageToken, PackageToken.Builder, PackageTokenOrBuilder> internalGetPackageAccessTokensFieldBuilder() {
                if (this.packageAccessTokensBuilder_ == null) {
                    this.packageAccessTokensBuilder_ = new RepeatedFieldBuilder<>(this.packageAccessTokens_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.packageAccessTokens_ = null;
                }
                return this.packageAccessTokensBuilder_;
            }

            private void ensurePackageDeniedTokensIsMutable() {
                if (!this.packageDeniedTokens_.isModifiable()) {
                    this.packageDeniedTokens_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.packageDeniedTokens_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public List<Integer> getPackageDeniedTokensList() {
                this.packageDeniedTokens_.makeImmutable();
                return this.packageDeniedTokens_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public int getPackageDeniedTokensCount() {
                return this.packageDeniedTokens_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public int getPackageDeniedTokens(int i) {
                return this.packageDeniedTokens_.getInt(i);
            }

            public Builder setPackageDeniedTokens(int i, int i2) {
                ensurePackageDeniedTokensIsMutable();
                this.packageDeniedTokens_.setInt(i, i2);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addPackageDeniedTokens(int i) {
                ensurePackageDeniedTokensIsMutable();
                this.packageDeniedTokens_.addInt(i);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllPackageDeniedTokens(Iterable<? extends Integer> iterable) {
                ensurePackageDeniedTokensIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packageDeniedTokens_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPackageDeniedTokens() {
                this.packageDeniedTokens_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            private void ensureAppAccessTokensIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.appAccessTokens_ = new ArrayList(this.appAccessTokens_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public List<AppToken> getAppAccessTokensList() {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.appAccessTokens_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public int getAppAccessTokensCount() {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.appAccessTokens_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public AppToken getAppAccessTokens(int i) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.appAccessTokens_.get(i);
                }
                return (AppToken) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setAppAccessTokens(int i, AppToken appToken) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    appToken.getClass();
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.set(i, appToken);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, appToken);
                }
                return this;
            }

            public Builder setAppAccessTokens(int i, AppToken.Builder builder) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAppAccessTokens(AppToken appToken) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    appToken.getClass();
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.add(appToken);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(appToken);
                }
                return this;
            }

            public Builder addAppAccessTokens(int i, AppToken appToken) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    appToken.getClass();
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.add(i, appToken);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, appToken);
                }
                return this;
            }

            public Builder addAppAccessTokens(AppToken.Builder builder) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addAppAccessTokens(int i, AppToken.Builder builder) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllAppAccessTokens(Iterable<? extends AppToken> iterable) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppAccessTokensIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.appAccessTokens_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearAppAccessTokens() {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.appAccessTokens_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeAppAccessTokens(int i) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAppAccessTokensIsMutable();
                    this.appAccessTokens_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public AppToken.Builder getAppAccessTokensBuilder(int i) {
                return (AppToken.Builder) internalGetAppAccessTokensFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public AppTokenOrBuilder getAppAccessTokensOrBuilder(int i) {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.appAccessTokens_.get(i);
                }
                return (AppTokenOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public List<? extends AppTokenOrBuilder> getAppAccessTokensOrBuilderList() {
                RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> repeatedFieldBuilder = this.appAccessTokensBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.appAccessTokens_);
            }

            public AppToken.Builder addAppAccessTokensBuilder() {
                return (AppToken.Builder) internalGetAppAccessTokensFieldBuilder().addBuilder(AppToken.getDefaultInstance());
            }

            public AppToken.Builder addAppAccessTokensBuilder(int i) {
                return (AppToken.Builder) internalGetAppAccessTokensFieldBuilder().addBuilder(i, AppToken.getDefaultInstance());
            }

            public List<AppToken.Builder> getAppAccessTokensBuilderList() {
                return internalGetAppAccessTokensFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<AppToken, AppToken.Builder, AppTokenOrBuilder> internalGetAppAccessTokensFieldBuilder() {
                if (this.appAccessTokensBuilder_ == null) {
                    this.appAccessTokensBuilder_ = new RepeatedFieldBuilder<>(this.appAccessTokens_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.appAccessTokens_ = null;
                }
                return this.appAccessTokensBuilder_;
            }

            private void ensureAppDeniedTokensIsMutable() {
                if (!this.appDeniedTokens_.isModifiable()) {
                    this.appDeniedTokens_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.appDeniedTokens_);
                }
                this.bitField0_ |= 8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public List<Integer> getAppDeniedTokensList() {
                this.appDeniedTokens_.makeImmutable();
                return this.appDeniedTokens_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public int getAppDeniedTokensCount() {
                return this.appDeniedTokens_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponseOrBuilder
            public int getAppDeniedTokens(int i) {
                return this.appDeniedTokens_.getInt(i);
            }

            public Builder setAppDeniedTokens(int i, int i2) {
                ensureAppDeniedTokensIsMutable();
                this.appDeniedTokens_.setInt(i, i2);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addAppDeniedTokens(int i) {
                ensureAppDeniedTokensIsMutable();
                this.appDeniedTokens_.addInt(i);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addAllAppDeniedTokens(Iterable<? extends Integer> iterable) {
                ensureAppDeniedTokensIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.appDeniedTokens_);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAppDeniedTokens() {
                this.appDeniedTokens_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSAccessTokenResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSAccessTokenResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSAccessTokenResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSAccessTokenResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSPrivateBetaRequest extends GeneratedMessage implements CMsgClientPICSPrivateBetaRequestOrBuilder {
        public static final int ACCESS_TOKEN_FIELD_NUMBER = 2;
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int BETA_NAME_FIELD_NUMBER = 3;
        private static final CMsgClientPICSPrivateBetaRequest DEFAULT_INSTANCE;
        private static final Parser<CMsgClientPICSPrivateBetaRequest> PARSER;
        public static final int PASSWORD_HASH_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private long accessToken_;
        private int appid_;
        private volatile Object betaName_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString passwordHash_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSPrivateBetaRequest.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSPrivateBetaRequest();
            PARSER = new AbstractParser<CMsgClientPICSPrivateBetaRequest>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequest.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSPrivateBetaRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSPrivateBetaRequest.newBuilder();
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

        private CMsgClientPICSPrivateBetaRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.accessToken_ = 0L;
            this.betaName_ = "";
            this.passwordHash_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSPrivateBetaRequest() {
            this.appid_ = 0;
            this.accessToken_ = 0L;
            this.betaName_ = "";
            ByteString byteString = ByteString.EMPTY;
            this.passwordHash_ = byteString;
            this.memoizedIsInitialized = (byte) -1;
            this.betaName_ = "";
            this.passwordHash_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaRequest_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSPrivateBetaRequest.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public boolean hasAccessToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public long getAccessToken() {
            return this.accessToken_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public boolean hasBetaName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public String getBetaName() {
            Object obj = this.betaName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.betaName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public ByteString getBetaNameBytes() {
            Object obj = this.betaName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.betaName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public boolean hasPasswordHash() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
        public ByteString getPasswordHash() {
            return this.passwordHash_;
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
                codedOutputStream.writeUInt64(2, this.accessToken_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.betaName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBytes(4, this.passwordHash_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.accessToken_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.betaName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(4, this.passwordHash_);
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
            if (!(obj instanceof CMsgClientPICSPrivateBetaRequest)) {
                return super.equals(obj);
            }
            CMsgClientPICSPrivateBetaRequest cMsgClientPICSPrivateBetaRequest = (CMsgClientPICSPrivateBetaRequest) obj;
            if (hasAppid() != cMsgClientPICSPrivateBetaRequest.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cMsgClientPICSPrivateBetaRequest.getAppid()) || hasAccessToken() != cMsgClientPICSPrivateBetaRequest.hasAccessToken()) {
                return false;
            }
            if ((hasAccessToken() && getAccessToken() != cMsgClientPICSPrivateBetaRequest.getAccessToken()) || hasBetaName() != cMsgClientPICSPrivateBetaRequest.hasBetaName()) {
                return false;
            }
            if ((!hasBetaName() || getBetaName().equals(cMsgClientPICSPrivateBetaRequest.getBetaName())) && hasPasswordHash() == cMsgClientPICSPrivateBetaRequest.hasPasswordHash()) {
                return (!hasPasswordHash() || getPasswordHash().equals(cMsgClientPICSPrivateBetaRequest.getPasswordHash())) && getUnknownFields().equals(cMsgClientPICSPrivateBetaRequest.getUnknownFields());
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
            if (hasAccessToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAccessToken());
            }
            if (hasBetaName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getBetaName().hashCode();
            }
            if (hasPasswordHash()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getPasswordHash().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSPrivateBetaRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSPrivateBetaRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSPrivateBetaRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSPrivateBetaRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSPrivateBetaRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSPrivateBetaRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSPrivateBetaRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSPrivateBetaRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSPrivateBetaRequest cMsgClientPICSPrivateBetaRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSPrivateBetaRequest);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSPrivateBetaRequestOrBuilder {
            private long accessToken_;
            private int appid_;
            private Object betaName_;
            private int bitField0_;
            private ByteString passwordHash_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSPrivateBetaRequest.class, Builder.class);
            }

            private Builder() {
                this.betaName_ = "";
                this.passwordHash_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.betaName_ = "";
                this.passwordHash_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.accessToken_ = 0L;
                this.betaName_ = "";
                this.passwordHash_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaRequest_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSPrivateBetaRequest getDefaultInstanceForType() {
                return CMsgClientPICSPrivateBetaRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSPrivateBetaRequest build() {
                CMsgClientPICSPrivateBetaRequest cMsgClientPICSPrivateBetaRequestBuildPartial = buildPartial();
                if (cMsgClientPICSPrivateBetaRequestBuildPartial.isInitialized()) {
                    return cMsgClientPICSPrivateBetaRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSPrivateBetaRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSPrivateBetaRequest buildPartial() {
                CMsgClientPICSPrivateBetaRequest cMsgClientPICSPrivateBetaRequest = new CMsgClientPICSPrivateBetaRequest(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSPrivateBetaRequest);
                }
                onBuilt();
                return cMsgClientPICSPrivateBetaRequest;
            }

            private void buildPartial0(CMsgClientPICSPrivateBetaRequest cMsgClientPICSPrivateBetaRequest) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPICSPrivateBetaRequest.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPICSPrivateBetaRequest.accessToken_ = this.accessToken_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientPICSPrivateBetaRequest.betaName_ = this.betaName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientPICSPrivateBetaRequest.passwordHash_ = this.passwordHash_;
                    i |= 8;
                }
                cMsgClientPICSPrivateBetaRequest.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSPrivateBetaRequest) {
                    return mergeFrom((CMsgClientPICSPrivateBetaRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSPrivateBetaRequest cMsgClientPICSPrivateBetaRequest) {
                if (cMsgClientPICSPrivateBetaRequest == CMsgClientPICSPrivateBetaRequest.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPICSPrivateBetaRequest.hasAppid()) {
                    setAppid(cMsgClientPICSPrivateBetaRequest.getAppid());
                }
                if (cMsgClientPICSPrivateBetaRequest.hasAccessToken()) {
                    setAccessToken(cMsgClientPICSPrivateBetaRequest.getAccessToken());
                }
                if (cMsgClientPICSPrivateBetaRequest.hasBetaName()) {
                    this.betaName_ = cMsgClientPICSPrivateBetaRequest.betaName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cMsgClientPICSPrivateBetaRequest.hasPasswordHash()) {
                    setPasswordHash(cMsgClientPICSPrivateBetaRequest.getPasswordHash());
                }
                mergeUnknownFields(cMsgClientPICSPrivateBetaRequest.getUnknownFields());
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
                                    this.accessToken_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.betaName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.passwordHash_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public long getAccessToken() {
                return this.accessToken_;
            }

            public Builder setAccessToken(long j) {
                this.accessToken_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAccessToken() {
                this.bitField0_ &= -3;
                this.accessToken_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public boolean hasBetaName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public String getBetaName() {
                Object obj = this.betaName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.betaName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public ByteString getBetaNameBytes() {
                Object obj = this.betaName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.betaName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setBetaName(String str) {
                str.getClass();
                this.betaName_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearBetaName() {
                this.betaName_ = CMsgClientPICSPrivateBetaRequest.getDefaultInstance().getBetaName();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setBetaNameBytes(ByteString byteString) {
                byteString.getClass();
                this.betaName_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public boolean hasPasswordHash() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequestOrBuilder
            public ByteString getPasswordHash() {
                return this.passwordHash_;
            }

            public Builder setPasswordHash(ByteString byteString) {
                byteString.getClass();
                this.passwordHash_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearPasswordHash() {
                this.bitField0_ &= -9;
                this.passwordHash_ = CMsgClientPICSPrivateBetaRequest.getDefaultInstance().getPasswordHash();
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSPrivateBetaRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSPrivateBetaRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSPrivateBetaRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSPrivateBetaRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPICSPrivateBetaResponse extends GeneratedMessage implements CMsgClientPICSPrivateBetaResponseOrBuilder {
        private static final CMsgClientPICSPrivateBetaResponse DEFAULT_INSTANCE;
        public static final int DEPOT_SECTION_FIELD_NUMBER = 2;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientPICSPrivateBetaResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString depotSection_;
        private int eresult_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPICSPrivateBetaResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPICSPrivateBetaResponse();
            PARSER = new AbstractParser<CMsgClientPICSPrivateBetaResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPICSPrivateBetaResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPICSPrivateBetaResponse.newBuilder();
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

        private CMsgClientPICSPrivateBetaResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.depotSection_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPICSPrivateBetaResponse() {
            this.eresult_ = 2;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.depotSection_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSPrivateBetaResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
        public boolean hasDepotSection() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
        public ByteString getDepotSection() {
            return this.depotSection_;
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
                codedOutputStream.writeBytes(2, this.depotSection_);
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
                iComputeInt32Size += CodedOutputStream.computeBytesSize(2, this.depotSection_);
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
            if (!(obj instanceof CMsgClientPICSPrivateBetaResponse)) {
                return super.equals(obj);
            }
            CMsgClientPICSPrivateBetaResponse cMsgClientPICSPrivateBetaResponse = (CMsgClientPICSPrivateBetaResponse) obj;
            if (hasEresult() != cMsgClientPICSPrivateBetaResponse.hasEresult()) {
                return false;
            }
            if ((!hasEresult() || getEresult() == cMsgClientPICSPrivateBetaResponse.getEresult()) && hasDepotSection() == cMsgClientPICSPrivateBetaResponse.hasDepotSection()) {
                return (!hasDepotSection() || getDepotSection().equals(cMsgClientPICSPrivateBetaResponse.getDepotSection())) && getUnknownFields().equals(cMsgClientPICSPrivateBetaResponse.getUnknownFields());
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
            if (hasDepotSection()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDepotSection().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSPrivateBetaResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSPrivateBetaResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPICSPrivateBetaResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPICSPrivateBetaResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSPrivateBetaResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPICSPrivateBetaResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPICSPrivateBetaResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPICSPrivateBetaResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPICSPrivateBetaResponse cMsgClientPICSPrivateBetaResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPICSPrivateBetaResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPICSPrivateBetaResponseOrBuilder {
            private int bitField0_;
            private ByteString depotSection_;
            private int eresult_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPICSPrivateBetaResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.depotSection_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.depotSection_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.depotSection_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverAppinfo.internal_static_CMsgClientPICSPrivateBetaResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPICSPrivateBetaResponse getDefaultInstanceForType() {
                return CMsgClientPICSPrivateBetaResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSPrivateBetaResponse build() {
                CMsgClientPICSPrivateBetaResponse cMsgClientPICSPrivateBetaResponseBuildPartial = buildPartial();
                if (cMsgClientPICSPrivateBetaResponseBuildPartial.isInitialized()) {
                    return cMsgClientPICSPrivateBetaResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPICSPrivateBetaResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPICSPrivateBetaResponse buildPartial() {
                CMsgClientPICSPrivateBetaResponse cMsgClientPICSPrivateBetaResponse = new CMsgClientPICSPrivateBetaResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPICSPrivateBetaResponse);
                }
                onBuilt();
                return cMsgClientPICSPrivateBetaResponse;
            }

            private void buildPartial0(CMsgClientPICSPrivateBetaResponse cMsgClientPICSPrivateBetaResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPICSPrivateBetaResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPICSPrivateBetaResponse.depotSection_ = this.depotSection_;
                    i |= 2;
                }
                cMsgClientPICSPrivateBetaResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPICSPrivateBetaResponse) {
                    return mergeFrom((CMsgClientPICSPrivateBetaResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPICSPrivateBetaResponse cMsgClientPICSPrivateBetaResponse) {
                if (cMsgClientPICSPrivateBetaResponse == CMsgClientPICSPrivateBetaResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPICSPrivateBetaResponse.hasEresult()) {
                    setEresult(cMsgClientPICSPrivateBetaResponse.getEresult());
                }
                if (cMsgClientPICSPrivateBetaResponse.hasDepotSection()) {
                    setDepotSection(cMsgClientPICSPrivateBetaResponse.getDepotSection());
                }
                mergeUnknownFields(cMsgClientPICSPrivateBetaResponse.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.depotSection_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
            public boolean hasDepotSection() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponseOrBuilder
            public ByteString getDepotSection() {
                return this.depotSection_;
            }

            public Builder setDepotSection(ByteString byteString) {
                byteString.getClass();
                this.depotSection_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDepotSection() {
                this.bitField0_ &= -3;
                this.depotSection_ = CMsgClientPICSPrivateBetaResponse.getDefaultInstance().getDepotSection();
                onChanged();
                return this;
            }
        }

        public static CMsgClientPICSPrivateBetaResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPICSPrivateBetaResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPICSPrivateBetaResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPICSPrivateBetaResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
