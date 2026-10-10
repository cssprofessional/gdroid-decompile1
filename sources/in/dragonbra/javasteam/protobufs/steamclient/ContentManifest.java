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

/* JADX INFO: loaded from: classes.dex */
public final class ContentManifest {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_ContentDeltaChunks_DeltaChunk_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentDeltaChunks_DeltaChunk_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ContentDeltaChunks_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentDeltaChunks_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ContentManifestMetadata_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentManifestMetadata_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ContentManifestPayload_FileMapping_ChunkData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentManifestPayload_FileMapping_ChunkData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ContentManifestPayload_FileMapping_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentManifestPayload_FileMapping_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ContentManifestPayload_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentManifestPayload_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ContentManifestSignature_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ContentManifestSignature_fieldAccessorTable;

    public interface ContentManifestMetadataOrBuilder extends MessageOrBuilder {
        long getCbDiskCompressed();

        long getCbDiskOriginal();

        int getCrcClear();

        int getCrcEncrypted();

        int getCreationTime();

        int getDepotId();

        boolean getFilenamesEncrypted();

        long getGidManifest();

        int getUniqueChunks();

        boolean hasCbDiskCompressed();

        boolean hasCbDiskOriginal();

        boolean hasCrcClear();

        boolean hasCrcEncrypted();

        boolean hasCreationTime();

        boolean hasDepotId();

        boolean hasFilenamesEncrypted();

        boolean hasGidManifest();

        boolean hasUniqueChunks();
    }

    public interface ContentManifestPayloadOrBuilder extends MessageOrBuilder {
        ContentManifestPayload.FileMapping getMappings(int i);

        int getMappingsCount();

        List<ContentManifestPayload.FileMapping> getMappingsList();

        ContentManifestPayload.FileMappingOrBuilder getMappingsOrBuilder(int i);

        List<? extends ContentManifestPayload.FileMappingOrBuilder> getMappingsOrBuilderList();
    }

    public interface ContentManifestSignatureOrBuilder extends MessageOrBuilder {
        ByteString getSignature();

