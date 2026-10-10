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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SteammessagesClientserverLbs {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSFindOrCreateLBResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSFindOrCreateLBResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSFindOrCreateLB_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSFindOrCreateLB_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSGetLBEntriesResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSGetLBEntriesResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSGetLBEntries_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSGetLBEntries_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSSetScoreResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSSetScoreResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSSetScore_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSSetScore_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSSetUGCResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSSetUGCResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLBSSetUGC_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLBSSetUGC_fieldAccessorTable;

    public interface CMsgClientLBSFindOrCreateLBOrBuilder extends MessageOrBuilder {
        int getAppId();

        boolean getCreateIfNotFound();

        int getLeaderboardDisplayType();

        String getLeaderboardName();

        ByteString getLeaderboardNameBytes();

        int getLeaderboardSortMethod();

        boolean hasAppId();

        boolean hasCreateIfNotFound();

        boolean hasLeaderboardDisplayType();

        boolean hasLeaderboardName();

        boolean hasLeaderboardSortMethod();
    }

    public interface CMsgClientLBSFindOrCreateLBResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        int getLeaderboardDisplayType();

        int getLeaderboardEntryCount();

        int getLeaderboardId();

        String getLeaderboardName();

        ByteString getLeaderboardNameBytes();

        int getLeaderboardSortMethod();

        boolean hasEresult();

        boolean hasLeaderboardDisplayType();

        boolean hasLeaderboardEntryCount();

        boolean hasLeaderboardId();

        boolean hasLeaderboardName();

        boolean hasLeaderboardSortMethod();
    }

    public interface CMsgClientLBSGetLBEntriesOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getLeaderboardDataRequest();

        int getLeaderboardId();

        int getRangeEnd();

        int getRangeStart();

        long getSteamids(int i);

        int getSteamidsCount();

        List<Long> getSteamidsList();

        boolean hasAppId();

        boolean hasLeaderboardDataRequest();

        boolean hasLeaderboardId();

        boolean hasRangeEnd();

        boolean hasRangeStart();
    }

    public interface CMsgClientLBSGetLBEntriesResponseOrBuilder extends MessageOrBuilder {
        CMsgClientLBSGetLBEntriesResponse.Entry getEntries(int i);

        int getEntriesCount();

        List<CMsgClientLBSGetLBEntriesResponse.Entry> getEntriesList();

        CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder getEntriesOrBuilder(int i);

        List<? extends CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder> getEntriesOrBuilderList();

        int getEresult();

        int getLeaderboardEntryCount();

        boolean hasEresult();

        boolean hasLeaderboardEntryCount();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverLbs() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverLbs.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nQin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_lbs.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"|\n\u0015CMsgClientLBSSetScore\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000eleaderboard_id\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005score\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007details\u0018\u0004 \u0001(\f\u0012\u001b\n\u0013upload_score_method\u0018\u0005 \u0001(\u0005\"¢\u0001\n\u001dCMsgClientLBSSetScoreResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u001f\n\u0017leaderboard_entry_count\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rscore_changed\u0018\u0003 \u0001(\b\u0012\u001c\n\u0014global_rank_previous\u0018\u0004 \u0001(\u0005\u0012\u0017\n\u000fglobal_rank_new\u0018\u0005 \u0001(\u0005\"M\n\u0013CMsgClientLBSSetUGC\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000eleaderboard_id\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006ugc_id\u0018\u0003 \u0001(\u0006\"1\n\u001bCMsgClientLBSSetUGCResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\"§\u0001\n\u001bCMsgClientLBSFindOrCreateLB\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u001f\n\u0017leaderboard_sort_method\u0018\u0002 \u0001(\u0005\u0012 \n\u0018leaderboard_display_type\u0018\u0003 \u0001(\u0005\u0012\u001b\n\u0013create_if_not_found\u0018\u0004 \u0001(\b\u0012\u0018\n\u0010leaderboard_name\u0018\u0005 \u0001(\t\"Õ\u0001\n#CMsgClientLBSFindOrCreateLBResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0016\n\u000eleaderboard_id\u0018\u0002 \u0001(\u0005\u0012\u001f\n\u0017leaderboard_entry_count\u0018\u0003 \u0001(\u0005\u0012\"\n\u0017leaderboard_sort_method\u0018\u0004 \u0001(\u0005:\u00010\u0012#\n\u0018leaderboard_display_type\u0018\u0005 \u0001(\u0005:\u00010\u0012\u0018\n\u0010leaderboard_name\u0018\u0006 \u0001(\t\"\u009f\u0001\n\u0019CMsgClientLBSGetLBEntries\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\u0005\u0012\u0016\n\u000eleaderboard_id\u0018\u0002 \u0001(\u0005\u0012\u0013\n\u000brange_start\u0018\u0003 \u0001(\u0005\u0012\u0011\n\trange_end\u0018\u0004 \u0001(\u0005\u0012 \n\u0018leaderboard_data_request\u0018\u0005 \u0001(\u0005\u0012\u0010\n\bsteamids\u0018\u0006 \u0003(\u0006\"ø\u0001\n!CMsgClientLBSGetLBEntriesResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u001f\n\u0017leaderboard_entry_count\u0018\u0002 \u0001(\u0005\u00129\n\u0007entries\u0018\u0003 \u0003(\u000b2(.CMsgClientLBSGetLBEntriesResponse.Entry\u001ac\n\u0005Entry\u0012\u0015\n\rsteam_id_user\u0018\u0001 \u0001(\u0006\u0012\u0013\n\u000bglobal_rank\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005score\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007details\u0018\u0004 \u0001(\f\u0012\u000e\n\u0006ugc_id\u0018\u0005 \u0001(\u0006B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientLBSSetScore_descriptor = descriptor2;
        internal_static_CMsgClientLBSSetScore_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"AppId", "LeaderboardId", "Score", "Details", "UploadScoreMethod"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientLBSSetScoreResponse_descriptor = descriptor3;
        internal_static_CMsgClientLBSSetScoreResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Eresult", "LeaderboardEntryCount", "ScoreChanged", "GlobalRankPrevious", "GlobalRankNew"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientLBSSetUGC_descriptor = descriptor4;
        internal_static_CMsgClientLBSSetUGC_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"AppId", "LeaderboardId", "UgcId"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientLBSSetUGCResponse_descriptor = descriptor5;
        internal_static_CMsgClientLBSSetUGCResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientLBSFindOrCreateLB_descriptor = descriptor6;
        internal_static_CMsgClientLBSFindOrCreateLB_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"AppId", "LeaderboardSortMethod", "LeaderboardDisplayType", "CreateIfNotFound", "LeaderboardName"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientLBSFindOrCreateLBResponse_descriptor = descriptor7;
        internal_static_CMsgClientLBSFindOrCreateLBResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Eresult", "LeaderboardId", "LeaderboardEntryCount", "LeaderboardSortMethod", "LeaderboardDisplayType", "LeaderboardName"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientLBSGetLBEntries_descriptor = descriptor8;
        internal_static_CMsgClientLBSGetLBEntries_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"AppId", "LeaderboardId", "RangeStart", "RangeEnd", "LeaderboardDataRequest", "Steamids"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientLBSGetLBEntriesResponse_descriptor = descriptor9;
        internal_static_CMsgClientLBSGetLBEntriesResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Eresult", "LeaderboardEntryCount", "Entries"});
        Descriptors.Descriptor descriptor10 = descriptor9.getNestedTypes().get(0);
        internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_descriptor = descriptor10;
        internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"SteamIdUser", "GlobalRank", "Score", "Details", "UgcId"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientLBSFindOrCreateLB extends GeneratedMessage implements CMsgClientLBSFindOrCreateLBOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int CREATE_IF_NOT_FOUND_FIELD_NUMBER = 4;
        private static final CMsgClientLBSFindOrCreateLB DEFAULT_INSTANCE;
        public static final int LEADERBOARD_DISPLAY_TYPE_FIELD_NUMBER = 3;
        public static final int LEADERBOARD_NAME_FIELD_NUMBER = 5;
        public static final int LEADERBOARD_SORT_METHOD_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientLBSFindOrCreateLB> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private boolean createIfNotFound_;
        private int leaderboardDisplayType_;
        private volatile Object leaderboardName_;
        private int leaderboardSortMethod_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLBSFindOrCreateLB.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLBSFindOrCreateLB();
            PARSER = new AbstractParser<CMsgClientLBSFindOrCreateLB>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLBSFindOrCreateLB parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLBSFindOrCreateLB.newBuilder();
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

        private CMsgClientLBSFindOrCreateLB(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.leaderboardSortMethod_ = 0;
            this.leaderboardDisplayType_ = 0;
            this.createIfNotFound_ = false;
            this.leaderboardName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLBSFindOrCreateLB() {
            this.appId_ = 0;
            this.leaderboardSortMethod_ = 0;
            this.leaderboardDisplayType_ = 0;
            this.createIfNotFound_ = false;
            this.leaderboardName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.leaderboardName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLB_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLB_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSFindOrCreateLB.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public boolean hasLeaderboardSortMethod() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public int getLeaderboardSortMethod() {
            return this.leaderboardSortMethod_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public boolean hasLeaderboardDisplayType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public int getLeaderboardDisplayType() {
            return this.leaderboardDisplayType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public boolean hasCreateIfNotFound() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public boolean getCreateIfNotFound() {
            return this.createIfNotFound_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public boolean hasLeaderboardName() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public String getLeaderboardName() {
            Object obj = this.leaderboardName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.leaderboardName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
        public ByteString getLeaderboardNameBytes() {
            Object obj = this.leaderboardName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.leaderboardName_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeInt32(2, this.leaderboardSortMethod_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.leaderboardDisplayType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.createIfNotFound_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.leaderboardName_);
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
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(2, this.leaderboardSortMethod_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.leaderboardDisplayType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.createIfNotFound_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.leaderboardName_);
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
            if (!(obj instanceof CMsgClientLBSFindOrCreateLB)) {
                return super.equals(obj);
            }
            CMsgClientLBSFindOrCreateLB cMsgClientLBSFindOrCreateLB = (CMsgClientLBSFindOrCreateLB) obj;
            if (hasAppId() != cMsgClientLBSFindOrCreateLB.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientLBSFindOrCreateLB.getAppId()) || hasLeaderboardSortMethod() != cMsgClientLBSFindOrCreateLB.hasLeaderboardSortMethod()) {
                return false;
            }
            if ((hasLeaderboardSortMethod() && getLeaderboardSortMethod() != cMsgClientLBSFindOrCreateLB.getLeaderboardSortMethod()) || hasLeaderboardDisplayType() != cMsgClientLBSFindOrCreateLB.hasLeaderboardDisplayType()) {
                return false;
            }
            if ((hasLeaderboardDisplayType() && getLeaderboardDisplayType() != cMsgClientLBSFindOrCreateLB.getLeaderboardDisplayType()) || hasCreateIfNotFound() != cMsgClientLBSFindOrCreateLB.hasCreateIfNotFound()) {
                return false;
            }
            if ((!hasCreateIfNotFound() || getCreateIfNotFound() == cMsgClientLBSFindOrCreateLB.getCreateIfNotFound()) && hasLeaderboardName() == cMsgClientLBSFindOrCreateLB.hasLeaderboardName()) {
                return (!hasLeaderboardName() || getLeaderboardName().equals(cMsgClientLBSFindOrCreateLB.getLeaderboardName())) && getUnknownFields().equals(cMsgClientLBSFindOrCreateLB.getUnknownFields());
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
            if (hasLeaderboardSortMethod()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLeaderboardSortMethod();
            }
            if (hasLeaderboardDisplayType()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getLeaderboardDisplayType();
            }
            if (hasCreateIfNotFound()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getCreateIfNotFound());
            }
            if (hasLeaderboardName()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLeaderboardName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSFindOrCreateLB) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSFindOrCreateLB) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLB parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSFindOrCreateLB) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSFindOrCreateLB parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSFindOrCreateLB) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLBSFindOrCreateLB) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLBSFindOrCreateLB parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSFindOrCreateLB) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLBSFindOrCreateLB cMsgClientLBSFindOrCreateLB) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLBSFindOrCreateLB);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLBSFindOrCreateLBOrBuilder {
            private int appId_;
            private int bitField0_;
            private boolean createIfNotFound_;
            private int leaderboardDisplayType_;
            private Object leaderboardName_;
            private int leaderboardSortMethod_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLB_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLB_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSFindOrCreateLB.class, Builder.class);
            }

            private Builder() {
                this.leaderboardName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.leaderboardName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.leaderboardSortMethod_ = 0;
                this.leaderboardDisplayType_ = 0;
                this.createIfNotFound_ = false;
                this.leaderboardName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLB_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLBSFindOrCreateLB getDefaultInstanceForType() {
                return CMsgClientLBSFindOrCreateLB.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSFindOrCreateLB build() {
                CMsgClientLBSFindOrCreateLB cMsgClientLBSFindOrCreateLBBuildPartial = buildPartial();
                if (cMsgClientLBSFindOrCreateLBBuildPartial.isInitialized()) {
                    return cMsgClientLBSFindOrCreateLBBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLBSFindOrCreateLBBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSFindOrCreateLB buildPartial() {
                CMsgClientLBSFindOrCreateLB cMsgClientLBSFindOrCreateLB = new CMsgClientLBSFindOrCreateLB(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLBSFindOrCreateLB);
                }
                onBuilt();
                return cMsgClientLBSFindOrCreateLB;
            }

            private void buildPartial0(CMsgClientLBSFindOrCreateLB cMsgClientLBSFindOrCreateLB) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientLBSFindOrCreateLB.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLBSFindOrCreateLB.leaderboardSortMethod_ = this.leaderboardSortMethod_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientLBSFindOrCreateLB.leaderboardDisplayType_ = this.leaderboardDisplayType_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientLBSFindOrCreateLB.createIfNotFound_ = this.createIfNotFound_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientLBSFindOrCreateLB.leaderboardName_ = this.leaderboardName_;
                    i |= 16;
                }
                cMsgClientLBSFindOrCreateLB.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLBSFindOrCreateLB) {
                    return mergeFrom((CMsgClientLBSFindOrCreateLB) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLBSFindOrCreateLB cMsgClientLBSFindOrCreateLB) {
                if (cMsgClientLBSFindOrCreateLB == CMsgClientLBSFindOrCreateLB.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLBSFindOrCreateLB.hasAppId()) {
                    setAppId(cMsgClientLBSFindOrCreateLB.getAppId());
                }
                if (cMsgClientLBSFindOrCreateLB.hasLeaderboardSortMethod()) {
                    setLeaderboardSortMethod(cMsgClientLBSFindOrCreateLB.getLeaderboardSortMethod());
                }
                if (cMsgClientLBSFindOrCreateLB.hasLeaderboardDisplayType()) {
                    setLeaderboardDisplayType(cMsgClientLBSFindOrCreateLB.getLeaderboardDisplayType());
                }
                if (cMsgClientLBSFindOrCreateLB.hasCreateIfNotFound()) {
                    setCreateIfNotFound(cMsgClientLBSFindOrCreateLB.getCreateIfNotFound());
                }
                if (cMsgClientLBSFindOrCreateLB.hasLeaderboardName()) {
                    this.leaderboardName_ = cMsgClientLBSFindOrCreateLB.leaderboardName_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientLBSFindOrCreateLB.getUnknownFields());
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
                                    this.leaderboardSortMethod_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.leaderboardDisplayType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.createIfNotFound_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.leaderboardName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public boolean hasLeaderboardSortMethod() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public int getLeaderboardSortMethod() {
                return this.leaderboardSortMethod_;
            }

            public Builder setLeaderboardSortMethod(int i) {
                this.leaderboardSortMethod_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardSortMethod() {
                this.bitField0_ &= -3;
                this.leaderboardSortMethod_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public boolean hasLeaderboardDisplayType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public int getLeaderboardDisplayType() {
                return this.leaderboardDisplayType_;
            }

            public Builder setLeaderboardDisplayType(int i) {
                this.leaderboardDisplayType_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardDisplayType() {
                this.bitField0_ &= -5;
                this.leaderboardDisplayType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public boolean hasCreateIfNotFound() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public boolean getCreateIfNotFound() {
                return this.createIfNotFound_;
            }

            public Builder setCreateIfNotFound(boolean z) {
                this.createIfNotFound_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearCreateIfNotFound() {
                this.bitField0_ &= -9;
                this.createIfNotFound_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public boolean hasLeaderboardName() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public String getLeaderboardName() {
                Object obj = this.leaderboardName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.leaderboardName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBOrBuilder
            public ByteString getLeaderboardNameBytes() {
                Object obj = this.leaderboardName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.leaderboardName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLeaderboardName(String str) {
                str.getClass();
                this.leaderboardName_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardName() {
                this.leaderboardName_ = CMsgClientLBSFindOrCreateLB.getDefaultInstance().getLeaderboardName();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setLeaderboardNameBytes(ByteString byteString) {
                byteString.getClass();
                this.leaderboardName_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }
        }

        public static CMsgClientLBSFindOrCreateLB getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLBSFindOrCreateLB> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLBSFindOrCreateLB> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLBSFindOrCreateLB getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLBSFindOrCreateLBResponse extends GeneratedMessage implements CMsgClientLBSFindOrCreateLBResponseOrBuilder {
        private static final CMsgClientLBSFindOrCreateLBResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int LEADERBOARD_DISPLAY_TYPE_FIELD_NUMBER = 5;
        public static final int LEADERBOARD_ENTRY_COUNT_FIELD_NUMBER = 3;
        public static final int LEADERBOARD_ID_FIELD_NUMBER = 2;
        public static final int LEADERBOARD_NAME_FIELD_NUMBER = 6;
        public static final int LEADERBOARD_SORT_METHOD_FIELD_NUMBER = 4;
        private static final Parser<CMsgClientLBSFindOrCreateLBResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private int leaderboardDisplayType_;
        private int leaderboardEntryCount_;
        private int leaderboardId_;
        private volatile Object leaderboardName_;
        private int leaderboardSortMethod_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLBSFindOrCreateLBResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLBSFindOrCreateLBResponse();
            PARSER = new AbstractParser<CMsgClientLBSFindOrCreateLBResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLBSFindOrCreateLBResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLBSFindOrCreateLBResponse.newBuilder();
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

        private CMsgClientLBSFindOrCreateLBResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.leaderboardId_ = 0;
            this.leaderboardEntryCount_ = 0;
            this.leaderboardSortMethod_ = 0;
            this.leaderboardDisplayType_ = 0;
            this.leaderboardName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLBSFindOrCreateLBResponse() {
            this.eresult_ = 2;
            this.leaderboardId_ = 0;
            this.leaderboardEntryCount_ = 0;
            this.leaderboardSortMethod_ = 0;
            this.leaderboardDisplayType_ = 0;
            this.leaderboardName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.leaderboardName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLBResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLBResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSFindOrCreateLBResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public boolean hasLeaderboardId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public int getLeaderboardId() {
            return this.leaderboardId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public boolean hasLeaderboardEntryCount() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public int getLeaderboardEntryCount() {
            return this.leaderboardEntryCount_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public boolean hasLeaderboardSortMethod() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public int getLeaderboardSortMethod() {
            return this.leaderboardSortMethod_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public boolean hasLeaderboardDisplayType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public int getLeaderboardDisplayType() {
            return this.leaderboardDisplayType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public boolean hasLeaderboardName() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public String getLeaderboardName() {
            Object obj = this.leaderboardName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.leaderboardName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
        public ByteString getLeaderboardNameBytes() {
            Object obj = this.leaderboardName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.leaderboardName_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.leaderboardId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.leaderboardEntryCount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.leaderboardSortMethod_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.leaderboardDisplayType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.leaderboardName_);
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
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.leaderboardId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(3, this.leaderboardEntryCount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(4, this.leaderboardSortMethod_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(5, this.leaderboardDisplayType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(6, this.leaderboardName_);
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
            if (!(obj instanceof CMsgClientLBSFindOrCreateLBResponse)) {
                return super.equals(obj);
            }
            CMsgClientLBSFindOrCreateLBResponse cMsgClientLBSFindOrCreateLBResponse = (CMsgClientLBSFindOrCreateLBResponse) obj;
            if (hasEresult() != cMsgClientLBSFindOrCreateLBResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientLBSFindOrCreateLBResponse.getEresult()) || hasLeaderboardId() != cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardId()) {
                return false;
            }
            if ((hasLeaderboardId() && getLeaderboardId() != cMsgClientLBSFindOrCreateLBResponse.getLeaderboardId()) || hasLeaderboardEntryCount() != cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardEntryCount()) {
                return false;
            }
            if ((hasLeaderboardEntryCount() && getLeaderboardEntryCount() != cMsgClientLBSFindOrCreateLBResponse.getLeaderboardEntryCount()) || hasLeaderboardSortMethod() != cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardSortMethod()) {
                return false;
            }
            if ((hasLeaderboardSortMethod() && getLeaderboardSortMethod() != cMsgClientLBSFindOrCreateLBResponse.getLeaderboardSortMethod()) || hasLeaderboardDisplayType() != cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardDisplayType()) {
                return false;
            }
            if ((!hasLeaderboardDisplayType() || getLeaderboardDisplayType() == cMsgClientLBSFindOrCreateLBResponse.getLeaderboardDisplayType()) && hasLeaderboardName() == cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardName()) {
                return (!hasLeaderboardName() || getLeaderboardName().equals(cMsgClientLBSFindOrCreateLBResponse.getLeaderboardName())) && getUnknownFields().equals(cMsgClientLBSFindOrCreateLBResponse.getUnknownFields());
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
            if (hasLeaderboardId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLeaderboardId();
            }
            if (hasLeaderboardEntryCount()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getLeaderboardEntryCount();
            }
            if (hasLeaderboardSortMethod()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getLeaderboardSortMethod();
            }
            if (hasLeaderboardDisplayType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLeaderboardDisplayType();
            }
            if (hasLeaderboardName()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getLeaderboardName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSFindOrCreateLBResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSFindOrCreateLBResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSFindOrCreateLBResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSFindOrCreateLBResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLBSFindOrCreateLBResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLBSFindOrCreateLBResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSFindOrCreateLBResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLBSFindOrCreateLBResponse cMsgClientLBSFindOrCreateLBResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLBSFindOrCreateLBResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLBSFindOrCreateLBResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private int leaderboardDisplayType_;
            private int leaderboardEntryCount_;
            private int leaderboardId_;
            private Object leaderboardName_;
            private int leaderboardSortMethod_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLBResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLBResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSFindOrCreateLBResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.leaderboardName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.leaderboardName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.leaderboardId_ = 0;
                this.leaderboardEntryCount_ = 0;
                this.leaderboardSortMethod_ = 0;
                this.leaderboardDisplayType_ = 0;
                this.leaderboardName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSFindOrCreateLBResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLBSFindOrCreateLBResponse getDefaultInstanceForType() {
                return CMsgClientLBSFindOrCreateLBResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSFindOrCreateLBResponse build() {
                CMsgClientLBSFindOrCreateLBResponse cMsgClientLBSFindOrCreateLBResponseBuildPartial = buildPartial();
                if (cMsgClientLBSFindOrCreateLBResponseBuildPartial.isInitialized()) {
                    return cMsgClientLBSFindOrCreateLBResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLBSFindOrCreateLBResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSFindOrCreateLBResponse buildPartial() {
                CMsgClientLBSFindOrCreateLBResponse cMsgClientLBSFindOrCreateLBResponse = new CMsgClientLBSFindOrCreateLBResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLBSFindOrCreateLBResponse);
                }
                onBuilt();
                return cMsgClientLBSFindOrCreateLBResponse;
            }

            private void buildPartial0(CMsgClientLBSFindOrCreateLBResponse cMsgClientLBSFindOrCreateLBResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientLBSFindOrCreateLBResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLBSFindOrCreateLBResponse.leaderboardId_ = this.leaderboardId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientLBSFindOrCreateLBResponse.leaderboardEntryCount_ = this.leaderboardEntryCount_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientLBSFindOrCreateLBResponse.leaderboardSortMethod_ = this.leaderboardSortMethod_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientLBSFindOrCreateLBResponse.leaderboardDisplayType_ = this.leaderboardDisplayType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientLBSFindOrCreateLBResponse.leaderboardName_ = this.leaderboardName_;
                    i |= 32;
                }
                cMsgClientLBSFindOrCreateLBResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLBSFindOrCreateLBResponse) {
                    return mergeFrom((CMsgClientLBSFindOrCreateLBResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLBSFindOrCreateLBResponse cMsgClientLBSFindOrCreateLBResponse) {
                if (cMsgClientLBSFindOrCreateLBResponse == CMsgClientLBSFindOrCreateLBResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLBSFindOrCreateLBResponse.hasEresult()) {
                    setEresult(cMsgClientLBSFindOrCreateLBResponse.getEresult());
                }
                if (cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardId()) {
                    setLeaderboardId(cMsgClientLBSFindOrCreateLBResponse.getLeaderboardId());
                }
                if (cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardEntryCount()) {
                    setLeaderboardEntryCount(cMsgClientLBSFindOrCreateLBResponse.getLeaderboardEntryCount());
                }
                if (cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardSortMethod()) {
                    setLeaderboardSortMethod(cMsgClientLBSFindOrCreateLBResponse.getLeaderboardSortMethod());
                }
                if (cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardDisplayType()) {
                    setLeaderboardDisplayType(cMsgClientLBSFindOrCreateLBResponse.getLeaderboardDisplayType());
                }
                if (cMsgClientLBSFindOrCreateLBResponse.hasLeaderboardName()) {
                    this.leaderboardName_ = cMsgClientLBSFindOrCreateLBResponse.leaderboardName_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientLBSFindOrCreateLBResponse.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.leaderboardId_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.leaderboardEntryCount_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.leaderboardSortMethod_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.leaderboardDisplayType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 50) {
                                    this.leaderboardName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public boolean hasLeaderboardId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public int getLeaderboardId() {
                return this.leaderboardId_;
            }

            public Builder setLeaderboardId(int i) {
                this.leaderboardId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardId() {
                this.bitField0_ &= -3;
                this.leaderboardId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public boolean hasLeaderboardEntryCount() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public int getLeaderboardEntryCount() {
                return this.leaderboardEntryCount_;
            }

            public Builder setLeaderboardEntryCount(int i) {
                this.leaderboardEntryCount_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardEntryCount() {
                this.bitField0_ &= -5;
                this.leaderboardEntryCount_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public boolean hasLeaderboardSortMethod() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public int getLeaderboardSortMethod() {
                return this.leaderboardSortMethod_;
            }

            public Builder setLeaderboardSortMethod(int i) {
                this.leaderboardSortMethod_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardSortMethod() {
                this.bitField0_ &= -9;
                this.leaderboardSortMethod_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public boolean hasLeaderboardDisplayType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public int getLeaderboardDisplayType() {
                return this.leaderboardDisplayType_;
            }

            public Builder setLeaderboardDisplayType(int i) {
                this.leaderboardDisplayType_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardDisplayType() {
                this.bitField0_ &= -17;
                this.leaderboardDisplayType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public boolean hasLeaderboardName() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public String getLeaderboardName() {
                Object obj = this.leaderboardName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.leaderboardName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponseOrBuilder
            public ByteString getLeaderboardNameBytes() {
                Object obj = this.leaderboardName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.leaderboardName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLeaderboardName(String str) {
                str.getClass();
                this.leaderboardName_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardName() {
                this.leaderboardName_ = CMsgClientLBSFindOrCreateLBResponse.getDefaultInstance().getLeaderboardName();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setLeaderboardNameBytes(ByteString byteString) {
                byteString.getClass();
                this.leaderboardName_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }
        }

        public static CMsgClientLBSFindOrCreateLBResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLBSFindOrCreateLBResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLBSFindOrCreateLBResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLBSFindOrCreateLBResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLBSGetLBEntries extends GeneratedMessage implements CMsgClientLBSGetLBEntriesOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientLBSGetLBEntries DEFAULT_INSTANCE;
        public static final int LEADERBOARD_DATA_REQUEST_FIELD_NUMBER = 5;
        public static final int LEADERBOARD_ID_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientLBSGetLBEntries> PARSER;
        public static final int RANGE_END_FIELD_NUMBER = 4;
        public static final int RANGE_START_FIELD_NUMBER = 3;
        public static final int STEAMIDS_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int leaderboardDataRequest_;
        private int leaderboardId_;
        private byte memoizedIsInitialized;
        private int rangeEnd_;
        private int rangeStart_;
        private Internal.LongList steamids_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLBSGetLBEntries.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLBSGetLBEntries();
            PARSER = new AbstractParser<CMsgClientLBSGetLBEntries>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLBSGetLBEntries parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLBSGetLBEntries.newBuilder();
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

        private CMsgClientLBSGetLBEntries(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.leaderboardId_ = 0;
            this.rangeStart_ = 0;
            this.rangeEnd_ = 0;
            this.leaderboardDataRequest_ = 0;
            this.steamids_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLBSGetLBEntries() {
            this.appId_ = 0;
            this.leaderboardId_ = 0;
            this.rangeStart_ = 0;
            this.rangeEnd_ = 0;
            this.leaderboardDataRequest_ = 0;
            this.steamids_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
            this.steamids_ = GeneratedMessage.emptyLongList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntries_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntries_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSGetLBEntries.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public boolean hasLeaderboardId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public int getLeaderboardId() {
            return this.leaderboardId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public boolean hasRangeStart() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public int getRangeStart() {
            return this.rangeStart_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public boolean hasRangeEnd() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public int getRangeEnd() {
            return this.rangeEnd_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public boolean hasLeaderboardDataRequest() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public int getLeaderboardDataRequest() {
            return this.leaderboardDataRequest_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public List<Long> getSteamidsList() {
            return this.steamids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public int getSteamidsCount() {
            return this.steamids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
        public long getSteamids(int i) {
            return this.steamids_.getLong(i);
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
                codedOutputStream.writeInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.leaderboardId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.rangeStart_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.rangeEnd_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.leaderboardDataRequest_);
            }
            for (int i = 0; i < this.steamids_.size(); i++) {
                codedOutputStream.writeFixed64(6, this.steamids_.getLong(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.appId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.leaderboardId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(3, this.rangeStart_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(4, this.rangeEnd_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(5, this.leaderboardDataRequest_);
            }
            int size = iComputeInt32Size + (getSteamidsList().size() * 8) + getSteamidsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientLBSGetLBEntries)) {
                return super.equals(obj);
            }
            CMsgClientLBSGetLBEntries cMsgClientLBSGetLBEntries = (CMsgClientLBSGetLBEntries) obj;
            if (hasAppId() != cMsgClientLBSGetLBEntries.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientLBSGetLBEntries.getAppId()) || hasLeaderboardId() != cMsgClientLBSGetLBEntries.hasLeaderboardId()) {
                return false;
            }
            if ((hasLeaderboardId() && getLeaderboardId() != cMsgClientLBSGetLBEntries.getLeaderboardId()) || hasRangeStart() != cMsgClientLBSGetLBEntries.hasRangeStart()) {
                return false;
            }
            if ((hasRangeStart() && getRangeStart() != cMsgClientLBSGetLBEntries.getRangeStart()) || hasRangeEnd() != cMsgClientLBSGetLBEntries.hasRangeEnd()) {
                return false;
            }
            if ((!hasRangeEnd() || getRangeEnd() == cMsgClientLBSGetLBEntries.getRangeEnd()) && hasLeaderboardDataRequest() == cMsgClientLBSGetLBEntries.hasLeaderboardDataRequest()) {
                return (!hasLeaderboardDataRequest() || getLeaderboardDataRequest() == cMsgClientLBSGetLBEntries.getLeaderboardDataRequest()) && getSteamidsList().equals(cMsgClientLBSGetLBEntries.getSteamidsList()) && getUnknownFields().equals(cMsgClientLBSGetLBEntries.getUnknownFields());
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
            if (hasLeaderboardId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLeaderboardId();
            }
            if (hasRangeStart()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRangeStart();
            }
            if (hasRangeEnd()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getRangeEnd();
            }
            if (hasLeaderboardDataRequest()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLeaderboardDataRequest();
            }
            if (getSteamidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getSteamidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientLBSGetLBEntries parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSGetLBEntries) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSGetLBEntries) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntries parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSGetLBEntries) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSGetLBEntries parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSGetLBEntries) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLBSGetLBEntries) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLBSGetLBEntries parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSGetLBEntries) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLBSGetLBEntries cMsgClientLBSGetLBEntries) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLBSGetLBEntries);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLBSGetLBEntriesOrBuilder {
            private int appId_;
            private int bitField0_;
            private int leaderboardDataRequest_;
            private int leaderboardId_;
            private int rangeEnd_;
            private int rangeStart_;
            private Internal.LongList steamids_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntries_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntries_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSGetLBEntries.class, Builder.class);
            }

            private Builder() {
                this.steamids_ = GeneratedMessage.emptyLongList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.steamids_ = GeneratedMessage.emptyLongList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.leaderboardId_ = 0;
                this.rangeStart_ = 0;
                this.rangeEnd_ = 0;
                this.leaderboardDataRequest_ = 0;
                this.steamids_ = GeneratedMessage.emptyLongList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntries_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLBSGetLBEntries getDefaultInstanceForType() {
                return CMsgClientLBSGetLBEntries.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSGetLBEntries build() {
                CMsgClientLBSGetLBEntries cMsgClientLBSGetLBEntriesBuildPartial = buildPartial();
                if (cMsgClientLBSGetLBEntriesBuildPartial.isInitialized()) {
                    return cMsgClientLBSGetLBEntriesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLBSGetLBEntriesBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSGetLBEntries buildPartial() {
                CMsgClientLBSGetLBEntries cMsgClientLBSGetLBEntries = new CMsgClientLBSGetLBEntries(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLBSGetLBEntries);
                }
                onBuilt();
                return cMsgClientLBSGetLBEntries;
            }

            private void buildPartial0(CMsgClientLBSGetLBEntries cMsgClientLBSGetLBEntries) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientLBSGetLBEntries.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLBSGetLBEntries.leaderboardId_ = this.leaderboardId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientLBSGetLBEntries.rangeStart_ = this.rangeStart_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientLBSGetLBEntries.rangeEnd_ = this.rangeEnd_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientLBSGetLBEntries.leaderboardDataRequest_ = this.leaderboardDataRequest_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    this.steamids_.makeImmutable();
                    cMsgClientLBSGetLBEntries.steamids_ = this.steamids_;
                }
                cMsgClientLBSGetLBEntries.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLBSGetLBEntries) {
                    return mergeFrom((CMsgClientLBSGetLBEntries) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLBSGetLBEntries cMsgClientLBSGetLBEntries) {
                if (cMsgClientLBSGetLBEntries == CMsgClientLBSGetLBEntries.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLBSGetLBEntries.hasAppId()) {
                    setAppId(cMsgClientLBSGetLBEntries.getAppId());
                }
                if (cMsgClientLBSGetLBEntries.hasLeaderboardId()) {
                    setLeaderboardId(cMsgClientLBSGetLBEntries.getLeaderboardId());
                }
                if (cMsgClientLBSGetLBEntries.hasRangeStart()) {
                    setRangeStart(cMsgClientLBSGetLBEntries.getRangeStart());
                }
                if (cMsgClientLBSGetLBEntries.hasRangeEnd()) {
                    setRangeEnd(cMsgClientLBSGetLBEntries.getRangeEnd());
                }
                if (cMsgClientLBSGetLBEntries.hasLeaderboardDataRequest()) {
                    setLeaderboardDataRequest(cMsgClientLBSGetLBEntries.getLeaderboardDataRequest());
                }
                if (!cMsgClientLBSGetLBEntries.steamids_.isEmpty()) {
                    if (this.steamids_.isEmpty()) {
                        Internal.LongList longList = cMsgClientLBSGetLBEntries.steamids_;
                        this.steamids_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 32;
                    } else {
                        ensureSteamidsIsMutable();
                        this.steamids_.addAll(cMsgClientLBSGetLBEntries.steamids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientLBSGetLBEntries.getUnknownFields());
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
                                    this.appId_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.leaderboardId_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.rangeStart_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.rangeEnd_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.leaderboardDataRequest_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 49) {
                                    long fixed64 = codedInputStream.readFixed64();
                                    ensureSteamidsIsMutable();
                                    this.steamids_.addLong(fixed64);
                                } else if (tag == 50) {
                                    int rawVarint32 = codedInputStream.readRawVarint32();
                                    int iPushLimit = codedInputStream.pushLimit(rawVarint32);
                                    if (rawVarint32 > 4096) {
                                        rawVarint32 = 4096;
                                    }
                                    ensureSteamidsIsMutable(rawVarint32 / 8);
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.steamids_.addLong(codedInputStream.readFixed64());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public boolean hasLeaderboardId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public int getLeaderboardId() {
                return this.leaderboardId_;
            }

            public Builder setLeaderboardId(int i) {
                this.leaderboardId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardId() {
                this.bitField0_ &= -3;
                this.leaderboardId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public boolean hasRangeStart() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public int getRangeStart() {
                return this.rangeStart_;
            }

            public Builder setRangeStart(int i) {
                this.rangeStart_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRangeStart() {
                this.bitField0_ &= -5;
                this.rangeStart_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public boolean hasRangeEnd() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public int getRangeEnd() {
                return this.rangeEnd_;
            }

            public Builder setRangeEnd(int i) {
                this.rangeEnd_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearRangeEnd() {
                this.bitField0_ &= -9;
                this.rangeEnd_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public boolean hasLeaderboardDataRequest() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public int getLeaderboardDataRequest() {
                return this.leaderboardDataRequest_;
            }

            public Builder setLeaderboardDataRequest(int i) {
                this.leaderboardDataRequest_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardDataRequest() {
                this.bitField0_ &= -17;
                this.leaderboardDataRequest_ = 0;
                onChanged();
                return this;
            }

            private void ensureSteamidsIsMutable() {
                if (!this.steamids_.isModifiable()) {
                    this.steamids_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.steamids_);
                }
                this.bitField0_ |= 32;
            }

            private void ensureSteamidsIsMutable(int i) {
                if (!this.steamids_.isModifiable()) {
                    this.steamids_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.steamids_, i);
                }
                this.bitField0_ |= 32;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public List<Long> getSteamidsList() {
                this.steamids_.makeImmutable();
                return this.steamids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public int getSteamidsCount() {
                return this.steamids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesOrBuilder
            public long getSteamids(int i) {
                return this.steamids_.getLong(i);
            }

            public Builder setSteamids(int i, long j) {
                ensureSteamidsIsMutable();
                this.steamids_.setLong(i, j);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder addSteamids(long j) {
                ensureSteamidsIsMutable();
                this.steamids_.addLong(j);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder addAllSteamids(Iterable<? extends Long> iterable) {
                ensureSteamidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.steamids_);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearSteamids() {
                this.steamids_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }
        }

        public static CMsgClientLBSGetLBEntries getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLBSGetLBEntries> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLBSGetLBEntries> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLBSGetLBEntries getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLBSGetLBEntriesResponse extends GeneratedMessage implements CMsgClientLBSGetLBEntriesResponseOrBuilder {
        private static final CMsgClientLBSGetLBEntriesResponse DEFAULT_INSTANCE;
        public static final int ENTRIES_FIELD_NUMBER = 3;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int LEADERBOARD_ENTRY_COUNT_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientLBSGetLBEntriesResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<Entry> entries_;
        private int eresult_;
        private int leaderboardEntryCount_;
        private byte memoizedIsInitialized;

        public interface EntryOrBuilder extends MessageOrBuilder {
            ByteString getDetails();

            int getGlobalRank();

            int getScore();

            long getSteamIdUser();

            long getUgcId();

            boolean hasDetails();

            boolean hasGlobalRank();

            boolean hasScore();

            boolean hasSteamIdUser();

            boolean hasUgcId();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLBSGetLBEntriesResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLBSGetLBEntriesResponse();
            PARSER = new AbstractParser<CMsgClientLBSGetLBEntriesResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLBSGetLBEntriesResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLBSGetLBEntriesResponse.newBuilder();
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

        private CMsgClientLBSGetLBEntriesResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.leaderboardEntryCount_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLBSGetLBEntriesResponse() {
            this.leaderboardEntryCount_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.entries_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSGetLBEntriesResponse.class, Builder.class);
        }

        public static final class Entry extends GeneratedMessage implements EntryOrBuilder {
            private static final Entry DEFAULT_INSTANCE;
            public static final int DETAILS_FIELD_NUMBER = 4;
            public static final int GLOBAL_RANK_FIELD_NUMBER = 2;
            private static final Parser<Entry> PARSER;
            public static final int SCORE_FIELD_NUMBER = 3;
            public static final int STEAM_ID_USER_FIELD_NUMBER = 1;
            public static final int UGC_ID_FIELD_NUMBER = 5;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private ByteString details_;
            private int globalRank_;
            private byte memoizedIsInitialized;
            private int score_;
            private long steamIdUser_;
            private long ugcId_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Entry.class.getName());
                DEFAULT_INSTANCE = new Entry();
                PARSER = new AbstractParser<Entry>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.Entry.1
                    @Override // com.google.protobuf.Parser
                    public Entry parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Entry.newBuilder();
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

            private Entry(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.steamIdUser_ = 0L;
                this.globalRank_ = 0;
                this.score_ = 0;
                this.details_ = ByteString.EMPTY;
                this.ugcId_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Entry() {
                this.steamIdUser_ = 0L;
                this.globalRank_ = 0;
                this.score_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.ugcId_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
                this.details_ = byteString;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_fieldAccessorTable.ensureFieldAccessorsInitialized(Entry.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public boolean hasSteamIdUser() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public long getSteamIdUser() {
                return this.steamIdUser_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public boolean hasGlobalRank() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public int getGlobalRank() {
                return this.globalRank_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public boolean hasScore() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public int getScore() {
                return this.score_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public boolean hasDetails() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public ByteString getDetails() {
                return this.details_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public boolean hasUgcId() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
            public long getUgcId() {
                return this.ugcId_;
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
                    codedOutputStream.writeFixed64(1, this.steamIdUser_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeInt32(2, this.globalRank_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeInt32(3, this.score_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBytes(4, this.details_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeFixed64(5, this.ugcId_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamIdUser_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.globalRank_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(3, this.score_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(4, this.details_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed64Size(5, this.ugcId_);
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
                if (!(obj instanceof Entry)) {
                    return super.equals(obj);
                }
                Entry entry = (Entry) obj;
                if (hasSteamIdUser() != entry.hasSteamIdUser()) {
                    return false;
                }
                if ((hasSteamIdUser() && getSteamIdUser() != entry.getSteamIdUser()) || hasGlobalRank() != entry.hasGlobalRank()) {
                    return false;
                }
                if ((hasGlobalRank() && getGlobalRank() != entry.getGlobalRank()) || hasScore() != entry.hasScore()) {
                    return false;
                }
                if ((hasScore() && getScore() != entry.getScore()) || hasDetails() != entry.hasDetails()) {
                    return false;
                }
                if ((!hasDetails() || getDetails().equals(entry.getDetails())) && hasUgcId() == entry.hasUgcId()) {
                    return (!hasUgcId() || getUgcId() == entry.getUgcId()) && getUnknownFields().equals(entry.getUnknownFields());
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
                if (hasSteamIdUser()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamIdUser());
                }
                if (hasGlobalRank()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getGlobalRank();
                }
                if (hasScore()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getScore();
                }
                if (hasDetails()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getDetails().hashCode();
                }
                if (hasUgcId()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getUgcId());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Entry parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Entry parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Entry parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Entry parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Entry parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Entry parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Entry parseFrom(InputStream inputStream) throws IOException {
                return (Entry) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Entry parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Entry) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Entry parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Entry) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Entry parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Entry) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Entry parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Entry) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Entry parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Entry) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Entry entry) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(entry);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements EntryOrBuilder {
                private int bitField0_;
                private ByteString details_;
                private int globalRank_;
                private int score_;
                private long steamIdUser_;
                private long ugcId_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_fieldAccessorTable.ensureFieldAccessorsInitialized(Entry.class, Builder.class);
                }

                private Builder() {
                    this.details_ = ByteString.EMPTY;
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.details_ = ByteString.EMPTY;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.steamIdUser_ = 0L;
                    this.globalRank_ = 0;
                    this.score_ = 0;
                    this.details_ = ByteString.EMPTY;
                    this.ugcId_ = 0L;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_Entry_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Entry getDefaultInstanceForType() {
                    return Entry.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Entry build() {
                    Entry entryBuildPartial = buildPartial();
                    if (entryBuildPartial.isInitialized()) {
                        return entryBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) entryBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Entry buildPartial() {
                    Entry entry = new Entry(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(entry);
                    }
                    onBuilt();
                    return entry;
                }

                private void buildPartial0(Entry entry) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        entry.steamIdUser_ = this.steamIdUser_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        entry.globalRank_ = this.globalRank_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        entry.score_ = this.score_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        entry.details_ = this.details_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        entry.ugcId_ = this.ugcId_;
                        i |= 16;
                    }
                    entry.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Entry) {
                        return mergeFrom((Entry) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Entry entry) {
                    if (entry == Entry.getDefaultInstance()) {
                        return this;
                    }
                    if (entry.hasSteamIdUser()) {
                        setSteamIdUser(entry.getSteamIdUser());
                    }
                    if (entry.hasGlobalRank()) {
                        setGlobalRank(entry.getGlobalRank());
                    }
                    if (entry.hasScore()) {
                        setScore(entry.getScore());
                    }
                    if (entry.hasDetails()) {
                        setDetails(entry.getDetails());
                    }
                    if (entry.hasUgcId()) {
                        setUgcId(entry.getUgcId());
                    }
                    mergeUnknownFields(entry.getUnknownFields());
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
                                        this.steamIdUser_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.globalRank_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.score_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 34) {
                                        this.details_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 41) {
                                        this.ugcId_ = codedInputStream.readFixed64();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public boolean hasSteamIdUser() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public long getSteamIdUser() {
                    return this.steamIdUser_;
                }

                public Builder setSteamIdUser(long j) {
                    this.steamIdUser_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSteamIdUser() {
                    this.bitField0_ &= -2;
                    this.steamIdUser_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public boolean hasGlobalRank() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public int getGlobalRank() {
                    return this.globalRank_;
                }

                public Builder setGlobalRank(int i) {
                    this.globalRank_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearGlobalRank() {
                    this.bitField0_ &= -3;
                    this.globalRank_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public boolean hasScore() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public int getScore() {
                    return this.score_;
                }

                public Builder setScore(int i) {
                    this.score_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearScore() {
                    this.bitField0_ &= -5;
                    this.score_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public boolean hasDetails() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public ByteString getDetails() {
                    return this.details_;
                }

                public Builder setDetails(ByteString byteString) {
                    byteString.getClass();
                    this.details_ = byteString;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearDetails() {
                    this.bitField0_ &= -9;
                    this.details_ = Entry.getDefaultInstance().getDetails();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public boolean hasUgcId() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.EntryOrBuilder
                public long getUgcId() {
                    return this.ugcId_;
                }

                public Builder setUgcId(long j) {
                    this.ugcId_ = j;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearUgcId() {
                    this.bitField0_ &= -17;
                    this.ugcId_ = 0L;
                    onChanged();
                    return this;
                }
            }

            public static Entry getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Entry> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Entry> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Entry getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public boolean hasLeaderboardEntryCount() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public int getLeaderboardEntryCount() {
            return this.leaderboardEntryCount_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public List<Entry> getEntriesList() {
            return this.entries_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public List<? extends EntryOrBuilder> getEntriesOrBuilderList() {
            return this.entries_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public int getEntriesCount() {
            return this.entries_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public Entry getEntries(int i) {
            return this.entries_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
        public EntryOrBuilder getEntriesOrBuilder(int i) {
            return this.entries_.get(i);
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
                codedOutputStream.writeInt32(2, this.leaderboardEntryCount_);
            }
            for (int i = 0; i < this.entries_.size(); i++) {
                codedOutputStream.writeMessage(3, this.entries_.get(i));
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
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.leaderboardEntryCount_);
            }
            for (int i2 = 0; i2 < this.entries_.size(); i2++) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, this.entries_.get(i2));
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
            if (!(obj instanceof CMsgClientLBSGetLBEntriesResponse)) {
                return super.equals(obj);
            }
            CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponse = (CMsgClientLBSGetLBEntriesResponse) obj;
            if (hasEresult() != cMsgClientLBSGetLBEntriesResponse.hasEresult()) {
                return false;
            }
            if ((!hasEresult() || getEresult() == cMsgClientLBSGetLBEntriesResponse.getEresult()) && hasLeaderboardEntryCount() == cMsgClientLBSGetLBEntriesResponse.hasLeaderboardEntryCount()) {
                return (!hasLeaderboardEntryCount() || getLeaderboardEntryCount() == cMsgClientLBSGetLBEntriesResponse.getLeaderboardEntryCount()) && getEntriesList().equals(cMsgClientLBSGetLBEntriesResponse.getEntriesList()) && getUnknownFields().equals(cMsgClientLBSGetLBEntriesResponse.getUnknownFields());
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
            if (hasLeaderboardEntryCount()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLeaderboardEntryCount();
            }
            if (getEntriesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getEntriesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSGetLBEntriesResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSGetLBEntriesResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLBSGetLBEntriesResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSGetLBEntriesResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLBSGetLBEntriesResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLBSGetLBEntriesResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLBSGetLBEntriesResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLBSGetLBEntriesResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLBSGetLBEntriesResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> entriesBuilder_;
            private List<Entry> entries_;
            private int eresult_;
            private int leaderboardEntryCount_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLBSGetLBEntriesResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.entries_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.entries_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.leaderboardEntryCount_ = 0;
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.entries_ = Collections.emptyList();
                } else {
                    this.entries_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLbs.internal_static_CMsgClientLBSGetLBEntriesResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLBSGetLBEntriesResponse getDefaultInstanceForType() {
                return CMsgClientLBSGetLBEntriesResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSGetLBEntriesResponse build() {
                CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponseBuildPartial = buildPartial();
                if (cMsgClientLBSGetLBEntriesResponseBuildPartial.isInitialized()) {
                    return cMsgClientLBSGetLBEntriesResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLBSGetLBEntriesResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLBSGetLBEntriesResponse buildPartial() {
                CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponse = new CMsgClientLBSGetLBEntriesResponse(this);
                buildPartialRepeatedFields(cMsgClientLBSGetLBEntriesResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLBSGetLBEntriesResponse);
                }
                onBuilt();
                return cMsgClientLBSGetLBEntriesResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponse) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.entries_ = Collections.unmodifiableList(this.entries_);
                        this.bitField0_ &= -5;
                    }
                    cMsgClientLBSGetLBEntriesResponse.entries_ = this.entries_;
                    return;
                }
                cMsgClientLBSGetLBEntriesResponse.entries_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientLBSGetLBEntriesResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLBSGetLBEntriesResponse.leaderboardEntryCount_ = this.leaderboardEntryCount_;
                    i |= 2;
                }
                cMsgClientLBSGetLBEntriesResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLBSGetLBEntriesResponse) {
                    return mergeFrom((CMsgClientLBSGetLBEntriesResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLBSGetLBEntriesResponse cMsgClientLBSGetLBEntriesResponse) {
                if (cMsgClientLBSGetLBEntriesResponse == CMsgClientLBSGetLBEntriesResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLBSGetLBEntriesResponse.hasEresult()) {
                    setEresult(cMsgClientLBSGetLBEntriesResponse.getEresult());
                }
                if (cMsgClientLBSGetLBEntriesResponse.hasLeaderboardEntryCount()) {
                    setLeaderboardEntryCount(cMsgClientLBSGetLBEntriesResponse.getLeaderboardEntryCount());
                }
                if (this.entriesBuilder_ == null) {
                    if (!cMsgClientLBSGetLBEntriesResponse.entries_.isEmpty()) {
                        if (this.entries_.isEmpty()) {
                            this.entries_ = cMsgClientLBSGetLBEntriesResponse.entries_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureEntriesIsMutable();
                            this.entries_.addAll(cMsgClientLBSGetLBEntriesResponse.entries_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientLBSGetLBEntriesResponse.entries_.isEmpty()) {
                    if (this.entriesBuilder_.isEmpty()) {
                        this.entriesBuilder_.dispose();
                        this.entriesBuilder_ = null;
                        this.entries_ = cMsgClientLBSGetLBEntriesResponse.entries_;
                        this.bitField0_ &= -5;
                        this.entriesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetEntriesFieldBuilder() : null;
                    } else {
                        this.entriesBuilder_.addAllMessages(cMsgClientLBSGetLBEntriesResponse.entries_);
                    }
                }
                mergeUnknownFields(cMsgClientLBSGetLBEntriesResponse.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.leaderboardEntryCount_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    Entry entry = (Entry) codedInputStream.readMessage(Entry.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureEntriesIsMutable();
                                        this.entries_.add(entry);
                                    } else {
                                        repeatedFieldBuilder.addMessage(entry);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public boolean hasLeaderboardEntryCount() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public int getLeaderboardEntryCount() {
                return this.leaderboardEntryCount_;
            }

            public Builder setLeaderboardEntryCount(int i) {
                this.leaderboardEntryCount_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLeaderboardEntryCount() {
                this.bitField0_ &= -3;
                this.leaderboardEntryCount_ = 0;
                onChanged();
                return this;
            }

            private void ensureEntriesIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.entries_ = new ArrayList(this.entries_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public List<Entry> getEntriesList() {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.entries_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public int getEntriesCount() {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.entries_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public Entry getEntries(int i) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.entries_.get(i);
                }
                return (Entry) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setEntries(int i, Entry entry) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    entry.getClass();
                    ensureEntriesIsMutable();
                    this.entries_.set(i, entry);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, entry);
                }
                return this;
            }

            public Builder setEntries(int i, Entry.Builder builder) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureEntriesIsMutable();
                    this.entries_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addEntries(Entry entry) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    entry.getClass();
                    ensureEntriesIsMutable();
                    this.entries_.add(entry);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(entry);
                }
                return this;
            }

            public Builder addEntries(int i, Entry entry) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    entry.getClass();
                    ensureEntriesIsMutable();
                    this.entries_.add(i, entry);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, entry);
                }
                return this;
            }

            public Builder addEntries(Entry.Builder builder) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureEntriesIsMutable();
                    this.entries_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addEntries(int i, Entry.Builder builder) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureEntriesIsMutable();
                    this.entries_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllEntries(Iterable<? extends Entry> iterable) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureEntriesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.entries_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearEntries() {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.entries_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeEntries(int i) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureEntriesIsMutable();
                    this.entries_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Entry.Builder getEntriesBuilder(int i) {
                return (Entry.Builder) internalGetEntriesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public EntryOrBuilder getEntriesOrBuilder(int i) {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.entries_.get(i);
                }
                return (EntryOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponseOrBuilder
            public List<? extends EntryOrBuilder> getEntriesOrBuilderList() {
                RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> repeatedFieldBuilder = this.entriesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.entries_);
            }

            public Entry.Builder addEntriesBuilder() {
                return (Entry.Builder) internalGetEntriesFieldBuilder().addBuilder(Entry.getDefaultInstance());
            }

            public Entry.Builder addEntriesBuilder(int i) {
                return (Entry.Builder) internalGetEntriesFieldBuilder().addBuilder(i, Entry.getDefaultInstance());
            }

            public List<Entry.Builder> getEntriesBuilderList() {
                return internalGetEntriesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Entry, Entry.Builder, EntryOrBuilder> internalGetEntriesFieldBuilder() {
                if (this.entriesBuilder_ == null) {
                    this.entriesBuilder_ = new RepeatedFieldBuilder<>(this.entries_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.entries_ = null;
                }
                return this.entriesBuilder_;
            }
        }

        public static CMsgClientLBSGetLBEntriesResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLBSGetLBEntriesResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLBSGetLBEntriesResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLBSGetLBEntriesResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
