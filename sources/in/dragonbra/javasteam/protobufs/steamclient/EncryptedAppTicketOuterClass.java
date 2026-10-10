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
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class EncryptedAppTicketOuterClass {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_EncryptedAppTicket_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_EncryptedAppTicket_fieldAccessorTable;

    public interface EncryptedAppTicketOrBuilder extends MessageOrBuilder {
        int getCbEncryptedAppownershipticket();

        int getCbEncrypteduserdata();

        int getCrcEncryptedticket();

        ByteString getEncryptedTicket();

        int getTicketVersionNo();

        boolean hasCbEncryptedAppownershipticket();

        boolean hasCbEncrypteduserdata();

        boolean hasCrcEncryptedticket();

        boolean hasEncryptedTicket();

        boolean hasTicketVersionNo();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private EncryptedAppTicketOuterClass() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EncryptedAppTicketOuterClass.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nGin/dragonbra/javasteam/protobufs/steamclient/encrypted_app_ticket.proto\"\u00ad\u0001\n\u0012EncryptedAppTicket\u0012\u0019\n\u0011ticket_version_no\u0018\u0001 \u0001(\r\u0012\u001b\n\u0013crc_encryptedticket\u0018\u0002 \u0001(\r\u0012\u001c\n\u0014cb_encrypteduserdata\u0018\u0003 \u0001(\r\u0012'\n\u001fcb_encrypted_appownershipticket\u0018\u0004 \u0001(\r\u0012\u0018\n\u0010encrypted_ticket\u0018\u0005 \u0001(\fB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[0]);
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_EncryptedAppTicket_descriptor = descriptor2;
        internal_static_EncryptedAppTicket_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"TicketVersionNo", "CrcEncryptedticket", "CbEncrypteduserdata", "CbEncryptedAppownershipticket", "EncryptedTicket"});
        descriptor.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class EncryptedAppTicket extends GeneratedMessage implements EncryptedAppTicketOrBuilder {
        public static final int CB_ENCRYPTEDUSERDATA_FIELD_NUMBER = 3;
        public static final int CB_ENCRYPTED_APPOWNERSHIPTICKET_FIELD_NUMBER = 4;
        public static final int CRC_ENCRYPTEDTICKET_FIELD_NUMBER = 2;
        private static final EncryptedAppTicket DEFAULT_INSTANCE;
        public static final int ENCRYPTED_TICKET_FIELD_NUMBER = 5;
        private static final Parser<EncryptedAppTicket> PARSER;
        public static final int TICKET_VERSION_NO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int cbEncryptedAppownershipticket_;
        private int cbEncrypteduserdata_;
        private int crcEncryptedticket_;
        private ByteString encryptedTicket_;
        private byte memoizedIsInitialized;
        private int ticketVersionNo_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EncryptedAppTicket.class.getName());
            DEFAULT_INSTANCE = new EncryptedAppTicket();
            PARSER = new AbstractParser<EncryptedAppTicket>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicket.1
                @Override // com.google.protobuf.Parser
                public EncryptedAppTicket parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = EncryptedAppTicket.newBuilder();
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

        private EncryptedAppTicket(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.ticketVersionNo_ = 0;
            this.crcEncryptedticket_ = 0;
            this.cbEncrypteduserdata_ = 0;
            this.cbEncryptedAppownershipticket_ = 0;
            this.encryptedTicket_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private EncryptedAppTicket() {
            this.ticketVersionNo_ = 0;
            this.crcEncryptedticket_ = 0;
            this.cbEncrypteduserdata_ = 0;
            this.cbEncryptedAppownershipticket_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.encryptedTicket_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EncryptedAppTicketOuterClass.internal_static_EncryptedAppTicket_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return EncryptedAppTicketOuterClass.internal_static_EncryptedAppTicket_fieldAccessorTable.ensureFieldAccessorsInitialized(EncryptedAppTicket.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public boolean hasTicketVersionNo() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public int getTicketVersionNo() {
            return this.ticketVersionNo_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public boolean hasCrcEncryptedticket() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public int getCrcEncryptedticket() {
            return this.crcEncryptedticket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public boolean hasCbEncrypteduserdata() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public int getCbEncrypteduserdata() {
            return this.cbEncrypteduserdata_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public boolean hasCbEncryptedAppownershipticket() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public int getCbEncryptedAppownershipticket() {
            return this.cbEncryptedAppownershipticket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public boolean hasEncryptedTicket() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
        public ByteString getEncryptedTicket() {
            return this.encryptedTicket_;
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
                codedOutputStream.writeUInt32(1, this.ticketVersionNo_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.crcEncryptedticket_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.cbEncrypteduserdata_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.cbEncryptedAppownershipticket_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBytes(5, this.encryptedTicket_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.ticketVersionNo_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.crcEncryptedticket_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.cbEncrypteduserdata_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.cbEncryptedAppownershipticket_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(5, this.encryptedTicket_);
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
            if (!(obj instanceof EncryptedAppTicket)) {
                return super.equals(obj);
            }
            EncryptedAppTicket encryptedAppTicket = (EncryptedAppTicket) obj;
            if (hasTicketVersionNo() != encryptedAppTicket.hasTicketVersionNo()) {
                return false;
            }
            if ((hasTicketVersionNo() && getTicketVersionNo() != encryptedAppTicket.getTicketVersionNo()) || hasCrcEncryptedticket() != encryptedAppTicket.hasCrcEncryptedticket()) {
                return false;
            }
            if ((hasCrcEncryptedticket() && getCrcEncryptedticket() != encryptedAppTicket.getCrcEncryptedticket()) || hasCbEncrypteduserdata() != encryptedAppTicket.hasCbEncrypteduserdata()) {
                return false;
            }
            if ((hasCbEncrypteduserdata() && getCbEncrypteduserdata() != encryptedAppTicket.getCbEncrypteduserdata()) || hasCbEncryptedAppownershipticket() != encryptedAppTicket.hasCbEncryptedAppownershipticket()) {
                return false;
            }
            if ((!hasCbEncryptedAppownershipticket() || getCbEncryptedAppownershipticket() == encryptedAppTicket.getCbEncryptedAppownershipticket()) && hasEncryptedTicket() == encryptedAppTicket.hasEncryptedTicket()) {
                return (!hasEncryptedTicket() || getEncryptedTicket().equals(encryptedAppTicket.getEncryptedTicket())) && getUnknownFields().equals(encryptedAppTicket.getUnknownFields());
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
            if (hasTicketVersionNo()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getTicketVersionNo();
            }
            if (hasCrcEncryptedticket()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getCrcEncryptedticket();
            }
            if (hasCbEncrypteduserdata()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCbEncrypteduserdata();
            }
            if (hasCbEncryptedAppownershipticket()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getCbEncryptedAppownershipticket();
            }
            if (hasEncryptedTicket()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getEncryptedTicket().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static EncryptedAppTicket parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static EncryptedAppTicket parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static EncryptedAppTicket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static EncryptedAppTicket parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static EncryptedAppTicket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static EncryptedAppTicket parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static EncryptedAppTicket parseFrom(InputStream inputStream) throws IOException {
            return (EncryptedAppTicket) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static EncryptedAppTicket parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EncryptedAppTicket) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static EncryptedAppTicket parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EncryptedAppTicket) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static EncryptedAppTicket parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EncryptedAppTicket) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static EncryptedAppTicket parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (EncryptedAppTicket) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static EncryptedAppTicket parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EncryptedAppTicket) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(EncryptedAppTicket encryptedAppTicket) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(encryptedAppTicket);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements EncryptedAppTicketOrBuilder {
            private int bitField0_;
            private int cbEncryptedAppownershipticket_;
            private int cbEncrypteduserdata_;
            private int crcEncryptedticket_;
            private ByteString encryptedTicket_;
            private int ticketVersionNo_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EncryptedAppTicketOuterClass.internal_static_EncryptedAppTicket_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return EncryptedAppTicketOuterClass.internal_static_EncryptedAppTicket_fieldAccessorTable.ensureFieldAccessorsInitialized(EncryptedAppTicket.class, Builder.class);
            }

            private Builder() {
                this.encryptedTicket_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.encryptedTicket_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.ticketVersionNo_ = 0;
                this.crcEncryptedticket_ = 0;
                this.cbEncrypteduserdata_ = 0;
                this.cbEncryptedAppownershipticket_ = 0;
                this.encryptedTicket_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EncryptedAppTicketOuterClass.internal_static_EncryptedAppTicket_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public EncryptedAppTicket getDefaultInstanceForType() {
                return EncryptedAppTicket.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public EncryptedAppTicket build() {
                EncryptedAppTicket encryptedAppTicketBuildPartial = buildPartial();
                if (encryptedAppTicketBuildPartial.isInitialized()) {
                    return encryptedAppTicketBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) encryptedAppTicketBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public EncryptedAppTicket buildPartial() {
                EncryptedAppTicket encryptedAppTicket = new EncryptedAppTicket(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(encryptedAppTicket);
                }
                onBuilt();
                return encryptedAppTicket;
            }

            private void buildPartial0(EncryptedAppTicket encryptedAppTicket) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    encryptedAppTicket.ticketVersionNo_ = this.ticketVersionNo_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    encryptedAppTicket.crcEncryptedticket_ = this.crcEncryptedticket_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    encryptedAppTicket.cbEncrypteduserdata_ = this.cbEncrypteduserdata_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    encryptedAppTicket.cbEncryptedAppownershipticket_ = this.cbEncryptedAppownershipticket_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    encryptedAppTicket.encryptedTicket_ = this.encryptedTicket_;
                    i |= 16;
                }
                encryptedAppTicket.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof EncryptedAppTicket) {
                    return mergeFrom((EncryptedAppTicket) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(EncryptedAppTicket encryptedAppTicket) {
                if (encryptedAppTicket == EncryptedAppTicket.getDefaultInstance()) {
                    return this;
                }
                if (encryptedAppTicket.hasTicketVersionNo()) {
                    setTicketVersionNo(encryptedAppTicket.getTicketVersionNo());
                }
                if (encryptedAppTicket.hasCrcEncryptedticket()) {
                    setCrcEncryptedticket(encryptedAppTicket.getCrcEncryptedticket());
                }
                if (encryptedAppTicket.hasCbEncrypteduserdata()) {
                    setCbEncrypteduserdata(encryptedAppTicket.getCbEncrypteduserdata());
                }
                if (encryptedAppTicket.hasCbEncryptedAppownershipticket()) {
                    setCbEncryptedAppownershipticket(encryptedAppTicket.getCbEncryptedAppownershipticket());
                }
                if (encryptedAppTicket.hasEncryptedTicket()) {
                    setEncryptedTicket(encryptedAppTicket.getEncryptedTicket());
                }
                mergeUnknownFields(encryptedAppTicket.getUnknownFields());
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
                                    this.ticketVersionNo_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.crcEncryptedticket_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.cbEncrypteduserdata_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.cbEncryptedAppownershipticket_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.encryptedTicket_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public boolean hasTicketVersionNo() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public int getTicketVersionNo() {
                return this.ticketVersionNo_;
            }

            public Builder setTicketVersionNo(int i) {
                this.ticketVersionNo_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearTicketVersionNo() {
                this.bitField0_ &= -2;
                this.ticketVersionNo_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public boolean hasCrcEncryptedticket() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public int getCrcEncryptedticket() {
                return this.crcEncryptedticket_;
            }

            public Builder setCrcEncryptedticket(int i) {
                this.crcEncryptedticket_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearCrcEncryptedticket() {
                this.bitField0_ &= -3;
                this.crcEncryptedticket_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public boolean hasCbEncrypteduserdata() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public int getCbEncrypteduserdata() {
                return this.cbEncrypteduserdata_;
            }

            public Builder setCbEncrypteduserdata(int i) {
                this.cbEncrypteduserdata_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCbEncrypteduserdata() {
                this.bitField0_ &= -5;
                this.cbEncrypteduserdata_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public boolean hasCbEncryptedAppownershipticket() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public int getCbEncryptedAppownershipticket() {
                return this.cbEncryptedAppownershipticket_;
            }

            public Builder setCbEncryptedAppownershipticket(int i) {
                this.cbEncryptedAppownershipticket_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearCbEncryptedAppownershipticket() {
                this.bitField0_ &= -9;
                this.cbEncryptedAppownershipticket_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public boolean hasEncryptedTicket() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass.EncryptedAppTicketOrBuilder
            public ByteString getEncryptedTicket() {
                return this.encryptedTicket_;
            }

            public Builder setEncryptedTicket(ByteString byteString) {
                byteString.getClass();
                this.encryptedTicket_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearEncryptedTicket() {
                this.bitField0_ &= -17;
                this.encryptedTicket_ = EncryptedAppTicket.getDefaultInstance().getEncryptedTicket();
                onChanged();
                return this;
            }
        }

        public static EncryptedAppTicket getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<EncryptedAppTicket> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<EncryptedAppTicket> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public EncryptedAppTicket getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