        boolean hasSignature();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private ContentManifest() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ContentManifest.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nCin/dragonbra/javasteam/protobufs/steamclient/content_manifest.proto\"ï\u0002\n\u0016ContentManifestPayload\u00125\n\bmappings\u0018\u0001 \u0003(\u000b2#.ContentManifestPayload.FileMapping\u001a\u009d\u0002\n\u000bFileMapping\u0012\u0010\n\bfilename\u0018\u0001 \u0001(\t\u0012\f\n\u0004size\u0018\u0002 \u0001(\u0004\u0012\r\n\u0005flags\u0018\u0003 \u0001(\r\u0012\u0014\n\fsha_filename\u0018\u0004 \u0001(\f\u0012\u0013\n\u000bsha_content\u0018\u0005 \u0001(\f\u0012=\n\u0006chunks\u0018\u0006 \u0003(\u000b2-.ContentManifestPayload.FileMapping.ChunkData\u0012\u0012\n\nlinktarget\u0018\u0007 \u0001(\t\u001aa\n\tChunkData\u0012\u000b\n\u0003sha\u0018\u0001 \u0001(\f\u0012\u000b\n\u0003crc\u0018\u0002 \u0001(\u0007\u0012\u000e\n\u0006offset\u0018\u0003 \u0001(\u0004\u0012\u0013\n\u000bcb_original\u0018\u0004 \u0001(\r\u0012\u0015\n\rcb_compressed\u0018\u0005 \u0001(\r\"ì\u0001\n\u0017ContentManifestMetadata\u0012\u0010\n\bdepot_id\u0018\u0001 \u0001(\r\u0012\u0014\n\fgid_manifest\u0018\u0002 \u0001(\u0004\u0012\u0015\n\rcreation_time\u0018\u0003 \u0001(\r\u0012\u001b\n\u0013filenames_encrypted\u0018\u0004 \u0001(\b\u0012\u0018\n\u0010cb_disk_original\u0018\u0005 \u0001(\u0004\u0012\u001a\n\u0012cb_disk_compressed\u0018\u0006 \u0001(\u0004\u0012\u0015\n\runique_chunks\u0018\u0007 \u0001(\r\u0012\u0015\n\rcrc_encrypted\u0018\b \u0001(\r\u0012\u0011\n\tcrc_clear\u0018\t \u0001(\r\"-\n\u0018ContentManifestSignature\u0012\u0011\n\tsignature\u0018\u0001 \u0001(\f\"\u0084\u0003\n\u0012ContentDeltaChunks\u0012\u0010\n\bdepot_id\u0018\u0001 \u0001(\r\u0012\u001a\n\u0012manifest_id_source\u0018\u0002 \u0001(\u0004\u0012\u001a\n\u0012manifest_id_target\u0018\u0003 \u0001(\u0004\u00123\n\u000bdeltaChunks\u0018\u0004 \u0003(\u000b2\u001e.ContentDeltaChunks.DeltaChunk\u0012h\n\u0013chunk_data_location\u0018\u0005 \u0001(\u000e2\u001f.EContentDeltaChunkDataLocation:*k_EContentDeltaChunkDataLocationInProtobuf\u001a\u0084\u0001\n\nDeltaChunk\u0012\u0012\n\nsha_source\u0018\u0001 \u0001(\f\u0012\u0012\n\nsha_target\u0018\u0002 \u0001(\f\u0012\u0015\n\rsize_original\u0018\u0003 \u0001(\r\u0012\u0014\n\fpatch_method\u0018\u0004 \u0001(\r\u0012\r\n\u0005chunk\u0018\u0005 \u0001(\f\u0012\u0012\n\nsize_delta\u0018\u0006 \u0001(\r*\u0083\u0001\n\u001eEContentDeltaChunkDataLocation\u0012.\n*k_EContentDeltaChunkDataLocationInProtobuf\u0010\u0000\u00121\n-k_EContentDeltaChunkDataLocationAfterProtobuf\u0010\u0001B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[0]);
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_ContentManifestPayload_descriptor = descriptor2;
        internal_static_ContentManifestPayload_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Mappings"});
        Descriptors.Descriptor descriptor3 = descriptor2.getNestedTypes().get(0);
        internal_static_ContentManifestPayload_FileMapping_descriptor = descriptor3;
        internal_static_ContentManifestPayload_FileMapping_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Filename", "Size", "Flags", "ShaFilename", "ShaContent", "Chunks", "Linktarget"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        internal_static_ContentManifestPayload_FileMapping_ChunkData_descriptor = descriptor4;
        internal_static_ContentManifestPayload_FileMapping_ChunkData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Sha", "Crc", "Offset", "CbOriginal", "CbCompressed"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(1);
        internal_static_ContentManifestMetadata_descriptor = descriptor5;
        internal_static_ContentManifestMetadata_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"DepotId", "GidManifest", "CreationTime", "FilenamesEncrypted", "CbDiskOriginal", "CbDiskCompressed", "UniqueChunks", "CrcEncrypted", "CrcClear"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(2);
        internal_static_ContentManifestSignature_descriptor = descriptor6;
        internal_static_ContentManifestSignature_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Signature"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(3);
        internal_static_ContentDeltaChunks_descriptor = descriptor7;
        internal_static_ContentDeltaChunks_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"DepotId", "ManifestIdSource", "ManifestIdTarget", "DeltaChunks", "ChunkDataLocation"});
        Descriptors.Descriptor descriptor8 = descriptor7.getNestedTypes().get(0);
        internal_static_ContentDeltaChunks_DeltaChunk_descriptor = descriptor8;
        internal_static_ContentDeltaChunks_DeltaChunk_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"ShaSource", "ShaTarget", "SizeOriginal", "PatchMethod", "Chunk", "SizeDelta"});
        descriptor.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class ContentManifestPayload extends GeneratedMessage implements ContentManifestPayloadOrBuilder {
        private static final ContentManifestPayload DEFAULT_INSTANCE;
        public static final int MAPPINGS_FIELD_NUMBER = 1;
        private static final Parser<ContentManifestPayload> PARSER;
        private static final long serialVersionUID = 0;
        private List<FileMapping> mappings_;
        private byte memoizedIsInitialized;

        public interface FileMappingOrBuilder extends MessageOrBuilder {
            FileMapping.ChunkData getChunks(int i);

            int getChunksCount();

            List<FileMapping.ChunkData> getChunksList();

            FileMapping.ChunkDataOrBuilder getChunksOrBuilder(int i);

            List<? extends FileMapping.ChunkDataOrBuilder> getChunksOrBuilderList();

            String getFilename();

            ByteString getFilenameBytes();

            int getFlags();

            String getLinktarget();

            ByteString getLinktargetBytes();

            ByteString getShaContent();

            ByteString getShaFilename();

            long getSize();

            boolean hasFilename();

            boolean hasFlags();

            boolean hasLinktarget();

            boolean hasShaContent();

            boolean hasShaFilename();

            boolean hasSize();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ContentManifestPayload.class.getName());
            DEFAULT_INSTANCE = new ContentManifestPayload();
            PARSER = new AbstractParser<ContentManifestPayload>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.1
                @Override // com.google.protobuf.Parser
                public ContentManifestPayload parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ContentManifestPayload.newBuilder();
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

        private ContentManifestPayload(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private ContentManifestPayload() {
            this.memoizedIsInitialized = (byte) -1;
            this.mappings_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ContentManifest.internal_static_ContentManifestPayload_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ContentManifest.internal_static_ContentManifestPayload_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentManifestPayload.class, Builder.class);
        }

        public static final class FileMapping extends GeneratedMessage implements FileMappingOrBuilder {
            public static final int CHUNKS_FIELD_NUMBER = 6;
            private static final FileMapping DEFAULT_INSTANCE;
            public static final int FILENAME_FIELD_NUMBER = 1;
            public static final int FLAGS_FIELD_NUMBER = 3;
            public static final int LINKTARGET_FIELD_NUMBER = 7;
            private static final Parser<FileMapping> PARSER;
            public static final int SHA_CONTENT_FIELD_NUMBER = 5;
            public static final int SHA_FILENAME_FIELD_NUMBER = 4;
            public static final int SIZE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private List<ChunkData> chunks_;
            private volatile Object filename_;
            private int flags_;
            private volatile Object linktarget_;
            private byte memoizedIsInitialized;
            private ByteString shaContent_;
            private ByteString shaFilename_;
            private long size_;

            public interface ChunkDataOrBuilder extends MessageOrBuilder {
                int getCbCompressed();

                int getCbOriginal();

                int getCrc();

                long getOffset();

                ByteString getSha();

                boolean hasCbCompressed();

                boolean hasCbOriginal();

                boolean hasCrc();

                boolean hasOffset();

                boolean hasSha();
            }

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", FileMapping.class.getName());
                DEFAULT_INSTANCE = new FileMapping();
                PARSER = new AbstractParser<FileMapping>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.1
                    @Override // com.google.protobuf.Parser
                    public FileMapping parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = FileMapping.newBuilder();
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

            private FileMapping(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.filename_ = "";
                this.size_ = 0L;
                this.flags_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.shaFilename_ = byteString;
                this.shaContent_ = byteString;
                this.linktarget_ = "";
                this.memoizedIsInitialized = (byte) -1;
            }

            private FileMapping() {
                this.filename_ = "";
                this.size_ = 0L;
                this.flags_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.shaFilename_ = byteString;
                this.shaContent_ = byteString;
                this.linktarget_ = "";
                this.memoizedIsInitialized = (byte) -1;
                this.filename_ = "";
                this.shaFilename_ = byteString;
                this.shaContent_ = byteString;
                this.chunks_ = Collections.emptyList();
                this.linktarget_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ContentManifest.internal_static_ContentManifestPayload_FileMapping_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ContentManifest.internal_static_ContentManifestPayload_FileMapping_fieldAccessorTable.ensureFieldAccessorsInitialized(FileMapping.class, Builder.class);
            }

            public static final class ChunkData extends GeneratedMessage implements ChunkDataOrBuilder {
                public static final int CB_COMPRESSED_FIELD_NUMBER = 5;
                public static final int CB_ORIGINAL_FIELD_NUMBER = 4;
                public static final int CRC_FIELD_NUMBER = 2;
                private static final ChunkData DEFAULT_INSTANCE;
                public static final int OFFSET_FIELD_NUMBER = 3;
                private static final Parser<ChunkData> PARSER;
                public static final int SHA_FIELD_NUMBER = 1;
                private static final long serialVersionUID = 0;
                private int bitField0_;
                private int cbCompressed_;
                private int cbOriginal_;
                private int crc_;
                private byte memoizedIsInitialized;
                private long offset_;
                private ByteString sha_;

                static {
                    RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ChunkData.class.getName());
                    DEFAULT_INSTANCE = new ChunkData();
                    PARSER = new AbstractParser<ChunkData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkData.1
                        @Override // com.google.protobuf.Parser
                        public ChunkData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            Builder builderNewBuilder = ChunkData.newBuilder();
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

                private ChunkData(GeneratedMessage.Builder<?> builder) {
                    super(builder);
                    this.sha_ = ByteString.EMPTY;
                    this.crc_ = 0;
                    this.offset_ = 0L;
                    this.cbOriginal_ = 0;
                    this.cbCompressed_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                }

                private ChunkData() {
                    ByteString byteString = ByteString.EMPTY;
                    this.crc_ = 0;
                    this.offset_ = 0L;
                    this.cbOriginal_ = 0;
                    this.cbCompressed_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                    this.sha_ = byteString;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return ContentManifest.internal_static_ContentManifestPayload_FileMapping_ChunkData_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return ContentManifest.internal_static_ContentManifestPayload_FileMapping_ChunkData_fieldAccessorTable.ensureFieldAccessorsInitialized(ChunkData.class, Builder.class);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public boolean hasSha() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public ByteString getSha() {
                    return this.sha_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public boolean hasCrc() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public int getCrc() {
                    return this.crc_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public boolean hasOffset() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public long getOffset() {
                    return this.offset_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public boolean hasCbOriginal() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public int getCbOriginal() {
                    return this.cbOriginal_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public boolean hasCbCompressed() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                public int getCbCompressed() {
                    return this.cbCompressed_;
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
                        codedOutputStream.writeBytes(1, this.sha_);
                    }
                    if ((this.bitField0_ & 2) != 0) {
                        codedOutputStream.writeFixed32(2, this.crc_);
                    }
                    if ((this.bitField0_ & 4) != 0) {
                        codedOutputStream.writeUInt64(3, this.offset_);
                    }
                    if ((this.bitField0_ & 8) != 0) {
                        codedOutputStream.writeUInt32(4, this.cbOriginal_);
                    }
                    if ((this.bitField0_ & 16) != 0) {
                        codedOutputStream.writeUInt32(5, this.cbCompressed_);
                    }
                    getUnknownFields().writeTo(codedOutputStream);
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
                public int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int iComputeBytesSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBytesSize(1, this.sha_) : 0;
                    if ((this.bitField0_ & 2) != 0) {
                        iComputeBytesSize += CodedOutputStream.computeFixed32Size(2, this.crc_);
                    }
                    if ((this.bitField0_ & 4) != 0) {
                        iComputeBytesSize += CodedOutputStream.computeUInt64Size(3, this.offset_);
                    }
                    if ((this.bitField0_ & 8) != 0) {
                        iComputeBytesSize += CodedOutputStream.computeUInt32Size(4, this.cbOriginal_);
                    }
                    if ((this.bitField0_ & 16) != 0) {
                        iComputeBytesSize += CodedOutputStream.computeUInt32Size(5, this.cbCompressed_);
                    }
                    int serializedSize = iComputeBytesSize + getUnknownFields().getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof ChunkData)) {
                        return super.equals(obj);
                    }
                    ChunkData chunkData = (ChunkData) obj;
                    if (hasSha() != chunkData.hasSha()) {
                        return false;
                    }
                    if ((hasSha() && !getSha().equals(chunkData.getSha())) || hasCrc() != chunkData.hasCrc()) {
                        return false;
                    }
                    if ((hasCrc() && getCrc() != chunkData.getCrc()) || hasOffset() != chunkData.hasOffset()) {
                        return false;
                    }
                    if ((hasOffset() && getOffset() != chunkData.getOffset()) || hasCbOriginal() != chunkData.hasCbOriginal()) {
                        return false;
                    }
                    if ((!hasCbOriginal() || getCbOriginal() == chunkData.getCbOriginal()) && hasCbCompressed() == chunkData.hasCbCompressed()) {
                        return (!hasCbCompressed() || getCbCompressed() == chunkData.getCbCompressed()) && getUnknownFields().equals(chunkData.getUnknownFields());
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
                    if (hasSha()) {
                        iHashCode = (((iHashCode * 37) + 1) * 53) + getSha().hashCode();
                    }
                    if (hasCrc()) {
                        iHashCode = (((iHashCode * 37) + 2) * 53) + getCrc();
                    }
                    if (hasOffset()) {
                        iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getOffset());
                    }
                    if (hasCbOriginal()) {
                        iHashCode = (((iHashCode * 37) + 4) * 53) + getCbOriginal();
                    }
                    if (hasCbCompressed()) {
                        iHashCode = (((iHashCode * 37) + 5) * 53) + getCbCompressed();
                    }
                    int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                    this.memoizedHashCode = iHashCode2;
                    return iHashCode2;
                }

                public static ChunkData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static ChunkData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static ChunkData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static ChunkData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static ChunkData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static ChunkData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static ChunkData parseFrom(InputStream inputStream) throws IOException {
                    return (ChunkData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
                }

                public static ChunkData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (ChunkData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static ChunkData parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (ChunkData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static ChunkData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (ChunkData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static ChunkData parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (ChunkData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
                }

                public static ChunkData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (ChunkData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(ChunkData chunkData) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(chunkData);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.google.protobuf.AbstractMessage
                public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChunkDataOrBuilder {
                    private int bitField0_;
                    private int cbCompressed_;
                    private int cbOriginal_;
                    private int crc_;
                    private long offset_;
                    private ByteString sha_;

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return ContentManifest.internal_static_ContentManifestPayload_FileMapping_ChunkData_descriptor;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder
                    public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                        return ContentManifest.internal_static_ContentManifestPayload_FileMapping_ChunkData_fieldAccessorTable.ensureFieldAccessorsInitialized(ChunkData.class, Builder.class);
                    }

                    private Builder() {
                        this.sha_ = ByteString.EMPTY;
                    }

                    private Builder(AbstractMessage.BuilderParent builderParent) {
                        super(builderParent);
                        this.sha_ = ByteString.EMPTY;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public Builder clear() {
                        super.clear();
                        this.bitField0_ = 0;
                        this.sha_ = ByteString.EMPTY;
                        this.crc_ = 0;
                        this.offset_ = 0L;
                        this.cbOriginal_ = 0;
                        this.cbCompressed_ = 0;
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return ContentManifest.internal_static_ContentManifestPayload_FileMapping_ChunkData_descriptor;
                    }

                    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                    public ChunkData getDefaultInstanceForType() {
                        return ChunkData.getDefaultInstance();
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public ChunkData build() {
                        ChunkData chunkDataBuildPartial = buildPartial();
                        if (chunkDataBuildPartial.isInitialized()) {
                            return chunkDataBuildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) chunkDataBuildPartial);
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public ChunkData buildPartial() {
                        ChunkData chunkData = new ChunkData(this);
                        if (this.bitField0_ != 0) {
                            buildPartial0(chunkData);
                        }
                        onBuilt();
                        return chunkData;
                    }

                    private void buildPartial0(ChunkData chunkData) {
                        int i;
                        int i2 = this.bitField0_;
                        if ((i2 & 1) != 0) {
                            chunkData.sha_ = this.sha_;
                            i = 1;
                        } else {
                            i = 0;
                        }
                        if ((i2 & 2) != 0) {
                            chunkData.crc_ = this.crc_;
                            i |= 2;
                        }
                        if ((i2 & 4) != 0) {
                            chunkData.offset_ = this.offset_;
                            i |= 4;
                        }
                        if ((i2 & 8) != 0) {
                            chunkData.cbOriginal_ = this.cbOriginal_;
                            i |= 8;
                        }
                        if ((i2 & 16) != 0) {
                            chunkData.cbCompressed_ = this.cbCompressed_;
                            i |= 16;
                        }
                        chunkData.bitField0_ |= i;
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof ChunkData) {
                            return mergeFrom((ChunkData) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(ChunkData chunkData) {
                        if (chunkData == ChunkData.getDefaultInstance()) {
                            return this;
                        }
                        if (chunkData.hasSha()) {
                            setSha(chunkData.getSha());
                        }
                        if (chunkData.hasCrc()) {
                            setCrc(chunkData.getCrc());
                        }
                        if (chunkData.hasOffset()) {
                            setOffset(chunkData.getOffset());
                        }
                        if (chunkData.hasCbOriginal()) {
                            setCbOriginal(chunkData.getCbOriginal());
                        }
                        if (chunkData.hasCbCompressed()) {
                            setCbCompressed(chunkData.getCbCompressed());
                        }
                        mergeUnknownFields(chunkData.getUnknownFields());
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
                                            this.sha_ = codedInputStream.readBytes();
                                            this.bitField0_ |= 1;
                                        } else if (tag == 21) {
                                            this.crc_ = codedInputStream.readFixed32();
                                            this.bitField0_ |= 2;
                                        } else if (tag == 24) {
                                            this.offset_ = codedInputStream.readUInt64();
                                            this.bitField0_ |= 4;
                                        } else if (tag == 32) {
                                            this.cbOriginal_ = codedInputStream.readUInt32();
                                            this.bitField0_ |= 8;
                                        } else if (tag == 40) {
                                            this.cbCompressed_ = codedInputStream.readUInt32();
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public boolean hasSha() {
                        return (this.bitField0_ & 1) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public ByteString getSha() {
                        return this.sha_;
                    }

                    public Builder setSha(ByteString byteString) {
                        byteString.getClass();
                        this.sha_ = byteString;
                        this.bitField0_ |= 1;
                        onChanged();
                        return this;
                    }

                    public Builder clearSha() {
                        this.bitField0_ &= -2;
                        this.sha_ = ChunkData.getDefaultInstance().getSha();
                        onChanged();
                        return this;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public boolean hasCrc() {
                        return (this.bitField0_ & 2) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public int getCrc() {
                        return this.crc_;
                    }

                    public Builder setCrc(int i) {
                        this.crc_ = i;
                        this.bitField0_ |= 2;
                        onChanged();
                        return this;
                    }

                    public Builder clearCrc() {
                        this.bitField0_ &= -3;
                        this.crc_ = 0;
                        onChanged();
                        return this;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public boolean hasOffset() {
                        return (this.bitField0_ & 4) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public long getOffset() {
                        return this.offset_;
                    }

                    public Builder setOffset(long j) {
                        this.offset_ = j;
                        this.bitField0_ |= 4;
                        onChanged();
                        return this;
                    }

                    public Builder clearOffset() {
                        this.bitField0_ &= -5;
                        this.offset_ = 0L;
                        onChanged();
                        return this;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public boolean hasCbOriginal() {
                        return (this.bitField0_ & 8) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public int getCbOriginal() {
                        return this.cbOriginal_;
                    }

                    public Builder setCbOriginal(int i) {
                        this.cbOriginal_ = i;
                        this.bitField0_ |= 8;
                        onChanged();
                        return this;
                    }

                    public Builder clearCbOriginal() {
                        this.bitField0_ &= -9;
                        this.cbOriginal_ = 0;
                        onChanged();
                        return this;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public boolean hasCbCompressed() {
                        return (this.bitField0_ & 16) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMapping.ChunkDataOrBuilder
                    public int getCbCompressed() {
                        return this.cbCompressed_;
                    }

                    public Builder setCbCompressed(int i) {
                        this.cbCompressed_ = i;
                        this.bitField0_ |= 16;
                        onChanged();
                        return this;
                    }

                    public Builder clearCbCompressed() {
                        this.bitField0_ &= -17;
                        this.cbCompressed_ = 0;
                        onChanged();
                        return this;
                    }
                }

                public static ChunkData getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static Parser<ChunkData> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Parser<ChunkData> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ChunkData getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public boolean hasFilename() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public ByteString getFilenameBytes() {
                Object obj = this.filename_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.filename_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public boolean hasSize() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public long getSize() {
                return this.size_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public boolean hasFlags() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public int getFlags() {
                return this.flags_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public boolean hasShaFilename() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public ByteString getShaFilename() {
                return this.shaFilename_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public boolean hasShaContent() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public ByteString getShaContent() {
                return this.shaContent_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public List<ChunkData> getChunksList() {
                return this.chunks_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public List<? extends ChunkDataOrBuilder> getChunksOrBuilderList() {
                return this.chunks_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public int getChunksCount() {
                return this.chunks_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public ChunkData getChunks(int i) {
                return this.chunks_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public ChunkDataOrBuilder getChunksOrBuilder(int i) {
                return this.chunks_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public boolean hasLinktarget() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public String getLinktarget() {
                Object obj = this.linktarget_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.linktarget_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
            public ByteString getLinktargetBytes() {
                Object obj = this.linktarget_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.linktarget_ = byteStringCopyFromUtf8;
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
                    GeneratedMessage.writeString(codedOutputStream, 1, this.filename_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt64(2, this.size_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeUInt32(3, this.flags_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBytes(4, this.shaFilename_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeBytes(5, this.shaContent_);
                }
                for (int i = 0; i < this.chunks_.size(); i++) {
                    codedOutputStream.writeMessage(6, this.chunks_.get(i));
                }
                if ((this.bitField0_ & 32) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 7, this.linktarget_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.filename_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeStringSize += CodedOutputStream.computeUInt64Size(2, this.size_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeStringSize += CodedOutputStream.computeUInt32Size(3, this.flags_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeStringSize += CodedOutputStream.computeBytesSize(4, this.shaFilename_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeStringSize += CodedOutputStream.computeBytesSize(5, this.shaContent_);
                }
                for (int i2 = 0; i2 < this.chunks_.size(); i2++) {
                    iComputeStringSize += CodedOutputStream.computeMessageSize(6, this.chunks_.get(i2));
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeStringSize += GeneratedMessage.computeStringSize(7, this.linktarget_);
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
                if (!(obj instanceof FileMapping)) {
                    return super.equals(obj);
                }
                FileMapping fileMapping = (FileMapping) obj;
                if (hasFilename() != fileMapping.hasFilename()) {
                    return false;
                }
                if ((hasFilename() && !getFilename().equals(fileMapping.getFilename())) || hasSize() != fileMapping.hasSize()) {
                    return false;
                }
                if ((hasSize() && getSize() != fileMapping.getSize()) || hasFlags() != fileMapping.hasFlags()) {
                    return false;
                }
                if ((hasFlags() && getFlags() != fileMapping.getFlags()) || hasShaFilename() != fileMapping.hasShaFilename()) {
                    return false;
                }
                if ((hasShaFilename() && !getShaFilename().equals(fileMapping.getShaFilename())) || hasShaContent() != fileMapping.hasShaContent()) {
                    return false;
                }
                if ((!hasShaContent() || getShaContent().equals(fileMapping.getShaContent())) && getChunksList().equals(fileMapping.getChunksList()) && hasLinktarget() == fileMapping.hasLinktarget()) {
                    return (!hasLinktarget() || getLinktarget().equals(fileMapping.getLinktarget())) && getUnknownFields().equals(fileMapping.getUnknownFields());
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
                if (hasFilename()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getFilename().hashCode();
                }
                if (hasSize()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSize());
                }
                if (hasFlags()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getFlags();
                }
                if (hasShaFilename()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getShaFilename().hashCode();
                }
                if (hasShaContent()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getShaContent().hashCode();
                }
                if (getChunksCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getChunksList().hashCode();
                }
                if (hasLinktarget()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + getLinktarget().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static FileMapping parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static FileMapping parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static FileMapping parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static FileMapping parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static FileMapping parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static FileMapping parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static FileMapping parseFrom(InputStream inputStream) throws IOException {
                return (FileMapping) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static FileMapping parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FileMapping) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static FileMapping parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (FileMapping) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static FileMapping parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FileMapping) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static FileMapping parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (FileMapping) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static FileMapping parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FileMapping) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(FileMapping fileMapping) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(fileMapping);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements FileMappingOrBuilder {
                private int bitField0_;
                private RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> chunksBuilder_;
                private List<ChunkData> chunks_;
                private Object filename_;
                private int flags_;
                private Object linktarget_;
                private ByteString shaContent_;
                private ByteString shaFilename_;
                private long size_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return ContentManifest.internal_static_ContentManifestPayload_FileMapping_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return ContentManifest.internal_static_ContentManifestPayload_FileMapping_fieldAccessorTable.ensureFieldAccessorsInitialized(FileMapping.class, Builder.class);
                }

                private Builder() {
                    this.filename_ = "";
                    ByteString byteString = ByteString.EMPTY;
                    this.shaFilename_ = byteString;
                    this.shaContent_ = byteString;
                    this.chunks_ = Collections.emptyList();
                    this.linktarget_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.filename_ = "";
                    ByteString byteString = ByteString.EMPTY;
                    this.shaFilename_ = byteString;
                    this.shaContent_ = byteString;
                    this.chunks_ = Collections.emptyList();
                    this.linktarget_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.filename_ = "";
                    this.size_ = 0L;
                    this.flags_ = 0;
                    ByteString byteString = ByteString.EMPTY;
                    this.shaFilename_ = byteString;
                    this.shaContent_ = byteString;
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.chunks_ = Collections.emptyList();
                    } else {
                        this.chunks_ = null;
                        repeatedFieldBuilder.clear();
                    }
                    this.bitField0_ &= -33;
                    this.linktarget_ = "";
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return ContentManifest.internal_static_ContentManifestPayload_FileMapping_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public FileMapping getDefaultInstanceForType() {
                    return FileMapping.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public FileMapping build() {
                    FileMapping fileMappingBuildPartial = buildPartial();
                    if (fileMappingBuildPartial.isInitialized()) {
                        return fileMappingBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) fileMappingBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public FileMapping buildPartial() {
                    FileMapping fileMapping = new FileMapping(this);
                    buildPartialRepeatedFields(fileMapping);
                    if (this.bitField0_ != 0) {
                        buildPartial0(fileMapping);
                    }
                    onBuilt();
                    return fileMapping;
                }

                private void buildPartialRepeatedFields(FileMapping fileMapping) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        if ((this.bitField0_ & 32) != 0) {
                            this.chunks_ = Collections.unmodifiableList(this.chunks_);
                            this.bitField0_ &= -33;
                        }
                        fileMapping.chunks_ = this.chunks_;
                        return;
                    }
                    fileMapping.chunks_ = repeatedFieldBuilder.build();
                }

                private void buildPartial0(FileMapping fileMapping) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        fileMapping.filename_ = this.filename_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        fileMapping.size_ = this.size_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        fileMapping.flags_ = this.flags_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        fileMapping.shaFilename_ = this.shaFilename_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        fileMapping.shaContent_ = this.shaContent_;
                        i |= 16;
                    }
                    if ((i2 & 64) != 0) {
                        fileMapping.linktarget_ = this.linktarget_;
                        i |= 32;
                    }
                    fileMapping.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof FileMapping) {
                        return mergeFrom((FileMapping) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(FileMapping fileMapping) {
                    if (fileMapping == FileMapping.getDefaultInstance()) {
                        return this;
                    }
                    if (fileMapping.hasFilename()) {
                        this.filename_ = fileMapping.filename_;
                        this.bitField0_ |= 1;
                        onChanged();
                    }
                    if (fileMapping.hasSize()) {
                        setSize(fileMapping.getSize());
                    }
                    if (fileMapping.hasFlags()) {
                        setFlags(fileMapping.getFlags());
                    }
                    if (fileMapping.hasShaFilename()) {
                        setShaFilename(fileMapping.getShaFilename());
                    }
                    if (fileMapping.hasShaContent()) {
                        setShaContent(fileMapping.getShaContent());
                    }
                    if (this.chunksBuilder_ == null) {
                        if (!fileMapping.chunks_.isEmpty()) {
                            if (this.chunks_.isEmpty()) {
                                this.chunks_ = fileMapping.chunks_;
                                this.bitField0_ &= -33;
                            } else {
                                ensureChunksIsMutable();
                                this.chunks_.addAll(fileMapping.chunks_);
                            }
                            onChanged();
                        }
                    } else if (!fileMapping.chunks_.isEmpty()) {
                        if (this.chunksBuilder_.isEmpty()) {
                            this.chunksBuilder_.dispose();
                            this.chunksBuilder_ = null;
                            this.chunks_ = fileMapping.chunks_;
                            this.bitField0_ &= -33;
                            this.chunksBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetChunksFieldBuilder() : null;
                        } else {
                            this.chunksBuilder_.addAllMessages(fileMapping.chunks_);
                        }
                    }
                    if (fileMapping.hasLinktarget()) {
                        this.linktarget_ = fileMapping.linktarget_;
                        this.bitField0_ |= 64;
                        onChanged();
                    }
                    mergeUnknownFields(fileMapping.getUnknownFields());
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
                                        this.filename_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.size_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.flags_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 34) {
                                        this.shaFilename_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 42) {
                                        this.shaContent_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 16;
                                    } else if (tag == 50) {
                                        ChunkData chunkData = (ChunkData) codedInputStream.readMessage(ChunkData.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                                        if (repeatedFieldBuilder == null) {
                                            ensureChunksIsMutable();
                                            this.chunks_.add(chunkData);
                                        } else {
                                            repeatedFieldBuilder.addMessage(chunkData);
                                        }
                                    } else if (tag == 58) {
                                        this.linktarget_ = codedInputStream.readBytes();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public boolean hasFilename() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
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
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearFilename() {
                    this.filename_ = FileMapping.getDefaultInstance().getFilename();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder setFilenameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.filename_ = byteString;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public boolean hasSize() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public long getSize() {
                    return this.size_;
                }

                public Builder setSize(long j) {
                    this.size_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearSize() {
                    this.bitField0_ &= -3;
                    this.size_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public boolean hasFlags() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public int getFlags() {
                    return this.flags_;
                }

                public Builder setFlags(int i) {
                    this.flags_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearFlags() {
                    this.bitField0_ &= -5;
                    this.flags_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public boolean hasShaFilename() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public ByteString getShaFilename() {
                    return this.shaFilename_;
                }

                public Builder setShaFilename(ByteString byteString) {
                    byteString.getClass();
                    this.shaFilename_ = byteString;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearShaFilename() {
                    this.bitField0_ &= -9;
                    this.shaFilename_ = FileMapping.getDefaultInstance().getShaFilename();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public boolean hasShaContent() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public ByteString getShaContent() {
                    return this.shaContent_;
                }

                public Builder setShaContent(ByteString byteString) {
                    byteString.getClass();
                    this.shaContent_ = byteString;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearShaContent() {
                    this.bitField0_ &= -17;
                    this.shaContent_ = FileMapping.getDefaultInstance().getShaContent();
                    onChanged();
                    return this;
                }

                private void ensureChunksIsMutable() {
                    if ((this.bitField0_ & 32) == 0) {
                        this.chunks_ = new ArrayList(this.chunks_);
                        this.bitField0_ |= 32;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public List<ChunkData> getChunksList() {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.chunks_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public int getChunksCount() {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.chunks_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public ChunkData getChunks(int i) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.chunks_.get(i);
                    }
                    return (ChunkData) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setChunks(int i, ChunkData chunkData) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        chunkData.getClass();
                        ensureChunksIsMutable();
                        this.chunks_.set(i, chunkData);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, chunkData);
                    }
                    return this;
                }

                public Builder setChunks(int i, ChunkData.Builder builder) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureChunksIsMutable();
                        this.chunks_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addChunks(ChunkData chunkData) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        chunkData.getClass();
                        ensureChunksIsMutable();
                        this.chunks_.add(chunkData);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(chunkData);
                    }
                    return this;
                }

                public Builder addChunks(int i, ChunkData chunkData) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        chunkData.getClass();
                        ensureChunksIsMutable();
                        this.chunks_.add(i, chunkData);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, chunkData);
                    }
                    return this;
                }

                public Builder addChunks(ChunkData.Builder builder) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureChunksIsMutable();
                        this.chunks_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addChunks(int i, ChunkData.Builder builder) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureChunksIsMutable();
                        this.chunks_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllChunks(Iterable<? extends ChunkData> iterable) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureChunksIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.chunks_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearChunks() {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.chunks_ = Collections.emptyList();
                        this.bitField0_ &= -33;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removeChunks(int i) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureChunksIsMutable();
                        this.chunks_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public ChunkData.Builder getChunksBuilder(int i) {
                    return (ChunkData.Builder) internalGetChunksFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public ChunkDataOrBuilder getChunksOrBuilder(int i) {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.chunks_.get(i);
                    }
                    return (ChunkDataOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public List<? extends ChunkDataOrBuilder> getChunksOrBuilderList() {
                    RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> repeatedFieldBuilder = this.chunksBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.chunks_);
                }

                public ChunkData.Builder addChunksBuilder() {
                    return (ChunkData.Builder) internalGetChunksFieldBuilder().addBuilder(ChunkData.getDefaultInstance());
                }

                public ChunkData.Builder addChunksBuilder(int i) {
                    return (ChunkData.Builder) internalGetChunksFieldBuilder().addBuilder(i, ChunkData.getDefaultInstance());
                }

                public List<ChunkData.Builder> getChunksBuilderList() {
                    return internalGetChunksFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<ChunkData, ChunkData.Builder, ChunkDataOrBuilder> internalGetChunksFieldBuilder() {
                    if (this.chunksBuilder_ == null) {
                        this.chunksBuilder_ = new RepeatedFieldBuilder<>(this.chunks_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                        this.chunks_ = null;
                    }
                    return this.chunksBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public boolean hasLinktarget() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public String getLinktarget() {
                    Object obj = this.linktarget_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.linktarget_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayload.FileMappingOrBuilder
                public ByteString getLinktargetBytes() {
                    Object obj = this.linktarget_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.linktarget_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setLinktarget(String str) {
                    str.getClass();
                    this.linktarget_ = str;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearLinktarget() {
                    this.linktarget_ = FileMapping.getDefaultInstance().getLinktarget();
                    this.bitField0_ &= -65;
                    onChanged();
                    return this;
                }

                public Builder setLinktargetBytes(ByteString byteString) {
                    byteString.getClass();
                    this.linktarget_ = byteString;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }
            }

            public static FileMapping getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<FileMapping> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<FileMapping> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FileMapping getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
        public List<FileMapping> getMappingsList() {
            return this.mappings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
        public List<? extends FileMappingOrBuilder> getMappingsOrBuilderList() {
            return this.mappings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
        public int getMappingsCount() {
            return this.mappings_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
        public FileMapping getMappings(int i) {
            return this.mappings_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
        public FileMappingOrBuilder getMappingsOrBuilder(int i) {
            return this.mappings_.get(i);
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
            for (int i = 0; i < this.mappings_.size(); i++) {
                codedOutputStream.writeMessage(1, this.mappings_.get(i));
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
            for (int i2 = 0; i2 < this.mappings_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.mappings_.get(i2));
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
            if (!(obj instanceof ContentManifestPayload)) {
                return super.equals(obj);
            }
            ContentManifestPayload contentManifestPayload = (ContentManifestPayload) obj;
            return getMappingsList().equals(contentManifestPayload.getMappingsList()) && getUnknownFields().equals(contentManifestPayload.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getMappingsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getMappingsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ContentManifestPayload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ContentManifestPayload parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ContentManifestPayload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ContentManifestPayload parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ContentManifestPayload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ContentManifestPayload parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ContentManifestPayload parseFrom(InputStream inputStream) throws IOException {
            return (ContentManifestPayload) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ContentManifestPayload parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestPayload) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ContentManifestPayload parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ContentManifestPayload) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ContentManifestPayload parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestPayload) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ContentManifestPayload parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ContentManifestPayload) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ContentManifestPayload parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestPayload) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ContentManifestPayload contentManifestPayload) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(contentManifestPayload);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ContentManifestPayloadOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> mappingsBuilder_;
            private List<FileMapping> mappings_;

            private void buildPartial0(ContentManifestPayload contentManifestPayload) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ContentManifest.internal_static_ContentManifestPayload_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ContentManifest.internal_static_ContentManifestPayload_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentManifestPayload.class, Builder.class);
            }

            private Builder() {
                this.mappings_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.mappings_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.mappings_ = Collections.emptyList();
                } else {
                    this.mappings_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ContentManifest.internal_static_ContentManifestPayload_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ContentManifestPayload getDefaultInstanceForType() {
                return ContentManifestPayload.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ContentManifestPayload build() {
                ContentManifestPayload contentManifestPayloadBuildPartial = buildPartial();
                if (contentManifestPayloadBuildPartial.isInitialized()) {
                    return contentManifestPayloadBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) contentManifestPayloadBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ContentManifestPayload buildPartial() {
                ContentManifestPayload contentManifestPayload = new ContentManifestPayload(this);
                buildPartialRepeatedFields(contentManifestPayload);
                if (this.bitField0_ != 0) {
                    buildPartial0(contentManifestPayload);
                }
                onBuilt();
                return contentManifestPayload;
            }

            private void buildPartialRepeatedFields(ContentManifestPayload contentManifestPayload) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.mappings_ = Collections.unmodifiableList(this.mappings_);
                        this.bitField0_ &= -2;
                    }
                    contentManifestPayload.mappings_ = this.mappings_;
                    return;
                }
                contentManifestPayload.mappings_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ContentManifestPayload) {
                    return mergeFrom((ContentManifestPayload) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ContentManifestPayload contentManifestPayload) {
                if (contentManifestPayload == ContentManifestPayload.getDefaultInstance()) {
                    return this;
                }
                if (this.mappingsBuilder_ == null) {
                    if (!contentManifestPayload.mappings_.isEmpty()) {
                        if (this.mappings_.isEmpty()) {
                            this.mappings_ = contentManifestPayload.mappings_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMappingsIsMutable();
                            this.mappings_.addAll(contentManifestPayload.mappings_);
                        }
                        onChanged();
                    }
                } else if (!contentManifestPayload.mappings_.isEmpty()) {
                    if (this.mappingsBuilder_.isEmpty()) {
                        this.mappingsBuilder_.dispose();
                        this.mappingsBuilder_ = null;
                        this.mappings_ = contentManifestPayload.mappings_;
                        this.bitField0_ &= -2;
                        this.mappingsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetMappingsFieldBuilder() : null;
                    } else {
                        this.mappingsBuilder_.addAllMessages(contentManifestPayload.mappings_);
                    }
                }
                mergeUnknownFields(contentManifestPayload.getUnknownFields());
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
                                    FileMapping fileMapping = (FileMapping) codedInputStream.readMessage(FileMapping.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureMappingsIsMutable();
                                        this.mappings_.add(fileMapping);
                                    } else {
                                        repeatedFieldBuilder.addMessage(fileMapping);
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

            private void ensureMappingsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.mappings_ = new ArrayList(this.mappings_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
            public List<FileMapping> getMappingsList() {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.mappings_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
            public int getMappingsCount() {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.mappings_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
            public FileMapping getMappings(int i) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.mappings_.get(i);
                }
                return (FileMapping) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setMappings(int i, FileMapping fileMapping) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    fileMapping.getClass();
                    ensureMappingsIsMutable();
                    this.mappings_.set(i, fileMapping);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, fileMapping);
                }
                return this;
            }

            public Builder setMappings(int i, FileMapping.Builder builder) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMappingsIsMutable();
                    this.mappings_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMappings(FileMapping fileMapping) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    fileMapping.getClass();
                    ensureMappingsIsMutable();
                    this.mappings_.add(fileMapping);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(fileMapping);
                }
                return this;
            }

            public Builder addMappings(int i, FileMapping fileMapping) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    fileMapping.getClass();
                    ensureMappingsIsMutable();
                    this.mappings_.add(i, fileMapping);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, fileMapping);
                }
                return this;
            }

            public Builder addMappings(FileMapping.Builder builder) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMappingsIsMutable();
                    this.mappings_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMappings(int i, FileMapping.Builder builder) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMappingsIsMutable();
                    this.mappings_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMappings(Iterable<? extends FileMapping> iterable) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMappingsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mappings_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMappings() {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.mappings_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeMappings(int i) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMappingsIsMutable();
                    this.mappings_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public FileMapping.Builder getMappingsBuilder(int i) {
                return (FileMapping.Builder) internalGetMappingsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
            public FileMappingOrBuilder getMappingsOrBuilder(int i) {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.mappings_.get(i);
                }
                return (FileMappingOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestPayloadOrBuilder
            public List<? extends FileMappingOrBuilder> getMappingsOrBuilderList() {
                RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> repeatedFieldBuilder = this.mappingsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.mappings_);
            }

            public FileMapping.Builder addMappingsBuilder() {
                return (FileMapping.Builder) internalGetMappingsFieldBuilder().addBuilder(FileMapping.getDefaultInstance());
            }

            public FileMapping.Builder addMappingsBuilder(int i) {
                return (FileMapping.Builder) internalGetMappingsFieldBuilder().addBuilder(i, FileMapping.getDefaultInstance());
            }

            public List<FileMapping.Builder> getMappingsBuilderList() {
                return internalGetMappingsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FileMapping, FileMapping.Builder, FileMappingOrBuilder> internalGetMappingsFieldBuilder() {
                if (this.mappingsBuilder_ == null) {
                    this.mappingsBuilder_ = new RepeatedFieldBuilder<>(this.mappings_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.mappings_ = null;
                }
                return this.mappingsBuilder_;
            }
        }

        public static ContentManifestPayload getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ContentManifestPayload> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ContentManifestPayload> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ContentManifestPayload getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ContentManifestMetadata extends GeneratedMessage implements ContentManifestMetadataOrBuilder {
        public static final int CB_DISK_COMPRESSED_FIELD_NUMBER = 6;
        public static final int CB_DISK_ORIGINAL_FIELD_NUMBER = 5;
        public static final int CRC_CLEAR_FIELD_NUMBER = 9;
        public static final int CRC_ENCRYPTED_FIELD_NUMBER = 8;
        public static final int CREATION_TIME_FIELD_NUMBER = 3;
        private static final ContentManifestMetadata DEFAULT_INSTANCE;
        public static final int DEPOT_ID_FIELD_NUMBER = 1;
        public static final int FILENAMES_ENCRYPTED_FIELD_NUMBER = 4;
        public static final int GID_MANIFEST_FIELD_NUMBER = 2;
        private static final Parser<ContentManifestMetadata> PARSER;
        public static final int UNIQUE_CHUNKS_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long cbDiskCompressed_;
        private long cbDiskOriginal_;
        private int crcClear_;
        private int crcEncrypted_;
        private int creationTime_;
        private int depotId_;
        private boolean filenamesEncrypted_;
        private long gidManifest_;
        private byte memoizedIsInitialized;
        private int uniqueChunks_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ContentManifestMetadata.class.getName());
            DEFAULT_INSTANCE = new ContentManifestMetadata();
            PARSER = new AbstractParser<ContentManifestMetadata>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadata.1
                @Override // com.google.protobuf.Parser
                public ContentManifestMetadata parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ContentManifestMetadata.newBuilder();
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

        private ContentManifestMetadata(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.depotId_ = 0;
            this.gidManifest_ = 0L;
            this.creationTime_ = 0;
            this.filenamesEncrypted_ = false;
            this.cbDiskOriginal_ = 0L;
            this.cbDiskCompressed_ = 0L;
            this.uniqueChunks_ = 0;
            this.crcEncrypted_ = 0;
            this.crcClear_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ContentManifestMetadata() {
            this.depotId_ = 0;
            this.gidManifest_ = 0L;
            this.creationTime_ = 0;
            this.filenamesEncrypted_ = false;
            this.cbDiskOriginal_ = 0L;
            this.cbDiskCompressed_ = 0L;
            this.uniqueChunks_ = 0;
            this.crcEncrypted_ = 0;
            this.crcClear_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ContentManifest.internal_static_ContentManifestMetadata_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ContentManifest.internal_static_ContentManifestMetadata_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentManifestMetadata.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasDepotId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public int getDepotId() {
            return this.depotId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasGidManifest() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public long getGidManifest() {
            return this.gidManifest_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasCreationTime() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public int getCreationTime() {
            return this.creationTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasFilenamesEncrypted() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean getFilenamesEncrypted() {
            return this.filenamesEncrypted_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasCbDiskOriginal() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public long getCbDiskOriginal() {
            return this.cbDiskOriginal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasCbDiskCompressed() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public long getCbDiskCompressed() {
            return this.cbDiskCompressed_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasUniqueChunks() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public int getUniqueChunks() {
            return this.uniqueChunks_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasCrcEncrypted() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public int getCrcEncrypted() {
            return this.crcEncrypted_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public boolean hasCrcClear() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
        public int getCrcClear() {
            return this.crcClear_;
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
                codedOutputStream.writeUInt64(2, this.gidManifest_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.creationTime_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.filenamesEncrypted_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt64(5, this.cbDiskOriginal_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt64(6, this.cbDiskCompressed_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.uniqueChunks_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(8, this.crcEncrypted_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(9, this.crcClear_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.gidManifest_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.creationTime_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.filenamesEncrypted_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(5, this.cbDiskOriginal_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(6, this.cbDiskCompressed_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.uniqueChunks_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(8, this.crcEncrypted_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(9, this.crcClear_);
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
            if (!(obj instanceof ContentManifestMetadata)) {
                return super.equals(obj);
            }
            ContentManifestMetadata contentManifestMetadata = (ContentManifestMetadata) obj;
            if (hasDepotId() != contentManifestMetadata.hasDepotId()) {
                return false;
            }
            if ((hasDepotId() && getDepotId() != contentManifestMetadata.getDepotId()) || hasGidManifest() != contentManifestMetadata.hasGidManifest()) {
                return false;
            }
            if ((hasGidManifest() && getGidManifest() != contentManifestMetadata.getGidManifest()) || hasCreationTime() != contentManifestMetadata.hasCreationTime()) {
                return false;
            }
            if ((hasCreationTime() && getCreationTime() != contentManifestMetadata.getCreationTime()) || hasFilenamesEncrypted() != contentManifestMetadata.hasFilenamesEncrypted()) {
                return false;
            }
            if ((hasFilenamesEncrypted() && getFilenamesEncrypted() != contentManifestMetadata.getFilenamesEncrypted()) || hasCbDiskOriginal() != contentManifestMetadata.hasCbDiskOriginal()) {
                return false;
            }
            if ((hasCbDiskOriginal() && getCbDiskOriginal() != contentManifestMetadata.getCbDiskOriginal()) || hasCbDiskCompressed() != contentManifestMetadata.hasCbDiskCompressed()) {
                return false;
            }
            if ((hasCbDiskCompressed() && getCbDiskCompressed() != contentManifestMetadata.getCbDiskCompressed()) || hasUniqueChunks() != contentManifestMetadata.hasUniqueChunks()) {
                return false;
            }
            if ((hasUniqueChunks() && getUniqueChunks() != contentManifestMetadata.getUniqueChunks()) || hasCrcEncrypted() != contentManifestMetadata.hasCrcEncrypted()) {
                return false;
            }
            if ((!hasCrcEncrypted() || getCrcEncrypted() == contentManifestMetadata.getCrcEncrypted()) && hasCrcClear() == contentManifestMetadata.hasCrcClear()) {
                return (!hasCrcClear() || getCrcClear() == contentManifestMetadata.getCrcClear()) && getUnknownFields().equals(contentManifestMetadata.getUnknownFields());
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
            if (hasGidManifest()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getGidManifest());
            }
            if (hasCreationTime()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCreationTime();
            }
            if (hasFilenamesEncrypted()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getFilenamesEncrypted());
            }
            if (hasCbDiskOriginal()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getCbDiskOriginal());
            }
            if (hasCbDiskCompressed()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getCbDiskCompressed());
            }
            if (hasUniqueChunks()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getUniqueChunks();
            }
            if (hasCrcEncrypted()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getCrcEncrypted();
            }
            if (hasCrcClear()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getCrcClear();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ContentManifestMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ContentManifestMetadata parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ContentManifestMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ContentManifestMetadata parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ContentManifestMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ContentManifestMetadata parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ContentManifestMetadata parseFrom(InputStream inputStream) throws IOException {
            return (ContentManifestMetadata) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ContentManifestMetadata parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestMetadata) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ContentManifestMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ContentManifestMetadata) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ContentManifestMetadata parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestMetadata) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ContentManifestMetadata parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ContentManifestMetadata) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ContentManifestMetadata parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestMetadata) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ContentManifestMetadata contentManifestMetadata) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(contentManifestMetadata);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ContentManifestMetadataOrBuilder {
            private int bitField0_;
            private long cbDiskCompressed_;
            private long cbDiskOriginal_;
            private int crcClear_;
            private int crcEncrypted_;
            private int creationTime_;
            private int depotId_;
            private boolean filenamesEncrypted_;
            private long gidManifest_;
            private int uniqueChunks_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ContentManifest.internal_static_ContentManifestMetadata_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ContentManifest.internal_static_ContentManifestMetadata_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentManifestMetadata.class, Builder.class);
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
                this.depotId_ = 0;
                this.gidManifest_ = 0L;
                this.creationTime_ = 0;
                this.filenamesEncrypted_ = false;
                this.cbDiskOriginal_ = 0L;
                this.cbDiskCompressed_ = 0L;
                this.uniqueChunks_ = 0;
                this.crcEncrypted_ = 0;
                this.crcClear_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ContentManifest.internal_static_ContentManifestMetadata_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ContentManifestMetadata getDefaultInstanceForType() {
                return ContentManifestMetadata.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ContentManifestMetadata build() {
                ContentManifestMetadata contentManifestMetadataBuildPartial = buildPartial();
                if (contentManifestMetadataBuildPartial.isInitialized()) {
                    return contentManifestMetadataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) contentManifestMetadataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ContentManifestMetadata buildPartial() {
                ContentManifestMetadata contentManifestMetadata = new ContentManifestMetadata(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(contentManifestMetadata);
                }
                onBuilt();
                return contentManifestMetadata;
            }

            private void buildPartial0(ContentManifestMetadata contentManifestMetadata) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    contentManifestMetadata.depotId_ = this.depotId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    contentManifestMetadata.gidManifest_ = this.gidManifest_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    contentManifestMetadata.creationTime_ = this.creationTime_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    contentManifestMetadata.filenamesEncrypted_ = this.filenamesEncrypted_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    contentManifestMetadata.cbDiskOriginal_ = this.cbDiskOriginal_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    contentManifestMetadata.cbDiskCompressed_ = this.cbDiskCompressed_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    contentManifestMetadata.uniqueChunks_ = this.uniqueChunks_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    contentManifestMetadata.crcEncrypted_ = this.crcEncrypted_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    contentManifestMetadata.crcClear_ = this.crcClear_;
                    i |= 256;
                }
                contentManifestMetadata.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ContentManifestMetadata) {
                    return mergeFrom((ContentManifestMetadata) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ContentManifestMetadata contentManifestMetadata) {
                if (contentManifestMetadata == ContentManifestMetadata.getDefaultInstance()) {
                    return this;
                }
                if (contentManifestMetadata.hasDepotId()) {
                    setDepotId(contentManifestMetadata.getDepotId());
                }
                if (contentManifestMetadata.hasGidManifest()) {
                    setGidManifest(contentManifestMetadata.getGidManifest());
                }
                if (contentManifestMetadata.hasCreationTime()) {
                    setCreationTime(contentManifestMetadata.getCreationTime());
                }
                if (contentManifestMetadata.hasFilenamesEncrypted()) {
                    setFilenamesEncrypted(contentManifestMetadata.getFilenamesEncrypted());
                }
                if (contentManifestMetadata.hasCbDiskOriginal()) {
                    setCbDiskOriginal(contentManifestMetadata.getCbDiskOriginal());
                }
                if (contentManifestMetadata.hasCbDiskCompressed()) {
                    setCbDiskCompressed(contentManifestMetadata.getCbDiskCompressed());
                }
                if (contentManifestMetadata.hasUniqueChunks()) {
                    setUniqueChunks(contentManifestMetadata.getUniqueChunks());
                }
                if (contentManifestMetadata.hasCrcEncrypted()) {
                    setCrcEncrypted(contentManifestMetadata.getCrcEncrypted());
                }
                if (contentManifestMetadata.hasCrcClear()) {
                    setCrcClear(contentManifestMetadata.getCrcClear());
                }
                mergeUnknownFields(contentManifestMetadata.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.gidManifest_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.creationTime_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.filenamesEncrypted_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.cbDiskOriginal_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.cbDiskCompressed_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.uniqueChunks_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                } else if (tag == 64) {
                                    this.crcEncrypted_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                } else if (tag == 72) {
                                    this.crcClear_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasDepotId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasGidManifest() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public long getGidManifest() {
                return this.gidManifest_;
            }

            public Builder setGidManifest(long j) {
                this.gidManifest_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearGidManifest() {
                this.bitField0_ &= -3;
                this.gidManifest_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasCreationTime() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public int getCreationTime() {
                return this.creationTime_;
            }

            public Builder setCreationTime(int i) {
                this.creationTime_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCreationTime() {
                this.bitField0_ &= -5;
                this.creationTime_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasFilenamesEncrypted() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean getFilenamesEncrypted() {
                return this.filenamesEncrypted_;
            }

            public Builder setFilenamesEncrypted(boolean z) {
                this.filenamesEncrypted_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearFilenamesEncrypted() {
                this.bitField0_ &= -9;
                this.filenamesEncrypted_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasCbDiskOriginal() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public long getCbDiskOriginal() {
                return this.cbDiskOriginal_;
            }

            public Builder setCbDiskOriginal(long j) {
                this.cbDiskOriginal_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearCbDiskOriginal() {
                this.bitField0_ &= -17;
                this.cbDiskOriginal_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasCbDiskCompressed() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public long getCbDiskCompressed() {
                return this.cbDiskCompressed_;
            }

            public Builder setCbDiskCompressed(long j) {
                this.cbDiskCompressed_ = j;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearCbDiskCompressed() {
                this.bitField0_ &= -33;
                this.cbDiskCompressed_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasUniqueChunks() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public int getUniqueChunks() {
                return this.uniqueChunks_;
            }

            public Builder setUniqueChunks(int i) {
                this.uniqueChunks_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearUniqueChunks() {
                this.bitField0_ &= -65;
                this.uniqueChunks_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasCrcEncrypted() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public int getCrcEncrypted() {
                return this.crcEncrypted_;
            }

            public Builder setCrcEncrypted(int i) {
                this.crcEncrypted_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearCrcEncrypted() {
                this.bitField0_ &= -129;
                this.crcEncrypted_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public boolean hasCrcClear() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestMetadataOrBuilder
            public int getCrcClear() {
                return this.crcClear_;
            }

            public Builder setCrcClear(int i) {
                this.crcClear_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearCrcClear() {
                this.bitField0_ &= -257;
                this.crcClear_ = 0;
                onChanged();
                return this;
            }
        }

        public static ContentManifestMetadata getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ContentManifestMetadata> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ContentManifestMetadata> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ContentManifestMetadata getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ContentManifestSignature extends GeneratedMessage implements ContentManifestSignatureOrBuilder {
        private static final ContentManifestSignature DEFAULT_INSTANCE;
        private static final Parser<ContentManifestSignature> PARSER;
        public static final int SIGNATURE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString signature_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ContentManifestSignature.class.getName());
            DEFAULT_INSTANCE = new ContentManifestSignature();
            PARSER = new AbstractParser<ContentManifestSignature>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestSignature.1
                @Override // com.google.protobuf.Parser
                public ContentManifestSignature parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ContentManifestSignature.newBuilder();
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

        private ContentManifestSignature(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.signature_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ContentManifestSignature() {
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.signature_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ContentManifest.internal_static_ContentManifestSignature_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return ContentManifest.internal_static_ContentManifestSignature_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentManifestSignature.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestSignatureOrBuilder
        public boolean hasSignature() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestSignatureOrBuilder
        public ByteString getSignature() {
            return this.signature_;
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
                codedOutputStream.writeBytes(1, this.signature_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBytesSize(1, this.signature_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeBytesSize;
            return iComputeBytesSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ContentManifestSignature)) {
                return super.equals(obj);
            }
            ContentManifestSignature contentManifestSignature = (ContentManifestSignature) obj;
            if (hasSignature() != contentManifestSignature.hasSignature()) {
                return false;
            }
            return (!hasSignature() || getSignature().equals(contentManifestSignature.getSignature())) && getUnknownFields().equals(contentManifestSignature.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSignature()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSignature().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ContentManifestSignature parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ContentManifestSignature parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ContentManifestSignature parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ContentManifestSignature parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ContentManifestSignature parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ContentManifestSignature parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ContentManifestSignature parseFrom(InputStream inputStream) throws IOException {
            return (ContentManifestSignature) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ContentManifestSignature parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestSignature) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ContentManifestSignature parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ContentManifestSignature) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ContentManifestSignature parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestSignature) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ContentManifestSignature parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ContentManifestSignature) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ContentManifestSignature parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContentManifestSignature) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ContentManifestSignature contentManifestSignature) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(contentManifestSignature);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ContentManifestSignatureOrBuilder {
            private int bitField0_;
            private ByteString signature_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ContentManifest.internal_static_ContentManifestSignature_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return ContentManifest.internal_static_ContentManifestSignature_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentManifestSignature.class, Builder.class);
            }

            private Builder() {
                this.signature_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.signature_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.signature_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ContentManifest.internal_static_ContentManifestSignature_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ContentManifestSignature getDefaultInstanceForType() {
                return ContentManifestSignature.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ContentManifestSignature build() {
                ContentManifestSignature contentManifestSignatureBuildPartial = buildPartial();
                if (contentManifestSignatureBuildPartial.isInitialized()) {
                    return contentManifestSignatureBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) contentManifestSignatureBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ContentManifestSignature buildPartial() {
                ContentManifestSignature contentManifestSignature = new ContentManifestSignature(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(contentManifestSignature);
                }
                onBuilt();
                return contentManifestSignature;
            }

            private void buildPartial0(ContentManifestSignature contentManifestSignature) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    contentManifestSignature.signature_ = this.signature_;
                } else {
                    i = 0;
                }
                contentManifestSignature.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ContentManifestSignature) {
                    return mergeFrom((ContentManifestSignature) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ContentManifestSignature contentManifestSignature) {
                if (contentManifestSignature == ContentManifestSignature.getDefaultInstance()) {
                    return this;
                }
                if (contentManifestSignature.hasSignature()) {
                    setSignature(contentManifestSignature.getSignature());
                }
                mergeUnknownFields(contentManifestSignature.getUnknownFields());
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
                                    this.signature_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestSignatureOrBuilder
            public boolean hasSignature() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.ContentManifest.ContentManifestSignatureOrBuilder
            public ByteString getSignature() {
                return this.signature_;
            }

            public Builder setSignature(ByteString byteString) {
                byteString.getClass();
                this.signature_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSignature() {
                this.bitField0_ &= -2;
                this.signature_ = ContentManifestSignature.getDefaultInstance().getSignature();
                onChanged();
                return this;
            }
        }

        public static ContentManifestSignature getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ContentManifestSignature> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ContentManifestSignature> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ContentManifestSignature getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
