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
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class SteammessagesClientserverUfs {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientUFSGetSingleFileInfoResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUFSGetSingleFileInfoResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUFSGetSingleFileInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUFSGetSingleFileInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUFSGetUGCDetailsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUFSGetUGCDetailsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUFSGetUGCDetails_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUFSGetUGCDetails_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUFSShareFileResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUFSShareFileResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUFSShareFile_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUFSShareFile_fieldAccessorTable;

    public interface CMsgClientUFSGetSingleFileInfoOrBuilder extends MessageOrBuilder {
        int getAppId();

        String getFileName();

        ByteString getFileNameBytes();

        boolean hasAppId();

        boolean hasFileName();
    }

    public interface CMsgClientUFSGetSingleFileInfoResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getEresult();

        String getFileName();

        ByteString getFileNameBytes();

        boolean getIsExplicitDelete();

        int getRawFileSize();

        ByteString getShaFile();

        long getTimeStamp();

        boolean hasAppId();

        boolean hasEresult();

        boolean hasFileName();

        boolean hasIsExplicitDelete();

        boolean hasRawFileSize();

        boolean hasShaFile();

        boolean hasTimeStamp();
    }

    public interface CMsgClientUFSGetUGCDetailsOrBuilder extends MessageOrBuilder {
        long getHcontent();

        boolean hasHcontent();
    }

    public interface CMsgClientUFSGetUGCDetailsResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getCompressedFileSize();

        int getEresult();

        String getFileEncodedSha1();

        ByteString getFileEncodedSha1Bytes();

        int getFileSize();

        String getFilename();

        ByteString getFilenameBytes();

        String getRangecheckHost();

        ByteString getRangecheckHostBytes();

        long getSteamidCreator();

        String getUrl();

        ByteString getUrlBytes();

        boolean hasAppId();

        boolean hasCompressedFileSize();

        boolean hasEresult();

        boolean hasFileEncodedSha1();

        boolean hasFileSize();

        boolean hasFilename();

        boolean hasRangecheckHost();

        boolean hasSteamidCreator();

        boolean hasUrl();
    }

    public interface CMsgClientUFSShareFileOrBuilder extends MessageOrBuilder {
        int getAppId();

        String getFileName();

        ByteString getFileNameBytes();

        boolean hasAppId();

        boolean hasFileName();
    }

    public interface CMsgClientUFSShareFileResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        long getHcontent();

        boolean hasEresult();

        boolean hasHcontent();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverUfs() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverUfs.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nQin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_ufs.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"D\n\u001aCMsgClientUFSGetUGCDetails\u0012&\n\bhcontent\u0018\u0001 \u0001(\u0006:\u001418446744073709551615\"å\u0001\n\"CMsgClientUFSGetUGCDetailsResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u000b\n\u0003url\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006app_id\u0018\u0003 \u0001(\r\u0012\u0010\n\bfilename\u0018\u0004 \u0001(\t\u0012\u0017\n\u000fsteamid_creator\u0018\u0005 \u0001(\u0006\u0012\u0011\n\tfile_size\u0018\u0006 \u0001(\r\u0012\u001c\n\u0014compressed_file_size\u0018\u0007 \u0001(\r\u0012\u0017\n\u000frangecheck_host\u0018\b \u0001(\t\u0012\u0019\n\u0011file_encoded_sha1\u0018\t \u0001(\t\"C\n\u001eCMsgClientUFSGetSingleFileInfo\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0011\n\tfile_name\u0018\u0002 \u0001(\t\"¸\u0001\n&CMsgClientUFSGetSingleFileInfoResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\u0012\u0011\n\tfile_name\u0018\u0003 \u0001(\t\u0012\u0010\n\bsha_file\u0018\u0004 \u0001(\f\u0012\u0012\n\ntime_stamp\u0018\u0005 \u0001(\u0004\u0012\u0015\n\rraw_file_size\u0018\u0006 \u0001(\r\u0012\u001a\n\u0012is_explicit_delete\u0018\u0007 \u0001(\b\";\n\u0016CMsgClientUFSShareFile\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0011\n\tfile_name\u0018\u0002 \u0001(\t\"\\\n\u001eCMsgClientUFSShareFileResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012&\n\bhcontent\u0018\u0002 \u0001(\u0006:\u001418446744073709551615B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientUFSGetUGCDetails_descriptor = descriptor2;
        internal_static_CMsgClientUFSGetUGCDetails_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Hcontent"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientUFSGetUGCDetailsResponse_descriptor = descriptor3;
        internal_static_CMsgClientUFSGetUGCDetailsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Eresult", "Url", "AppId", "Filename", "SteamidCreator", "FileSize", "CompressedFileSize", "RangecheckHost", "FileEncodedSha1"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientUFSGetSingleFileInfo_descriptor = descriptor4;
        internal_static_CMsgClientUFSGetSingleFileInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"AppId", "FileName"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientUFSGetSingleFileInfoResponse_descriptor = descriptor5;
        internal_static_CMsgClientUFSGetSingleFileInfoResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Eresult", "AppId", "FileName", "ShaFile", "TimeStamp", "RawFileSize", "IsExplicitDelete"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientUFSShareFile_descriptor = descriptor6;
        internal_static_CMsgClientUFSShareFile_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"AppId", "FileName"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientUFSShareFileResponse_descriptor = descriptor7;
        internal_static_CMsgClientUFSShareFileResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Eresult", "Hcontent"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientUFSGetUGCDetails extends GeneratedMessage implements CMsgClientUFSGetUGCDetailsOrBuilder {
        private static final CMsgClientUFSGetUGCDetails DEFAULT_INSTANCE;
        public static final int HCONTENT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientUFSGetUGCDetails> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long hcontent_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUFSGetUGCDetails.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUFSGetUGCDetails();
            PARSER = new AbstractParser<CMsgClientUFSGetUGCDetails>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetails.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUFSGetUGCDetails parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUFSGetUGCDetails.newBuilder();
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

        private CMsgClientUFSGetUGCDetails(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.hcontent_ = -1L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUFSGetUGCDetails() {
            this.memoizedIsInitialized = (byte) -1;
            this.hcontent_ = -1L;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetails_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetUGCDetails.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsOrBuilder
        public boolean hasHcontent() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsOrBuilder
        public long getHcontent() {
            return this.hcontent_;
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
                codedOutputStream.writeFixed64(1, this.hcontent_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.hcontent_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientUFSGetUGCDetails)) {
                return super.equals(obj);
            }
            CMsgClientUFSGetUGCDetails cMsgClientUFSGetUGCDetails = (CMsgClientUFSGetUGCDetails) obj;
            if (hasHcontent() != cMsgClientUFSGetUGCDetails.hasHcontent()) {
                return false;
            }
            return (!hasHcontent() || getHcontent() == cMsgClientUFSGetUGCDetails.getHcontent()) && getUnknownFields().equals(cMsgClientUFSGetUGCDetails.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasHcontent()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getHcontent());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetUGCDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetUGCDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetails parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetUGCDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetUGCDetails parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetUGCDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUFSGetUGCDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUFSGetUGCDetails parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetUGCDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUFSGetUGCDetails cMsgClientUFSGetUGCDetails) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUFSGetUGCDetails);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUFSGetUGCDetailsOrBuilder {
            private int bitField0_;
            private long hcontent_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetails_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetUGCDetails.class, Builder.class);
            }

            private Builder() {
                this.hcontent_ = -1L;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.hcontent_ = -1L;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.hcontent_ = -1L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetails_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUFSGetUGCDetails getDefaultInstanceForType() {
                return CMsgClientUFSGetUGCDetails.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetUGCDetails build() {
                CMsgClientUFSGetUGCDetails cMsgClientUFSGetUGCDetailsBuildPartial = buildPartial();
                if (cMsgClientUFSGetUGCDetailsBuildPartial.isInitialized()) {
                    return cMsgClientUFSGetUGCDetailsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUFSGetUGCDetailsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetUGCDetails buildPartial() {
                CMsgClientUFSGetUGCDetails cMsgClientUFSGetUGCDetails = new CMsgClientUFSGetUGCDetails(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUFSGetUGCDetails);
                }
                onBuilt();
                return cMsgClientUFSGetUGCDetails;
            }

            private void buildPartial0(CMsgClientUFSGetUGCDetails cMsgClientUFSGetUGCDetails) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientUFSGetUGCDetails.hcontent_ = this.hcontent_;
                } else {
                    i = 0;
                }
                cMsgClientUFSGetUGCDetails.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUFSGetUGCDetails) {
                    return mergeFrom((CMsgClientUFSGetUGCDetails) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUFSGetUGCDetails cMsgClientUFSGetUGCDetails) {
                if (cMsgClientUFSGetUGCDetails == CMsgClientUFSGetUGCDetails.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUFSGetUGCDetails.hasHcontent()) {
                    setHcontent(cMsgClientUFSGetUGCDetails.getHcontent());
                }
                mergeUnknownFields(cMsgClientUFSGetUGCDetails.getUnknownFields());
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
                                    this.hcontent_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsOrBuilder
            public boolean hasHcontent() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsOrBuilder
            public long getHcontent() {
                return this.hcontent_;
            }

            public Builder setHcontent(long j) {
                this.hcontent_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearHcontent() {
                this.bitField0_ &= -2;
                this.hcontent_ = -1L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUFSGetUGCDetails getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUFSGetUGCDetails> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUFSGetUGCDetails> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUFSGetUGCDetails getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUFSGetUGCDetailsResponse extends GeneratedMessage implements CMsgClientUFSGetUGCDetailsResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 3;
        public static final int COMPRESSED_FILE_SIZE_FIELD_NUMBER = 7;
        private static final CMsgClientUFSGetUGCDetailsResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int FILENAME_FIELD_NUMBER = 4;
        public static final int FILE_ENCODED_SHA1_FIELD_NUMBER = 9;
        public static final int FILE_SIZE_FIELD_NUMBER = 6;
        private static final Parser<CMsgClientUFSGetUGCDetailsResponse> PARSER;
        public static final int RANGECHECK_HOST_FIELD_NUMBER = 8;
        public static final int STEAMID_CREATOR_FIELD_NUMBER = 5;
        public static final int URL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int compressedFileSize_;
        private int eresult_;
        private volatile Object fileEncodedSha1_;
        private int fileSize_;
        private volatile Object filename_;
        private byte memoizedIsInitialized;
        private volatile Object rangecheckHost_;
        private long steamidCreator_;
        private volatile Object url_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUFSGetUGCDetailsResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUFSGetUGCDetailsResponse();
            PARSER = new AbstractParser<CMsgClientUFSGetUGCDetailsResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUFSGetUGCDetailsResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUFSGetUGCDetailsResponse.newBuilder();
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

        private CMsgClientUFSGetUGCDetailsResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.url_ = "";
            this.appId_ = 0;
            this.filename_ = "";
            this.steamidCreator_ = 0L;
            this.fileSize_ = 0;
            this.compressedFileSize_ = 0;
            this.rangecheckHost_ = "";
            this.fileEncodedSha1_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUFSGetUGCDetailsResponse() {
            this.eresult_ = 2;
            this.url_ = "";
            this.appId_ = 0;
            this.filename_ = "";
            this.steamidCreator_ = 0L;
            this.fileSize_ = 0;
            this.compressedFileSize_ = 0;
            this.rangecheckHost_ = "";
            this.fileEncodedSha1_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.url_ = "";
            this.filename_ = "";
            this.rangecheckHost_ = "";
            this.fileEncodedSha1_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetailsResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetailsResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetUGCDetailsResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasUrl() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public String getUrl() {
            Object obj = this.url_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.url_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public ByteString getUrlBytes() {
            Object obj = this.url_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.url_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasFilename() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public ByteString getFilenameBytes() {
            Object obj = this.filename_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.filename_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasSteamidCreator() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public long getSteamidCreator() {
            return this.steamidCreator_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasFileSize() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public int getFileSize() {
            return this.fileSize_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasCompressedFileSize() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public int getCompressedFileSize() {
            return this.compressedFileSize_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasRangecheckHost() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public String getRangecheckHost() {
            Object obj = this.rangecheckHost_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.rangecheckHost_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public ByteString getRangecheckHostBytes() {
            Object obj = this.rangecheckHost_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.rangecheckHost_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public boolean hasFileEncodedSha1() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public String getFileEncodedSha1() {
            Object obj = this.fileEncodedSha1_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fileEncodedSha1_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
        public ByteString getFileEncodedSha1Bytes() {
            Object obj = this.fileEncodedSha1_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fileEncodedSha1_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.url_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.appId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.filename_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed64(5, this.steamidCreator_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.fileSize_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.compressedFileSize_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.rangecheckHost_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 9, this.fileEncodedSha1_);
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
                iComputeInt32Size += GeneratedMessage.computeStringSize(2, this.url_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(3, this.appId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(4, this.filename_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += CodedOutputStream.computeFixed64Size(5, this.steamidCreator_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(6, this.fileSize_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(7, this.compressedFileSize_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(8, this.rangecheckHost_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(9, this.fileEncodedSha1_);
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
            if (!(obj instanceof CMsgClientUFSGetUGCDetailsResponse)) {
                return super.equals(obj);
            }
            CMsgClientUFSGetUGCDetailsResponse cMsgClientUFSGetUGCDetailsResponse = (CMsgClientUFSGetUGCDetailsResponse) obj;
            if (hasEresult() != cMsgClientUFSGetUGCDetailsResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientUFSGetUGCDetailsResponse.getEresult()) || hasUrl() != cMsgClientUFSGetUGCDetailsResponse.hasUrl()) {
                return false;
            }
            if ((hasUrl() && !getUrl().equals(cMsgClientUFSGetUGCDetailsResponse.getUrl())) || hasAppId() != cMsgClientUFSGetUGCDetailsResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientUFSGetUGCDetailsResponse.getAppId()) || hasFilename() != cMsgClientUFSGetUGCDetailsResponse.hasFilename()) {
                return false;
            }
            if ((hasFilename() && !getFilename().equals(cMsgClientUFSGetUGCDetailsResponse.getFilename())) || hasSteamidCreator() != cMsgClientUFSGetUGCDetailsResponse.hasSteamidCreator()) {
                return false;
            }
            if ((hasSteamidCreator() && getSteamidCreator() != cMsgClientUFSGetUGCDetailsResponse.getSteamidCreator()) || hasFileSize() != cMsgClientUFSGetUGCDetailsResponse.hasFileSize()) {
                return false;
            }
            if ((hasFileSize() && getFileSize() != cMsgClientUFSGetUGCDetailsResponse.getFileSize()) || hasCompressedFileSize() != cMsgClientUFSGetUGCDetailsResponse.hasCompressedFileSize()) {
                return false;
            }
            if ((hasCompressedFileSize() && getCompressedFileSize() != cMsgClientUFSGetUGCDetailsResponse.getCompressedFileSize()) || hasRangecheckHost() != cMsgClientUFSGetUGCDetailsResponse.hasRangecheckHost()) {
                return false;
            }
            if ((!hasRangecheckHost() || getRangecheckHost().equals(cMsgClientUFSGetUGCDetailsResponse.getRangecheckHost())) && hasFileEncodedSha1() == cMsgClientUFSGetUGCDetailsResponse.hasFileEncodedSha1()) {
                return (!hasFileEncodedSha1() || getFileEncodedSha1().equals(cMsgClientUFSGetUGCDetailsResponse.getFileEncodedSha1())) && getUnknownFields().equals(cMsgClientUFSGetUGCDetailsResponse.getUnknownFields());
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
            if (hasUrl()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getUrl().hashCode();
            }
            if (hasAppId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAppId();
            }
            if (hasFilename()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getFilename().hashCode();
            }
            if (hasSteamidCreator()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getSteamidCreator());
            }
            if (hasFileSize()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getFileSize();
            }
            if (hasCompressedFileSize()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getCompressedFileSize();
            }
            if (hasRangecheckHost()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getRangecheckHost().hashCode();
            }
            if (hasFileEncodedSha1()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getFileEncodedSha1().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetUGCDetailsResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetUGCDetailsResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetUGCDetailsResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetUGCDetailsResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUFSGetUGCDetailsResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUFSGetUGCDetailsResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetUGCDetailsResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUFSGetUGCDetailsResponse cMsgClientUFSGetUGCDetailsResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUFSGetUGCDetailsResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUFSGetUGCDetailsResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int compressedFileSize_;
            private int eresult_;
            private Object fileEncodedSha1_;
            private int fileSize_;
            private Object filename_;
            private Object rangecheckHost_;
            private long steamidCreator_;
            private Object url_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetailsResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetailsResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetUGCDetailsResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.url_ = "";
                this.filename_ = "";
                this.rangecheckHost_ = "";
                this.fileEncodedSha1_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.url_ = "";
                this.filename_ = "";
                this.rangecheckHost_ = "";
                this.fileEncodedSha1_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.url_ = "";
                this.appId_ = 0;
                this.filename_ = "";
                this.steamidCreator_ = 0L;
                this.fileSize_ = 0;
                this.compressedFileSize_ = 0;
                this.rangecheckHost_ = "";
                this.fileEncodedSha1_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetUGCDetailsResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUFSGetUGCDetailsResponse getDefaultInstanceForType() {
                return CMsgClientUFSGetUGCDetailsResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetUGCDetailsResponse build() {
                CMsgClientUFSGetUGCDetailsResponse cMsgClientUFSGetUGCDetailsResponseBuildPartial = buildPartial();
                if (cMsgClientUFSGetUGCDetailsResponseBuildPartial.isInitialized()) {
                    return cMsgClientUFSGetUGCDetailsResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUFSGetUGCDetailsResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetUGCDetailsResponse buildPartial() {
                CMsgClientUFSGetUGCDetailsResponse cMsgClientUFSGetUGCDetailsResponse = new CMsgClientUFSGetUGCDetailsResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUFSGetUGCDetailsResponse);
                }
                onBuilt();
                return cMsgClientUFSGetUGCDetailsResponse;
            }

            private void buildPartial0(CMsgClientUFSGetUGCDetailsResponse cMsgClientUFSGetUGCDetailsResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.url_ = this.url_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.appId_ = this.appId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.filename_ = this.filename_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.steamidCreator_ = this.steamidCreator_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.fileSize_ = this.fileSize_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.compressedFileSize_ = this.compressedFileSize_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.rangecheckHost_ = this.rangecheckHost_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientUFSGetUGCDetailsResponse.fileEncodedSha1_ = this.fileEncodedSha1_;
                    i |= 256;
                }
                cMsgClientUFSGetUGCDetailsResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUFSGetUGCDetailsResponse) {
                    return mergeFrom((CMsgClientUFSGetUGCDetailsResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUFSGetUGCDetailsResponse cMsgClientUFSGetUGCDetailsResponse) {
                if (cMsgClientUFSGetUGCDetailsResponse == CMsgClientUFSGetUGCDetailsResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasEresult()) {
                    setEresult(cMsgClientUFSGetUGCDetailsResponse.getEresult());
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasUrl()) {
                    this.url_ = cMsgClientUFSGetUGCDetailsResponse.url_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasAppId()) {
                    setAppId(cMsgClientUFSGetUGCDetailsResponse.getAppId());
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasFilename()) {
                    this.filename_ = cMsgClientUFSGetUGCDetailsResponse.filename_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasSteamidCreator()) {
                    setSteamidCreator(cMsgClientUFSGetUGCDetailsResponse.getSteamidCreator());
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasFileSize()) {
                    setFileSize(cMsgClientUFSGetUGCDetailsResponse.getFileSize());
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasCompressedFileSize()) {
                    setCompressedFileSize(cMsgClientUFSGetUGCDetailsResponse.getCompressedFileSize());
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasRangecheckHost()) {
                    this.rangecheckHost_ = cMsgClientUFSGetUGCDetailsResponse.rangecheckHost_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cMsgClientUFSGetUGCDetailsResponse.hasFileEncodedSha1()) {
                    this.fileEncodedSha1_ = cMsgClientUFSGetUGCDetailsResponse.fileEncodedSha1_;
                    this.bitField0_ |= 256;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientUFSGetUGCDetailsResponse.getUnknownFields());
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
                                    this.url_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.filename_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 41) {
                                    this.steamidCreator_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.fileSize_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.compressedFileSize_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                } else if (tag == 66) {
                                    this.rangecheckHost_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                } else if (tag == 74) {
                                    this.fileEncodedSha1_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasUrl() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public String getUrl() {
                Object obj = this.url_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.url_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public ByteString getUrlBytes() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.url_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUrl(String str) {
                str.getClass();
                this.url_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearUrl() {
                this.url_ = CMsgClientUFSGetUGCDetailsResponse.getDefaultInstance().getUrl();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setUrlBytes(ByteString byteString) {
                byteString.getClass();
                this.url_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasFilename() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
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
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearFilename() {
                this.filename_ = CMsgClientUFSGetUGCDetailsResponse.getDefaultInstance().getFilename();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setFilenameBytes(ByteString byteString) {
                byteString.getClass();
                this.filename_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasSteamidCreator() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public long getSteamidCreator() {
                return this.steamidCreator_;
            }

            public Builder setSteamidCreator(long j) {
                this.steamidCreator_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamidCreator() {
                this.bitField0_ &= -17;
                this.steamidCreator_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasFileSize() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public int getFileSize() {
                return this.fileSize_;
            }

            public Builder setFileSize(int i) {
                this.fileSize_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearFileSize() {
                this.bitField0_ &= -33;
                this.fileSize_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasCompressedFileSize() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public int getCompressedFileSize() {
                return this.compressedFileSize_;
            }

            public Builder setCompressedFileSize(int i) {
                this.compressedFileSize_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearCompressedFileSize() {
                this.bitField0_ &= -65;
                this.compressedFileSize_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasRangecheckHost() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public String getRangecheckHost() {
                Object obj = this.rangecheckHost_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.rangecheckHost_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public ByteString getRangecheckHostBytes() {
                Object obj = this.rangecheckHost_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.rangecheckHost_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRangecheckHost(String str) {
                str.getClass();
                this.rangecheckHost_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearRangecheckHost() {
                this.rangecheckHost_ = CMsgClientUFSGetUGCDetailsResponse.getDefaultInstance().getRangecheckHost();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setRangecheckHostBytes(ByteString byteString) {
                byteString.getClass();
                this.rangecheckHost_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public boolean hasFileEncodedSha1() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public String getFileEncodedSha1() {
                Object obj = this.fileEncodedSha1_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.fileEncodedSha1_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponseOrBuilder
            public ByteString getFileEncodedSha1Bytes() {
                Object obj = this.fileEncodedSha1_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.fileEncodedSha1_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFileEncodedSha1(String str) {
                str.getClass();
                this.fileEncodedSha1_ = str;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearFileEncodedSha1() {
                this.fileEncodedSha1_ = CMsgClientUFSGetUGCDetailsResponse.getDefaultInstance().getFileEncodedSha1();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public Builder setFileEncodedSha1Bytes(ByteString byteString) {
                byteString.getClass();
                this.fileEncodedSha1_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUFSGetUGCDetailsResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUFSGetUGCDetailsResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUFSGetUGCDetailsResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUFSGetUGCDetailsResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUFSGetSingleFileInfo extends GeneratedMessage implements CMsgClientUFSGetSingleFileInfoOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientUFSGetSingleFileInfo DEFAULT_INSTANCE;
        public static final int FILE_NAME_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientUFSGetSingleFileInfo> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private volatile Object fileName_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUFSGetSingleFileInfo.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUFSGetSingleFileInfo();
            PARSER = new AbstractParser<CMsgClientUFSGetSingleFileInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfo.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUFSGetSingleFileInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUFSGetSingleFileInfo.newBuilder();
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

        private CMsgClientUFSGetSingleFileInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.fileName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUFSGetSingleFileInfo() {
            this.appId_ = 0;
            this.fileName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.fileName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetSingleFileInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
        public boolean hasFileName() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
        public String getFileName() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fileName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
        public ByteString getFileNameBytes() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fileName_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.fileName_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.fileName_);
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
            if (!(obj instanceof CMsgClientUFSGetSingleFileInfo)) {
                return super.equals(obj);
            }
            CMsgClientUFSGetSingleFileInfo cMsgClientUFSGetSingleFileInfo = (CMsgClientUFSGetSingleFileInfo) obj;
            if (hasAppId() != cMsgClientUFSGetSingleFileInfo.hasAppId()) {
                return false;
            }
            if ((!hasAppId() || getAppId() == cMsgClientUFSGetSingleFileInfo.getAppId()) && hasFileName() == cMsgClientUFSGetSingleFileInfo.hasFileName()) {
                return (!hasFileName() || getFileName().equals(cMsgClientUFSGetSingleFileInfo.getFileName())) && getUnknownFields().equals(cMsgClientUFSGetSingleFileInfo.getUnknownFields());
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
            if (hasFileName()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFileName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetSingleFileInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetSingleFileInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetSingleFileInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetSingleFileInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetSingleFileInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUFSGetSingleFileInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUFSGetSingleFileInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetSingleFileInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUFSGetSingleFileInfo cMsgClientUFSGetSingleFileInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUFSGetSingleFileInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUFSGetSingleFileInfoOrBuilder {
            private int appId_;
            private int bitField0_;
            private Object fileName_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetSingleFileInfo.class, Builder.class);
            }

            private Builder() {
                this.fileName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.fileName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.fileName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUFSGetSingleFileInfo getDefaultInstanceForType() {
                return CMsgClientUFSGetSingleFileInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetSingleFileInfo build() {
                CMsgClientUFSGetSingleFileInfo cMsgClientUFSGetSingleFileInfoBuildPartial = buildPartial();
                if (cMsgClientUFSGetSingleFileInfoBuildPartial.isInitialized()) {
                    return cMsgClientUFSGetSingleFileInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUFSGetSingleFileInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetSingleFileInfo buildPartial() {
                CMsgClientUFSGetSingleFileInfo cMsgClientUFSGetSingleFileInfo = new CMsgClientUFSGetSingleFileInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUFSGetSingleFileInfo);
                }
                onBuilt();
                return cMsgClientUFSGetSingleFileInfo;
            }

            private void buildPartial0(CMsgClientUFSGetSingleFileInfo cMsgClientUFSGetSingleFileInfo) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUFSGetSingleFileInfo.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUFSGetSingleFileInfo.fileName_ = this.fileName_;
                    i |= 2;
                }
                cMsgClientUFSGetSingleFileInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUFSGetSingleFileInfo) {
                    return mergeFrom((CMsgClientUFSGetSingleFileInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUFSGetSingleFileInfo cMsgClientUFSGetSingleFileInfo) {
                if (cMsgClientUFSGetSingleFileInfo == CMsgClientUFSGetSingleFileInfo.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUFSGetSingleFileInfo.hasAppId()) {
                    setAppId(cMsgClientUFSGetSingleFileInfo.getAppId());
                }
                if (cMsgClientUFSGetSingleFileInfo.hasFileName()) {
                    this.fileName_ = cMsgClientUFSGetSingleFileInfo.fileName_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientUFSGetSingleFileInfo.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.fileName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
            public boolean hasFileName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
            public String getFileName() {
                Object obj = this.fileName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.fileName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoOrBuilder
            public ByteString getFileNameBytes() {
                Object obj = this.fileName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.fileName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFileName(String str) {
                str.getClass();
                this.fileName_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFileName() {
                this.fileName_ = CMsgClientUFSGetSingleFileInfo.getDefaultInstance().getFileName();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setFileNameBytes(ByteString byteString) {
                byteString.getClass();
                this.fileName_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUFSGetSingleFileInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUFSGetSingleFileInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUFSGetSingleFileInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUFSGetSingleFileInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUFSGetSingleFileInfoResponse extends GeneratedMessage implements CMsgClientUFSGetSingleFileInfoResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 2;
        private static final CMsgClientUFSGetSingleFileInfoResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int FILE_NAME_FIELD_NUMBER = 3;
        public static final int IS_EXPLICIT_DELETE_FIELD_NUMBER = 7;
        private static final Parser<CMsgClientUFSGetSingleFileInfoResponse> PARSER;
        public static final int RAW_FILE_SIZE_FIELD_NUMBER = 6;
        public static final int SHA_FILE_FIELD_NUMBER = 4;
        public static final int TIME_STAMP_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int eresult_;
        private volatile Object fileName_;
        private boolean isExplicitDelete_;
        private byte memoizedIsInitialized;
        private int rawFileSize_;
        private ByteString shaFile_;
        private long timeStamp_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUFSGetSingleFileInfoResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUFSGetSingleFileInfoResponse();
            PARSER = new AbstractParser<CMsgClientUFSGetSingleFileInfoResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUFSGetSingleFileInfoResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUFSGetSingleFileInfoResponse.newBuilder();
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

        private CMsgClientUFSGetSingleFileInfoResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.appId_ = 0;
            this.fileName_ = "";
            this.shaFile_ = ByteString.EMPTY;
            this.timeStamp_ = 0L;
            this.rawFileSize_ = 0;
            this.isExplicitDelete_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUFSGetSingleFileInfoResponse() {
            this.eresult_ = 2;
            this.appId_ = 0;
            this.fileName_ = "";
            ByteString byteString = ByteString.EMPTY;
            this.shaFile_ = byteString;
            this.timeStamp_ = 0L;
            this.rawFileSize_ = 0;
            this.isExplicitDelete_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.fileName_ = "";
            this.shaFile_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfoResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetSingleFileInfoResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasFileName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public String getFileName() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fileName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public ByteString getFileNameBytes() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fileName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasShaFile() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public ByteString getShaFile() {
            return this.shaFile_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasTimeStamp() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public long getTimeStamp() {
            return this.timeStamp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasRawFileSize() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public int getRawFileSize() {
            return this.rawFileSize_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean hasIsExplicitDelete() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
        public boolean getIsExplicitDelete() {
            return this.isExplicitDelete_;
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
                codedOutputStream.writeUInt32(2, this.appId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.fileName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBytes(4, this.shaFile_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt64(5, this.timeStamp_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.rawFileSize_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.isExplicitDelete_);
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
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(2, this.appId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(3, this.fileName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBytesSize(4, this.shaFile_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt64Size(5, this.timeStamp_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(6, this.rawFileSize_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(7, this.isExplicitDelete_);
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
            if (!(obj instanceof CMsgClientUFSGetSingleFileInfoResponse)) {
                return super.equals(obj);
            }
            CMsgClientUFSGetSingleFileInfoResponse cMsgClientUFSGetSingleFileInfoResponse = (CMsgClientUFSGetSingleFileInfoResponse) obj;
            if (hasEresult() != cMsgClientUFSGetSingleFileInfoResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientUFSGetSingleFileInfoResponse.getEresult()) || hasAppId() != cMsgClientUFSGetSingleFileInfoResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientUFSGetSingleFileInfoResponse.getAppId()) || hasFileName() != cMsgClientUFSGetSingleFileInfoResponse.hasFileName()) {
                return false;
            }
            if ((hasFileName() && !getFileName().equals(cMsgClientUFSGetSingleFileInfoResponse.getFileName())) || hasShaFile() != cMsgClientUFSGetSingleFileInfoResponse.hasShaFile()) {
                return false;
            }
            if ((hasShaFile() && !getShaFile().equals(cMsgClientUFSGetSingleFileInfoResponse.getShaFile())) || hasTimeStamp() != cMsgClientUFSGetSingleFileInfoResponse.hasTimeStamp()) {
                return false;
            }
            if ((hasTimeStamp() && getTimeStamp() != cMsgClientUFSGetSingleFileInfoResponse.getTimeStamp()) || hasRawFileSize() != cMsgClientUFSGetSingleFileInfoResponse.hasRawFileSize()) {
                return false;
            }
            if ((!hasRawFileSize() || getRawFileSize() == cMsgClientUFSGetSingleFileInfoResponse.getRawFileSize()) && hasIsExplicitDelete() == cMsgClientUFSGetSingleFileInfoResponse.hasIsExplicitDelete()) {
                return (!hasIsExplicitDelete() || getIsExplicitDelete() == cMsgClientUFSGetSingleFileInfoResponse.getIsExplicitDelete()) && getUnknownFields().equals(cMsgClientUFSGetSingleFileInfoResponse.getUnknownFields());
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
            if (hasAppId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppId();
            }
            if (hasFileName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getFileName().hashCode();
            }
            if (hasShaFile()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getShaFile().hashCode();
            }
            if (hasTimeStamp()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getTimeStamp());
            }
            if (hasRawFileSize()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getRawFileSize();
            }
            if (hasIsExplicitDelete()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getIsExplicitDelete());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetSingleFileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetSingleFileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSGetSingleFileInfoResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetSingleFileInfoResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUFSGetSingleFileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUFSGetSingleFileInfoResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSGetSingleFileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUFSGetSingleFileInfoResponse cMsgClientUFSGetSingleFileInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUFSGetSingleFileInfoResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUFSGetSingleFileInfoResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int eresult_;
            private Object fileName_;
            private boolean isExplicitDelete_;
            private int rawFileSize_;
            private ByteString shaFile_;
            private long timeStamp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfoResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSGetSingleFileInfoResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.fileName_ = "";
                this.shaFile_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.fileName_ = "";
                this.shaFile_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.appId_ = 0;
                this.fileName_ = "";
                this.shaFile_ = ByteString.EMPTY;
                this.timeStamp_ = 0L;
                this.rawFileSize_ = 0;
                this.isExplicitDelete_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSGetSingleFileInfoResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUFSGetSingleFileInfoResponse getDefaultInstanceForType() {
                return CMsgClientUFSGetSingleFileInfoResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetSingleFileInfoResponse build() {
                CMsgClientUFSGetSingleFileInfoResponse cMsgClientUFSGetSingleFileInfoResponseBuildPartial = buildPartial();
                if (cMsgClientUFSGetSingleFileInfoResponseBuildPartial.isInitialized()) {
                    return cMsgClientUFSGetSingleFileInfoResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUFSGetSingleFileInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSGetSingleFileInfoResponse buildPartial() {
                CMsgClientUFSGetSingleFileInfoResponse cMsgClientUFSGetSingleFileInfoResponse = new CMsgClientUFSGetSingleFileInfoResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUFSGetSingleFileInfoResponse);
                }
                onBuilt();
                return cMsgClientUFSGetSingleFileInfoResponse;
            }

            private void buildPartial0(CMsgClientUFSGetSingleFileInfoResponse cMsgClientUFSGetSingleFileInfoResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.appId_ = this.appId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.fileName_ = this.fileName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.shaFile_ = this.shaFile_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.timeStamp_ = this.timeStamp_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.rawFileSize_ = this.rawFileSize_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientUFSGetSingleFileInfoResponse.isExplicitDelete_ = this.isExplicitDelete_;
                    i |= 64;
                }
                cMsgClientUFSGetSingleFileInfoResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUFSGetSingleFileInfoResponse) {
                    return mergeFrom((CMsgClientUFSGetSingleFileInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUFSGetSingleFileInfoResponse cMsgClientUFSGetSingleFileInfoResponse) {
                if (cMsgClientUFSGetSingleFileInfoResponse == CMsgClientUFSGetSingleFileInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasEresult()) {
                    setEresult(cMsgClientUFSGetSingleFileInfoResponse.getEresult());
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasAppId()) {
                    setAppId(cMsgClientUFSGetSingleFileInfoResponse.getAppId());
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasFileName()) {
                    this.fileName_ = cMsgClientUFSGetSingleFileInfoResponse.fileName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasShaFile()) {
                    setShaFile(cMsgClientUFSGetSingleFileInfoResponse.getShaFile());
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasTimeStamp()) {
                    setTimeStamp(cMsgClientUFSGetSingleFileInfoResponse.getTimeStamp());
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasRawFileSize()) {
                    setRawFileSize(cMsgClientUFSGetSingleFileInfoResponse.getRawFileSize());
                }
                if (cMsgClientUFSGetSingleFileInfoResponse.hasIsExplicitDelete()) {
                    setIsExplicitDelete(cMsgClientUFSGetSingleFileInfoResponse.getIsExplicitDelete());
                }
                mergeUnknownFields(cMsgClientUFSGetSingleFileInfoResponse.getUnknownFields());
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
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.fileName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.shaFile_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.timeStamp_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.rawFileSize_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.isExplicitDelete_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.appId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -3;
                this.appId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasFileName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public String getFileName() {
                Object obj = this.fileName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.fileName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public ByteString getFileNameBytes() {
                Object obj = this.fileName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.fileName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFileName(String str) {
                str.getClass();
                this.fileName_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearFileName() {
                this.fileName_ = CMsgClientUFSGetSingleFileInfoResponse.getDefaultInstance().getFileName();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setFileNameBytes(ByteString byteString) {
                byteString.getClass();
                this.fileName_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasShaFile() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public ByteString getShaFile() {
                return this.shaFile_;
            }

            public Builder setShaFile(ByteString byteString) {
                byteString.getClass();
                this.shaFile_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearShaFile() {
                this.bitField0_ &= -9;
                this.shaFile_ = CMsgClientUFSGetSingleFileInfoResponse.getDefaultInstance().getShaFile();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasTimeStamp() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public long getTimeStamp() {
                return this.timeStamp_;
            }

            public Builder setTimeStamp(long j) {
                this.timeStamp_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -17;
                this.timeStamp_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasRawFileSize() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public int getRawFileSize() {
                return this.rawFileSize_;
            }

            public Builder setRawFileSize(int i) {
                this.rawFileSize_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearRawFileSize() {
                this.bitField0_ &= -33;
                this.rawFileSize_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean hasIsExplicitDelete() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponseOrBuilder
            public boolean getIsExplicitDelete() {
                return this.isExplicitDelete_;
            }

            public Builder setIsExplicitDelete(boolean z) {
                this.isExplicitDelete_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearIsExplicitDelete() {
                this.bitField0_ &= -65;
                this.isExplicitDelete_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUFSGetSingleFileInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUFSGetSingleFileInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUFSGetSingleFileInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUFSGetSingleFileInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUFSShareFile extends GeneratedMessage implements CMsgClientUFSShareFileOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientUFSShareFile DEFAULT_INSTANCE;
        public static final int FILE_NAME_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientUFSShareFile> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private volatile Object fileName_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUFSShareFile.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUFSShareFile();
            PARSER = new AbstractParser<CMsgClientUFSShareFile>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFile.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUFSShareFile parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUFSShareFile.newBuilder();
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

        private CMsgClientUFSShareFile(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.fileName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUFSShareFile() {
            this.appId_ = 0;
            this.fileName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.fileName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFile_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFile_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSShareFile.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
        public boolean hasFileName() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
        public String getFileName() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fileName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
        public ByteString getFileNameBytes() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fileName_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.fileName_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.fileName_);
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
            if (!(obj instanceof CMsgClientUFSShareFile)) {
                return super.equals(obj);
            }
            CMsgClientUFSShareFile cMsgClientUFSShareFile = (CMsgClientUFSShareFile) obj;
            if (hasAppId() != cMsgClientUFSShareFile.hasAppId()) {
                return false;
            }
            if ((!hasAppId() || getAppId() == cMsgClientUFSShareFile.getAppId()) && hasFileName() == cMsgClientUFSShareFile.hasFileName()) {
                return (!hasFileName() || getFileName().equals(cMsgClientUFSShareFile.getFileName())) && getUnknownFields().equals(cMsgClientUFSShareFile.getUnknownFields());
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
            if (hasFileName()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFileName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUFSShareFile parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUFSShareFile parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFile parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUFSShareFile parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFile parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUFSShareFile parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFile parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSShareFile) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSShareFile parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSShareFile) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFile parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSShareFile) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSShareFile parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSShareFile) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFile parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUFSShareFile) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUFSShareFile parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSShareFile) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUFSShareFile cMsgClientUFSShareFile) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUFSShareFile);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUFSShareFileOrBuilder {
            private int appId_;
            private int bitField0_;
            private Object fileName_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFile_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFile_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSShareFile.class, Builder.class);
            }

            private Builder() {
                this.fileName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.fileName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.fileName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFile_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUFSShareFile getDefaultInstanceForType() {
                return CMsgClientUFSShareFile.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSShareFile build() {
                CMsgClientUFSShareFile cMsgClientUFSShareFileBuildPartial = buildPartial();
                if (cMsgClientUFSShareFileBuildPartial.isInitialized()) {
                    return cMsgClientUFSShareFileBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUFSShareFileBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSShareFile buildPartial() {
                CMsgClientUFSShareFile cMsgClientUFSShareFile = new CMsgClientUFSShareFile(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUFSShareFile);
                }
                onBuilt();
                return cMsgClientUFSShareFile;
            }

            private void buildPartial0(CMsgClientUFSShareFile cMsgClientUFSShareFile) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUFSShareFile.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUFSShareFile.fileName_ = this.fileName_;
                    i |= 2;
                }
                cMsgClientUFSShareFile.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUFSShareFile) {
                    return mergeFrom((CMsgClientUFSShareFile) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUFSShareFile cMsgClientUFSShareFile) {
                if (cMsgClientUFSShareFile == CMsgClientUFSShareFile.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUFSShareFile.hasAppId()) {
                    setAppId(cMsgClientUFSShareFile.getAppId());
                }
                if (cMsgClientUFSShareFile.hasFileName()) {
                    this.fileName_ = cMsgClientUFSShareFile.fileName_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientUFSShareFile.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.fileName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
            public boolean hasFileName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
            public String getFileName() {
                Object obj = this.fileName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.fileName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileOrBuilder
            public ByteString getFileNameBytes() {
                Object obj = this.fileName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.fileName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFileName(String str) {
                str.getClass();
                this.fileName_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFileName() {
                this.fileName_ = CMsgClientUFSShareFile.getDefaultInstance().getFileName();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setFileNameBytes(ByteString byteString) {
                byteString.getClass();
                this.fileName_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUFSShareFile getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUFSShareFile> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUFSShareFile> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUFSShareFile getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUFSShareFileResponse extends GeneratedMessage implements CMsgClientUFSShareFileResponseOrBuilder {
        private static final CMsgClientUFSShareFileResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int HCONTENT_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientUFSShareFileResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private long hcontent_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUFSShareFileResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUFSShareFileResponse();
            PARSER = new AbstractParser<CMsgClientUFSShareFileResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUFSShareFileResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUFSShareFileResponse.newBuilder();
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

        private CMsgClientUFSShareFileResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.hcontent_ = -1L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUFSShareFileResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.hcontent_ = -1L;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFileResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFileResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSShareFileResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
        public boolean hasHcontent() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
        public long getHcontent() {
            return this.hcontent_;
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
                codedOutputStream.writeFixed64(2, this.hcontent_);
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
                iComputeInt32Size += CodedOutputStream.computeFixed64Size(2, this.hcontent_);
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
            if (!(obj instanceof CMsgClientUFSShareFileResponse)) {
                return super.equals(obj);
            }
            CMsgClientUFSShareFileResponse cMsgClientUFSShareFileResponse = (CMsgClientUFSShareFileResponse) obj;
            if (hasEresult() != cMsgClientUFSShareFileResponse.hasEresult()) {
                return false;
            }
            if ((!hasEresult() || getEresult() == cMsgClientUFSShareFileResponse.getEresult()) && hasHcontent() == cMsgClientUFSShareFileResponse.hasHcontent()) {
                return (!hasHcontent() || getHcontent() == cMsgClientUFSShareFileResponse.getHcontent()) && getUnknownFields().equals(cMsgClientUFSShareFileResponse.getUnknownFields());
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
            if (hasHcontent()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getHcontent());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUFSShareFileResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSShareFileResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSShareFileResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUFSShareFileResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUFSShareFileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSShareFileResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUFSShareFileResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUFSShareFileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUFSShareFileResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUFSShareFileResponse cMsgClientUFSShareFileResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUFSShareFileResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUFSShareFileResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private long hcontent_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFileResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFileResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUFSShareFileResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.hcontent_ = -1L;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.hcontent_ = -1L;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.hcontent_ = -1L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUfs.internal_static_CMsgClientUFSShareFileResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUFSShareFileResponse getDefaultInstanceForType() {
                return CMsgClientUFSShareFileResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSShareFileResponse build() {
                CMsgClientUFSShareFileResponse cMsgClientUFSShareFileResponseBuildPartial = buildPartial();
                if (cMsgClientUFSShareFileResponseBuildPartial.isInitialized()) {
                    return cMsgClientUFSShareFileResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUFSShareFileResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUFSShareFileResponse buildPartial() {
                CMsgClientUFSShareFileResponse cMsgClientUFSShareFileResponse = new CMsgClientUFSShareFileResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUFSShareFileResponse);
                }
                onBuilt();
                return cMsgClientUFSShareFileResponse;
            }

            private void buildPartial0(CMsgClientUFSShareFileResponse cMsgClientUFSShareFileResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientUFSShareFileResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientUFSShareFileResponse.hcontent_ = this.hcontent_;
                    i |= 2;
                }
                cMsgClientUFSShareFileResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUFSShareFileResponse) {
                    return mergeFrom((CMsgClientUFSShareFileResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUFSShareFileResponse cMsgClientUFSShareFileResponse) {
                if (cMsgClientUFSShareFileResponse == CMsgClientUFSShareFileResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientUFSShareFileResponse.hasEresult()) {
                    setEresult(cMsgClientUFSShareFileResponse.getEresult());
                }
                if (cMsgClientUFSShareFileResponse.hasHcontent()) {
                    setHcontent(cMsgClientUFSShareFileResponse.getHcontent());
                }
                mergeUnknownFields(cMsgClientUFSShareFileResponse.getUnknownFields());
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
                                    this.hcontent_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
            public boolean hasHcontent() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs.CMsgClientUFSShareFileResponseOrBuilder
            public long getHcontent() {
                return this.hcontent_;
            }

            public Builder setHcontent(long j) {
                this.hcontent_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearHcontent() {
                this.bitField0_ &= -3;
                this.hcontent_ = -1L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientUFSShareFileResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUFSShareFileResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUFSShareFileResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUFSShareFileResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
