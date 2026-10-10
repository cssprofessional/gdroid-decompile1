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
public final class SteammessagesClientserverUcm {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientScreenshotsChanged_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientScreenshotsChanged_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMAddScreenshotResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMAddScreenshotResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMAddScreenshot_Tag_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMAddScreenshot_Tag_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMAddScreenshot_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMAddScreenshot_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMDeletePublishedFileResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMDeletePublishedFileResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMDeletePublishedFile_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMDeletePublishedFile_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMDeleteScreenshotResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMDeleteScreenshotResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMDeleteScreenshot_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMDeleteScreenshot_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_AuthorSnapshot_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_AuthorSnapshot_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_PublishedFileId_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_PublishedFileId_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMPublishFileResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMPublishFileResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMPublishFile_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMPublishFile_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMPublishedFileUpdated_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMPublishedFileUpdated_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMSetUserPublishedFileActionResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMSetUserPublishedFileActionResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMSetUserPublishedFileAction_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMSetUserPublishedFileAction_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMUpdatePublishedFileResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMUpdatePublishedFileResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMUpdatePublishedFile_AdditionalPreview_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMUpdatePublishedFile_AdditionalPreview_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMUpdatePublishedFile_KeyValueTag_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMUpdatePublishedFile_KeyValueTag_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUCMUpdatePublishedFile_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUCMUpdatePublishedFile_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientWorkshopItemChangesRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientWorkshopItemChangesRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientWorkshopItemChangesResponse_WorkshopItemInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientWorkshopItemChangesResponse_WorkshopItemInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientWorkshopItemChangesResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientWorkshopItemChangesResponse_fieldAccessorTable;

    public interface CMsgClientUCMAddScreenshotOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getCaption();

        ByteString getCaptionBytes();

        String getFilename();

        ByteString getFilenameBytes();

        int getHeight();

        int getPermissions();

        int getRtime32Created();

        String getShortcutName();

        ByteString getShortcutNameBytes();

        boolean getSpoilerTag();

        CMsgClientUCMAddScreenshot.Tag getTag(int i);

        int getTagCount();

        List<CMsgClientUCMAddScreenshot.Tag> getTagList();

        CMsgClientUCMAddScreenshot.TagOrBuilder getTagOrBuilder(int i);

        List<? extends CMsgClientUCMAddScreenshot.TagOrBuilder> getTagOrBuilderList();

        long getTaggedPublishedfileid(int i);

        int getTaggedPublishedfileidCount();

        List<Long> getTaggedPublishedfileidList();

        long getTaggedSteamid(int i);

        int getTaggedSteamidCount();

        List<Long> getTaggedSteamidList();

        String getThumbname();

        ByteString getThumbnameBytes();

        String getVrFilename();

        ByteString getVrFilenameBytes();

        int getWidth();

        boolean hasAppid();

        boolean hasCaption();

        boolean hasFilename();

        boolean hasHeight();

        boolean hasPermissions();

        boolean hasRtime32Created();

        boolean hasShortcutName();

        boolean hasSpoilerTag();

        boolean hasThumbname();

        boolean hasVrFilename();

