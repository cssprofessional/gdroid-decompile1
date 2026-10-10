package in.dragonbra.javasteam.protobufs.steam.discovery;

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
public final class BasicServerListProtos {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_BasicServerList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_BasicServerList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_BasicServer_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_BasicServer_fieldAccessorTable;

    public interface BasicServerListOrBuilder extends MessageOrBuilder {
        BasicServer getServers(int i);

        int getServersCount();

        List<BasicServer> getServersList();

        BasicServerOrBuilder getServersOrBuilder(int i);

        List<? extends BasicServerOrBuilder> getServersOrBuilderList();
    }

    public interface BasicServerOrBuilder extends MessageOrBuilder {
        String getAddress();

        ByteString getAddressBytes();

        int getPort();

        int getProtocol();

        boolean hasAddress();

        boolean hasPort();

        boolean hasProtocol();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private BasicServerListProtos() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", BasicServerListProtos.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nHin/dragonbra/javasteam/protobufs/steam/discovery/basic_server_list.proto\"0\n\u000fBasicServerList\u0012\u001d\n\u0007servers\u0018\u0001 \u0003(\u000b2\f.BasicServer\">\n\u000bBasicServer\u0012\u000f\n\u0007address\u0018\u0001 \u0002(\t\u0012\f\n\u0004port\u0018\u0002 \u0002(\u0005\u0012\u0010\n\bprotocol\u0018\u0003 \u0002(\u0005BK\n0in.dragonbra.javasteam.protobufs.steam.discoveryB\u0015BasicServerListProtosH\u0001"}, new Descriptors.FileDescriptor[0]);
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_BasicServerList_descriptor = descriptor2;
        internal_static_BasicServerList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Servers"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_BasicServer_descriptor = descriptor3;
        internal_static_BasicServer_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Address", "Port", "Protocol"});
        descriptor.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class BasicServerList extends GeneratedMessage implements BasicServerListOrBuilder {
        private static final BasicServerList DEFAULT_INSTANCE;
        private static final Parser<BasicServerList> PARSER;
        public static final int SERVERS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<BasicServer> servers_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", BasicServerList.class.getName());
            DEFAULT_INSTANCE = new BasicServerList();
            PARSER = new AbstractParser<BasicServerList>() { // from class: in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerList.1
                @Override // com.google.protobuf.Parser
                public BasicServerList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = BasicServerList.newBuilder();
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

        private BasicServerList(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private BasicServerList() {
            this.memoizedIsInitialized = (byte) -1;
            this.servers_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BasicServerListProtos.internal_static_BasicServerList_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BasicServerListProtos.internal_static_BasicServerList_fieldAccessorTable.ensureFieldAccessorsInitialized(BasicServerList.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
        public List<BasicServer> getServersList() {
            return this.servers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
        public List<? extends BasicServerOrBuilder> getServersOrBuilderList() {
            return this.servers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
        public int getServersCount() {
            return this.servers_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
        public BasicServer getServers(int i) {
            return this.servers_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
        public BasicServerOrBuilder getServersOrBuilder(int i) {
            return this.servers_.get(i);
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
            for (int i = 0; i < getServersCount(); i++) {
                if (!getServers(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i = 0; i < this.servers_.size(); i++) {
                codedOutputStream.writeMessage(1, this.servers_.get(i));
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
            for (int i2 = 0; i2 < this.servers_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.servers_.get(i2));
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
            if (!(obj instanceof BasicServerList)) {
                return super.equals(obj);
            }
            BasicServerList basicServerList = (BasicServerList) obj;
            return getServersList().equals(basicServerList.getServersList()) && getUnknownFields().equals(basicServerList.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getServersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getServersList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static BasicServerList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static BasicServerList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static BasicServerList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static BasicServerList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static BasicServerList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static BasicServerList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static BasicServerList parseFrom(InputStream inputStream) throws IOException {
            return (BasicServerList) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static BasicServerList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BasicServerList) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BasicServerList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BasicServerList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BasicServerList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BasicServerList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BasicServerList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (BasicServerList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static BasicServerList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BasicServerList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(BasicServerList basicServerList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(basicServerList);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements BasicServerListOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> serversBuilder_;
            private List<BasicServer> servers_;

            private void buildPartial0(BasicServerList basicServerList) {
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BasicServerListProtos.internal_static_BasicServerList_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BasicServerListProtos.internal_static_BasicServerList_fieldAccessorTable.ensureFieldAccessorsInitialized(BasicServerList.class, Builder.class);
            }

            private Builder() {
                this.servers_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.servers_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.servers_ = Collections.emptyList();
                } else {
                    this.servers_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BasicServerListProtos.internal_static_BasicServerList_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BasicServerList getDefaultInstanceForType() {
                return BasicServerList.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BasicServerList build() {
                BasicServerList basicServerListBuildPartial = buildPartial();
                if (basicServerListBuildPartial.isInitialized()) {
                    return basicServerListBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) basicServerListBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BasicServerList buildPartial() {
                BasicServerList basicServerList = new BasicServerList(this);
                buildPartialRepeatedFields(basicServerList);
                if (this.bitField0_ != 0) {
                    buildPartial0(basicServerList);
                }
                onBuilt();
                return basicServerList;
            }

            private void buildPartialRepeatedFields(BasicServerList basicServerList) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.servers_ = Collections.unmodifiableList(this.servers_);
                        this.bitField0_ &= -2;
                    }
                    basicServerList.servers_ = this.servers_;
                    return;
                }
                basicServerList.servers_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof BasicServerList) {
                    return mergeFrom((BasicServerList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(BasicServerList basicServerList) {
                if (basicServerList == BasicServerList.getDefaultInstance()) {
                    return this;
                }
                if (this.serversBuilder_ == null) {
                    if (!basicServerList.servers_.isEmpty()) {
                        if (this.servers_.isEmpty()) {
                            this.servers_ = basicServerList.servers_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureServersIsMutable();
                            this.servers_.addAll(basicServerList.servers_);
                        }
                        onChanged();
                    }
                } else if (!basicServerList.servers_.isEmpty()) {
                    if (this.serversBuilder_.isEmpty()) {
                        this.serversBuilder_.dispose();
                        this.serversBuilder_ = null;
                        this.servers_ = basicServerList.servers_;
                        this.bitField0_ &= -2;
                        this.serversBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetServersFieldBuilder() : null;
                    } else {
                        this.serversBuilder_.addAllMessages(basicServerList.servers_);
                    }
                }
                mergeUnknownFields(basicServerList.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getServersCount(); i++) {
                    if (!getServers(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
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
                                    BasicServer basicServer = (BasicServer) codedInputStream.readMessage(BasicServer.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureServersIsMutable();
                                        this.servers_.add(basicServer);
                                    } else {
                                        repeatedFieldBuilder.addMessage(basicServer);
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

            private void ensureServersIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.servers_ = new ArrayList(this.servers_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
            public List<BasicServer> getServersList() {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.servers_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
            public int getServersCount() {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
            public BasicServer getServers(int i) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.get(i);
                }
                return (BasicServer) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setServers(int i, BasicServer basicServer) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    basicServer.getClass();
                    ensureServersIsMutable();
                    this.servers_.set(i, basicServer);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, basicServer);
                }
                return this;
            }

            public Builder setServers(int i, BasicServer.Builder builder) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addServers(BasicServer basicServer) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    basicServer.getClass();
                    ensureServersIsMutable();
                    this.servers_.add(basicServer);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(basicServer);
                }
                return this;
            }

            public Builder addServers(int i, BasicServer basicServer) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    basicServer.getClass();
                    ensureServersIsMutable();
                    this.servers_.add(i, basicServer);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, basicServer);
                }
                return this;
            }

            public Builder addServers(BasicServer.Builder builder) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addServers(int i, BasicServer.Builder builder) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllServers(Iterable<? extends BasicServer> iterable) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.servers_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearServers() {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.servers_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeServers(int i) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public BasicServer.Builder getServersBuilder(int i) {
                return (BasicServer.Builder) internalGetServersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
            public BasicServerOrBuilder getServersOrBuilder(int i) {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.get(i);
                }
                return (BasicServerOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder
            public List<? extends BasicServerOrBuilder> getServersOrBuilderList() {
                RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.servers_);
            }

            public BasicServer.Builder addServersBuilder() {
                return (BasicServer.Builder) internalGetServersFieldBuilder().addBuilder(BasicServer.getDefaultInstance());
            }

            public BasicServer.Builder addServersBuilder(int i) {
                return (BasicServer.Builder) internalGetServersFieldBuilder().addBuilder(i, BasicServer.getDefaultInstance());
            }

            public List<BasicServer.Builder> getServersBuilderList() {
                return internalGetServersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<BasicServer, BasicServer.Builder, BasicServerOrBuilder> internalGetServersFieldBuilder() {
                if (this.serversBuilder_ == null) {
                    this.serversBuilder_ = new RepeatedFieldBuilder<>(this.servers_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.servers_ = null;
                }
                return this.serversBuilder_;
            }
        }

        public static BasicServerList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<BasicServerList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BasicServerList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BasicServerList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class BasicServer extends GeneratedMessage implements BasicServerOrBuilder {
        public static final int ADDRESS_FIELD_NUMBER = 1;
        private static final BasicServer DEFAULT_INSTANCE;
        private static final Parser<BasicServer> PARSER;
        public static final int PORT_FIELD_NUMBER = 2;
        public static final int PROTOCOL_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object address_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int port_;
        private int protocol_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", BasicServer.class.getName());
            DEFAULT_INSTANCE = new BasicServer();
            PARSER = new AbstractParser<BasicServer>() { // from class: in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServer.1
                @Override // com.google.protobuf.Parser
                public BasicServer parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = BasicServer.newBuilder();
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

        private BasicServer(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.address_ = "";
            this.port_ = 0;
            this.protocol_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private BasicServer() {
            this.address_ = "";
            this.port_ = 0;
            this.protocol_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.address_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BasicServerListProtos.internal_static_BasicServer_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BasicServerListProtos.internal_static_BasicServer_fieldAccessorTable.ensureFieldAccessorsInitialized(BasicServer.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public boolean hasAddress() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public String getAddress() {
            Object obj = this.address_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.address_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public ByteString getAddressBytes() {
            Object obj = this.address_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.address_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public boolean hasPort() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public int getPort() {
            return this.port_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public boolean hasProtocol() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
        public int getProtocol() {
            return this.protocol_;
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
            if (!hasAddress()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasPort()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasProtocol()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 1, this.address_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.port_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.protocol_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.address_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.port_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(3, this.protocol_);
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
            if (!(obj instanceof BasicServer)) {
                return super.equals(obj);
            }
            BasicServer basicServer = (BasicServer) obj;
            if (hasAddress() != basicServer.hasAddress()) {
                return false;
            }
            if ((hasAddress() && !getAddress().equals(basicServer.getAddress())) || hasPort() != basicServer.hasPort()) {
                return false;
            }
            if ((!hasPort() || getPort() == basicServer.getPort()) && hasProtocol() == basicServer.hasProtocol()) {
                return (!hasProtocol() || getProtocol() == basicServer.getProtocol()) && getUnknownFields().equals(basicServer.getUnknownFields());
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
            if (hasAddress()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAddress().hashCode();
            }
            if (hasPort()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPort();
            }
            if (hasProtocol()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getProtocol();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static BasicServer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static BasicServer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static BasicServer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static BasicServer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static BasicServer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static BasicServer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static BasicServer parseFrom(InputStream inputStream) throws IOException {
            return (BasicServer) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static BasicServer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BasicServer) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BasicServer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BasicServer) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BasicServer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BasicServer) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BasicServer parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (BasicServer) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static BasicServer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BasicServer) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(BasicServer basicServer) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(basicServer);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements BasicServerOrBuilder {
            private Object address_;
            private int bitField0_;
            private int port_;
            private int protocol_;

            public static final Descriptors.Descriptor getDescriptor() {
                return BasicServerListProtos.internal_static_BasicServer_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BasicServerListProtos.internal_static_BasicServer_fieldAccessorTable.ensureFieldAccessorsInitialized(BasicServer.class, Builder.class);
            }

            private Builder() {
                this.address_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.address_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.address_ = "";
                this.port_ = 0;
                this.protocol_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BasicServerListProtos.internal_static_BasicServer_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BasicServer getDefaultInstanceForType() {
                return BasicServer.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BasicServer build() {
                BasicServer basicServerBuildPartial = buildPartial();
                if (basicServerBuildPartial.isInitialized()) {
                    return basicServerBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) basicServerBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BasicServer buildPartial() {
                BasicServer basicServer = new BasicServer(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(basicServer);
                }
                onBuilt();
                return basicServer;
            }

            private void buildPartial0(BasicServer basicServer) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    basicServer.address_ = this.address_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    basicServer.port_ = this.port_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    basicServer.protocol_ = this.protocol_;
                    i |= 4;
                }
                basicServer.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof BasicServer) {
                    return mergeFrom((BasicServer) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(BasicServer basicServer) {
                if (basicServer == BasicServer.getDefaultInstance()) {
                    return this;
                }
                if (basicServer.hasAddress()) {
                    this.address_ = basicServer.address_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (basicServer.hasPort()) {
                    setPort(basicServer.getPort());
                }
                if (basicServer.hasProtocol()) {
                    setProtocol(basicServer.getProtocol());
                }
                mergeUnknownFields(basicServer.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasAddress() && hasPort() && hasProtocol();
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
                                    this.address_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.port_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.protocol_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public boolean hasAddress() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public String getAddress() {
                Object obj = this.address_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.address_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public ByteString getAddressBytes() {
                Object obj = this.address_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.address_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAddress(String str) {
                str.getClass();
                this.address_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAddress() {
                this.address_ = BasicServer.getDefaultInstance().getAddress();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.address_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public boolean hasPort() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public int getPort() {
                return this.port_;
            }

            public Builder setPort(int i) {
                this.port_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -3;
                this.port_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public boolean hasProtocol() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder
            public int getProtocol() {
                return this.protocol_;
            }

            public Builder setProtocol(int i) {
                this.protocol_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearProtocol() {
                this.bitField0_ &= -5;
                this.protocol_ = 0;
                onChanged();
                return this;
            }
        }

        public static BasicServer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<BasicServer> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BasicServer> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BasicServer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
