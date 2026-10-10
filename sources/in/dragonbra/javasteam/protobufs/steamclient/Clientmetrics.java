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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Clientmetrics {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CClientMetrics_ClientBootstrap_RequestInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientMetrics_ClientBootstrap_RequestInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientMetrics_ClientBootstrap_Summary_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientMetrics_ClientBootstrap_Summary_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientMetrics_ContentDownloadResponse_Counts_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientMetrics_ContentDownloadResponse_Counts_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClientMetrics_ContentDownloadResponse_Hosts_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClientMetrics_ContentDownloadResponse_Hosts_fieldAccessorTable;

    public interface CClientMetrics_ClientBootstrap_RequestInfoOrBuilder extends MessageOrBuilder {
        String getActualHostname();

        ByteString getActualHostnameBytes();

        String getAddressOfRequestUrl();

        ByteString getAddressOfRequestUrlBytes();

        String getBaseName();

        ByteString getBaseNameBytes();

        long getBytesReceived();

        int getNumRetries();

        String getOriginalHostname();

        ByteString getOriginalHostnameBytes();

        String getPath();

        ByteString getPathBytes();

        int getResponseTimeMs();

        int getStatusCode();

        boolean getSuccess();

        boolean hasActualHostname();

        boolean hasAddressOfRequestUrl();

        boolean hasBaseName();

        boolean hasBytesReceived();

        boolean hasNumRetries();

        boolean hasOriginalHostname();

        boolean hasPath();

        boolean hasResponseTimeMs();

        boolean hasStatusCode();

        boolean hasSuccess();
    }

    public interface CClientMetrics_ClientBootstrap_SummaryOrBuilder extends MessageOrBuilder {
        String getBetaName();

        ByteString getBetaNameBytes();

        boolean getDownloadCompleted();

        int getLauncherType();

        CClientMetrics_ClientBootstrap_RequestInfo getManifestRequests(int i);

        int getManifestRequestsCount();

        List<CClientMetrics_ClientBootstrap_RequestInfo> getManifestRequestsList();

        CClientMetrics_ClientBootstrap_RequestInfoOrBuilder getManifestRequestsOrBuilder(int i);

        List<? extends CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> getManifestRequestsOrBuilderList();

        CClientMetrics_ClientBootstrap_RequestInfo getPackageRequests(int i);

        int getPackageRequestsCount();

        List<CClientMetrics_ClientBootstrap_RequestInfo> getPackageRequestsList();

        CClientMetrics_ClientBootstrap_RequestInfoOrBuilder getPackageRequestsOrBuilder(int i);

        List<? extends CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> getPackageRequestsOrBuilderList();

        int getSteamRealm();

        int getTotalTimeMs();

        boolean hasBetaName();

        boolean hasDownloadCompleted();

        boolean hasLauncherType();

        boolean hasSteamRealm();

        boolean hasTotalTimeMs();
    }

    public interface CClientMetrics_ContentDownloadResponse_CountsOrBuilder extends MessageOrBuilder {
        int getClass100();

        int getClass200();

        int getClass300();

        int getClass400();

        int getClass500();

        int getClassUnknown();

        int getNoResponse();

        boolean hasClass100();

        boolean hasClass200();

        boolean hasClass300();

        boolean hasClass400();

        boolean hasClass500();

        boolean hasClassUnknown();

        boolean hasNoResponse();
    }

    public interface CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder extends MessageOrBuilder {
        CClientMetrics_ContentDownloadResponse_Counts getCounts();

        CClientMetrics_ContentDownloadResponse_CountsOrBuilder getCountsOrBuilder();

        String getHostname();

        ByteString getHostnameBytes();

        int getSourceType();

        boolean hasCounts();

        boolean hasHostname();

        boolean hasSourceType();
    }

    public interface CClientMetrics_ContentDownloadResponse_HostsOrBuilder extends MessageOrBuilder {
        CClientMetrics_ContentDownloadResponse_HostCounts getHosts(int i);

        int getHostsCount();

        List<CClientMetrics_ContentDownloadResponse_HostCounts> getHostsList();

        CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder getHostsOrBuilder(int i);

        List<? extends CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> getHostsOrBuilderList();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private Clientmetrics() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Clientmetrics.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n@in/dragonbra/javasteam/protobufs/steamclient/clientmetrics.proto\"\u008e\u0002\n*CClientMetrics_ClientBootstrap_RequestInfo\u0012\u0019\n\u0011original_hostname\u0018\u0001 \u0001(\t\u0012\u0017\n\u000factual_hostname\u0018\u0002 \u0001(\t\u0012\f\n\u0004path\u0018\u0003 \u0001(\t\u0012\u0011\n\tbase_name\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007success\u0018\u0005 \u0001(\b\u0012\u0013\n\u000bstatus_code\u0018\u0006 \u0001(\r\u0012\u001e\n\u0016address_of_request_url\u0018\u0007 \u0001(\t\u0012\u0018\n\u0010response_time_ms\u0018\b \u0001(\r\u0012\u0016\n\u000ebytes_received\u0018\t \u0001(\u0004\u0012\u0013\n\u000bnum_retries\u0018\n \u0001(\r\"©\u0002\n&CClientMetrics_ClientBootstrap_Summary\u0012\u0015\n\rlauncher_type\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bsteam_realm\u0018\u0002 \u0001(\r\u0012\u0011\n\tbeta_name\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012download_completed\u0018\u0004 \u0001(\b\u0012\u0015\n\rtotal_time_ms\u0018\u0006 \u0001(\r\u0012F\n\u0011manifest_requests\u0018\u0007 \u0003(\u000b2+.CClientMetrics_ClientBootstrap_RequestInfo\u0012E\n\u0010package_requests\u0018\b \u0003(\u000b2+.CClientMetrics_ClientBootstrap_RequestInfo\"º\u0001\n-CClientMetrics_ContentDownloadResponse_Counts\u0012\u0011\n\tclass_100\u0018\u0001 \u0001(\r\u0012\u0011\n\tclass_200\u0018\u0002 \u0001(\r\u0012\u0011\n\tclass_300\u0018\u0003 \u0001(\r\u0012\u0011\n\tclass_400\u0018\u0004 \u0001(\r\u0012\u0011\n\tclass_500\u0018\u0005 \u0001(\r\u0012\u0013\n\u000bno_response\u0018\u0006 \u0001(\r\u0012\u0015\n\rclass_unknown\u0018\u0007 \u0001(\r\"\u009a\u0001\n1CClientMetrics_ContentDownloadResponse_HostCounts\u0012\u0010\n\bhostname\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bsource_type\u0018\u0002 \u0001(\r\u0012>\n\u0006counts\u0018\u0003 \u0001(\u000b2..CClientMetrics_ContentDownloadResponse_Counts\"q\n,CClientMetrics_ContentDownloadResponse_Hosts\u0012A\n\u0005hosts\u0018\u0001 \u0003(\u000b22.CClientMetrics_ContentDownloadResponse_HostCountsB0\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001"}, new Descriptors.FileDescriptor[0]);
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CClientMetrics_ClientBootstrap_RequestInfo_descriptor = descriptor2;
        internal_static_CClientMetrics_ClientBootstrap_RequestInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"OriginalHostname", "ActualHostname", "Path", "BaseName", "Success", "StatusCode", "AddressOfRequestUrl", "ResponseTimeMs", "BytesReceived", "NumRetries"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CClientMetrics_ClientBootstrap_Summary_descriptor = descriptor3;
        internal_static_CClientMetrics_ClientBootstrap_Summary_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"LauncherType", "SteamRealm", "BetaName", "DownloadCompleted", "TotalTimeMs", "ManifestRequests", "PackageRequests"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CClientMetrics_ContentDownloadResponse_Counts_descriptor = descriptor4;
        internal_static_CClientMetrics_ContentDownloadResponse_Counts_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Class100", "Class200", "Class300", "Class400", "Class500", "NoResponse", "ClassUnknown"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_descriptor = descriptor5;
        internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Hostname", "SourceType", "Counts"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CClientMetrics_ContentDownloadResponse_Hosts_descriptor = descriptor6;
        internal_static_CClientMetrics_ContentDownloadResponse_Hosts_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Hosts"});
        descriptor.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CClientMetrics_ClientBootstrap_RequestInfo extends GeneratedMessage implements CClientMetrics_ClientBootstrap_RequestInfoOrBuilder {
        public static final int ACTUAL_HOSTNAME_FIELD_NUMBER = 2;
        public static final int ADDRESS_OF_REQUEST_URL_FIELD_NUMBER = 7;
        public static final int BASE_NAME_FIELD_NUMBER = 4;
        public static final int BYTES_RECEIVED_FIELD_NUMBER = 9;
        private static final CClientMetrics_ClientBootstrap_RequestInfo DEFAULT_INSTANCE;
        public static final int NUM_RETRIES_FIELD_NUMBER = 10;
        public static final int ORIGINAL_HOSTNAME_FIELD_NUMBER = 1;
        private static final Parser<CClientMetrics_ClientBootstrap_RequestInfo> PARSER;
        public static final int PATH_FIELD_NUMBER = 3;
        public static final int RESPONSE_TIME_MS_FIELD_NUMBER = 8;
        public static final int STATUS_CODE_FIELD_NUMBER = 6;
        public static final int SUCCESS_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private volatile Object actualHostname_;
        private volatile Object addressOfRequestUrl_;
        private volatile Object baseName_;
        private int bitField0_;
        private long bytesReceived_;
        private byte memoizedIsInitialized;
        private int numRetries_;
        private volatile Object originalHostname_;
        private volatile Object path_;
        private int responseTimeMs_;
        private int statusCode_;
        private boolean success_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientMetrics_ClientBootstrap_RequestInfo.class.getName());
            DEFAULT_INSTANCE = new CClientMetrics_ClientBootstrap_RequestInfo();
            PARSER = new AbstractParser<CClientMetrics_ClientBootstrap_RequestInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfo.1
                @Override // com.google.protobuf.Parser
                public CClientMetrics_ClientBootstrap_RequestInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientMetrics_ClientBootstrap_RequestInfo.newBuilder();
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

        private CClientMetrics_ClientBootstrap_RequestInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.originalHostname_ = "";
            this.actualHostname_ = "";
            this.path_ = "";
            this.baseName_ = "";
            this.success_ = false;
            this.statusCode_ = 0;
            this.addressOfRequestUrl_ = "";
            this.responseTimeMs_ = 0;
            this.bytesReceived_ = 0L;
            this.numRetries_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientMetrics_ClientBootstrap_RequestInfo() {
            this.originalHostname_ = "";
            this.actualHostname_ = "";
            this.path_ = "";
            this.baseName_ = "";
            this.success_ = false;
            this.statusCode_ = 0;
            this.addressOfRequestUrl_ = "";
            this.responseTimeMs_ = 0;
            this.bytesReceived_ = 0L;
            this.numRetries_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.originalHostname_ = "";
            this.actualHostname_ = "";
            this.path_ = "";
            this.baseName_ = "";
            this.addressOfRequestUrl_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_RequestInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_RequestInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ClientBootstrap_RequestInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasOriginalHostname() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public String getOriginalHostname() {
            Object obj = this.originalHostname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.originalHostname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public ByteString getOriginalHostnameBytes() {
            Object obj = this.originalHostname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.originalHostname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasActualHostname() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public String getActualHostname() {
            Object obj = this.actualHostname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.actualHostname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public ByteString getActualHostnameBytes() {
            Object obj = this.actualHostname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.actualHostname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasPath() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public String getPath() {
            Object obj = this.path_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.path_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public ByteString getPathBytes() {
            Object obj = this.path_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.path_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasBaseName() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public String getBaseName() {
            Object obj = this.baseName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.baseName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public ByteString getBaseNameBytes() {
            Object obj = this.baseName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.baseName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasSuccess() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean getSuccess() {
            return this.success_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasStatusCode() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public int getStatusCode() {
            return this.statusCode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasAddressOfRequestUrl() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public String getAddressOfRequestUrl() {
            Object obj = this.addressOfRequestUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.addressOfRequestUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public ByteString getAddressOfRequestUrlBytes() {
            Object obj = this.addressOfRequestUrl_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.addressOfRequestUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasResponseTimeMs() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public int getResponseTimeMs() {
            return this.responseTimeMs_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasBytesReceived() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public long getBytesReceived() {
            return this.bytesReceived_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public boolean hasNumRetries() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
        public int getNumRetries() {
            return this.numRetries_;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.originalHostname_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.actualHostname_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.path_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.baseName_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.success_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.statusCode_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 7, this.addressOfRequestUrl_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(8, this.responseTimeMs_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt64(9, this.bytesReceived_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeUInt32(10, this.numRetries_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.originalHostname_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(2, this.actualHostname_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.path_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(4, this.baseName_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(5, this.success_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(6, this.statusCode_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(7, this.addressOfRequestUrl_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(8, this.responseTimeMs_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(9, this.bytesReceived_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(10, this.numRetries_);
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
            if (!(obj instanceof CClientMetrics_ClientBootstrap_RequestInfo)) {
                return super.equals(obj);
            }
            CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo = (CClientMetrics_ClientBootstrap_RequestInfo) obj;
            if (hasOriginalHostname() != cClientMetrics_ClientBootstrap_RequestInfo.hasOriginalHostname()) {
                return false;
            }
            if ((hasOriginalHostname() && !getOriginalHostname().equals(cClientMetrics_ClientBootstrap_RequestInfo.getOriginalHostname())) || hasActualHostname() != cClientMetrics_ClientBootstrap_RequestInfo.hasActualHostname()) {
                return false;
            }
            if ((hasActualHostname() && !getActualHostname().equals(cClientMetrics_ClientBootstrap_RequestInfo.getActualHostname())) || hasPath() != cClientMetrics_ClientBootstrap_RequestInfo.hasPath()) {
                return false;
            }
            if ((hasPath() && !getPath().equals(cClientMetrics_ClientBootstrap_RequestInfo.getPath())) || hasBaseName() != cClientMetrics_ClientBootstrap_RequestInfo.hasBaseName()) {
                return false;
            }
            if ((hasBaseName() && !getBaseName().equals(cClientMetrics_ClientBootstrap_RequestInfo.getBaseName())) || hasSuccess() != cClientMetrics_ClientBootstrap_RequestInfo.hasSuccess()) {
                return false;
            }
            if ((hasSuccess() && getSuccess() != cClientMetrics_ClientBootstrap_RequestInfo.getSuccess()) || hasStatusCode() != cClientMetrics_ClientBootstrap_RequestInfo.hasStatusCode()) {
                return false;
            }
            if ((hasStatusCode() && getStatusCode() != cClientMetrics_ClientBootstrap_RequestInfo.getStatusCode()) || hasAddressOfRequestUrl() != cClientMetrics_ClientBootstrap_RequestInfo.hasAddressOfRequestUrl()) {
                return false;
            }
            if ((hasAddressOfRequestUrl() && !getAddressOfRequestUrl().equals(cClientMetrics_ClientBootstrap_RequestInfo.getAddressOfRequestUrl())) || hasResponseTimeMs() != cClientMetrics_ClientBootstrap_RequestInfo.hasResponseTimeMs()) {
                return false;
            }
            if ((hasResponseTimeMs() && getResponseTimeMs() != cClientMetrics_ClientBootstrap_RequestInfo.getResponseTimeMs()) || hasBytesReceived() != cClientMetrics_ClientBootstrap_RequestInfo.hasBytesReceived()) {
                return false;
            }
            if ((!hasBytesReceived() || getBytesReceived() == cClientMetrics_ClientBootstrap_RequestInfo.getBytesReceived()) && hasNumRetries() == cClientMetrics_ClientBootstrap_RequestInfo.hasNumRetries()) {
                return (!hasNumRetries() || getNumRetries() == cClientMetrics_ClientBootstrap_RequestInfo.getNumRetries()) && getUnknownFields().equals(cClientMetrics_ClientBootstrap_RequestInfo.getUnknownFields());
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
            if (hasOriginalHostname()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getOriginalHostname().hashCode();
            }
            if (hasActualHostname()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getActualHostname().hashCode();
            }
            if (hasPath()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPath().hashCode();
            }
            if (hasBaseName()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getBaseName().hashCode();
            }
            if (hasSuccess()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getSuccess());
            }
            if (hasStatusCode()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getStatusCode();
            }
            if (hasAddressOfRequestUrl()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getAddressOfRequestUrl().hashCode();
            }
            if (hasResponseTimeMs()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getResponseTimeMs();
            }
            if (hasBytesReceived()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + Internal.hashLong(getBytesReceived());
            }
            if (hasNumRetries()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getNumRetries();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ClientBootstrap_RequestInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ClientBootstrap_RequestInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ClientBootstrap_RequestInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ClientBootstrap_RequestInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientMetrics_ClientBootstrap_RequestInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ClientBootstrap_RequestInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientMetrics_ClientBootstrap_RequestInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientMetrics_ClientBootstrap_RequestInfoOrBuilder {
            private Object actualHostname_;
            private Object addressOfRequestUrl_;
            private Object baseName_;
            private int bitField0_;
            private long bytesReceived_;
            private int numRetries_;
            private Object originalHostname_;
            private Object path_;
            private int responseTimeMs_;
            private int statusCode_;
            private boolean success_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_RequestInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_RequestInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ClientBootstrap_RequestInfo.class, Builder.class);
            }

            private Builder() {
                this.originalHostname_ = "";
                this.actualHostname_ = "";
                this.path_ = "";
                this.baseName_ = "";
                this.addressOfRequestUrl_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.originalHostname_ = "";
                this.actualHostname_ = "";
                this.path_ = "";
                this.baseName_ = "";
                this.addressOfRequestUrl_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.originalHostname_ = "";
                this.actualHostname_ = "";
                this.path_ = "";
                this.baseName_ = "";
                this.success_ = false;
                this.statusCode_ = 0;
                this.addressOfRequestUrl_ = "";
                this.responseTimeMs_ = 0;
                this.bytesReceived_ = 0L;
                this.numRetries_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_RequestInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientMetrics_ClientBootstrap_RequestInfo getDefaultInstanceForType() {
                return CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ClientBootstrap_RequestInfo build() {
                CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfoBuildPartial = buildPartial();
                if (cClientMetrics_ClientBootstrap_RequestInfoBuildPartial.isInitialized()) {
                    return cClientMetrics_ClientBootstrap_RequestInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientMetrics_ClientBootstrap_RequestInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ClientBootstrap_RequestInfo buildPartial() {
                CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo = new CClientMetrics_ClientBootstrap_RequestInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientMetrics_ClientBootstrap_RequestInfo);
                }
                onBuilt();
                return cClientMetrics_ClientBootstrap_RequestInfo;
            }

            private void buildPartial0(CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.originalHostname_ = this.originalHostname_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.actualHostname_ = this.actualHostname_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.path_ = this.path_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.baseName_ = this.baseName_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.success_ = this.success_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.statusCode_ = this.statusCode_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.addressOfRequestUrl_ = this.addressOfRequestUrl_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.responseTimeMs_ = this.responseTimeMs_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.bytesReceived_ = this.bytesReceived_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cClientMetrics_ClientBootstrap_RequestInfo.numRetries_ = this.numRetries_;
                    i |= 512;
                }
                cClientMetrics_ClientBootstrap_RequestInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientMetrics_ClientBootstrap_RequestInfo) {
                    return mergeFrom((CClientMetrics_ClientBootstrap_RequestInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                if (cClientMetrics_ClientBootstrap_RequestInfo == CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance()) {
                    return this;
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasOriginalHostname()) {
                    this.originalHostname_ = cClientMetrics_ClientBootstrap_RequestInfo.originalHostname_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasActualHostname()) {
                    this.actualHostname_ = cClientMetrics_ClientBootstrap_RequestInfo.actualHostname_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasPath()) {
                    this.path_ = cClientMetrics_ClientBootstrap_RequestInfo.path_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasBaseName()) {
                    this.baseName_ = cClientMetrics_ClientBootstrap_RequestInfo.baseName_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasSuccess()) {
                    setSuccess(cClientMetrics_ClientBootstrap_RequestInfo.getSuccess());
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasStatusCode()) {
                    setStatusCode(cClientMetrics_ClientBootstrap_RequestInfo.getStatusCode());
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasAddressOfRequestUrl()) {
                    this.addressOfRequestUrl_ = cClientMetrics_ClientBootstrap_RequestInfo.addressOfRequestUrl_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasResponseTimeMs()) {
                    setResponseTimeMs(cClientMetrics_ClientBootstrap_RequestInfo.getResponseTimeMs());
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasBytesReceived()) {
                    setBytesReceived(cClientMetrics_ClientBootstrap_RequestInfo.getBytesReceived());
                }
                if (cClientMetrics_ClientBootstrap_RequestInfo.hasNumRetries()) {
                    setNumRetries(cClientMetrics_ClientBootstrap_RequestInfo.getNumRetries());
                }
                mergeUnknownFields(cClientMetrics_ClientBootstrap_RequestInfo.getUnknownFields());
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
                                    this.originalHostname_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                    break;
                                case 18:
                                    this.actualHostname_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.path_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    this.baseName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.success_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.statusCode_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER /* 58 */:
                                    this.addressOfRequestUrl_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    break;
                                case 64:
                                    this.responseTimeMs_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                    break;
                                case 72:
                                    this.bytesReceived_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.numRetries_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 512;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasOriginalHostname() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public String getOriginalHostname() {
                Object obj = this.originalHostname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.originalHostname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public ByteString getOriginalHostnameBytes() {
                Object obj = this.originalHostname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.originalHostname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setOriginalHostname(String str) {
                str.getClass();
                this.originalHostname_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearOriginalHostname() {
                this.originalHostname_ = CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance().getOriginalHostname();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setOriginalHostnameBytes(ByteString byteString) {
                byteString.getClass();
                this.originalHostname_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasActualHostname() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public String getActualHostname() {
                Object obj = this.actualHostname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.actualHostname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public ByteString getActualHostnameBytes() {
                Object obj = this.actualHostname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.actualHostname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setActualHostname(String str) {
                str.getClass();
                this.actualHostname_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearActualHostname() {
                this.actualHostname_ = CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance().getActualHostname();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setActualHostnameBytes(ByteString byteString) {
                byteString.getClass();
                this.actualHostname_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasPath() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public String getPath() {
                Object obj = this.path_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.path_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public ByteString getPathBytes() {
                Object obj = this.path_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.path_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPath(String str) {
                str.getClass();
                this.path_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPath() {
                this.path_ = CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance().getPath();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setPathBytes(ByteString byteString) {
                byteString.getClass();
                this.path_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasBaseName() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public String getBaseName() {
                Object obj = this.baseName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.baseName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public ByteString getBaseNameBytes() {
                Object obj = this.baseName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.baseName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setBaseName(String str) {
                str.getClass();
                this.baseName_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearBaseName() {
                this.baseName_ = CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance().getBaseName();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setBaseNameBytes(ByteString byteString) {
                byteString.getClass();
                this.baseName_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasSuccess() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean getSuccess() {
                return this.success_;
            }

            public Builder setSuccess(boolean z) {
                this.success_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSuccess() {
                this.bitField0_ &= -17;
                this.success_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasStatusCode() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public int getStatusCode() {
                return this.statusCode_;
            }

            public Builder setStatusCode(int i) {
                this.statusCode_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearStatusCode() {
                this.bitField0_ &= -33;
                this.statusCode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasAddressOfRequestUrl() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public String getAddressOfRequestUrl() {
                Object obj = this.addressOfRequestUrl_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.addressOfRequestUrl_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public ByteString getAddressOfRequestUrlBytes() {
                Object obj = this.addressOfRequestUrl_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.addressOfRequestUrl_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAddressOfRequestUrl(String str) {
                str.getClass();
                this.addressOfRequestUrl_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearAddressOfRequestUrl() {
                this.addressOfRequestUrl_ = CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance().getAddressOfRequestUrl();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setAddressOfRequestUrlBytes(ByteString byteString) {
                byteString.getClass();
                this.addressOfRequestUrl_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasResponseTimeMs() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public int getResponseTimeMs() {
                return this.responseTimeMs_;
            }

            public Builder setResponseTimeMs(int i) {
                this.responseTimeMs_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearResponseTimeMs() {
                this.bitField0_ &= -129;
                this.responseTimeMs_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasBytesReceived() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public long getBytesReceived() {
                return this.bytesReceived_;
            }

            public Builder setBytesReceived(long j) {
                this.bytesReceived_ = j;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearBytesReceived() {
                this.bitField0_ &= -257;
                this.bytesReceived_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public boolean hasNumRetries() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_RequestInfoOrBuilder
            public int getNumRetries() {
                return this.numRetries_;
            }

            public Builder setNumRetries(int i) {
                this.numRetries_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearNumRetries() {
                this.bitField0_ &= -513;
                this.numRetries_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientMetrics_ClientBootstrap_RequestInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientMetrics_ClientBootstrap_RequestInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientMetrics_ClientBootstrap_RequestInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientMetrics_ClientBootstrap_RequestInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientMetrics_ClientBootstrap_Summary extends GeneratedMessage implements CClientMetrics_ClientBootstrap_SummaryOrBuilder {
        public static final int BETA_NAME_FIELD_NUMBER = 3;
        private static final CClientMetrics_ClientBootstrap_Summary DEFAULT_INSTANCE;
        public static final int DOWNLOAD_COMPLETED_FIELD_NUMBER = 4;
        public static final int LAUNCHER_TYPE_FIELD_NUMBER = 1;
        public static final int MANIFEST_REQUESTS_FIELD_NUMBER = 7;
        public static final int PACKAGE_REQUESTS_FIELD_NUMBER = 8;
        private static final Parser<CClientMetrics_ClientBootstrap_Summary> PARSER;
        public static final int STEAM_REALM_FIELD_NUMBER = 2;
        public static final int TOTAL_TIME_MS_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private volatile Object betaName_;
        private int bitField0_;
        private boolean downloadCompleted_;
        private int launcherType_;
        private List<CClientMetrics_ClientBootstrap_RequestInfo> manifestRequests_;
        private byte memoizedIsInitialized;
        private List<CClientMetrics_ClientBootstrap_RequestInfo> packageRequests_;
        private int steamRealm_;
        private int totalTimeMs_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientMetrics_ClientBootstrap_Summary.class.getName());
            DEFAULT_INSTANCE = new CClientMetrics_ClientBootstrap_Summary();
            PARSER = new AbstractParser<CClientMetrics_ClientBootstrap_Summary>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_Summary.1
                @Override // com.google.protobuf.Parser
                public CClientMetrics_ClientBootstrap_Summary parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientMetrics_ClientBootstrap_Summary.newBuilder();
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

        private CClientMetrics_ClientBootstrap_Summary(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.launcherType_ = 0;
            this.steamRealm_ = 0;
            this.betaName_ = "";
            this.downloadCompleted_ = false;
            this.totalTimeMs_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientMetrics_ClientBootstrap_Summary() {
            this.launcherType_ = 0;
            this.steamRealm_ = 0;
            this.betaName_ = "";
            this.downloadCompleted_ = false;
            this.totalTimeMs_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.betaName_ = "";
            this.manifestRequests_ = Collections.emptyList();
            this.packageRequests_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_Summary_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_Summary_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ClientBootstrap_Summary.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public boolean hasLauncherType() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public int getLauncherType() {
            return this.launcherType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public boolean hasSteamRealm() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public int getSteamRealm() {
            return this.steamRealm_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public boolean hasBetaName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public ByteString getBetaNameBytes() {
            Object obj = this.betaName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.betaName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public boolean hasDownloadCompleted() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public boolean getDownloadCompleted() {
            return this.downloadCompleted_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public boolean hasTotalTimeMs() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public int getTotalTimeMs() {
            return this.totalTimeMs_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public List<CClientMetrics_ClientBootstrap_RequestInfo> getManifestRequestsList() {
            return this.manifestRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public List<? extends CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> getManifestRequestsOrBuilderList() {
            return this.manifestRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public int getManifestRequestsCount() {
            return this.manifestRequests_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public CClientMetrics_ClientBootstrap_RequestInfo getManifestRequests(int i) {
            return this.manifestRequests_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public CClientMetrics_ClientBootstrap_RequestInfoOrBuilder getManifestRequestsOrBuilder(int i) {
            return this.manifestRequests_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public List<CClientMetrics_ClientBootstrap_RequestInfo> getPackageRequestsList() {
            return this.packageRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public List<? extends CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> getPackageRequestsOrBuilderList() {
            return this.packageRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public int getPackageRequestsCount() {
            return this.packageRequests_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public CClientMetrics_ClientBootstrap_RequestInfo getPackageRequests(int i) {
            return this.packageRequests_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
        public CClientMetrics_ClientBootstrap_RequestInfoOrBuilder getPackageRequestsOrBuilder(int i) {
            return this.packageRequests_.get(i);
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
                codedOutputStream.writeUInt32(1, this.launcherType_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.steamRealm_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.betaName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.downloadCompleted_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(6, this.totalTimeMs_);
            }
            for (int i = 0; i < this.manifestRequests_.size(); i++) {
                codedOutputStream.writeMessage(7, this.manifestRequests_.get(i));
            }
            for (int i2 = 0; i2 < this.packageRequests_.size(); i2++) {
                codedOutputStream.writeMessage(8, this.packageRequests_.get(i2));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.launcherType_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.steamRealm_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.betaName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.downloadCompleted_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.totalTimeMs_);
            }
            for (int i2 = 0; i2 < this.manifestRequests_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(7, this.manifestRequests_.get(i2));
            }
            for (int i3 = 0; i3 < this.packageRequests_.size(); i3++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(8, this.packageRequests_.get(i3));
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
            if (!(obj instanceof CClientMetrics_ClientBootstrap_Summary)) {
                return super.equals(obj);
            }
            CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_Summary = (CClientMetrics_ClientBootstrap_Summary) obj;
            if (hasLauncherType() != cClientMetrics_ClientBootstrap_Summary.hasLauncherType()) {
                return false;
            }
            if ((hasLauncherType() && getLauncherType() != cClientMetrics_ClientBootstrap_Summary.getLauncherType()) || hasSteamRealm() != cClientMetrics_ClientBootstrap_Summary.hasSteamRealm()) {
                return false;
            }
            if ((hasSteamRealm() && getSteamRealm() != cClientMetrics_ClientBootstrap_Summary.getSteamRealm()) || hasBetaName() != cClientMetrics_ClientBootstrap_Summary.hasBetaName()) {
                return false;
            }
            if ((hasBetaName() && !getBetaName().equals(cClientMetrics_ClientBootstrap_Summary.getBetaName())) || hasDownloadCompleted() != cClientMetrics_ClientBootstrap_Summary.hasDownloadCompleted()) {
                return false;
            }
            if ((!hasDownloadCompleted() || getDownloadCompleted() == cClientMetrics_ClientBootstrap_Summary.getDownloadCompleted()) && hasTotalTimeMs() == cClientMetrics_ClientBootstrap_Summary.hasTotalTimeMs()) {
                return (!hasTotalTimeMs() || getTotalTimeMs() == cClientMetrics_ClientBootstrap_Summary.getTotalTimeMs()) && getManifestRequestsList().equals(cClientMetrics_ClientBootstrap_Summary.getManifestRequestsList()) && getPackageRequestsList().equals(cClientMetrics_ClientBootstrap_Summary.getPackageRequestsList()) && getUnknownFields().equals(cClientMetrics_ClientBootstrap_Summary.getUnknownFields());
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
            if (hasLauncherType()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getLauncherType();
            }
            if (hasSteamRealm()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSteamRealm();
            }
            if (hasBetaName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getBetaName().hashCode();
            }
            if (hasDownloadCompleted()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getDownloadCompleted());
            }
            if (hasTotalTimeMs()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getTotalTimeMs();
            }
            if (getManifestRequestsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getManifestRequestsList().hashCode();
            }
            if (getPackageRequestsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getPackageRequestsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ClientBootstrap_Summary) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ClientBootstrap_Summary) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ClientBootstrap_Summary) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ClientBootstrap_Summary) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientMetrics_ClientBootstrap_Summary) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientMetrics_ClientBootstrap_Summary parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ClientBootstrap_Summary) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_Summary) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientMetrics_ClientBootstrap_Summary);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientMetrics_ClientBootstrap_SummaryOrBuilder {
            private Object betaName_;
            private int bitField0_;
            private boolean downloadCompleted_;
            private int launcherType_;
            private RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> manifestRequestsBuilder_;
            private List<CClientMetrics_ClientBootstrap_RequestInfo> manifestRequests_;
            private RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> packageRequestsBuilder_;
            private List<CClientMetrics_ClientBootstrap_RequestInfo> packageRequests_;
            private int steamRealm_;
            private int totalTimeMs_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_Summary_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_Summary_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ClientBootstrap_Summary.class, Builder.class);
            }

            private Builder() {
                this.betaName_ = "";
                this.manifestRequests_ = Collections.emptyList();
                this.packageRequests_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.betaName_ = "";
                this.manifestRequests_ = Collections.emptyList();
                this.packageRequests_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.launcherType_ = 0;
                this.steamRealm_ = 0;
                this.betaName_ = "";
                this.downloadCompleted_ = false;
                this.totalTimeMs_ = 0;
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.manifestRequests_ = Collections.emptyList();
                } else {
                    this.manifestRequests_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder2 = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.packageRequests_ = Collections.emptyList();
                } else {
                    this.packageRequests_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Clientmetrics.internal_static_CClientMetrics_ClientBootstrap_Summary_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientMetrics_ClientBootstrap_Summary getDefaultInstanceForType() {
                return CClientMetrics_ClientBootstrap_Summary.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ClientBootstrap_Summary build() {
                CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_SummaryBuildPartial = buildPartial();
                if (cClientMetrics_ClientBootstrap_SummaryBuildPartial.isInitialized()) {
                    return cClientMetrics_ClientBootstrap_SummaryBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientMetrics_ClientBootstrap_SummaryBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ClientBootstrap_Summary buildPartial() {
                CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_Summary = new CClientMetrics_ClientBootstrap_Summary(this);
                buildPartialRepeatedFields(cClientMetrics_ClientBootstrap_Summary);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientMetrics_ClientBootstrap_Summary);
                }
                onBuilt();
                return cClientMetrics_ClientBootstrap_Summary;
            }

            private void buildPartialRepeatedFields(CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_Summary) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 32) != 0) {
                        this.manifestRequests_ = Collections.unmodifiableList(this.manifestRequests_);
                        this.bitField0_ &= -33;
                    }
                    cClientMetrics_ClientBootstrap_Summary.manifestRequests_ = this.manifestRequests_;
                } else {
                    cClientMetrics_ClientBootstrap_Summary.manifestRequests_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder2 = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 64) != 0) {
                        this.packageRequests_ = Collections.unmodifiableList(this.packageRequests_);
                        this.bitField0_ &= -65;
                    }
                    cClientMetrics_ClientBootstrap_Summary.packageRequests_ = this.packageRequests_;
                    return;
                }
                cClientMetrics_ClientBootstrap_Summary.packageRequests_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_Summary) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientMetrics_ClientBootstrap_Summary.launcherType_ = this.launcherType_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientMetrics_ClientBootstrap_Summary.steamRealm_ = this.steamRealm_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientMetrics_ClientBootstrap_Summary.betaName_ = this.betaName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientMetrics_ClientBootstrap_Summary.downloadCompleted_ = this.downloadCompleted_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientMetrics_ClientBootstrap_Summary.totalTimeMs_ = this.totalTimeMs_;
                    i |= 16;
                }
                cClientMetrics_ClientBootstrap_Summary.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientMetrics_ClientBootstrap_Summary) {
                    return mergeFrom((CClientMetrics_ClientBootstrap_Summary) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientMetrics_ClientBootstrap_Summary cClientMetrics_ClientBootstrap_Summary) {
                if (cClientMetrics_ClientBootstrap_Summary == CClientMetrics_ClientBootstrap_Summary.getDefaultInstance()) {
                    return this;
                }
                if (cClientMetrics_ClientBootstrap_Summary.hasLauncherType()) {
                    setLauncherType(cClientMetrics_ClientBootstrap_Summary.getLauncherType());
                }
                if (cClientMetrics_ClientBootstrap_Summary.hasSteamRealm()) {
                    setSteamRealm(cClientMetrics_ClientBootstrap_Summary.getSteamRealm());
                }
                if (cClientMetrics_ClientBootstrap_Summary.hasBetaName()) {
                    this.betaName_ = cClientMetrics_ClientBootstrap_Summary.betaName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cClientMetrics_ClientBootstrap_Summary.hasDownloadCompleted()) {
                    setDownloadCompleted(cClientMetrics_ClientBootstrap_Summary.getDownloadCompleted());
                }
                if (cClientMetrics_ClientBootstrap_Summary.hasTotalTimeMs()) {
                    setTotalTimeMs(cClientMetrics_ClientBootstrap_Summary.getTotalTimeMs());
                }
                if (this.manifestRequestsBuilder_ == null) {
                    if (!cClientMetrics_ClientBootstrap_Summary.manifestRequests_.isEmpty()) {
                        if (this.manifestRequests_.isEmpty()) {
                            this.manifestRequests_ = cClientMetrics_ClientBootstrap_Summary.manifestRequests_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureManifestRequestsIsMutable();
                            this.manifestRequests_.addAll(cClientMetrics_ClientBootstrap_Summary.manifestRequests_);
                        }
                        onChanged();
                    }
                } else if (!cClientMetrics_ClientBootstrap_Summary.manifestRequests_.isEmpty()) {
                    if (this.manifestRequestsBuilder_.isEmpty()) {
                        this.manifestRequestsBuilder_.dispose();
                        this.manifestRequestsBuilder_ = null;
                        this.manifestRequests_ = cClientMetrics_ClientBootstrap_Summary.manifestRequests_;
                        this.bitField0_ &= -33;
                        this.manifestRequestsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetManifestRequestsFieldBuilder() : null;
                    } else {
                        this.manifestRequestsBuilder_.addAllMessages(cClientMetrics_ClientBootstrap_Summary.manifestRequests_);
                    }
                }
                if (this.packageRequestsBuilder_ == null) {
                    if (!cClientMetrics_ClientBootstrap_Summary.packageRequests_.isEmpty()) {
                        if (this.packageRequests_.isEmpty()) {
                            this.packageRequests_ = cClientMetrics_ClientBootstrap_Summary.packageRequests_;
                            this.bitField0_ &= -65;
                        } else {
                            ensurePackageRequestsIsMutable();
                            this.packageRequests_.addAll(cClientMetrics_ClientBootstrap_Summary.packageRequests_);
                        }
                        onChanged();
                    }
                } else if (!cClientMetrics_ClientBootstrap_Summary.packageRequests_.isEmpty()) {
                    if (this.packageRequestsBuilder_.isEmpty()) {
                        this.packageRequestsBuilder_.dispose();
                        this.packageRequestsBuilder_ = null;
                        this.packageRequests_ = cClientMetrics_ClientBootstrap_Summary.packageRequests_;
                        this.bitField0_ &= -65;
                        this.packageRequestsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPackageRequestsFieldBuilder() : null;
                    } else {
                        this.packageRequestsBuilder_.addAllMessages(cClientMetrics_ClientBootstrap_Summary.packageRequests_);
                    }
                }
                mergeUnknownFields(cClientMetrics_ClientBootstrap_Summary.getUnknownFields());
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
                                    this.launcherType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamRealm_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.betaName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.downloadCompleted_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 48) {
                                    this.totalTimeMs_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 58) {
                                    CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo = (CClientMetrics_ClientBootstrap_RequestInfo) codedInputStream.readMessage(CClientMetrics_ClientBootstrap_RequestInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureManifestRequestsIsMutable();
                                        this.manifestRequests_.add(cClientMetrics_ClientBootstrap_RequestInfo);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cClientMetrics_ClientBootstrap_RequestInfo);
                                    }
                                } else if (tag == 66) {
                                    CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo2 = (CClientMetrics_ClientBootstrap_RequestInfo) codedInputStream.readMessage(CClientMetrics_ClientBootstrap_RequestInfo.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder2 = this.packageRequestsBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensurePackageRequestsIsMutable();
                                        this.packageRequests_.add(cClientMetrics_ClientBootstrap_RequestInfo2);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(cClientMetrics_ClientBootstrap_RequestInfo2);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public boolean hasLauncherType() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public int getLauncherType() {
                return this.launcherType_;
            }

            public Builder setLauncherType(int i) {
                this.launcherType_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearLauncherType() {
                this.bitField0_ &= -2;
                this.launcherType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public boolean hasSteamRealm() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public int getSteamRealm() {
                return this.steamRealm_;
            }

            public Builder setSteamRealm(int i) {
                this.steamRealm_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamRealm() {
                this.bitField0_ &= -3;
                this.steamRealm_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public boolean hasBetaName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
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
                this.betaName_ = CClientMetrics_ClientBootstrap_Summary.getDefaultInstance().getBetaName();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public boolean hasDownloadCompleted() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public boolean getDownloadCompleted() {
                return this.downloadCompleted_;
            }

            public Builder setDownloadCompleted(boolean z) {
                this.downloadCompleted_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearDownloadCompleted() {
                this.bitField0_ &= -9;
                this.downloadCompleted_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public boolean hasTotalTimeMs() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public int getTotalTimeMs() {
                return this.totalTimeMs_;
            }

            public Builder setTotalTimeMs(int i) {
                this.totalTimeMs_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearTotalTimeMs() {
                this.bitField0_ &= -17;
                this.totalTimeMs_ = 0;
                onChanged();
                return this;
            }

            private void ensureManifestRequestsIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.manifestRequests_ = new ArrayList(this.manifestRequests_);
                    this.bitField0_ |= 32;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public List<CClientMetrics_ClientBootstrap_RequestInfo> getManifestRequestsList() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.manifestRequests_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public int getManifestRequestsCount() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.manifestRequests_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public CClientMetrics_ClientBootstrap_RequestInfo getManifestRequests(int i) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.manifestRequests_.get(i);
                }
                return (CClientMetrics_ClientBootstrap_RequestInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setManifestRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ClientBootstrap_RequestInfo.getClass();
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.set(i, cClientMetrics_ClientBootstrap_RequestInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientMetrics_ClientBootstrap_RequestInfo);
                }
                return this;
            }

            public Builder setManifestRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addManifestRequests(CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ClientBootstrap_RequestInfo.getClass();
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.add(cClientMetrics_ClientBootstrap_RequestInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientMetrics_ClientBootstrap_RequestInfo);
                }
                return this;
            }

            public Builder addManifestRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ClientBootstrap_RequestInfo.getClass();
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.add(i, cClientMetrics_ClientBootstrap_RequestInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientMetrics_ClientBootstrap_RequestInfo);
                }
                return this;
            }

            public Builder addManifestRequests(CClientMetrics_ClientBootstrap_RequestInfo.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addManifestRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllManifestRequests(Iterable<? extends CClientMetrics_ClientBootstrap_RequestInfo> iterable) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureManifestRequestsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.manifestRequests_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearManifestRequests() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.manifestRequests_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeManifestRequests(int i) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureManifestRequestsIsMutable();
                    this.manifestRequests_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientMetrics_ClientBootstrap_RequestInfo.Builder getManifestRequestsBuilder(int i) {
                return (CClientMetrics_ClientBootstrap_RequestInfo.Builder) internalGetManifestRequestsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public CClientMetrics_ClientBootstrap_RequestInfoOrBuilder getManifestRequestsOrBuilder(int i) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.manifestRequests_.get(i);
                }
                return (CClientMetrics_ClientBootstrap_RequestInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public List<? extends CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> getManifestRequestsOrBuilderList() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.manifestRequestsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.manifestRequests_);
            }

            public CClientMetrics_ClientBootstrap_RequestInfo.Builder addManifestRequestsBuilder() {
                return (CClientMetrics_ClientBootstrap_RequestInfo.Builder) internalGetManifestRequestsFieldBuilder().addBuilder(CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance());
            }

            public CClientMetrics_ClientBootstrap_RequestInfo.Builder addManifestRequestsBuilder(int i) {
                return (CClientMetrics_ClientBootstrap_RequestInfo.Builder) internalGetManifestRequestsFieldBuilder().addBuilder(i, CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance());
            }

            public List<CClientMetrics_ClientBootstrap_RequestInfo.Builder> getManifestRequestsBuilderList() {
                return internalGetManifestRequestsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> internalGetManifestRequestsFieldBuilder() {
                if (this.manifestRequestsBuilder_ == null) {
                    this.manifestRequestsBuilder_ = new RepeatedFieldBuilder<>(this.manifestRequests_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                    this.manifestRequests_ = null;
                }
                return this.manifestRequestsBuilder_;
            }

            private void ensurePackageRequestsIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.packageRequests_ = new ArrayList(this.packageRequests_);
                    this.bitField0_ |= 64;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public List<CClientMetrics_ClientBootstrap_RequestInfo> getPackageRequestsList() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.packageRequests_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public int getPackageRequestsCount() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageRequests_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public CClientMetrics_ClientBootstrap_RequestInfo getPackageRequests(int i) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageRequests_.get(i);
                }
                return (CClientMetrics_ClientBootstrap_RequestInfo) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPackageRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ClientBootstrap_RequestInfo.getClass();
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.set(i, cClientMetrics_ClientBootstrap_RequestInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientMetrics_ClientBootstrap_RequestInfo);
                }
                return this;
            }

            public Builder setPackageRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPackageRequests(CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ClientBootstrap_RequestInfo.getClass();
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.add(cClientMetrics_ClientBootstrap_RequestInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientMetrics_ClientBootstrap_RequestInfo);
                }
                return this;
            }

            public Builder addPackageRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo cClientMetrics_ClientBootstrap_RequestInfo) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ClientBootstrap_RequestInfo.getClass();
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.add(i, cClientMetrics_ClientBootstrap_RequestInfo);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientMetrics_ClientBootstrap_RequestInfo);
                }
                return this;
            }

            public Builder addPackageRequests(CClientMetrics_ClientBootstrap_RequestInfo.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPackageRequests(int i, CClientMetrics_ClientBootstrap_RequestInfo.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPackageRequests(Iterable<? extends CClientMetrics_ClientBootstrap_RequestInfo> iterable) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageRequestsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.packageRequests_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPackageRequests() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.packageRequests_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePackageRequests(int i) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePackageRequestsIsMutable();
                    this.packageRequests_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientMetrics_ClientBootstrap_RequestInfo.Builder getPackageRequestsBuilder(int i) {
                return (CClientMetrics_ClientBootstrap_RequestInfo.Builder) internalGetPackageRequestsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public CClientMetrics_ClientBootstrap_RequestInfoOrBuilder getPackageRequestsOrBuilder(int i) {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.packageRequests_.get(i);
                }
                return (CClientMetrics_ClientBootstrap_RequestInfoOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ClientBootstrap_SummaryOrBuilder
            public List<? extends CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> getPackageRequestsOrBuilderList() {
                RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> repeatedFieldBuilder = this.packageRequestsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.packageRequests_);
            }

            public CClientMetrics_ClientBootstrap_RequestInfo.Builder addPackageRequestsBuilder() {
                return (CClientMetrics_ClientBootstrap_RequestInfo.Builder) internalGetPackageRequestsFieldBuilder().addBuilder(CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance());
            }

            public CClientMetrics_ClientBootstrap_RequestInfo.Builder addPackageRequestsBuilder(int i) {
                return (CClientMetrics_ClientBootstrap_RequestInfo.Builder) internalGetPackageRequestsFieldBuilder().addBuilder(i, CClientMetrics_ClientBootstrap_RequestInfo.getDefaultInstance());
            }

            public List<CClientMetrics_ClientBootstrap_RequestInfo.Builder> getPackageRequestsBuilderList() {
                return internalGetPackageRequestsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientMetrics_ClientBootstrap_RequestInfo, CClientMetrics_ClientBootstrap_RequestInfo.Builder, CClientMetrics_ClientBootstrap_RequestInfoOrBuilder> internalGetPackageRequestsFieldBuilder() {
                if (this.packageRequestsBuilder_ == null) {
                    this.packageRequestsBuilder_ = new RepeatedFieldBuilder<>(this.packageRequests_, (this.bitField0_ & 64) != 0, getParentForChildren(), isClean());
                    this.packageRequests_ = null;
                }
                return this.packageRequestsBuilder_;
            }
        }

        public static CClientMetrics_ClientBootstrap_Summary getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientMetrics_ClientBootstrap_Summary> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientMetrics_ClientBootstrap_Summary> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientMetrics_ClientBootstrap_Summary getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientMetrics_ContentDownloadResponse_Counts extends GeneratedMessage implements CClientMetrics_ContentDownloadResponse_CountsOrBuilder {
        public static final int CLASS_100_FIELD_NUMBER = 1;
        public static final int CLASS_200_FIELD_NUMBER = 2;
        public static final int CLASS_300_FIELD_NUMBER = 3;
        public static final int CLASS_400_FIELD_NUMBER = 4;
        public static final int CLASS_500_FIELD_NUMBER = 5;
        public static final int CLASS_UNKNOWN_FIELD_NUMBER = 7;
        private static final CClientMetrics_ContentDownloadResponse_Counts DEFAULT_INSTANCE;
        public static final int NO_RESPONSE_FIELD_NUMBER = 6;
        private static final Parser<CClientMetrics_ContentDownloadResponse_Counts> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int class100_;
        private int class200_;
        private int class300_;
        private int class400_;
        private int class500_;
        private int classUnknown_;
        private byte memoizedIsInitialized;
        private int noResponse_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientMetrics_ContentDownloadResponse_Counts.class.getName());
            DEFAULT_INSTANCE = new CClientMetrics_ContentDownloadResponse_Counts();
            PARSER = new AbstractParser<CClientMetrics_ContentDownloadResponse_Counts>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_Counts.1
                @Override // com.google.protobuf.Parser
                public CClientMetrics_ContentDownloadResponse_Counts parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientMetrics_ContentDownloadResponse_Counts.newBuilder();
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

        private CClientMetrics_ContentDownloadResponse_Counts(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.class100_ = 0;
            this.class200_ = 0;
            this.class300_ = 0;
            this.class400_ = 0;
            this.class500_ = 0;
            this.noResponse_ = 0;
            this.classUnknown_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientMetrics_ContentDownloadResponse_Counts() {
            this.class100_ = 0;
            this.class200_ = 0;
            this.class300_ = 0;
            this.class400_ = 0;
            this.class500_ = 0;
            this.noResponse_ = 0;
            this.classUnknown_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Counts_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Counts_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ContentDownloadResponse_Counts.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasClass100() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getClass100() {
            return this.class100_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasClass200() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getClass200() {
            return this.class200_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasClass300() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getClass300() {
            return this.class300_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasClass400() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getClass400() {
            return this.class400_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasClass500() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getClass500() {
            return this.class500_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasNoResponse() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getNoResponse() {
            return this.noResponse_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public boolean hasClassUnknown() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
        public int getClassUnknown() {
            return this.classUnknown_;
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
                codedOutputStream.writeUInt32(1, this.class100_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.class200_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.class300_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.class400_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.class500_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.noResponse_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.classUnknown_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.class100_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.class200_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.class300_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.class400_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.class500_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.noResponse_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.classUnknown_);
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
            if (!(obj instanceof CClientMetrics_ContentDownloadResponse_Counts)) {
                return super.equals(obj);
            }
            CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts = (CClientMetrics_ContentDownloadResponse_Counts) obj;
            if (hasClass100() != cClientMetrics_ContentDownloadResponse_Counts.hasClass100()) {
                return false;
            }
            if ((hasClass100() && getClass100() != cClientMetrics_ContentDownloadResponse_Counts.getClass100()) || hasClass200() != cClientMetrics_ContentDownloadResponse_Counts.hasClass200()) {
                return false;
            }
            if ((hasClass200() && getClass200() != cClientMetrics_ContentDownloadResponse_Counts.getClass200()) || hasClass300() != cClientMetrics_ContentDownloadResponse_Counts.hasClass300()) {
                return false;
            }
            if ((hasClass300() && getClass300() != cClientMetrics_ContentDownloadResponse_Counts.getClass300()) || hasClass400() != cClientMetrics_ContentDownloadResponse_Counts.hasClass400()) {
                return false;
            }
            if ((hasClass400() && getClass400() != cClientMetrics_ContentDownloadResponse_Counts.getClass400()) || hasClass500() != cClientMetrics_ContentDownloadResponse_Counts.hasClass500()) {
                return false;
            }
            if ((hasClass500() && getClass500() != cClientMetrics_ContentDownloadResponse_Counts.getClass500()) || hasNoResponse() != cClientMetrics_ContentDownloadResponse_Counts.hasNoResponse()) {
                return false;
            }
            if ((!hasNoResponse() || getNoResponse() == cClientMetrics_ContentDownloadResponse_Counts.getNoResponse()) && hasClassUnknown() == cClientMetrics_ContentDownloadResponse_Counts.hasClassUnknown()) {
                return (!hasClassUnknown() || getClassUnknown() == cClientMetrics_ContentDownloadResponse_Counts.getClassUnknown()) && getUnknownFields().equals(cClientMetrics_ContentDownloadResponse_Counts.getUnknownFields());
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
            if (hasClass100()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getClass100();
            }
            if (hasClass200()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getClass200();
            }
            if (hasClass300()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getClass300();
            }
            if (hasClass400()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getClass400();
            }
            if (hasClass500()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getClass500();
            }
            if (hasNoResponse()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getNoResponse();
            }
            if (hasClassUnknown()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getClassUnknown();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Counts) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Counts) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Counts) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Counts) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Counts) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_Counts parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Counts) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientMetrics_ContentDownloadResponse_Counts);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientMetrics_ContentDownloadResponse_CountsOrBuilder {
            private int bitField0_;
            private int class100_;
            private int class200_;
            private int class300_;
            private int class400_;
            private int class500_;
            private int classUnknown_;
            private int noResponse_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Counts_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Counts_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ContentDownloadResponse_Counts.class, Builder.class);
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
                this.class100_ = 0;
                this.class200_ = 0;
                this.class300_ = 0;
                this.class400_ = 0;
                this.class500_ = 0;
                this.noResponse_ = 0;
                this.classUnknown_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Counts_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientMetrics_ContentDownloadResponse_Counts getDefaultInstanceForType() {
                return CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ContentDownloadResponse_Counts build() {
                CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_CountsBuildPartial = buildPartial();
                if (cClientMetrics_ContentDownloadResponse_CountsBuildPartial.isInitialized()) {
                    return cClientMetrics_ContentDownloadResponse_CountsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientMetrics_ContentDownloadResponse_CountsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ContentDownloadResponse_Counts buildPartial() {
                CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts = new CClientMetrics_ContentDownloadResponse_Counts(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientMetrics_ContentDownloadResponse_Counts);
                }
                onBuilt();
                return cClientMetrics_ContentDownloadResponse_Counts;
            }

            private void buildPartial0(CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.class100_ = this.class100_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.class200_ = this.class200_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.class300_ = this.class300_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.class400_ = this.class400_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.class500_ = this.class500_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.noResponse_ = this.noResponse_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cClientMetrics_ContentDownloadResponse_Counts.classUnknown_ = this.classUnknown_;
                    i |= 64;
                }
                cClientMetrics_ContentDownloadResponse_Counts.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientMetrics_ContentDownloadResponse_Counts) {
                    return mergeFrom((CClientMetrics_ContentDownloadResponse_Counts) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts) {
                if (cClientMetrics_ContentDownloadResponse_Counts == CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance()) {
                    return this;
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasClass100()) {
                    setClass100(cClientMetrics_ContentDownloadResponse_Counts.getClass100());
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasClass200()) {
                    setClass200(cClientMetrics_ContentDownloadResponse_Counts.getClass200());
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasClass300()) {
                    setClass300(cClientMetrics_ContentDownloadResponse_Counts.getClass300());
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasClass400()) {
                    setClass400(cClientMetrics_ContentDownloadResponse_Counts.getClass400());
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasClass500()) {
                    setClass500(cClientMetrics_ContentDownloadResponse_Counts.getClass500());
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasNoResponse()) {
                    setNoResponse(cClientMetrics_ContentDownloadResponse_Counts.getNoResponse());
                }
                if (cClientMetrics_ContentDownloadResponse_Counts.hasClassUnknown()) {
                    setClassUnknown(cClientMetrics_ContentDownloadResponse_Counts.getClassUnknown());
                }
                mergeUnknownFields(cClientMetrics_ContentDownloadResponse_Counts.getUnknownFields());
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
                                    this.class100_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.class200_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.class300_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.class400_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.class500_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.noResponse_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.classUnknown_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasClass100() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getClass100() {
                return this.class100_;
            }

            public Builder setClass100(int i) {
                this.class100_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearClass100() {
                this.bitField0_ &= -2;
                this.class100_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasClass200() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getClass200() {
                return this.class200_;
            }

            public Builder setClass200(int i) {
                this.class200_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClass200() {
                this.bitField0_ &= -3;
                this.class200_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasClass300() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getClass300() {
                return this.class300_;
            }

            public Builder setClass300(int i) {
                this.class300_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearClass300() {
                this.bitField0_ &= -5;
                this.class300_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasClass400() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getClass400() {
                return this.class400_;
            }

            public Builder setClass400(int i) {
                this.class400_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearClass400() {
                this.bitField0_ &= -9;
                this.class400_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasClass500() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getClass500() {
                return this.class500_;
            }

            public Builder setClass500(int i) {
                this.class500_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearClass500() {
                this.bitField0_ &= -17;
                this.class500_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasNoResponse() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getNoResponse() {
                return this.noResponse_;
            }

            public Builder setNoResponse(int i) {
                this.noResponse_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearNoResponse() {
                this.bitField0_ &= -33;
                this.noResponse_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public boolean hasClassUnknown() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_CountsOrBuilder
            public int getClassUnknown() {
                return this.classUnknown_;
            }

            public Builder setClassUnknown(int i) {
                this.classUnknown_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearClassUnknown() {
                this.bitField0_ &= -65;
                this.classUnknown_ = 0;
                onChanged();
                return this;
            }
        }

        public static CClientMetrics_ContentDownloadResponse_Counts getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientMetrics_ContentDownloadResponse_Counts> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientMetrics_ContentDownloadResponse_Counts> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientMetrics_ContentDownloadResponse_Counts getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientMetrics_ContentDownloadResponse_HostCounts extends GeneratedMessage implements CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder {
        public static final int COUNTS_FIELD_NUMBER = 3;
        private static final CClientMetrics_ContentDownloadResponse_HostCounts DEFAULT_INSTANCE;
        public static final int HOSTNAME_FIELD_NUMBER = 1;
        private static final Parser<CClientMetrics_ContentDownloadResponse_HostCounts> PARSER;
        public static final int SOURCE_TYPE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private CClientMetrics_ContentDownloadResponse_Counts counts_;
        private volatile Object hostname_;
        private byte memoizedIsInitialized;
        private int sourceType_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientMetrics_ContentDownloadResponse_HostCounts.class.getName());
            DEFAULT_INSTANCE = new CClientMetrics_ContentDownloadResponse_HostCounts();
            PARSER = new AbstractParser<CClientMetrics_ContentDownloadResponse_HostCounts>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCounts.1
                @Override // com.google.protobuf.Parser
                public CClientMetrics_ContentDownloadResponse_HostCounts parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientMetrics_ContentDownloadResponse_HostCounts.newBuilder();
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

        private CClientMetrics_ContentDownloadResponse_HostCounts(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.hostname_ = "";
            this.sourceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientMetrics_ContentDownloadResponse_HostCounts() {
            this.hostname_ = "";
            this.sourceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.hostname_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ContentDownloadResponse_HostCounts.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public boolean hasHostname() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public String getHostname() {
            Object obj = this.hostname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.hostname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public ByteString getHostnameBytes() {
            Object obj = this.hostname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public boolean hasSourceType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public int getSourceType() {
            return this.sourceType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public boolean hasCounts() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public CClientMetrics_ContentDownloadResponse_Counts getCounts() {
            CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts = this.counts_;
            return cClientMetrics_ContentDownloadResponse_Counts == null ? CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance() : cClientMetrics_ContentDownloadResponse_Counts;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
        public CClientMetrics_ContentDownloadResponse_CountsOrBuilder getCountsOrBuilder() {
            CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts = this.counts_;
            return cClientMetrics_ContentDownloadResponse_Counts == null ? CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance() : cClientMetrics_ContentDownloadResponse_Counts;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.hostname_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.sourceType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeMessage(3, getCounts());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.hostname_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(2, this.sourceType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(3, getCounts());
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
            if (!(obj instanceof CClientMetrics_ContentDownloadResponse_HostCounts)) {
                return super.equals(obj);
            }
            CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts = (CClientMetrics_ContentDownloadResponse_HostCounts) obj;
            if (hasHostname() != cClientMetrics_ContentDownloadResponse_HostCounts.hasHostname()) {
                return false;
            }
            if ((hasHostname() && !getHostname().equals(cClientMetrics_ContentDownloadResponse_HostCounts.getHostname())) || hasSourceType() != cClientMetrics_ContentDownloadResponse_HostCounts.hasSourceType()) {
                return false;
            }
            if ((!hasSourceType() || getSourceType() == cClientMetrics_ContentDownloadResponse_HostCounts.getSourceType()) && hasCounts() == cClientMetrics_ContentDownloadResponse_HostCounts.hasCounts()) {
                return (!hasCounts() || getCounts().equals(cClientMetrics_ContentDownloadResponse_HostCounts.getCounts())) && getUnknownFields().equals(cClientMetrics_ContentDownloadResponse_HostCounts.getUnknownFields());
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
            if (hasHostname()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getHostname().hashCode();
            }
            if (hasSourceType()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSourceType();
            }
            if (hasCounts()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCounts().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_HostCounts) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_HostCounts) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_HostCounts) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_HostCounts) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_HostCounts) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_HostCounts) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientMetrics_ContentDownloadResponse_HostCounts);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> countsBuilder_;
            private CClientMetrics_ContentDownloadResponse_Counts counts_;
            private Object hostname_;
            private int sourceType_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ContentDownloadResponse_HostCounts.class, Builder.class);
            }

            private Builder() {
                this.hostname_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.hostname_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetCountsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.hostname_ = "";
                this.sourceType_ = 0;
                this.counts_ = null;
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.countsBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_HostCounts_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientMetrics_ContentDownloadResponse_HostCounts getDefaultInstanceForType() {
                return CClientMetrics_ContentDownloadResponse_HostCounts.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ContentDownloadResponse_HostCounts build() {
                CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCountsBuildPartial = buildPartial();
                if (cClientMetrics_ContentDownloadResponse_HostCountsBuildPartial.isInitialized()) {
                    return cClientMetrics_ContentDownloadResponse_HostCountsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientMetrics_ContentDownloadResponse_HostCountsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ContentDownloadResponse_HostCounts buildPartial() {
                CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts = new CClientMetrics_ContentDownloadResponse_HostCounts(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientMetrics_ContentDownloadResponse_HostCounts);
                }
                onBuilt();
                return cClientMetrics_ContentDownloadResponse_HostCounts;
            }

            private void buildPartial0(CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts) {
                int i;
                CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cClientMetrics_ContentDownloadResponse_HostCounts.hostname_ = this.hostname_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cClientMetrics_ContentDownloadResponse_HostCounts.sourceType_ = this.sourceType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                    if (singleFieldBuilder == null) {
                        cClientMetrics_ContentDownloadResponse_Counts = this.counts_;
                    } else {
                        cClientMetrics_ContentDownloadResponse_Counts = (CClientMetrics_ContentDownloadResponse_Counts) singleFieldBuilder.build();
                    }
                    cClientMetrics_ContentDownloadResponse_HostCounts.counts_ = cClientMetrics_ContentDownloadResponse_Counts;
                    i |= 4;
                }
                cClientMetrics_ContentDownloadResponse_HostCounts.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientMetrics_ContentDownloadResponse_HostCounts) {
                    return mergeFrom((CClientMetrics_ContentDownloadResponse_HostCounts) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts) {
                if (cClientMetrics_ContentDownloadResponse_HostCounts == CClientMetrics_ContentDownloadResponse_HostCounts.getDefaultInstance()) {
                    return this;
                }
                if (cClientMetrics_ContentDownloadResponse_HostCounts.hasHostname()) {
                    this.hostname_ = cClientMetrics_ContentDownloadResponse_HostCounts.hostname_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cClientMetrics_ContentDownloadResponse_HostCounts.hasSourceType()) {
                    setSourceType(cClientMetrics_ContentDownloadResponse_HostCounts.getSourceType());
                }
                if (cClientMetrics_ContentDownloadResponse_HostCounts.hasCounts()) {
                    mergeCounts(cClientMetrics_ContentDownloadResponse_HostCounts.getCounts());
                }
                mergeUnknownFields(cClientMetrics_ContentDownloadResponse_HostCounts.getUnknownFields());
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
                                    this.hostname_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.sourceType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetCountsFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public boolean hasHostname() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public String getHostname() {
                Object obj = this.hostname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.hostname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public ByteString getHostnameBytes() {
                Object obj = this.hostname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.hostname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHostname(String str) {
                str.getClass();
                this.hostname_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearHostname() {
                this.hostname_ = CClientMetrics_ContentDownloadResponse_HostCounts.getDefaultInstance().getHostname();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setHostnameBytes(ByteString byteString) {
                byteString.getClass();
                this.hostname_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public boolean hasSourceType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public int getSourceType() {
                return this.sourceType_;
            }

            public Builder setSourceType(int i) {
                this.sourceType_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSourceType() {
                this.bitField0_ &= -3;
                this.sourceType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public boolean hasCounts() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public CClientMetrics_ContentDownloadResponse_Counts getCounts() {
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder == null) {
                    CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts = this.counts_;
                    return cClientMetrics_ContentDownloadResponse_Counts == null ? CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance() : cClientMetrics_ContentDownloadResponse_Counts;
                }
                return (CClientMetrics_ContentDownloadResponse_Counts) singleFieldBuilder.getMessage();
            }

            public Builder setCounts(CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts) {
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder == null) {
                    cClientMetrics_ContentDownloadResponse_Counts.getClass();
                    this.counts_ = cClientMetrics_ContentDownloadResponse_Counts;
                } else {
                    singleFieldBuilder.setMessage(cClientMetrics_ContentDownloadResponse_Counts);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setCounts(CClientMetrics_ContentDownloadResponse_Counts.Builder builder) {
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder == null) {
                    this.counts_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeCounts(CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts) {
                CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts2;
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (cClientMetrics_ContentDownloadResponse_Counts2 = this.counts_) != null && cClientMetrics_ContentDownloadResponse_Counts2 != CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance()) {
                        getCountsBuilder().mergeFrom(cClientMetrics_ContentDownloadResponse_Counts);
                    } else {
                        this.counts_ = cClientMetrics_ContentDownloadResponse_Counts;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cClientMetrics_ContentDownloadResponse_Counts);
                }
                if (this.counts_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearCounts() {
                this.bitField0_ &= -5;
                this.counts_ = null;
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.countsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CClientMetrics_ContentDownloadResponse_Counts.Builder getCountsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (CClientMetrics_ContentDownloadResponse_Counts.Builder) internalGetCountsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder
            public CClientMetrics_ContentDownloadResponse_CountsOrBuilder getCountsOrBuilder() {
                SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> singleFieldBuilder = this.countsBuilder_;
                if (singleFieldBuilder != null) {
                    return (CClientMetrics_ContentDownloadResponse_CountsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CClientMetrics_ContentDownloadResponse_Counts cClientMetrics_ContentDownloadResponse_Counts = this.counts_;
                return cClientMetrics_ContentDownloadResponse_Counts == null ? CClientMetrics_ContentDownloadResponse_Counts.getDefaultInstance() : cClientMetrics_ContentDownloadResponse_Counts;
            }

            private SingleFieldBuilder<CClientMetrics_ContentDownloadResponse_Counts, CClientMetrics_ContentDownloadResponse_Counts.Builder, CClientMetrics_ContentDownloadResponse_CountsOrBuilder> internalGetCountsFieldBuilder() {
                if (this.countsBuilder_ == null) {
                    this.countsBuilder_ = new SingleFieldBuilder<>(getCounts(), getParentForChildren(), isClean());
                    this.counts_ = null;
                }
                return this.countsBuilder_;
            }
        }

        public static CClientMetrics_ContentDownloadResponse_HostCounts getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientMetrics_ContentDownloadResponse_HostCounts> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientMetrics_ContentDownloadResponse_HostCounts> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientMetrics_ContentDownloadResponse_HostCounts getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CClientMetrics_ContentDownloadResponse_Hosts extends GeneratedMessage implements CClientMetrics_ContentDownloadResponse_HostsOrBuilder {
        private static final CClientMetrics_ContentDownloadResponse_Hosts DEFAULT_INSTANCE;
        public static final int HOSTS_FIELD_NUMBER = 1;
        private static final Parser<CClientMetrics_ContentDownloadResponse_Hosts> PARSER;
        private static final long serialVersionUID = 0;
        private List<CClientMetrics_ContentDownloadResponse_HostCounts> hosts_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CClientMetrics_ContentDownloadResponse_Hosts.class.getName());
            DEFAULT_INSTANCE = new CClientMetrics_ContentDownloadResponse_Hosts();
            PARSER = new AbstractParser<CClientMetrics_ContentDownloadResponse_Hosts>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_Hosts.1
                @Override // com.google.protobuf.Parser
                public CClientMetrics_ContentDownloadResponse_Hosts parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CClientMetrics_ContentDownloadResponse_Hosts.newBuilder();
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

        private CClientMetrics_ContentDownloadResponse_Hosts(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CClientMetrics_ContentDownloadResponse_Hosts() {
            this.memoizedIsInitialized = (byte) -1;
            this.hosts_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Hosts_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Hosts_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ContentDownloadResponse_Hosts.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
        public List<CClientMetrics_ContentDownloadResponse_HostCounts> getHostsList() {
            return this.hosts_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
        public List<? extends CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> getHostsOrBuilderList() {
            return this.hosts_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
        public int getHostsCount() {
            return this.hosts_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
        public CClientMetrics_ContentDownloadResponse_HostCounts getHosts(int i) {
            return this.hosts_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
        public CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder getHostsOrBuilder(int i) {
            return this.hosts_.get(i);
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
            for (int i = 0; i < this.hosts_.size(); i++) {
                codedOutputStream.writeMessage(1, this.hosts_.get(i));
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
            for (int i2 = 0; i2 < this.hosts_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.hosts_.get(i2));
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
            if (!(obj instanceof CClientMetrics_ContentDownloadResponse_Hosts)) {
                return super.equals(obj);
            }
            CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_Hosts = (CClientMetrics_ContentDownloadResponse_Hosts) obj;
            return getHostsList().equals(cClientMetrics_ContentDownloadResponse_Hosts.getHostsList()) && getUnknownFields().equals(cClientMetrics_ContentDownloadResponse_Hosts.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getHostsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getHostsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Hosts) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Hosts) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Hosts) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Hosts) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Hosts) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CClientMetrics_ContentDownloadResponse_Hosts) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_Hosts) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cClientMetrics_ContentDownloadResponse_Hosts);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CClientMetrics_ContentDownloadResponse_HostsOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> hostsBuilder_;
            private List<CClientMetrics_ContentDownloadResponse_HostCounts> hosts_;

            private void buildPartial0(CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_Hosts) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Hosts_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Hosts_fieldAccessorTable.ensureFieldAccessorsInitialized(CClientMetrics_ContentDownloadResponse_Hosts.class, Builder.class);
            }

            private Builder() {
                this.hosts_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.hosts_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.hosts_ = Collections.emptyList();
                } else {
                    this.hosts_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Clientmetrics.internal_static_CClientMetrics_ContentDownloadResponse_Hosts_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CClientMetrics_ContentDownloadResponse_Hosts getDefaultInstanceForType() {
                return CClientMetrics_ContentDownloadResponse_Hosts.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ContentDownloadResponse_Hosts build() {
                CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_HostsBuildPartial = buildPartial();
                if (cClientMetrics_ContentDownloadResponse_HostsBuildPartial.isInitialized()) {
                    return cClientMetrics_ContentDownloadResponse_HostsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cClientMetrics_ContentDownloadResponse_HostsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CClientMetrics_ContentDownloadResponse_Hosts buildPartial() {
                CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_Hosts = new CClientMetrics_ContentDownloadResponse_Hosts(this);
                buildPartialRepeatedFields(cClientMetrics_ContentDownloadResponse_Hosts);
                if (this.bitField0_ != 0) {
                    buildPartial0(cClientMetrics_ContentDownloadResponse_Hosts);
                }
                onBuilt();
                return cClientMetrics_ContentDownloadResponse_Hosts;
            }

            private void buildPartialRepeatedFields(CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_Hosts) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.hosts_ = Collections.unmodifiableList(this.hosts_);
                        this.bitField0_ &= -2;
                    }
                    cClientMetrics_ContentDownloadResponse_Hosts.hosts_ = this.hosts_;
                    return;
                }
                cClientMetrics_ContentDownloadResponse_Hosts.hosts_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CClientMetrics_ContentDownloadResponse_Hosts) {
                    return mergeFrom((CClientMetrics_ContentDownloadResponse_Hosts) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CClientMetrics_ContentDownloadResponse_Hosts cClientMetrics_ContentDownloadResponse_Hosts) {
                if (cClientMetrics_ContentDownloadResponse_Hosts == CClientMetrics_ContentDownloadResponse_Hosts.getDefaultInstance()) {
                    return this;
                }
                if (this.hostsBuilder_ == null) {
                    if (!cClientMetrics_ContentDownloadResponse_Hosts.hosts_.isEmpty()) {
                        if (this.hosts_.isEmpty()) {
                            this.hosts_ = cClientMetrics_ContentDownloadResponse_Hosts.hosts_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureHostsIsMutable();
                            this.hosts_.addAll(cClientMetrics_ContentDownloadResponse_Hosts.hosts_);
                        }
                        onChanged();
                    }
                } else if (!cClientMetrics_ContentDownloadResponse_Hosts.hosts_.isEmpty()) {
                    if (this.hostsBuilder_.isEmpty()) {
                        this.hostsBuilder_.dispose();
                        this.hostsBuilder_ = null;
                        this.hosts_ = cClientMetrics_ContentDownloadResponse_Hosts.hosts_;
                        this.bitField0_ &= -2;
                        this.hostsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetHostsFieldBuilder() : null;
                    } else {
                        this.hostsBuilder_.addAllMessages(cClientMetrics_ContentDownloadResponse_Hosts.hosts_);
                    }
                }
                mergeUnknownFields(cClientMetrics_ContentDownloadResponse_Hosts.getUnknownFields());
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
                                    CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts = (CClientMetrics_ContentDownloadResponse_HostCounts) codedInputStream.readMessage(CClientMetrics_ContentDownloadResponse_HostCounts.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureHostsIsMutable();
                                        this.hosts_.add(cClientMetrics_ContentDownloadResponse_HostCounts);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cClientMetrics_ContentDownloadResponse_HostCounts);
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

            private void ensureHostsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.hosts_ = new ArrayList(this.hosts_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
            public List<CClientMetrics_ContentDownloadResponse_HostCounts> getHostsList() {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.hosts_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
            public int getHostsCount() {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.hosts_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
            public CClientMetrics_ContentDownloadResponse_HostCounts getHosts(int i) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.hosts_.get(i);
                }
                return (CClientMetrics_ContentDownloadResponse_HostCounts) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setHosts(int i, CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ContentDownloadResponse_HostCounts.getClass();
                    ensureHostsIsMutable();
                    this.hosts_.set(i, cClientMetrics_ContentDownloadResponse_HostCounts);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cClientMetrics_ContentDownloadResponse_HostCounts);
                }
                return this;
            }

            public Builder setHosts(int i, CClientMetrics_ContentDownloadResponse_HostCounts.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureHostsIsMutable();
                    this.hosts_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addHosts(CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ContentDownloadResponse_HostCounts.getClass();
                    ensureHostsIsMutable();
                    this.hosts_.add(cClientMetrics_ContentDownloadResponse_HostCounts);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cClientMetrics_ContentDownloadResponse_HostCounts);
                }
                return this;
            }

            public Builder addHosts(int i, CClientMetrics_ContentDownloadResponse_HostCounts cClientMetrics_ContentDownloadResponse_HostCounts) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cClientMetrics_ContentDownloadResponse_HostCounts.getClass();
                    ensureHostsIsMutable();
                    this.hosts_.add(i, cClientMetrics_ContentDownloadResponse_HostCounts);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cClientMetrics_ContentDownloadResponse_HostCounts);
                }
                return this;
            }

            public Builder addHosts(CClientMetrics_ContentDownloadResponse_HostCounts.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureHostsIsMutable();
                    this.hosts_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addHosts(int i, CClientMetrics_ContentDownloadResponse_HostCounts.Builder builder) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureHostsIsMutable();
                    this.hosts_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllHosts(Iterable<? extends CClientMetrics_ContentDownloadResponse_HostCounts> iterable) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureHostsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.hosts_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearHosts() {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.hosts_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeHosts(int i) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureHostsIsMutable();
                    this.hosts_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CClientMetrics_ContentDownloadResponse_HostCounts.Builder getHostsBuilder(int i) {
                return (CClientMetrics_ContentDownloadResponse_HostCounts.Builder) internalGetHostsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
            public CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder getHostsOrBuilder(int i) {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.hosts_.get(i);
                }
                return (CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.Clientmetrics.CClientMetrics_ContentDownloadResponse_HostsOrBuilder
            public List<? extends CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> getHostsOrBuilderList() {
                RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> repeatedFieldBuilder = this.hostsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.hosts_);
            }

            public CClientMetrics_ContentDownloadResponse_HostCounts.Builder addHostsBuilder() {
                return (CClientMetrics_ContentDownloadResponse_HostCounts.Builder) internalGetHostsFieldBuilder().addBuilder(CClientMetrics_ContentDownloadResponse_HostCounts.getDefaultInstance());
            }

            public CClientMetrics_ContentDownloadResponse_HostCounts.Builder addHostsBuilder(int i) {
                return (CClientMetrics_ContentDownloadResponse_HostCounts.Builder) internalGetHostsFieldBuilder().addBuilder(i, CClientMetrics_ContentDownloadResponse_HostCounts.getDefaultInstance());
            }

            public List<CClientMetrics_ContentDownloadResponse_HostCounts.Builder> getHostsBuilderList() {
                return internalGetHostsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CClientMetrics_ContentDownloadResponse_HostCounts, CClientMetrics_ContentDownloadResponse_HostCounts.Builder, CClientMetrics_ContentDownloadResponse_HostCountsOrBuilder> internalGetHostsFieldBuilder() {
                if (this.hostsBuilder_ == null) {
                    this.hostsBuilder_ = new RepeatedFieldBuilder<>(this.hosts_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.hosts_ = null;
                }
                return this.hostsBuilder_;
            }
        }

        public static CClientMetrics_ContentDownloadResponse_Hosts getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CClientMetrics_ContentDownloadResponse_Hosts> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CClientMetrics_ContentDownloadResponse_Hosts> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CClientMetrics_ContentDownloadResponse_Hosts getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