        boolean hasWidth();
    }

    public interface CMsgClientUCMAddScreenshotResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        long getPublishedfileid();

        long getScreenshotid();

        boolean hasEresult();

        boolean hasPublishedfileid();

        boolean hasScreenshotid();
    }

    public interface CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder extends MessageOrBuilder {
        int getAction();

        int getAppId();

        int getStartIndex();

        boolean hasAction();

        boolean hasAppId();

        boolean hasStartIndex();
    }

    public interface CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId getPublishedFiles(int i);

        int getPublishedFilesCount();

        List<CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId> getPublishedFilesList();

        CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder getPublishedFilesOrBuilder(int i);

        List<? extends CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder> getPublishedFilesOrBuilderList();

        int getTotalResults();

        boolean hasEresult();

        boolean hasTotalResults();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverUcm() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverUcm.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nQin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_ucm.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"\u0081\u0003\n\u001aCMsgClientUCMAddScreenshot\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0010\n\bfilename\u0018\u0002 \u0001(\t\u0012\u0011\n\tthumbname\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bvr_filename\u0018\u000e \u0001(\t\u0012\u0017\n\u000frtime32_created\u0018\u0004 \u0001(\u0007\u0012\r\n\u0005width\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006height\u0018\u0006 \u0001(\r\u0012\u0013\n\u000bpermissions\u0018\u0007 \u0001(\r\u0012\u000f\n\u0007caption\u0018\b \u0001(\t\u0012\u0015\n\rshortcut_name\u0018\t \u0001(\t\u0012,\n\u0003tag\u0018\n \u0003(\u000b2\u001f.CMsgClientUCMAddScreenshot.Tag\u0012\u0016\n\u000etagged_steamid\u0018\u000b \u0003(\u0006\u0012\u0013\n\u000bspoiler_tag\u0018\f \u0001(\b\u0012\u001e\n\u0016tagged_publishedfileid\u0018\r \u0003(\u0004\u001a*\n\u0003Tag\u0012\u0010\n\btag_name\u0018\u0001 \u0001(\t\u0012\u0011\n\ttag_value\u0018\u0002 \u0001(\t\"}\n\"CMsgClientUCMAddScreenshotResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012*\n\fscreenshotid\u0018\u0002 \u0001(\u0006:\u001418446744073709551615\u0012\u0017\n\u000fpublishedfileid\u0018\u0003 \u0001(\u0004\"K\n\u001dCMsgClientUCMDeleteScreenshot\u0012*\n\fscreenshotid\u0018\u0001 \u0001(\u0006:\u001418446744073709551615\";\n%CMsgClientUCMDeleteScreenshotResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\"Ñ\u0002\n\u0018CMsgClientUCMPublishFile\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0011\n\tfile_name\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011preview_file_name\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fconsumer_app_id\u0018\u0004 \u0001(\r\u0012\r\n\u0005title\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0006 \u0001(\t\u0012\f\n\u0004tags\u0018\b \u0003(\t\u0012\u0015\n\rworkshop_file\u0018\t \u0001(\b\u0012\u0012\n\nvisibility\u0018\n \u0001(\u0005\u0012\u0011\n\tfile_type\u0018\u000b \u0001(\r\u0012\u000b\n\u0003url\u0018\f \u0001(\t\u0012\u0016\n\u000evideo_provider\u0018\r \u0001(\r\u0012\u001a\n\u0012video_account_name\u0018\u000e \u0001(\t\u0012\u0018\n\u0010video_identifier\u0018\u000f \u0001(\t\u0012\u0013\n\u000bin_progress\u0018\u0010 \u0001(\b\"¡\u0001\n CMsgClientUCMPublishFileResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012/\n\u0011published_file_id\u0018\u0002 \u0001(\u0006:\u001418446744073709551615\u00128\n)needs_workshop_legal_agreement_acceptance\u0018\u0003 \u0001(\b:\u0005false\"ð\b\n CMsgClientUCMUpdatePublishedFile\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011published_file_id\u0018\u0002 \u0001(\u0006\u0012\u0011\n\tfile_name\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011preview_file_name\u0018\u0004 \u0001(\t\u0012\r\n\u0005title\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0006 \u0001(\t\u0012\f\n\u0004tags\u0018\u0007 \u0003(\t\u0012\u0012\n\nvisibility\u0018\b \u0001(\u0005\u0012\u0013\n\u000bupdate_file\u0018\t \u0001(\b\u0012\u001b\n\u0013update_preview_file\u0018\n \u0001(\b\u0012\u0014\n\fupdate_title\u0018\u000b \u0001(\b\u0012\u001a\n\u0012update_description\u0018\f \u0001(\b\u0012\u0013\n\u000bupdate_tags\u0018\r \u0001(\b\u0012\u0019\n\u0011update_visibility\u0018\u000e \u0001(\b\u0012\u001a\n\u0012change_description\u0018\u000f \u0001(\t\u0012\u0012\n\nupdate_url\u0018\u0010 \u0001(\b\u0012\u000b\n\u0003url\u0018\u0011 \u0001(\t\u0012\u001f\n\u0017update_content_manifest\u0018\u0012 \u0001(\b\u0012\u0018\n\u0010content_manifest\u0018\u0013 \u0001(\u0006\u0012\u0010\n\bmetadata\u0018\u0014 \u0001(\t\u0012\u0017\n\u000fupdate_metadata\u0018\u0015 \u0001(\b\u0012\u0013\n\blanguage\u0018\u0016 \u0001(\u0005:\u00010\u0012\u0016\n\u000eremoved_kvtags\u0018\u0017 \u0003(\t\u0012=\n\u0006kvtags\u0018\u0018 \u0003(\u000b2-.CMsgClientUCMUpdatePublishedFile.KeyValueTag\u0012E\n\bpreviews\u0018\u0019 \u0003(\u000b23.CMsgClientUCMUpdatePublishedFile.AdditionalPreview\u0012\u001a\n\u0012previews_to_remove\u0018\u001a \u0003(\u0005\u0012\u0019\n\u0011clear_in_progress\u0018\u001b \u0001(\b\u0012\u0019\n\u0011remove_all_kvtags\u0018\u001c \u0001(\b\u0012\"\n\u001acontent_descriptors_to_add\u0018\u001d \u0003(\u0005\u0012%\n\u001dcontent_descriptors_to_remove\u0018\u001e \u0003(\u0005\u0012\u001f\n\u0010allow_admin_tags\u0018\u001f \u0001(\b:\u0005false\u0012\u0019\n\u0011external_asset_id\u0018  \u0001(\u0004\u0012\u0017\n\u000fgame_branch_min\u0018! \u0001(\t\u0012\u0017\n\u000fgame_branch_max\u0018\" \u0001(\t\u001a)\n\u000bKeyValueTag\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001a\u008c\u0001\n\u0011AdditionalPreview\u0012\u001a\n\u0012original_file_name\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012internal_file_name\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007videoid\u0018\u0003 \u0001(\t\u0012\u0014\n\fpreview_type\u0018\u0004 \u0001(\r\u0012\u0018\n\fupdate_index\u0018\u0005 \u0001(\u0005:\u0002-1\"x\n(CMsgClientUCMUpdatePublishedFileResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u00128\n)needs_workshop_legal_agreement_acceptance\u0018\u0002 \u0001(\b:\u0005false\"M\n CMsgClientUCMDeletePublishedFile\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\">\n(CMsgClientUCMDeletePublishedFileResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\"\u008c\u0001\n4CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bstart_index\u0018\u0002 \u0001(\r\u0012\u0012\n\nstart_time\u0018\u0003 \u0001(\u0007\u0012\u001b\n\u0010desired_revision\u0018\u0004 \u0001(\r:\u00010\"ä\u0004\n<CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012g\n\u0010subscribed_files\u0018\u0002 \u0003(\u000b2M.CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse.PublishedFileId\u0012\u0015\n\rtotal_results\u0018\u0003 \u0001(\r\u001ai\n\u000eAuthorSnapshot\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\r\u0012\u0017\n\u000fgame_branch_min\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fgame_branch_max\u0018\u0003 \u0001(\t\u0012\u0012\n\nmanifestid\u0018\u0004 \u0001(\u0006\u001a¤\u0002\n\u000fPublishedFileId\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u001d\n\u0012rtime32_subscribed\u0018\u0002 \u0001(\u0007:\u00010\u0012\r\n\u0005appid\u0018\u0003 \u0001(\r\u0012\u0015\n\rfile_hcontent\u0018\u0004 \u0001(\u0006\u0012\u0011\n\tfile_size\u0018\u0005 \u0001(\r\u0012\u001c\n\u0014rtime32_last_updated\u0018\u0006 \u0001(\u0007\u0012\u0018\n\u0010is_depot_content\u0018\u0007 \u0001(\b\u0012f\n\u0010author_snapshots\u0018\b \u0003(\u000b2L.CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse.AuthorSnapshot\"µ\u0001\n!CMsgClientUCMPublishedFileUpdated\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\u0012\u0014\n\ftime_updated\u0018\u0003 \u0001(\r\u0012\u0010\n\bhcontent\u0018\u0004 \u0001(\u0006\u0012\u0011\n\tfile_size\u0018\u0005 \u0001(\u0007\u0012\u0018\n\u0010is_depot_content\u0018\u0006 \u0001(\b\u0012\u0010\n\brevision\u0018\u0007 \u0001(\r\"k\n$CMsgClientWorkshopItemChangesRequest\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011last_time_updated\u0018\u0002 \u0001(\r\u0012\u0018\n\u0010num_items_needed\u0018\u0003 \u0001(\r\"û\u0001\n%CMsgClientWorkshopItemChangesResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0013\n\u000bupdate_time\u0018\u0002 \u0001(\r\u0012O\n\u000eworkshop_items\u0018\u0005 \u0003(\u000b27.CMsgClientWorkshopItemChangesResponse.WorkshopItemInfo\u001aX\n\u0010WorkshopItemInfo\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u0014\n\ftime_updated\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bmanifest_id\u0018\u0003 \u0001(\u0006\"d\n'CMsgClientUCMSetUserPublishedFileAction\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006action\u0018\u0003 \u0001(\u0005\"E\n/CMsgClientUCMSetUserPublishedFileActionResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\"g\n0CMsgClientUCMEnumeratePublishedFilesByUserAction\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bstart_index\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006action\u0018\u0003 \u0001(\u0005\"\u0094\u0002\n8CMsgClientUCMEnumeratePublishedFilesByUserActionResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012b\n\u000fpublished_files\u0018\u0002 \u0003(\u000b2I.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId\u0012\u0015\n\rtotal_results\u0018\u0003 \u0001(\r\u001aI\n\u000fPublishedFileId\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u001b\n\u0010rtime_time_stamp\u0018\u0002 \u0001(\u0007:\u00010\"\u001e\n\u001cCMsgClientScreenshotsChangedB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientUCMAddScreenshot_descriptor = descriptor2;
        internal_static_CMsgClientUCMAddScreenshot_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Appid", "Filename", "Thumbname", "VrFilename", "Rtime32Created", "Width", "Height", "Permissions", "Caption", "ShortcutName", "Tag", "TaggedSteamid", "SpoilerTag", "TaggedPublishedfileid"});
        Descriptors.Descriptor descriptor3 = descriptor2.getNestedTypes().get(0);
        internal_static_CMsgClientUCMAddScreenshot_Tag_descriptor = descriptor3;
        internal_static_CMsgClientUCMAddScreenshot_Tag_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"TagName", "TagValue"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientUCMAddScreenshotResponse_descriptor = descriptor4;
        internal_static_CMsgClientUCMAddScreenshotResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Eresult", "Screenshotid", "Publishedfileid"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientUCMDeleteScreenshot_descriptor = descriptor5;
        internal_static_CMsgClientUCMDeleteScreenshot_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Screenshotid"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientUCMDeleteScreenshotResponse_descriptor = descriptor6;
        internal_static_CMsgClientUCMDeleteScreenshotResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientUCMPublishFile_descriptor = descriptor7;
        internal_static_CMsgClientUCMPublishFile_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"AppId", "FileName", "PreviewFileName", "ConsumerAppId", "Title", "Description", "Tags", "WorkshopFile", "Visibility", "FileType", "Url", "VideoProvider", "VideoAccountName", "VideoIdentifier", "InProgress"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientUCMPublishFileResponse_descriptor = descriptor8;
        internal_static_CMsgClientUCMPublishFileResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Eresult", "PublishedFileId", "NeedsWorkshopLegalAgreementAcceptance"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientUCMUpdatePublishedFile_descriptor = descriptor9;
        internal_static_CMsgClientUCMUpdatePublishedFile_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"AppId", "PublishedFileId", "FileName", "PreviewFileName", "Title", "Description", "Tags", "Visibility", "UpdateFile", "UpdatePreviewFile", "UpdateTitle", "UpdateDescription", "UpdateTags", "UpdateVisibility", "ChangeDescription", "UpdateUrl", "Url", "UpdateContentManifest", "ContentManifest", "Metadata", "UpdateMetadata", "Language", "RemovedKvtags", "Kvtags", "Previews", "PreviewsToRemove", "ClearInProgress", "RemoveAllKvtags", "ContentDescriptorsToAdd", "ContentDescriptorsToRemove", "AllowAdminTags", "ExternalAssetId", "GameBranchMin", "GameBranchMax"});
        Descriptors.Descriptor descriptor10 = descriptor9.getNestedTypes().get(0);
        internal_static_CMsgClientUCMUpdatePublishedFile_KeyValueTag_descriptor = descriptor10;
        internal_static_CMsgClientUCMUpdatePublishedFile_KeyValueTag_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor11 = descriptor9.getNestedTypes().get(1);
        internal_static_CMsgClientUCMUpdatePublishedFile_AdditionalPreview_descriptor = descriptor11;
        internal_static_CMsgClientUCMUpdatePublishedFile_AdditionalPreview_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"OriginalFileName", "InternalFileName", "Videoid", "PreviewType", "UpdateIndex"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientUCMUpdatePublishedFileResponse_descriptor = descriptor12;
        internal_static_CMsgClientUCMUpdatePublishedFileResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Eresult", "NeedsWorkshopLegalAgreementAcceptance"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgClientUCMDeletePublishedFile_descriptor = descriptor13;
        internal_static_CMsgClientUCMDeletePublishedFile_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"PublishedFileId", "AppId"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgClientUCMDeletePublishedFileResponse_descriptor = descriptor14;
        internal_static_CMsgClientUCMDeletePublishedFileResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates_descriptor = descriptor15;
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"AppId", "StartIndex", "StartTime", "DesiredRevision"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_descriptor = descriptor16;
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Eresult", "SubscribedFiles", "TotalResults"});
        Descriptors.Descriptor descriptor17 = descriptor16.getNestedTypes().get(0);
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_AuthorSnapshot_descriptor = descriptor17;
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_AuthorSnapshot_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Timestamp", "GameBranchMin", "GameBranchMax", "Manifestid"});
        Descriptors.Descriptor descriptor18 = descriptor16.getNestedTypes().get(1);
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_PublishedFileId_descriptor = descriptor18;
        internal_static_CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse_PublishedFileId_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"PublishedFileId", "Rtime32Subscribed", "Appid", "FileHcontent", "FileSize", "Rtime32LastUpdated", "IsDepotContent", "AuthorSnapshots"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgClientUCMPublishedFileUpdated_descriptor = descriptor19;
        internal_static_CMsgClientUCMPublishedFileUpdated_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"PublishedFileId", "AppId", "TimeUpdated", "Hcontent", "FileSize", "IsDepotContent", "Revision"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgClientWorkshopItemChangesRequest_descriptor = descriptor20;
        internal_static_CMsgClientWorkshopItemChangesRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"AppId", "LastTimeUpdated", "NumItemsNeeded"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(14);
        internal_static_CMsgClientWorkshopItemChangesResponse_descriptor = descriptor21;
        internal_static_CMsgClientWorkshopItemChangesResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Eresult", "UpdateTime", "WorkshopItems"});
        Descriptors.Descriptor descriptor22 = descriptor21.getNestedTypes().get(0);
        internal_static_CMsgClientWorkshopItemChangesResponse_WorkshopItemInfo_descriptor = descriptor22;
        internal_static_CMsgClientWorkshopItemChangesResponse_WorkshopItemInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"PublishedFileId", "TimeUpdated", "ManifestId"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(15);
        internal_static_CMsgClientUCMSetUserPublishedFileAction_descriptor = descriptor23;
        internal_static_CMsgClientUCMSetUserPublishedFileAction_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"PublishedFileId", "AppId", "Action"});
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(16);
        internal_static_CMsgClientUCMSetUserPublishedFileActionResponse_descriptor = descriptor24;
        internal_static_CMsgClientUCMSetUserPublishedFileActionResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(17);
        internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_descriptor = descriptor25;
        internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"AppId", "StartIndex", "Action"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(18);
        internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_descriptor = descriptor26;
        internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"Eresult", "PublishedFiles", "TotalResults"});
        Descriptors.Descriptor descriptor27 = descriptor26.getNestedTypes().get(0);
        internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_descriptor = descriptor27;
        internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"PublishedFileId", "RtimeTimeStamp"});
        Descriptors.Descriptor descriptor28 = getDescriptor().getMessageTypes().get(19);
        internal_static_CMsgClientScreenshotsChanged_descriptor = descriptor28;
        internal_static_CMsgClientScreenshotsChanged_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[0]);
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientUCMAddScreenshot extends GeneratedMessage implements CMsgClientUCMAddScreenshotOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CAPTION_FIELD_NUMBER = 8;
        private static final CMsgClientUCMAddScreenshot DEFAULT_INSTANCE;
        public static final int FILENAME_FIELD_NUMBER = 2;
        public static final int HEIGHT_FIELD_NUMBER = 6;
        private static final Parser<CMsgClientUCMAddScreenshot> PARSER;
        public static final int PERMISSIONS_FIELD_NUMBER = 7;
        public static final int RTIME32_CREATED_FIELD_NUMBER = 4;
        public static final int SHORTCUT_NAME_FIELD_NUMBER = 9;
        public static final int SPOILER_TAG_FIELD_NUMBER = 12;
        public static final int TAGGED_PUBLISHEDFILEID_FIELD_NUMBER = 13;
        public static final int TAGGED_STEAMID_FIELD_NUMBER = 11;
        public static final int TAG_FIELD_NUMBER = 10;
        public static final int THUMBNAME_FIELD_NUMBER = 3;
        public static final int VR_FILENAME_FIELD_NUMBER = 14;
        public static final int WIDTH_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private volatile Object caption_;
        private volatile Object filename_;
        private int height_;
        private byte memoizedIsInitialized;
        private int permissions_;
        private int rtime32Created_;
        private volatile Object shortcutName_;
        private boolean spoilerTag_;
        private List<Tag> tag_;
        private Internal.LongList taggedPublishedfileid_;
        private Internal.LongList taggedSteamid_;
        private volatile Object thumbname_;
        private volatile Object vrFilename_;
        private int width_;

        public interface TagOrBuilder extends MessageOrBuilder {
            String getTagName();

            ByteString getTagNameBytes();

            String getTagValue();

            ByteString getTagValueBytes();

            boolean hasTagName();

            boolean hasTagValue();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUCMAddScreenshot.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUCMAddScreenshot();
            PARSER = new AbstractParser<CMsgClientUCMAddScreenshot>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUCMAddScreenshot parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUCMAddScreenshot.newBuilder();
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

        private CMsgClientUCMAddScreenshot(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.filename_ = "";
            this.thumbname_ = "";
            this.vrFilename_ = "";
            this.rtime32Created_ = 0;
            this.width_ = 0;
            this.height_ = 0;
            this.permissions_ = 0;
            this.caption_ = "";
            this.shortcutName_ = "";
            this.taggedSteamid_ = GeneratedMessage.emptyLongList();
            this.spoilerTag_ = false;
            this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUCMAddScreenshot() {
            this.appid_ = 0;
            this.filename_ = "";
            this.thumbname_ = "";
            this.vrFilename_ = "";
            this.rtime32Created_ = 0;
            this.width_ = 0;
            this.height_ = 0;
            this.permissions_ = 0;
            this.caption_ = "";
            this.shortcutName_ = "";
            this.taggedSteamid_ = GeneratedMessage.emptyLongList();
            this.spoilerTag_ = false;
            this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
            this.filename_ = "";
            this.thumbname_ = "";
            this.vrFilename_ = "";
            this.caption_ = "";
            this.shortcutName_ = "";
            this.tag_ = Collections.emptyList();
            this.taggedSteamid_ = GeneratedMessage.emptyLongList();
            this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMAddScreenshot.class, Builder.class);
        }

        public static final class Tag extends GeneratedMessage implements TagOrBuilder {
            private static final Tag DEFAULT_INSTANCE;
            private static final Parser<Tag> PARSER;
            public static final int TAG_NAME_FIELD_NUMBER = 1;
            public static final int TAG_VALUE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private volatile Object tagName_;
            private volatile Object tagValue_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Tag.class.getName());
                DEFAULT_INSTANCE = new Tag();
                PARSER = new AbstractParser<Tag>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Tag.1
                    @Override // com.google.protobuf.Parser
                    public Tag parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Tag.newBuilder();
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

            private Tag(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.tagName_ = "";
                this.tagValue_ = "";
                this.memoizedIsInitialized = (byte) -1;
            }

            private Tag() {
                this.tagName_ = "";
                this.tagValue_ = "";
                this.memoizedIsInitialized = (byte) -1;
                this.tagName_ = "";
                this.tagValue_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_Tag_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_Tag_fieldAccessorTable.ensureFieldAccessorsInitialized(Tag.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
            public boolean hasTagName() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
            public String getTagName() {
                Object obj = this.tagName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.tagName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
            public ByteString getTagNameBytes() {
                Object obj = this.tagName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tagName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
            public boolean hasTagValue() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
            public String getTagValue() {
                Object obj = this.tagValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.tagValue_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
            public ByteString getTagValueBytes() {
                Object obj = this.tagValue_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tagValue_ = byteStringCopyFromUtf8;
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
                    GeneratedMessage.writeString(codedOutputStream, 1, this.tagName_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 2, this.tagValue_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.tagName_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeStringSize += GeneratedMessage.computeStringSize(2, this.tagValue_);
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
                if (!(obj instanceof Tag)) {
                    return super.equals(obj);
                }
                Tag tag = (Tag) obj;
                if (hasTagName() != tag.hasTagName()) {
                    return false;
                }
                if ((!hasTagName() || getTagName().equals(tag.getTagName())) && hasTagValue() == tag.hasTagValue()) {
                    return (!hasTagValue() || getTagValue().equals(tag.getTagValue())) && getUnknownFields().equals(tag.getUnknownFields());
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
                if (hasTagName()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getTagName().hashCode();
                }
                if (hasTagValue()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getTagValue().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Tag parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Tag parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Tag parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Tag parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Tag parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Tag parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Tag parseFrom(InputStream inputStream) throws IOException {
                return (Tag) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Tag parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Tag) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Tag parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Tag) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Tag parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Tag) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Tag parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Tag) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Tag parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Tag) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Tag tag) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(tag);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements TagOrBuilder {
                private int bitField0_;
                private Object tagName_;
                private Object tagValue_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_Tag_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_Tag_fieldAccessorTable.ensureFieldAccessorsInitialized(Tag.class, Builder.class);
                }

                private Builder() {
                    this.tagName_ = "";
                    this.tagValue_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.tagName_ = "";
                    this.tagValue_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.tagName_ = "";
                    this.tagValue_ = "";
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_Tag_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Tag getDefaultInstanceForType() {
                    return Tag.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Tag build() {
                    Tag tagBuildPartial = buildPartial();
                    if (tagBuildPartial.isInitialized()) {
                        return tagBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) tagBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Tag buildPartial() {
                    Tag tag = new Tag(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(tag);
                    }
                    onBuilt();
                    return tag;
                }

                private void buildPartial0(Tag tag) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        tag.tagName_ = this.tagName_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        tag.tagValue_ = this.tagValue_;
                        i |= 2;
                    }
                    tag.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Tag) {
                        return mergeFrom((Tag) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Tag tag) {
                    if (tag == Tag.getDefaultInstance()) {
                        return this;
                    }
                    if (tag.hasTagName()) {
                        this.tagName_ = tag.tagName_;
                        this.bitField0_ |= 1;
                        onChanged();
                    }
                    if (tag.hasTagValue()) {
                        this.tagValue_ = tag.tagValue_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    mergeUnknownFields(tag.getUnknownFields());
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
                                        this.tagName_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        this.tagValue_ = codedInputStream.readBytes();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
                public boolean hasTagName() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
                public String getTagName() {
                    Object obj = this.tagName_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.tagName_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
                public ByteString getTagNameBytes() {
                    Object obj = this.tagName_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.tagName_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setTagName(String str) {
                    str.getClass();
                    this.tagName_ = str;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearTagName() {
                    this.tagName_ = Tag.getDefaultInstance().getTagName();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder setTagNameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.tagName_ = byteString;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
                public boolean hasTagValue() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
                public String getTagValue() {
                    Object obj = this.tagValue_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.tagValue_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.TagOrBuilder
                public ByteString getTagValueBytes() {
                    Object obj = this.tagValue_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.tagValue_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setTagValue(String str) {
                    str.getClass();
                    this.tagValue_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearTagValue() {
                    this.tagValue_ = Tag.getDefaultInstance().getTagValue();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setTagValueBytes(ByteString byteString) {
                    byteString.getClass();
                    this.tagValue_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }
            }

            public static Tag getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Tag> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Tag> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Tag getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasFilename() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public String getFilename() {
            Object obj = this.filename_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.filename_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public ByteString getFilenameBytes() {
            Object obj = this.filename_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.filename_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasThumbname() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public String getThumbname() {
            Object obj = this.thumbname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.thumbname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public ByteString getThumbnameBytes() {
            Object obj = this.thumbname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.thumbname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasVrFilename() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public String getVrFilename() {
            Object obj = this.vrFilename_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.vrFilename_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public ByteString getVrFilenameBytes() {
            Object obj = this.vrFilename_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vrFilename_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasRtime32Created() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getRtime32Created() {
            return this.rtime32Created_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasWidth() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getWidth() {
            return this.width_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasHeight() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getHeight() {
            return this.height_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasPermissions() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getPermissions() {
            return this.permissions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasCaption() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public String getCaption() {
            Object obj = this.caption_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.caption_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public ByteString getCaptionBytes() {
            Object obj = this.caption_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.caption_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasShortcutName() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public String getShortcutName() {
            Object obj = this.shortcutName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.shortcutName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public ByteString getShortcutNameBytes() {
            Object obj = this.shortcutName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.shortcutName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public List<Tag> getTagList() {
            return this.tag_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public List<? extends TagOrBuilder> getTagOrBuilderList() {
            return this.tag_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getTagCount() {
            return this.tag_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public Tag getTag(int i) {
            return this.tag_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public TagOrBuilder getTagOrBuilder(int i) {
            return this.tag_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public List<Long> getTaggedSteamidList() {
            return this.taggedSteamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getTaggedSteamidCount() {
            return this.taggedSteamid_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public long getTaggedSteamid(int i) {
            return this.taggedSteamid_.getLong(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean hasSpoilerTag() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public boolean getSpoilerTag() {
            return this.spoilerTag_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public List<Long> getTaggedPublishedfileidList() {
            return this.taggedPublishedfileid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public int getTaggedPublishedfileidCount() {
            return this.taggedPublishedfileid_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
        public long getTaggedPublishedfileid(int i) {
            return this.taggedPublishedfileid_.getLong(i);
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.filename_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.thumbname_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed32(4, this.rtime32Created_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(5, this.width_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(6, this.height_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(7, this.permissions_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.caption_);
            }
            if ((this.bitField0_ & 512) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 9, this.shortcutName_);
            }
            for (int i = 0; i < this.tag_.size(); i++) {
                codedOutputStream.writeMessage(10, this.tag_.get(i));
            }
            for (int i2 = 0; i2 < this.taggedSteamid_.size(); i2++) {
                codedOutputStream.writeFixed64(11, this.taggedSteamid_.getLong(i2));
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeBool(12, this.spoilerTag_);
            }
            for (int i3 = 0; i3 < this.taggedPublishedfileid_.size(); i3++) {
                codedOutputStream.writeUInt64(13, this.taggedPublishedfileid_.getLong(i3));
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 14, this.vrFilename_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.filename_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.thumbname_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed32Size(4, this.rtime32Created_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.width_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.height_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.permissions_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(8, this.caption_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(9, this.shortcutName_);
            }
            for (int i2 = 0; i2 < this.tag_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(10, this.tag_.get(i2));
            }
            int size = iComputeUInt32Size + (getTaggedSteamidList().size() * 8) + getTaggedSteamidList().size();
            if ((this.bitField0_ & 1024) != 0) {
                size += CodedOutputStream.computeBoolSize(12, this.spoilerTag_);
            }
            int iComputeUInt64SizeNoTag = 0;
            for (int i3 = 0; i3 < this.taggedPublishedfileid_.size(); i3++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(this.taggedPublishedfileid_.getLong(i3));
            }
            int size2 = size + iComputeUInt64SizeNoTag + getTaggedPublishedfileidList().size();
            if ((this.bitField0_ & 8) != 0) {
                size2 += GeneratedMessage.computeStringSize(14, this.vrFilename_);
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
            if (!(obj instanceof CMsgClientUCMAddScreenshot)) {
                return super.equals(obj);
            }
            CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshot = (CMsgClientUCMAddScreenshot) obj;
            if (hasAppid() != cMsgClientUCMAddScreenshot.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cMsgClientUCMAddScreenshot.getAppid()) || hasFilename() != cMsgClientUCMAddScreenshot.hasFilename()) {
                return false;
            }
            if ((hasFilename() && !getFilename().equals(cMsgClientUCMAddScreenshot.getFilename())) || hasThumbname() != cMsgClientUCMAddScreenshot.hasThumbname()) {
                return false;
            }
            if ((hasThumbname() && !getThumbname().equals(cMsgClientUCMAddScreenshot.getThumbname())) || hasVrFilename() != cMsgClientUCMAddScreenshot.hasVrFilename()) {
                return false;
            }
            if ((hasVrFilename() && !getVrFilename().equals(cMsgClientUCMAddScreenshot.getVrFilename())) || hasRtime32Created() != cMsgClientUCMAddScreenshot.hasRtime32Created()) {
                return false;
            }
            if ((hasRtime32Created() && getRtime32Created() != cMsgClientUCMAddScreenshot.getRtime32Created()) || hasWidth() != cMsgClientUCMAddScreenshot.hasWidth()) {
                return false;
            }
            if ((hasWidth() && getWidth() != cMsgClientUCMAddScreenshot.getWidth()) || hasHeight() != cMsgClientUCMAddScreenshot.hasHeight()) {
                return false;
            }
            if ((hasHeight() && getHeight() != cMsgClientUCMAddScreenshot.getHeight()) || hasPermissions() != cMsgClientUCMAddScreenshot.hasPermissions()) {
                return false;
            }
            if ((hasPermissions() && getPermissions() != cMsgClientUCMAddScreenshot.getPermissions()) || hasCaption() != cMsgClientUCMAddScreenshot.hasCaption()) {
                return false;
            }
            if ((hasCaption() && !getCaption().equals(cMsgClientUCMAddScreenshot.getCaption())) || hasShortcutName() != cMsgClientUCMAddScreenshot.hasShortcutName()) {
                return false;
            }
            if ((!hasShortcutName() || getShortcutName().equals(cMsgClientUCMAddScreenshot.getShortcutName())) && getTagList().equals(cMsgClientUCMAddScreenshot.getTagList()) && getTaggedSteamidList().equals(cMsgClientUCMAddScreenshot.getTaggedSteamidList()) && hasSpoilerTag() == cMsgClientUCMAddScreenshot.hasSpoilerTag()) {
                return (!hasSpoilerTag() || getSpoilerTag() == cMsgClientUCMAddScreenshot.getSpoilerTag()) && getTaggedPublishedfileidList().equals(cMsgClientUCMAddScreenshot.getTaggedPublishedfileidList()) && getUnknownFields().equals(cMsgClientUCMAddScreenshot.getUnknownFields());
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
            if (hasFilename()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFilename().hashCode();
            }
            if (hasThumbname()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getThumbname().hashCode();
            }
            if (hasVrFilename()) {
                iHashCode = (((iHashCode * 37) + 14) * 53) + getVrFilename().hashCode();
            }
            if (hasRtime32Created()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getRtime32Created();
            }
            if (hasWidth()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getWidth();
            }
            if (hasHeight()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getHeight();
            }
            if (hasPermissions()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getPermissions();
            }
            if (hasCaption()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getCaption().hashCode();
            }
            if (hasShortcutName()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getShortcutName().hashCode();
            }
            if (getTagCount() > 0) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getTagList().hashCode();
            }
            if (getTaggedSteamidCount() > 0) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getTaggedSteamidList().hashCode();
            }
            if (hasSpoilerTag()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + Internal.hashBoolean(getSpoilerTag());
            }
            if (getTaggedPublishedfileidCount() > 0) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getTaggedPublishedfileidList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUCMAddScreenshot parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMAddScreenshot) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMAddScreenshot) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshot parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMAddScreenshot) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMAddScreenshot parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMAddScreenshot) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUCMAddScreenshot) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUCMAddScreenshot parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMAddScreenshot) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshot) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUCMAddScreenshot);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUCMAddScreenshotOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object caption_;
            private Object filename_;
            private int height_;
            private int permissions_;
            private int rtime32Created_;
            private Object shortcutName_;
            private boolean spoilerTag_;
            private RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> tagBuilder_;
            private List<Tag> tag_;
            private Internal.LongList taggedPublishedfileid_;
            private Internal.LongList taggedSteamid_;
            private Object thumbname_;
            private Object vrFilename_;
            private int width_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMAddScreenshot.class, Builder.class);
            }

            private Builder() {
                this.filename_ = "";
                this.thumbname_ = "";
                this.vrFilename_ = "";
                this.caption_ = "";
                this.shortcutName_ = "";
                this.tag_ = Collections.emptyList();
                this.taggedSteamid_ = GeneratedMessage.emptyLongList();
                this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.filename_ = "";
                this.thumbname_ = "";
                this.vrFilename_ = "";
                this.caption_ = "";
                this.shortcutName_ = "";
                this.tag_ = Collections.emptyList();
                this.taggedSteamid_ = GeneratedMessage.emptyLongList();
                this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.filename_ = "";
                this.thumbname_ = "";
                this.vrFilename_ = "";
                this.rtime32Created_ = 0;
                this.width_ = 0;
                this.height_ = 0;
                this.permissions_ = 0;
                this.caption_ = "";
                this.shortcutName_ = "";
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.tag_ = Collections.emptyList();
                } else {
                    this.tag_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -1025;
                this.taggedSteamid_ = GeneratedMessage.emptyLongList();
                this.spoilerTag_ = false;
                this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshot_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUCMAddScreenshot getDefaultInstanceForType() {
                return CMsgClientUCMAddScreenshot.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMAddScreenshot build() {
                CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshotBuildPartial = buildPartial();
                if (cMsgClientUCMAddScreenshotBuildPartial.isInitialized()) {
                    return cMsgClientUCMAddScreenshotBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUCMAddScreenshotBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMAddScreenshot buildPartial() {
                CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshot = new CMsgClientUCMAddScreenshot(this);
                buildPartialRepeatedFields(cMsgClientUCMAddScreenshot);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUCMAddScreenshot);
                }
                onBuilt();
                return cMsgClientUCMAddScreenshot;
            }

            private void buildPartialRepeatedFields(CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshot) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1024) != 0) {
                        this.tag_ = Collections.unmodifiableList(this.tag_);
                        this.bitField0_ &= -1025;
                    }
                    cMsgClientUCMAddScreenshot.tag_ = this.tag_;
                    return;
                }
                cMsgClientUCMAddScreenshot.tag_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshot) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUCMAddScreenshot.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUCMAddScreenshot.filename_ = this.filename_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientUCMAddScreenshot.thumbname_ = this.thumbname_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientUCMAddScreenshot.vrFilename_ = this.vrFilename_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientUCMAddScreenshot.rtime32Created_ = this.rtime32Created_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientUCMAddScreenshot.width_ = this.width_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientUCMAddScreenshot.height_ = this.height_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientUCMAddScreenshot.permissions_ = this.permissions_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientUCMAddScreenshot.caption_ = this.caption_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientUCMAddScreenshot.shortcutName_ = this.shortcutName_;
                    i |= 512;
                }
                if ((i2 & 2048) != 0) {
                    this.taggedSteamid_.makeImmutable();
                    cMsgClientUCMAddScreenshot.taggedSteamid_ = this.taggedSteamid_;
                }
                if ((i2 & 4096) != 0) {
                    cMsgClientUCMAddScreenshot.spoilerTag_ = this.spoilerTag_;
                    i |= 1024;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    this.taggedPublishedfileid_.makeImmutable();
                    cMsgClientUCMAddScreenshot.taggedPublishedfileid_ = this.taggedPublishedfileid_;
                }
                cMsgClientUCMAddScreenshot.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUCMAddScreenshot) {
                    return mergeFrom((CMsgClientUCMAddScreenshot) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUCMAddScreenshot cMsgClientUCMAddScreenshot) {
                if (cMsgClientUCMAddScreenshot == CMsgClientUCMAddScreenshot.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUCMAddScreenshot.hasAppid()) {
                    setAppid(cMsgClientUCMAddScreenshot.getAppid());
                }
                if (cMsgClientUCMAddScreenshot.hasFilename()) {
                    this.filename_ = cMsgClientUCMAddScreenshot.filename_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgClientUCMAddScreenshot.hasThumbname()) {
                    this.thumbname_ = cMsgClientUCMAddScreenshot.thumbname_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cMsgClientUCMAddScreenshot.hasVrFilename()) {
                    this.vrFilename_ = cMsgClientUCMAddScreenshot.vrFilename_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cMsgClientUCMAddScreenshot.hasRtime32Created()) {
                    setRtime32Created(cMsgClientUCMAddScreenshot.getRtime32Created());
                }
                if (cMsgClientUCMAddScreenshot.hasWidth()) {
                    setWidth(cMsgClientUCMAddScreenshot.getWidth());
                }
                if (cMsgClientUCMAddScreenshot.hasHeight()) {
                    setHeight(cMsgClientUCMAddScreenshot.getHeight());
                }
                if (cMsgClientUCMAddScreenshot.hasPermissions()) {
                    setPermissions(cMsgClientUCMAddScreenshot.getPermissions());
                }
                if (cMsgClientUCMAddScreenshot.hasCaption()) {
                    this.caption_ = cMsgClientUCMAddScreenshot.caption_;
                    this.bitField0_ |= 256;
                    onChanged();
                }
                if (cMsgClientUCMAddScreenshot.hasShortcutName()) {
                    this.shortcutName_ = cMsgClientUCMAddScreenshot.shortcutName_;
                    this.bitField0_ |= 512;
                    onChanged();
                }
                if (this.tagBuilder_ == null) {
                    if (!cMsgClientUCMAddScreenshot.tag_.isEmpty()) {
                        if (this.tag_.isEmpty()) {
                            this.tag_ = cMsgClientUCMAddScreenshot.tag_;
                            this.bitField0_ &= -1025;
                        } else {
                            ensureTagIsMutable();
                            this.tag_.addAll(cMsgClientUCMAddScreenshot.tag_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientUCMAddScreenshot.tag_.isEmpty()) {
                    if (this.tagBuilder_.isEmpty()) {
                        this.tagBuilder_.dispose();
                        this.tagBuilder_ = null;
                        this.tag_ = cMsgClientUCMAddScreenshot.tag_;
                        this.bitField0_ &= -1025;
                        this.tagBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetTagFieldBuilder() : null;
                    } else {
                        this.tagBuilder_.addAllMessages(cMsgClientUCMAddScreenshot.tag_);
                    }
                }
                if (!cMsgClientUCMAddScreenshot.taggedSteamid_.isEmpty()) {
                    if (this.taggedSteamid_.isEmpty()) {
                        Internal.LongList longList = cMsgClientUCMAddScreenshot.taggedSteamid_;
                        this.taggedSteamid_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 2048;
                    } else {
                        ensureTaggedSteamidIsMutable();
                        this.taggedSteamid_.addAll(cMsgClientUCMAddScreenshot.taggedSteamid_);
                    }
                    onChanged();
                }
                if (cMsgClientUCMAddScreenshot.hasSpoilerTag()) {
                    setSpoilerTag(cMsgClientUCMAddScreenshot.getSpoilerTag());
                }
                if (!cMsgClientUCMAddScreenshot.taggedPublishedfileid_.isEmpty()) {
                    if (this.taggedPublishedfileid_.isEmpty()) {
                        Internal.LongList longList2 = cMsgClientUCMAddScreenshot.taggedPublishedfileid_;
                        this.taggedPublishedfileid_ = longList2;
                        longList2.makeImmutable();
                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    } else {
                        ensureTaggedPublishedfileidIsMutable();
                        this.taggedPublishedfileid_.addAll(cMsgClientUCMAddScreenshot.taggedPublishedfileid_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientUCMAddScreenshot.getUnknownFields());
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
                            int i = 4096;
                            switch (tag) {
                                case 0:
                                    z = true;
                                    break;
                                case 8:
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 18:
                                    this.filename_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.thumbname_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 37:
                                    this.rtime32Created_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 40:
                                    this.width_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case 48:
                                    this.height_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case 56:
                                    this.permissions_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.caption_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 74:
                                    this.shortcutName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 512;
                                    break;
                                case 82:
                                    Tag tag2 = (Tag) codedInputStream.readMessage(Tag.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureTagIsMutable();
                                        this.tag_.add(tag2);
                                    } else {
                                        repeatedFieldBuilder.addMessage(tag2);
                                    }
                                    break;
                                case 89:
                                    long fixed64 = codedInputStream.readFixed64();
                                    ensureTaggedSteamidIsMutable();
                                    this.taggedSteamid_.addLong(fixed64);
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER /* 90 */:
                                    int rawVarint32 = codedInputStream.readRawVarint32();
                                    int iPushLimit = codedInputStream.pushLimit(rawVarint32);
                                    if (rawVarint32 <= 4096) {
                                        i = rawVarint32;
                                    }
                                    ensureTaggedSteamidIsMutable(i / 8);
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.taggedSteamid_.addLong(codedInputStream.readFixed64());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case 96:
                                    this.spoilerTag_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4096;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    long uInt64 = codedInputStream.readUInt64();
                                    ensureTaggedPublishedfileidIsMutable();
                                    this.taggedPublishedfileid_.addLong(uInt64);
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER /* 106 */:
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureTaggedPublishedfileidIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.taggedPublishedfileid_.addLong(codedInputStream.readUInt64());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                    break;
                                case 114:
                                    this.vrFilename_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasFilename() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public String getFilename() {
                Object obj = this.filename_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.filename_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public ByteString getFilenameBytes() {
                Object obj = this.filename_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.filename_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFilename(String str) {
                str.getClass();
                this.filename_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFilename() {
                this.filename_ = CMsgClientUCMAddScreenshot.getDefaultInstance().getFilename();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setFilenameBytes(ByteString byteString) {
                byteString.getClass();
                this.filename_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasThumbname() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public String getThumbname() {
                Object obj = this.thumbname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.thumbname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public ByteString getThumbnameBytes() {
                Object obj = this.thumbname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.thumbname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setThumbname(String str) {
                str.getClass();
                this.thumbname_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearThumbname() {
                this.thumbname_ = CMsgClientUCMAddScreenshot.getDefaultInstance().getThumbname();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setThumbnameBytes(ByteString byteString) {
                byteString.getClass();
                this.thumbname_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasVrFilename() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public String getVrFilename() {
                Object obj = this.vrFilename_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.vrFilename_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public ByteString getVrFilenameBytes() {
                Object obj = this.vrFilename_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.vrFilename_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setVrFilename(String str) {
                str.getClass();
                this.vrFilename_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearVrFilename() {
                this.vrFilename_ = CMsgClientUCMAddScreenshot.getDefaultInstance().getVrFilename();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setVrFilenameBytes(ByteString byteString) {
                byteString.getClass();
                this.vrFilename_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasRtime32Created() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getRtime32Created() {
                return this.rtime32Created_;
            }

            public Builder setRtime32Created(int i) {
                this.rtime32Created_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRtime32Created() {
                this.bitField0_ &= -17;
                this.rtime32Created_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasWidth() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getWidth() {
                return this.width_;
            }

            public Builder setWidth(int i) {
                this.width_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearWidth() {
                this.bitField0_ &= -33;
                this.width_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasHeight() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getHeight() {
                return this.height_;
            }

            public Builder setHeight(int i) {
                this.height_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearHeight() {
                this.bitField0_ &= -65;
                this.height_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasPermissions() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getPermissions() {
                return this.permissions_;
            }

            public Builder setPermissions(int i) {
                this.permissions_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearPermissions() {
                this.bitField0_ &= -129;
                this.permissions_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasCaption() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public String getCaption() {
                Object obj = this.caption_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.caption_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public ByteString getCaptionBytes() {
                Object obj = this.caption_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.caption_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCaption(String str) {
                str.getClass();
                this.caption_ = str;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearCaption() {
                this.caption_ = CMsgClientUCMAddScreenshot.getDefaultInstance().getCaption();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public Builder setCaptionBytes(ByteString byteString) {
                byteString.getClass();
                this.caption_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasShortcutName() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public String getShortcutName() {
                Object obj = this.shortcutName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.shortcutName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public ByteString getShortcutNameBytes() {
                Object obj = this.shortcutName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.shortcutName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setShortcutName(String str) {
                str.getClass();
                this.shortcutName_ = str;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearShortcutName() {
                this.shortcutName_ = CMsgClientUCMAddScreenshot.getDefaultInstance().getShortcutName();
                this.bitField0_ &= -513;
                onChanged();
                return this;
            }

            public Builder setShortcutNameBytes(ByteString byteString) {
                byteString.getClass();
                this.shortcutName_ = byteString;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            private void ensureTagIsMutable() {
                if ((this.bitField0_ & 1024) == 0) {
                    this.tag_ = new ArrayList(this.tag_);
                    this.bitField0_ |= 1024;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public List<Tag> getTagList() {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.tag_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getTagCount() {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tag_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public Tag getTag(int i) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tag_.get(i);
                }
                return (Tag) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setTag(int i, Tag tag) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    tag.getClass();
                    ensureTagIsMutable();
                    this.tag_.set(i, tag);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, tag);
                }
                return this;
            }

            public Builder setTag(int i, Tag.Builder builder) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTagIsMutable();
                    this.tag_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addTag(Tag tag) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    tag.getClass();
                    ensureTagIsMutable();
                    this.tag_.add(tag);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(tag);
                }
                return this;
            }

            public Builder addTag(int i, Tag tag) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    tag.getClass();
                    ensureTagIsMutable();
                    this.tag_.add(i, tag);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, tag);
                }
                return this;
            }

            public Builder addTag(Tag.Builder builder) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTagIsMutable();
                    this.tag_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addTag(int i, Tag.Builder builder) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTagIsMutable();
                    this.tag_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllTag(Iterable<? extends Tag> iterable) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTagIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.tag_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearTag() {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.tag_ = Collections.emptyList();
                    this.bitField0_ &= -1025;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeTag(int i) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTagIsMutable();
                    this.tag_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Tag.Builder getTagBuilder(int i) {
                return (Tag.Builder) internalGetTagFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public TagOrBuilder getTagOrBuilder(int i) {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tag_.get(i);
                }
                return (TagOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public List<? extends TagOrBuilder> getTagOrBuilderList() {
                RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> repeatedFieldBuilder = this.tagBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.tag_);
            }

            public Tag.Builder addTagBuilder() {
                return (Tag.Builder) internalGetTagFieldBuilder().addBuilder(Tag.getDefaultInstance());
            }

            public Tag.Builder addTagBuilder(int i) {
                return (Tag.Builder) internalGetTagFieldBuilder().addBuilder(i, Tag.getDefaultInstance());
            }

            public List<Tag.Builder> getTagBuilderList() {
                return internalGetTagFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Tag, Tag.Builder, TagOrBuilder> internalGetTagFieldBuilder() {
                if (this.tagBuilder_ == null) {
                    this.tagBuilder_ = new RepeatedFieldBuilder<>(this.tag_, (this.bitField0_ & 1024) != 0, getParentForChildren(), isClean());
                    this.tag_ = null;
                }
                return this.tagBuilder_;
            }

            private void ensureTaggedSteamidIsMutable() {
                if (!this.taggedSteamid_.isModifiable()) {
                    this.taggedSteamid_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.taggedSteamid_);
                }
                this.bitField0_ |= 2048;
            }

            private void ensureTaggedSteamidIsMutable(int i) {
                if (!this.taggedSteamid_.isModifiable()) {
                    this.taggedSteamid_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.taggedSteamid_, i);
                }
                this.bitField0_ |= 2048;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public List<Long> getTaggedSteamidList() {
                this.taggedSteamid_.makeImmutable();
                return this.taggedSteamid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getTaggedSteamidCount() {
                return this.taggedSteamid_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public long getTaggedSteamid(int i) {
                return this.taggedSteamid_.getLong(i);
            }

            public Builder setTaggedSteamid(int i, long j) {
                ensureTaggedSteamidIsMutable();
                this.taggedSteamid_.setLong(i, j);
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder addTaggedSteamid(long j) {
                ensureTaggedSteamidIsMutable();
                this.taggedSteamid_.addLong(j);
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder addAllTaggedSteamid(Iterable<? extends Long> iterable) {
                ensureTaggedSteamidIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.taggedSteamid_);
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearTaggedSteamid() {
                this.taggedSteamid_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -2049;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean hasSpoilerTag() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public boolean getSpoilerTag() {
                return this.spoilerTag_;
            }

            public Builder setSpoilerTag(boolean z) {
                this.spoilerTag_ = z;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearSpoilerTag() {
                this.bitField0_ &= -4097;
                this.spoilerTag_ = false;
                onChanged();
                return this;
            }

            private void ensureTaggedPublishedfileidIsMutable() {
                if (!this.taggedPublishedfileid_.isModifiable()) {
                    this.taggedPublishedfileid_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.taggedPublishedfileid_);
                }
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public List<Long> getTaggedPublishedfileidList() {
                this.taggedPublishedfileid_.makeImmutable();
                return this.taggedPublishedfileid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public int getTaggedPublishedfileidCount() {
                return this.taggedPublishedfileid_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotOrBuilder
            public long getTaggedPublishedfileid(int i) {
                return this.taggedPublishedfileid_.getLong(i);
            }

            public Builder setTaggedPublishedfileid(int i, long j) {
                ensureTaggedPublishedfileidIsMutable();
                this.taggedPublishedfileid_.setLong(i, j);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder addTaggedPublishedfileid(long j) {
                ensureTaggedPublishedfileidIsMutable();
                this.taggedPublishedfileid_.addLong(j);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder addAllTaggedPublishedfileid(Iterable<? extends Long> iterable) {
                ensureTaggedPublishedfileidIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.taggedPublishedfileid_);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearTaggedPublishedfileid() {
                this.taggedPublishedfileid_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -8193;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUCMAddScreenshot getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUCMAddScreenshot> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUCMAddScreenshot> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUCMAddScreenshot getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUCMAddScreenshotResponse extends GeneratedMessage implements CMsgClientUCMAddScreenshotResponseOrBuilder {
        private static final CMsgClientUCMAddScreenshotResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientUCMAddScreenshotResponse> PARSER;
        public static final int PUBLISHEDFILEID_FIELD_NUMBER = 3;
        public static final int SCREENSHOTID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private long publishedfileid_;
        private long screenshotid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUCMAddScreenshotResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUCMAddScreenshotResponse();
            PARSER = new AbstractParser<CMsgClientUCMAddScreenshotResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUCMAddScreenshotResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUCMAddScreenshotResponse.newBuilder();
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

        private CMsgClientUCMAddScreenshotResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.screenshotid_ = -1L;
            this.publishedfileid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUCMAddScreenshotResponse() {
            this.publishedfileid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.screenshotid_ = -1L;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshotResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshotResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMAddScreenshotResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
        public boolean hasScreenshotid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
        public long getScreenshotid() {
            return this.screenshotid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
        public boolean hasPublishedfileid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
        public long getPublishedfileid() {
            return this.publishedfileid_;
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
                codedOutputStream.writeFixed64(2, this.screenshotid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.publishedfileid_);
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
                iComputeInt32Size += CodedOutputStream.computeFixed64Size(2, this.screenshotid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt64Size(3, this.publishedfileid_);
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
            if (!(obj instanceof CMsgClientUCMAddScreenshotResponse)) {
                return super.equals(obj);
            }
            CMsgClientUCMAddScreenshotResponse cMsgClientUCMAddScreenshotResponse = (CMsgClientUCMAddScreenshotResponse) obj;
            if (hasEresult() != cMsgClientUCMAddScreenshotResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientUCMAddScreenshotResponse.getEresult()) || hasScreenshotid() != cMsgClientUCMAddScreenshotResponse.hasScreenshotid()) {
                return false;
            }
            if ((!hasScreenshotid() || getScreenshotid() == cMsgClientUCMAddScreenshotResponse.getScreenshotid()) && hasPublishedfileid() == cMsgClientUCMAddScreenshotResponse.hasPublishedfileid()) {
                return (!hasPublishedfileid() || getPublishedfileid() == cMsgClientUCMAddScreenshotResponse.getPublishedfileid()) && getUnknownFields().equals(cMsgClientUCMAddScreenshotResponse.getUnknownFields());
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
            if (hasScreenshotid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getScreenshotid());
            }
            if (hasPublishedfileid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getPublishedfileid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMAddScreenshotResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMAddScreenshotResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshotResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMAddScreenshotResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMAddScreenshotResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMAddScreenshotResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUCMAddScreenshotResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUCMAddScreenshotResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMAddScreenshotResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUCMAddScreenshotResponse cMsgClientUCMAddScreenshotResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUCMAddScreenshotResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUCMAddScreenshotResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private long publishedfileid_;
            private long screenshotid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshotResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshotResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMAddScreenshotResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.screenshotid_ = -1L;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.screenshotid_ = -1L;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.screenshotid_ = -1L;
                this.publishedfileid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMAddScreenshotResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUCMAddScreenshotResponse getDefaultInstanceForType() {
                return CMsgClientUCMAddScreenshotResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMAddScreenshotResponse build() {
                CMsgClientUCMAddScreenshotResponse cMsgClientUCMAddScreenshotResponseBuildPartial = buildPartial();
                if (cMsgClientUCMAddScreenshotResponseBuildPartial.isInitialized()) {
                    return cMsgClientUCMAddScreenshotResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUCMAddScreenshotResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMAddScreenshotResponse buildPartial() {
                CMsgClientUCMAddScreenshotResponse cMsgClientUCMAddScreenshotResponse = new CMsgClientUCMAddScreenshotResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUCMAddScreenshotResponse);
                }
                onBuilt();
                return cMsgClientUCMAddScreenshotResponse;
            }

            private void buildPartial0(CMsgClientUCMAddScreenshotResponse cMsgClientUCMAddScreenshotResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUCMAddScreenshotResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUCMAddScreenshotResponse.screenshotid_ = this.screenshotid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientUCMAddScreenshotResponse.publishedfileid_ = this.publishedfileid_;
                    i |= 4;
                }
                cMsgClientUCMAddScreenshotResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUCMAddScreenshotResponse) {
                    return mergeFrom((CMsgClientUCMAddScreenshotResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUCMAddScreenshotResponse cMsgClientUCMAddScreenshotResponse) {
                if (cMsgClientUCMAddScreenshotResponse == CMsgClientUCMAddScreenshotResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUCMAddScreenshotResponse.hasEresult()) {
                    setEresult(cMsgClientUCMAddScreenshotResponse.getEresult());
                }
                if (cMsgClientUCMAddScreenshotResponse.hasScreenshotid()) {
                    setScreenshotid(cMsgClientUCMAddScreenshotResponse.getScreenshotid());
                }
                if (cMsgClientUCMAddScreenshotResponse.hasPublishedfileid()) {
                    setPublishedfileid(cMsgClientUCMAddScreenshotResponse.getPublishedfileid());
                }
                mergeUnknownFields(cMsgClientUCMAddScreenshotResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.screenshotid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.publishedfileid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
            public boolean hasScreenshotid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
            public long getScreenshotid() {
                return this.screenshotid_;
            }

            public Builder setScreenshotid(long j) {
                this.screenshotid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearScreenshotid() {
                this.bitField0_ &= -3;
                this.screenshotid_ = -1L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
            public boolean hasPublishedfileid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponseOrBuilder
            public long getPublishedfileid() {
                return this.publishedfileid_;
            }

            public Builder setPublishedfileid(long j) {
                this.publishedfileid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPublishedfileid() {
                this.bitField0_ &= -5;
                this.publishedfileid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUCMAddScreenshotResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUCMAddScreenshotResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUCMAddScreenshotResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUCMAddScreenshotResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUCMEnumeratePublishedFilesByUserAction extends GeneratedMessage implements CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder {
        public static final int ACTION_FIELD_NUMBER = 3;
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientUCMEnumeratePublishedFilesByUserAction DEFAULT_INSTANCE;
        private static final Parser<CMsgClientUCMEnumeratePublishedFilesByUserAction> PARSER;
        public static final int START_INDEX_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int action_;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int startIndex_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUCMEnumeratePublishedFilesByUserAction.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUCMEnumeratePublishedFilesByUserAction();
            PARSER = new AbstractParser<CMsgClientUCMEnumeratePublishedFilesByUserAction>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserAction.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUCMEnumeratePublishedFilesByUserAction parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUCMEnumeratePublishedFilesByUserAction.newBuilder();
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

        private CMsgClientUCMEnumeratePublishedFilesByUserAction(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.startIndex_ = 0;
            this.action_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUCMEnumeratePublishedFilesByUserAction() {
            this.appId_ = 0;
            this.startIndex_ = 0;
            this.action_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMEnumeratePublishedFilesByUserAction.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
        public boolean hasStartIndex() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
        public int getStartIndex() {
            return this.startIndex_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
        public boolean hasAction() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
        public int getAction() {
            return this.action_;
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
                codedOutputStream.writeUInt32(2, this.startIndex_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.action_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.startIndex_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.action_);
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
            if (!(obj instanceof CMsgClientUCMEnumeratePublishedFilesByUserAction)) {
                return super.equals(obj);
            }
            CMsgClientUCMEnumeratePublishedFilesByUserAction cMsgClientUCMEnumeratePublishedFilesByUserAction = (CMsgClientUCMEnumeratePublishedFilesByUserAction) obj;
            if (hasAppId() != cMsgClientUCMEnumeratePublishedFilesByUserAction.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientUCMEnumeratePublishedFilesByUserAction.getAppId()) || hasStartIndex() != cMsgClientUCMEnumeratePublishedFilesByUserAction.hasStartIndex()) {
                return false;
            }
            if ((!hasStartIndex() || getStartIndex() == cMsgClientUCMEnumeratePublishedFilesByUserAction.getStartIndex()) && hasAction() == cMsgClientUCMEnumeratePublishedFilesByUserAction.hasAction()) {
                return (!hasAction() || getAction() == cMsgClientUCMEnumeratePublishedFilesByUserAction.getAction()) && getUnknownFields().equals(cMsgClientUCMEnumeratePublishedFilesByUserAction.getUnknownFields());
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
            if (hasStartIndex()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getStartIndex();
            }
            if (hasAction()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAction();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserAction) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserAction) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserAction) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserAction) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserAction) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserAction) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUCMEnumeratePublishedFilesByUserAction cMsgClientUCMEnumeratePublishedFilesByUserAction) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUCMEnumeratePublishedFilesByUserAction);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder {
            private int action_;
            private int appId_;
            private int bitField0_;
            private int startIndex_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMEnumeratePublishedFilesByUserAction.class, Builder.class);
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
                this.startIndex_ = 0;
                this.action_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserAction_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUCMEnumeratePublishedFilesByUserAction getDefaultInstanceForType() {
                return CMsgClientUCMEnumeratePublishedFilesByUserAction.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMEnumeratePublishedFilesByUserAction build() {
                CMsgClientUCMEnumeratePublishedFilesByUserAction cMsgClientUCMEnumeratePublishedFilesByUserActionBuildPartial = buildPartial();
                if (cMsgClientUCMEnumeratePublishedFilesByUserActionBuildPartial.isInitialized()) {
                    return cMsgClientUCMEnumeratePublishedFilesByUserActionBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUCMEnumeratePublishedFilesByUserActionBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMEnumeratePublishedFilesByUserAction buildPartial() {
                CMsgClientUCMEnumeratePublishedFilesByUserAction cMsgClientUCMEnumeratePublishedFilesByUserAction = new CMsgClientUCMEnumeratePublishedFilesByUserAction(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUCMEnumeratePublishedFilesByUserAction);
                }
                onBuilt();
                return cMsgClientUCMEnumeratePublishedFilesByUserAction;
            }

            private void buildPartial0(CMsgClientUCMEnumeratePublishedFilesByUserAction cMsgClientUCMEnumeratePublishedFilesByUserAction) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUCMEnumeratePublishedFilesByUserAction.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUCMEnumeratePublishedFilesByUserAction.startIndex_ = this.startIndex_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientUCMEnumeratePublishedFilesByUserAction.action_ = this.action_;
                    i |= 4;
                }
                cMsgClientUCMEnumeratePublishedFilesByUserAction.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUCMEnumeratePublishedFilesByUserAction) {
                    return mergeFrom((CMsgClientUCMEnumeratePublishedFilesByUserAction) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUCMEnumeratePublishedFilesByUserAction cMsgClientUCMEnumeratePublishedFilesByUserAction) {
                if (cMsgClientUCMEnumeratePublishedFilesByUserAction == CMsgClientUCMEnumeratePublishedFilesByUserAction.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUCMEnumeratePublishedFilesByUserAction.hasAppId()) {
                    setAppId(cMsgClientUCMEnumeratePublishedFilesByUserAction.getAppId());
                }
                if (cMsgClientUCMEnumeratePublishedFilesByUserAction.hasStartIndex()) {
                    setStartIndex(cMsgClientUCMEnumeratePublishedFilesByUserAction.getStartIndex());
                }
                if (cMsgClientUCMEnumeratePublishedFilesByUserAction.hasAction()) {
                    setAction(cMsgClientUCMEnumeratePublishedFilesByUserAction.getAction());
                }
                mergeUnknownFields(cMsgClientUCMEnumeratePublishedFilesByUserAction.getUnknownFields());
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
                                    this.startIndex_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.action_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
            public boolean hasStartIndex() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
            public int getStartIndex() {
                return this.startIndex_;
            }

            public Builder setStartIndex(int i) {
                this.startIndex_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearStartIndex() {
                this.bitField0_ &= -3;
                this.startIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
            public boolean hasAction() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionOrBuilder
            public int getAction() {
                return this.action_;
            }

            public Builder setAction(int i) {
                this.action_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearAction() {
                this.bitField0_ &= -5;
                this.action_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserAction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUCMEnumeratePublishedFilesByUserAction> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUCMEnumeratePublishedFilesByUserAction> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUCMEnumeratePublishedFilesByUserAction getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUCMEnumeratePublishedFilesByUserActionResponse extends GeneratedMessage implements CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder {
        private static final CMsgClientUCMEnumeratePublishedFilesByUserActionResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientUCMEnumeratePublishedFilesByUserActionResponse> PARSER;
        public static final int PUBLISHED_FILES_FIELD_NUMBER = 2;
        public static final int TOTAL_RESULTS_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private List<PublishedFileId> publishedFiles_;
        private int totalResults_;

        public interface PublishedFileIdOrBuilder extends MessageOrBuilder {
            long getPublishedFileId();

            int getRtimeTimeStamp();

            boolean hasPublishedFileId();

            boolean hasRtimeTimeStamp();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUCMEnumeratePublishedFilesByUserActionResponse();
            PARSER = new AbstractParser<CMsgClientUCMEnumeratePublishedFilesByUserActionResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.newBuilder();
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

        private CMsgClientUCMEnumeratePublishedFilesByUserActionResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.totalResults_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUCMEnumeratePublishedFilesByUserActionResponse() {
            this.totalResults_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.publishedFiles_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.class, Builder.class);
        }

        public static final class PublishedFileId extends GeneratedMessage implements PublishedFileIdOrBuilder {
            private static final PublishedFileId DEFAULT_INSTANCE;
            private static final Parser<PublishedFileId> PARSER;
            public static final int PUBLISHED_FILE_ID_FIELD_NUMBER = 1;
            public static final int RTIME_TIME_STAMP_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private long publishedFileId_;
            private int rtimeTimeStamp_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", PublishedFileId.class.getName());
                DEFAULT_INSTANCE = new PublishedFileId();
                PARSER = new AbstractParser<PublishedFileId>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId.1
                    @Override // com.google.protobuf.Parser
                    public PublishedFileId parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = PublishedFileId.newBuilder();
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

            private PublishedFileId(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.publishedFileId_ = 0L;
                this.rtimeTimeStamp_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private PublishedFileId() {
                this.publishedFileId_ = 0L;
                this.rtimeTimeStamp_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_fieldAccessorTable.ensureFieldAccessorsInitialized(PublishedFileId.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
            public boolean hasPublishedFileId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
            public long getPublishedFileId() {
                return this.publishedFileId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
            public boolean hasRtimeTimeStamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
            public int getRtimeTimeStamp() {
                return this.rtimeTimeStamp_;
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
                    codedOutputStream.writeFixed64(1, this.publishedFileId_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeFixed32(2, this.rtimeTimeStamp_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.publishedFileId_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed32Size(2, this.rtimeTimeStamp_);
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
                if (!(obj instanceof PublishedFileId)) {
                    return super.equals(obj);
                }
                PublishedFileId publishedFileId = (PublishedFileId) obj;
                if (hasPublishedFileId() != publishedFileId.hasPublishedFileId()) {
                    return false;
                }
                if ((!hasPublishedFileId() || getPublishedFileId() == publishedFileId.getPublishedFileId()) && hasRtimeTimeStamp() == publishedFileId.hasRtimeTimeStamp()) {
                    return (!hasRtimeTimeStamp() || getRtimeTimeStamp() == publishedFileId.getRtimeTimeStamp()) && getUnknownFields().equals(publishedFileId.getUnknownFields());
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
                if (hasPublishedFileId()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getPublishedFileId());
                }
                if (hasRtimeTimeStamp()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getRtimeTimeStamp();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PublishedFileId parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PublishedFileId parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PublishedFileId parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PublishedFileId parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PublishedFileId parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PublishedFileId parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PublishedFileId parseFrom(InputStream inputStream) throws IOException {
                return (PublishedFileId) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static PublishedFileId parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PublishedFileId) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PublishedFileId parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PublishedFileId) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PublishedFileId parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PublishedFileId) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PublishedFileId parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PublishedFileId) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static PublishedFileId parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PublishedFileId) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PublishedFileId publishedFileId) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(publishedFileId);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PublishedFileIdOrBuilder {
                private int bitField0_;
                private long publishedFileId_;
                private int rtimeTimeStamp_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_fieldAccessorTable.ensureFieldAccessorsInitialized(PublishedFileId.class, Builder.class);
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
                    this.publishedFileId_ = 0L;
                    this.rtimeTimeStamp_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_PublishedFileId_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public PublishedFileId getDefaultInstanceForType() {
                    return PublishedFileId.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PublishedFileId build() {
                    PublishedFileId publishedFileIdBuildPartial = buildPartial();
                    if (publishedFileIdBuildPartial.isInitialized()) {
                        return publishedFileIdBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) publishedFileIdBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PublishedFileId buildPartial() {
                    PublishedFileId publishedFileId = new PublishedFileId(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(publishedFileId);
                    }
                    onBuilt();
                    return publishedFileId;
                }

                private void buildPartial0(PublishedFileId publishedFileId) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        publishedFileId.publishedFileId_ = this.publishedFileId_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        publishedFileId.rtimeTimeStamp_ = this.rtimeTimeStamp_;
                        i |= 2;
                    }
                    publishedFileId.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof PublishedFileId) {
                        return mergeFrom((PublishedFileId) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PublishedFileId publishedFileId) {
                    if (publishedFileId == PublishedFileId.getDefaultInstance()) {
                        return this;
                    }
                    if (publishedFileId.hasPublishedFileId()) {
                        setPublishedFileId(publishedFileId.getPublishedFileId());
                    }
                    if (publishedFileId.hasRtimeTimeStamp()) {
                        setRtimeTimeStamp(publishedFileId.getRtimeTimeStamp());
                    }
                    mergeUnknownFields(publishedFileId.getUnknownFields());
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
                                        this.publishedFileId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 21) {
                                        this.rtimeTimeStamp_ = codedInputStream.readFixed32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
                public boolean hasPublishedFileId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
                public long getPublishedFileId() {
                    return this.publishedFileId_;
                }

                public Builder setPublishedFileId(long j) {
                    this.publishedFileId_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearPublishedFileId() {
                    this.bitField0_ &= -2;
                    this.publishedFileId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
                public boolean hasRtimeTimeStamp() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileIdOrBuilder
                public int getRtimeTimeStamp() {
                    return this.rtimeTimeStamp_;
                }

                public Builder setRtimeTimeStamp(int i) {
                    this.rtimeTimeStamp_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearRtimeTimeStamp() {
                    this.bitField0_ &= -3;
                    this.rtimeTimeStamp_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static PublishedFileId getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PublishedFileId> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<PublishedFileId> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PublishedFileId getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public List<PublishedFileId> getPublishedFilesList() {
            return this.publishedFiles_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public List<? extends PublishedFileIdOrBuilder> getPublishedFilesOrBuilderList() {
            return this.publishedFiles_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public int getPublishedFilesCount() {
            return this.publishedFiles_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public PublishedFileId getPublishedFiles(int i) {
            return this.publishedFiles_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public PublishedFileIdOrBuilder getPublishedFilesOrBuilder(int i) {
            return this.publishedFiles_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public boolean hasTotalResults() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
        public int getTotalResults() {
            return this.totalResults_;
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
            for (int i = 0; i < this.publishedFiles_.size(); i++) {
                codedOutputStream.writeMessage(2, this.publishedFiles_.get(i));
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(3, this.totalResults_);
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
            for (int i2 = 0; i2 < this.publishedFiles_.size(); i2++) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.publishedFiles_.get(i2));
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(3, this.totalResults_);
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
            if (!(obj instanceof CMsgClientUCMEnumeratePublishedFilesByUserActionResponse)) {
                return super.equals(obj);
            }
            CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponse = (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) obj;
            if (hasEresult() != cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.hasEresult()) {
                return false;
            }
            if ((!hasEresult() || getEresult() == cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getEresult()) && getPublishedFilesList().equals(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getPublishedFilesList()) && hasTotalResults() == cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.hasTotalResults()) {
                return (!hasTotalResults() || getTotalResults() == cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getTotalResults()) && getUnknownFields().equals(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getUnknownFields());
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
            if (getPublishedFilesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPublishedFilesList().hashCode();
            }
            if (hasTotalResults()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTotalResults();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> publishedFilesBuilder_;
            private List<PublishedFileId> publishedFiles_;
            private int totalResults_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.publishedFiles_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.publishedFiles_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.publishedFiles_ = Collections.emptyList();
                } else {
                    this.publishedFiles_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                this.totalResults_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUcm.internal_static_CMsgClientUCMEnumeratePublishedFilesByUserActionResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUCMEnumeratePublishedFilesByUserActionResponse getDefaultInstanceForType() {
                return CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMEnumeratePublishedFilesByUserActionResponse build() {
                CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponseBuildPartial = buildPartial();
                if (cMsgClientUCMEnumeratePublishedFilesByUserActionResponseBuildPartial.isInitialized()) {
                    return cMsgClientUCMEnumeratePublishedFilesByUserActionResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUCMEnumeratePublishedFilesByUserActionResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUCMEnumeratePublishedFilesByUserActionResponse buildPartial() {
                CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponse = new CMsgClientUCMEnumeratePublishedFilesByUserActionResponse(this);
                buildPartialRepeatedFields(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse);
                }
                onBuilt();
                return cMsgClientUCMEnumeratePublishedFilesByUserActionResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponse) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.publishedFiles_ = Collections.unmodifiableList(this.publishedFiles_);
                        this.bitField0_ &= -3;
                    }
                    cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_ = this.publishedFiles_;
                    return;
                }
                cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.totalResults_ = this.totalResults_;
                    i |= 2;
                }
                cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) {
                    return mergeFrom((CMsgClientUCMEnumeratePublishedFilesByUserActionResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUCMEnumeratePublishedFilesByUserActionResponse cMsgClientUCMEnumeratePublishedFilesByUserActionResponse) {
                if (cMsgClientUCMEnumeratePublishedFilesByUserActionResponse == CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.hasEresult()) {
                    setEresult(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getEresult());
                }
                if (this.publishedFilesBuilder_ == null) {
                    if (!cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_.isEmpty()) {
                        if (this.publishedFiles_.isEmpty()) {
                            this.publishedFiles_ = cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_;
                            this.bitField0_ &= -3;
                        } else {
                            ensurePublishedFilesIsMutable();
                            this.publishedFiles_.addAll(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_.isEmpty()) {
                    if (this.publishedFilesBuilder_.isEmpty()) {
                        this.publishedFilesBuilder_.dispose();
                        this.publishedFilesBuilder_ = null;
                        this.publishedFiles_ = cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_;
                        this.bitField0_ &= -3;
                        this.publishedFilesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPublishedFilesFieldBuilder() : null;
                    } else {
                        this.publishedFilesBuilder_.addAllMessages(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.publishedFiles_);
                    }
                }
                if (cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.hasTotalResults()) {
                    setTotalResults(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getTotalResults());
                }
                mergeUnknownFields(cMsgClientUCMEnumeratePublishedFilesByUserActionResponse.getUnknownFields());
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
                                    PublishedFileId publishedFileId = (PublishedFileId) codedInputStream.readMessage(PublishedFileId.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensurePublishedFilesIsMutable();
                                        this.publishedFiles_.add(publishedFileId);
                                    } else {
                                        repeatedFieldBuilder.addMessage(publishedFileId);
                                    }
                                } else if (tag == 24) {
                                    this.totalResults_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
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

            private void ensurePublishedFilesIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.publishedFiles_ = new ArrayList(this.publishedFiles_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public List<PublishedFileId> getPublishedFilesList() {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.publishedFiles_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public int getPublishedFilesCount() {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.publishedFiles_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public PublishedFileId getPublishedFiles(int i) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.publishedFiles_.get(i);
                }
                return (PublishedFileId) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPublishedFiles(int i, PublishedFileId publishedFileId) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    publishedFileId.getClass();
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.set(i, publishedFileId);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, publishedFileId);
                }
                return this;
            }

            public Builder setPublishedFiles(int i, PublishedFileId.Builder builder) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPublishedFiles(PublishedFileId publishedFileId) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    publishedFileId.getClass();
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.add(publishedFileId);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(publishedFileId);
                }
                return this;
            }

            public Builder addPublishedFiles(int i, PublishedFileId publishedFileId) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    publishedFileId.getClass();
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.add(i, publishedFileId);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, publishedFileId);
                }
                return this;
            }

            public Builder addPublishedFiles(PublishedFileId.Builder builder) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPublishedFiles(int i, PublishedFileId.Builder builder) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPublishedFiles(Iterable<? extends PublishedFileId> iterable) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePublishedFilesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.publishedFiles_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPublishedFiles() {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.publishedFiles_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePublishedFiles(int i) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePublishedFilesIsMutable();
                    this.publishedFiles_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public PublishedFileId.Builder getPublishedFilesBuilder(int i) {
                return (PublishedFileId.Builder) internalGetPublishedFilesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public PublishedFileIdOrBuilder getPublishedFilesOrBuilder(int i) {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.publishedFiles_.get(i);
                }
                return (PublishedFileIdOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public List<? extends PublishedFileIdOrBuilder> getPublishedFilesOrBuilderList() {
                RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> repeatedFieldBuilder = this.publishedFilesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.publishedFiles_);
            }

            public PublishedFileId.Builder addPublishedFilesBuilder() {
                return (PublishedFileId.Builder) internalGetPublishedFilesFieldBuilder().addBuilder(PublishedFileId.getDefaultInstance());
            }

            public PublishedFileId.Builder addPublishedFilesBuilder(int i) {
                return (PublishedFileId.Builder) internalGetPublishedFilesFieldBuilder().addBuilder(i, PublishedFileId.getDefaultInstance());
            }

            public List<PublishedFileId.Builder> getPublishedFilesBuilderList() {
                return internalGetPublishedFilesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<PublishedFileId, PublishedFileId.Builder, PublishedFileIdOrBuilder> internalGetPublishedFilesFieldBuilder() {
                if (this.publishedFilesBuilder_ == null) {
                    this.publishedFilesBuilder_ = new RepeatedFieldBuilder<>(this.publishedFiles_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.publishedFiles_ = null;
                }
                return this.publishedFilesBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public boolean hasTotalResults() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponseOrBuilder
            public int getTotalResults() {
                return this.totalResults_;
            }

            public Builder setTotalResults(int i) {
                this.totalResults_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearTotalResults() {
                this.bitField0_ &= -5;
                this.totalResults_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUCMEnumeratePublishedFilesByUserActionResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUCMEnumeratePublishedFilesByUserActionResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUCMEnumeratePublishedFilesByUserActionResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUCMEnumeratePublishedFilesByUserActionResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
