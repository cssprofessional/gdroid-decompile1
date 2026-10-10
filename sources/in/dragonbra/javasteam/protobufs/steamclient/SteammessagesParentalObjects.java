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
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesParentalObjects {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_ParentalApp_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalApp_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ParentalFeatureRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalFeatureRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ParentalPlaytimeDay_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalPlaytimeDay_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ParentalPlaytimeRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalPlaytimeRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ParentalPlaytimeRestrictions_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalPlaytimeRestrictions_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ParentalSettings_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalSettings_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ParentalTemporaryPlaytimeRestrictions_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_ParentalTemporaryPlaytimeRestrictions_fieldAccessorTable;

    public interface ParentalAppOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean getIsAllowed();

        boolean hasAppid();

        boolean hasIsAllowed();
    }

    public interface ParentalFeatureRequestOrBuilder extends MessageOrBuilder {
        boolean getApproved();

        long getFamilyGroupid();

        int getFeatures();

        long getRequestid();

        long getSteamid();

        long getSteamidResponder();

        int getTimeRequested();

        int getTimeResponded();

        boolean hasApproved();

        boolean hasFamilyGroupid();

        boolean hasFeatures();

        boolean hasRequestid();

        boolean hasSteamid();

        boolean hasSteamidResponder();

        boolean hasTimeRequested();

        boolean hasTimeResponded();
    }

    public interface ParentalPlaytimeDayOrBuilder extends MessageOrBuilder {
        int getAllowedDailyMinutes();

        long getAllowedTimeWindows();

        boolean hasAllowedDailyMinutes();

        boolean hasAllowedTimeWindows();
    }

    public interface ParentalPlaytimeRequestOrBuilder extends MessageOrBuilder {
        boolean getApproved();

        ParentalPlaytimeDay getCurrentPlaytimeRestrictions();

        ParentalPlaytimeDayOrBuilder getCurrentPlaytimeRestrictionsOrBuilder();

        long getFamilyGroupid();

        long getRequestid();

        ParentalTemporaryPlaytimeRestrictions getRestrictionsApproved();

        ParentalTemporaryPlaytimeRestrictionsOrBuilder getRestrictionsApprovedOrBuilder();

        long getSteamid();

        long getSteamidResponder();

        int getTimeExpires();

        int getTimeRequested();

        int getTimeResponded();

        boolean hasApproved();

        boolean hasCurrentPlaytimeRestrictions();

        boolean hasFamilyGroupid();

        boolean hasRequestid();

        boolean hasRestrictionsApproved();

        boolean hasSteamid();

        boolean hasSteamidResponder();

        boolean hasTimeExpires();

        boolean hasTimeRequested();

        boolean hasTimeResponded();
    }

    public interface ParentalPlaytimeRestrictionsOrBuilder extends MessageOrBuilder {
        boolean getApplyPlaytimeRestrictions();

        ParentalPlaytimeDay getPlaytimeDays(int i);

        int getPlaytimeDaysCount();

        List<ParentalPlaytimeDay> getPlaytimeDaysList();

        ParentalPlaytimeDayOrBuilder getPlaytimeDaysOrBuilder(int i);

        List<? extends ParentalPlaytimeDayOrBuilder> getPlaytimeDaysOrBuilderList();

        boolean hasApplyPlaytimeRestrictions();
    }

    public interface ParentalSettingsOrBuilder extends MessageOrBuilder {
        ParentalApp getApplistBase(int i);

        int getApplistBaseCount();

        String getApplistBaseDescription();

        ByteString getApplistBaseDescriptionBytes();

        int getApplistBaseId();

        List<ParentalApp> getApplistBaseList();

        ParentalAppOrBuilder getApplistBaseOrBuilder(int i);

        List<? extends ParentalAppOrBuilder> getApplistBaseOrBuilderList();

        ParentalApp getApplistCustom(int i);

        int getApplistCustomCount();

        List<ParentalApp> getApplistCustomList();

        ParentalAppOrBuilder getApplistCustomOrBuilder(int i);

        List<? extends ParentalAppOrBuilder> getApplistCustomOrBuilderList();

        int getEnabledFeatures();

        int getExcludedCommunityContentDescriptors(int i);

        int getExcludedCommunityContentDescriptorsCount();

        List<Integer> getExcludedCommunityContentDescriptorsList();

        int getExcludedStoreContentDescriptors(int i);

        int getExcludedStoreContentDescriptorsCount();

        List<Integer> getExcludedStoreContentDescriptorsList();

        boolean getIsEnabled();

        boolean getIsSiteLicenseLock();

        ByteString getPasswordhash();

        int getPasswordhashtype();

        ParentalPlaytimeRestrictions getPlaytimeRestrictions();

        ParentalPlaytimeRestrictionsOrBuilder getPlaytimeRestrictionsOrBuilder();

        String getRecoveryEmail();

        ByteString getRecoveryEmailBytes();

        int getRtimeTemporaryFeatureExpiration();

        ByteString getSalt();

        long getSteamid();

        int getTemporaryEnabledFeatures();

        ParentalTemporaryPlaytimeRestrictions getTemporaryPlaytimeRestrictions();

        ParentalTemporaryPlaytimeRestrictionsOrBuilder getTemporaryPlaytimeRestrictionsOrBuilder();

        int getUtilityAppids(int i);

        int getUtilityAppidsCount();

        List<Integer> getUtilityAppidsList();

        boolean hasApplistBaseDescription();

        boolean hasApplistBaseId();

        boolean hasEnabledFeatures();

        boolean hasIsEnabled();

        boolean hasIsSiteLicenseLock();

        boolean hasPasswordhash();

        boolean hasPasswordhashtype();

        boolean hasPlaytimeRestrictions();

        boolean hasRecoveryEmail();

        boolean hasRtimeTemporaryFeatureExpiration();

        boolean hasSalt();

        boolean hasSteamid();

        boolean hasTemporaryEnabledFeatures();

        boolean hasTemporaryPlaytimeRestrictions();
    }

    public interface ParentalTemporaryPlaytimeRestrictionsOrBuilder extends MessageOrBuilder {
        ParentalPlaytimeDay getRestrictions();

        ParentalPlaytimeDayOrBuilder getRestrictionsOrBuilder();

        int getRtimeExpires();

        boolean hasRestrictions();

        boolean hasRtimeExpires();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesParentalObjects() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesParentalObjects.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nQin/dragonbra/javasteam/protobufs/steamclient/steammessages_parental_objects.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001a8in/dragonbra/javasteam/protobufs/steamclient/enums.proto\"0\n\u000bParentalApp\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0012\n\nis_allowed\u0018\u0002 \u0001(\b\"R\n\u0013ParentalPlaytimeDay\u0012\u001c\n\u0014allowed_time_windows\u0018\u0001 \u0001(\u0004\u0012\u001d\n\u0015allowed_daily_minutes\u0018\u0002 \u0001(\r\"p\n\u001cParentalPlaytimeRestrictions\u0012#\n\u001bapply_playtime_restrictions\u0018\u0002 \u0001(\b\u0012+\n\rplaytime_days\u0018\u000f \u0003(\u000b2\u0014.ParentalPlaytimeDay\"j\n%ParentalTemporaryPlaytimeRestrictions\u0012*\n\frestrictions\u0018\u0001 \u0001(\u000b2\u0014.ParentalPlaytimeDay\u0012\u0015\n\rrtime_expires\u0018\u0002 \u0001(\r\"\u009d\u0005\n\u0010ParentalSettings\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0017\n\u000fapplist_base_id\u0018\u0002 \u0001(\r\u0012 \n\u0018applist_base_description\u0018\u0003 \u0001(\t\u0012\"\n\fapplist_base\u0018\u0004 \u0003(\u000b2\f.ParentalApp\u0012$\n\u000eapplist_custom\u0018\u0005 \u0003(\u000b2\f.ParentalApp\u0012\u0018\n\u0010passwordhashtype\u0018\u0006 \u0001(\r\u0012\f\n\u0004salt\u0018\u0007 \u0001(\f\u0012\u0014\n\fpasswordhash\u0018\b \u0001(\f\u0012\u0012\n\nis_enabled\u0018\t \u0001(\b\u0012\u0018\n\u0010enabled_features\u0018\n \u0001(\r\u0012\u0016\n\u000erecovery_email\u0018\u000b \u0001(\t\u0012\u001c\n\u0014is_site_license_lock\u0018\f \u0001(\b\u0012\"\n\u001atemporary_enabled_features\u0018\r \u0001(\r\u0012*\n\"rtime_temporary_feature_expiration\u0018\u000e \u0001(\r\u0012<\n\u0015playtime_restrictions\u0018\u000f \u0001(\u000b2\u001d.ParentalPlaytimeRestrictions\u0012O\n\u001ftemporary_playtime_restrictions\u0018\u0010 \u0001(\u000b2&.ParentalTemporaryPlaytimeRestrictions\u0012*\n\"excluded_store_content_descriptors\u0018\u0011 \u0003(\r\u0012.\n&excluded_community_content_descriptors\u0018\u0012 \u0003(\r\u0012\u0016\n\u000eutility_appids\u0018\u0013 \u0003(\r\"Ã\u0001\n\u0016ParentalFeatureRequest\u0012\u0011\n\trequestid\u0018\u0001 \u0001(\u0006\u0012\u0016\n\u000efamily_groupid\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007steamid\u0018\u0003 \u0001(\u0006\u0012\u0010\n\bfeatures\u0018\u0004 \u0001(\r\u0012\u0016\n\u000etime_requested\u0018\u0005 \u0001(\r\u0012\u0010\n\bapproved\u0018\u0006 \u0001(\b\u0012\u0019\n\u0011steamid_responder\u0018\u0007 \u0001(\u0006\u0012\u0016\n\u000etime_responded\u0018\b \u0001(\r\"Ì\u0002\n\u0017ParentalPlaytimeRequest\u0012\u0011\n\trequestid\u0018\u0001 \u0001(\u0006\u0012\u0016\n\u000efamily_groupid\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007steamid\u0018\u0003 \u0001(\u0006\u0012;\n\u001dcurrent_playtime_restrictions\u0018\u0004 \u0001(\u000b2\u0014.ParentalPlaytimeDay\u0012\u0014\n\ftime_expires\u0018\u0005 \u0001(\r\u0012\u0016\n\u000etime_requested\u0018\u0006 \u0001(\r\u0012\u0010\n\bapproved\u0018\u0007 \u0001(\b\u0012\u0019\n\u0011steamid_responder\u0018\b \u0001(\u0006\u0012\u0016\n\u000etime_responded\u0018\t \u0001(\r\u0012E\n\u0015restrictions_approved\u0018\n \u0001(\u000b2&.ParentalTemporaryPlaytimeRestrictionsB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), Enums.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_ParentalApp_descriptor = descriptor2;
        internal_static_ParentalApp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Appid", "IsAllowed"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_ParentalPlaytimeDay_descriptor = descriptor3;
        internal_static_ParentalPlaytimeDay_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"AllowedTimeWindows", "AllowedDailyMinutes"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_ParentalPlaytimeRestrictions_descriptor = descriptor4;
        internal_static_ParentalPlaytimeRestrictions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"ApplyPlaytimeRestrictions", "PlaytimeDays"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_ParentalTemporaryPlaytimeRestrictions_descriptor = descriptor5;
        internal_static_ParentalTemporaryPlaytimeRestrictions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Restrictions", "RtimeExpires"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_ParentalSettings_descriptor = descriptor6;
        internal_static_ParentalSettings_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Steamid", "ApplistBaseId", "ApplistBaseDescription", "ApplistBase", "ApplistCustom", "Passwordhashtype", "Salt", "Passwordhash", "IsEnabled", "EnabledFeatures", "RecoveryEmail", "IsSiteLicenseLock", "TemporaryEnabledFeatures", "RtimeTemporaryFeatureExpiration", "PlaytimeRestrictions", "TemporaryPlaytimeRestrictions", "ExcludedStoreContentDescriptors", "ExcludedCommunityContentDescriptors", "UtilityAppids"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_ParentalFeatureRequest_descriptor = descriptor7;
        internal_static_ParentalFeatureRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Requestid", "FamilyGroupid", "Steamid", "Features", "TimeRequested", "Approved", "SteamidResponder", "TimeResponded"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_ParentalPlaytimeRequest_descriptor = descriptor8;
        internal_static_ParentalPlaytimeRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Requestid", "FamilyGroupid", "Steamid", "CurrentPlaytimeRestrictions", "TimeExpires", "TimeRequested", "Approved", "SteamidResponder", "TimeResponded", "RestrictionsApproved"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        Enums.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class ParentalApp extends GeneratedMessage implements ParentalAppOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final ParentalApp DEFAULT_INSTANCE;
        public static final int IS_ALLOWED_FIELD_NUMBER = 2;
        private static final Parser<ParentalApp> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private boolean isAllowed_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalApp.class.getName());
            DEFAULT_INSTANCE = new ParentalApp();
            PARSER = new AbstractParser<ParentalApp>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalApp.1
                @Override // com.google.protobuf.Parser
                public ParentalApp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalApp.newBuilder();
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

        private ParentalApp(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.isAllowed_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalApp() {
            this.appid_ = 0;
            this.isAllowed_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalApp_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalApp_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalApp.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
        public boolean hasIsAllowed() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
        public boolean getIsAllowed() {
            return this.isAllowed_;
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
                codedOutputStream.writeBool(2, this.isAllowed_);
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
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(2, this.isAllowed_);
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
            if (!(obj instanceof ParentalApp)) {
                return super.equals(obj);
            }
            ParentalApp parentalApp = (ParentalApp) obj;
            if (hasAppid() != parentalApp.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == parentalApp.getAppid()) && hasIsAllowed() == parentalApp.hasIsAllowed()) {
                return (!hasIsAllowed() || getIsAllowed() == parentalApp.getIsAllowed()) && getUnknownFields().equals(parentalApp.getUnknownFields());
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
            if (hasIsAllowed()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getIsAllowed());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalApp parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalApp parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalApp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalApp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalApp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalApp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalApp parseFrom(InputStream inputStream) throws IOException {
            return (ParentalApp) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalApp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalApp) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalApp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalApp) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalApp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalApp) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalApp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalApp) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalApp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalApp) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalApp parentalApp) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalApp);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalAppOrBuilder {
            private int appid_;
            private int bitField0_;
            private boolean isAllowed_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalApp_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalApp_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalApp.class, Builder.class);
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
                this.isAllowed_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalApp_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalApp getDefaultInstanceForType() {
                return ParentalApp.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalApp build() {
                ParentalApp parentalAppBuildPartial = buildPartial();
                if (parentalAppBuildPartial.isInitialized()) {
                    return parentalAppBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalAppBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalApp buildPartial() {
                ParentalApp parentalApp = new ParentalApp(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalApp);
                }
                onBuilt();
                return parentalApp;
            }

            private void buildPartial0(ParentalApp parentalApp) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    parentalApp.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    parentalApp.isAllowed_ = this.isAllowed_;
                    i |= 2;
                }
                parentalApp.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalApp) {
                    return mergeFrom((ParentalApp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalApp parentalApp) {
                if (parentalApp == ParentalApp.getDefaultInstance()) {
                    return this;
                }
                if (parentalApp.hasAppid()) {
                    setAppid(parentalApp.getAppid());
                }
                if (parentalApp.hasIsAllowed()) {
                    setIsAllowed(parentalApp.getIsAllowed());
                }
                mergeUnknownFields(parentalApp.getUnknownFields());
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
                                    this.isAllowed_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
            public boolean hasIsAllowed() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalAppOrBuilder
            public boolean getIsAllowed() {
                return this.isAllowed_;
            }

            public Builder setIsAllowed(boolean z) {
                this.isAllowed_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIsAllowed() {
                this.bitField0_ &= -3;
                this.isAllowed_ = false;
                onChanged();
                return this;
            }
        }

        public static ParentalApp getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalApp> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalApp> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalApp getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ParentalPlaytimeDay extends GeneratedMessage implements ParentalPlaytimeDayOrBuilder {
        public static final int ALLOWED_DAILY_MINUTES_FIELD_NUMBER = 2;
        public static final int ALLOWED_TIME_WINDOWS_FIELD_NUMBER = 1;
        private static final ParentalPlaytimeDay DEFAULT_INSTANCE;
        private static final Parser<ParentalPlaytimeDay> PARSER;
        private static final long serialVersionUID = 0;
        private int allowedDailyMinutes_;
        private long allowedTimeWindows_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalPlaytimeDay.class.getName());
            DEFAULT_INSTANCE = new ParentalPlaytimeDay();
            PARSER = new AbstractParser<ParentalPlaytimeDay>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDay.1
                @Override // com.google.protobuf.Parser
                public ParentalPlaytimeDay parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalPlaytimeDay.newBuilder();
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

        private ParentalPlaytimeDay(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.allowedTimeWindows_ = 0L;
            this.allowedDailyMinutes_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalPlaytimeDay() {
            this.allowedTimeWindows_ = 0L;
            this.allowedDailyMinutes_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalPlaytimeDay_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalPlaytimeDay_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalPlaytimeDay.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
        public boolean hasAllowedTimeWindows() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
        public long getAllowedTimeWindows() {
            return this.allowedTimeWindows_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
        public boolean hasAllowedDailyMinutes() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
        public int getAllowedDailyMinutes() {
            return this.allowedDailyMinutes_;
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
                codedOutputStream.writeUInt64(1, this.allowedTimeWindows_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.allowedDailyMinutes_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.allowedTimeWindows_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.allowedDailyMinutes_);
            }
            int serializedSize = iComputeUInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ParentalPlaytimeDay)) {
                return super.equals(obj);
            }
            ParentalPlaytimeDay parentalPlaytimeDay = (ParentalPlaytimeDay) obj;
            if (hasAllowedTimeWindows() != parentalPlaytimeDay.hasAllowedTimeWindows()) {
                return false;
            }
            if ((!hasAllowedTimeWindows() || getAllowedTimeWindows() == parentalPlaytimeDay.getAllowedTimeWindows()) && hasAllowedDailyMinutes() == parentalPlaytimeDay.hasAllowedDailyMinutes()) {
                return (!hasAllowedDailyMinutes() || getAllowedDailyMinutes() == parentalPlaytimeDay.getAllowedDailyMinutes()) && getUnknownFields().equals(parentalPlaytimeDay.getUnknownFields());
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
            if (hasAllowedTimeWindows()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getAllowedTimeWindows());
            }
            if (hasAllowedDailyMinutes()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAllowedDailyMinutes();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalPlaytimeDay parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalPlaytimeDay parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalPlaytimeDay parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalPlaytimeDay parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalPlaytimeDay parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalPlaytimeDay parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalPlaytimeDay parseFrom(InputStream inputStream) throws IOException {
            return (ParentalPlaytimeDay) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalPlaytimeDay parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeDay) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalPlaytimeDay parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalPlaytimeDay) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalPlaytimeDay parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeDay) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalPlaytimeDay parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalPlaytimeDay) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalPlaytimeDay parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeDay) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalPlaytimeDay parentalPlaytimeDay) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalPlaytimeDay);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalPlaytimeDayOrBuilder {
            private int allowedDailyMinutes_;
            private long allowedTimeWindows_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeDay_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeDay_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalPlaytimeDay.class, Builder.class);
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
                this.allowedTimeWindows_ = 0L;
                this.allowedDailyMinutes_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeDay_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalPlaytimeDay getDefaultInstanceForType() {
                return ParentalPlaytimeDay.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalPlaytimeDay build() {
                ParentalPlaytimeDay parentalPlaytimeDayBuildPartial = buildPartial();
                if (parentalPlaytimeDayBuildPartial.isInitialized()) {
                    return parentalPlaytimeDayBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalPlaytimeDayBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalPlaytimeDay buildPartial() {
                ParentalPlaytimeDay parentalPlaytimeDay = new ParentalPlaytimeDay(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalPlaytimeDay);
                }
                onBuilt();
                return parentalPlaytimeDay;
            }

            private void buildPartial0(ParentalPlaytimeDay parentalPlaytimeDay) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    parentalPlaytimeDay.allowedTimeWindows_ = this.allowedTimeWindows_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    parentalPlaytimeDay.allowedDailyMinutes_ = this.allowedDailyMinutes_;
                    i |= 2;
                }
                parentalPlaytimeDay.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalPlaytimeDay) {
                    return mergeFrom((ParentalPlaytimeDay) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalPlaytimeDay parentalPlaytimeDay) {
                if (parentalPlaytimeDay == ParentalPlaytimeDay.getDefaultInstance()) {
                    return this;
                }
                if (parentalPlaytimeDay.hasAllowedTimeWindows()) {
                    setAllowedTimeWindows(parentalPlaytimeDay.getAllowedTimeWindows());
                }
                if (parentalPlaytimeDay.hasAllowedDailyMinutes()) {
                    setAllowedDailyMinutes(parentalPlaytimeDay.getAllowedDailyMinutes());
                }
                mergeUnknownFields(parentalPlaytimeDay.getUnknownFields());
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
                                    this.allowedTimeWindows_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.allowedDailyMinutes_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
            public boolean hasAllowedTimeWindows() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
            public long getAllowedTimeWindows() {
                return this.allowedTimeWindows_;
            }

            public Builder setAllowedTimeWindows(long j) {
                this.allowedTimeWindows_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAllowedTimeWindows() {
                this.bitField0_ &= -2;
                this.allowedTimeWindows_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
            public boolean hasAllowedDailyMinutes() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder
            public int getAllowedDailyMinutes() {
                return this.allowedDailyMinutes_;
            }

            public Builder setAllowedDailyMinutes(int i) {
                this.allowedDailyMinutes_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAllowedDailyMinutes() {
                this.bitField0_ &= -3;
                this.allowedDailyMinutes_ = 0;
                onChanged();
                return this;
            }
        }

        public static ParentalPlaytimeDay getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalPlaytimeDay> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalPlaytimeDay> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalPlaytimeDay getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ParentalPlaytimeRestrictions extends GeneratedMessage implements ParentalPlaytimeRestrictionsOrBuilder {
        public static final int APPLY_PLAYTIME_RESTRICTIONS_FIELD_NUMBER = 2;
        private static final ParentalPlaytimeRestrictions DEFAULT_INSTANCE;
        private static final Parser<ParentalPlaytimeRestrictions> PARSER;
        public static final int PLAYTIME_DAYS_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private boolean applyPlaytimeRestrictions_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private List<ParentalPlaytimeDay> playtimeDays_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalPlaytimeRestrictions.class.getName());
            DEFAULT_INSTANCE = new ParentalPlaytimeRestrictions();
            PARSER = new AbstractParser<ParentalPlaytimeRestrictions>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictions.1
                @Override // com.google.protobuf.Parser
                public ParentalPlaytimeRestrictions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalPlaytimeRestrictions.newBuilder();
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

        private ParentalPlaytimeRestrictions(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.applyPlaytimeRestrictions_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalPlaytimeRestrictions() {
            this.applyPlaytimeRestrictions_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.playtimeDays_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRestrictions_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRestrictions_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalPlaytimeRestrictions.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public boolean hasApplyPlaytimeRestrictions() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public boolean getApplyPlaytimeRestrictions() {
            return this.applyPlaytimeRestrictions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public List<ParentalPlaytimeDay> getPlaytimeDaysList() {
            return this.playtimeDays_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public List<? extends ParentalPlaytimeDayOrBuilder> getPlaytimeDaysOrBuilderList() {
            return this.playtimeDays_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public int getPlaytimeDaysCount() {
            return this.playtimeDays_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public ParentalPlaytimeDay getPlaytimeDays(int i) {
            return this.playtimeDays_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
        public ParentalPlaytimeDayOrBuilder getPlaytimeDaysOrBuilder(int i) {
            return this.playtimeDays_.get(i);
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
                codedOutputStream.writeBool(2, this.applyPlaytimeRestrictions_);
            }
            for (int i = 0; i < this.playtimeDays_.size(); i++) {
                codedOutputStream.writeMessage(15, this.playtimeDays_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(2, this.applyPlaytimeRestrictions_) : 0;
            for (int i2 = 0; i2 < this.playtimeDays_.size(); i2++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(15, this.playtimeDays_.get(i2));
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
            if (!(obj instanceof ParentalPlaytimeRestrictions)) {
                return super.equals(obj);
            }
            ParentalPlaytimeRestrictions parentalPlaytimeRestrictions = (ParentalPlaytimeRestrictions) obj;
            if (hasApplyPlaytimeRestrictions() != parentalPlaytimeRestrictions.hasApplyPlaytimeRestrictions()) {
                return false;
            }
            return (!hasApplyPlaytimeRestrictions() || getApplyPlaytimeRestrictions() == parentalPlaytimeRestrictions.getApplyPlaytimeRestrictions()) && getPlaytimeDaysList().equals(parentalPlaytimeRestrictions.getPlaytimeDaysList()) && getUnknownFields().equals(parentalPlaytimeRestrictions.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasApplyPlaytimeRestrictions()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getApplyPlaytimeRestrictions());
            }
            if (getPlaytimeDaysCount() > 0) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getPlaytimeDaysList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalPlaytimeRestrictions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalPlaytimeRestrictions parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalPlaytimeRestrictions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalPlaytimeRestrictions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalPlaytimeRestrictions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalPlaytimeRestrictions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalPlaytimeRestrictions parseFrom(InputStream inputStream) throws IOException {
            return (ParentalPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalPlaytimeRestrictions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalPlaytimeRestrictions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalPlaytimeRestrictions) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalPlaytimeRestrictions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeRestrictions) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalPlaytimeRestrictions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalPlaytimeRestrictions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalPlaytimeRestrictions parentalPlaytimeRestrictions) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalPlaytimeRestrictions);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalPlaytimeRestrictionsOrBuilder {
            private boolean applyPlaytimeRestrictions_;
            private int bitField0_;
            private RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> playtimeDaysBuilder_;
            private List<ParentalPlaytimeDay> playtimeDays_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRestrictions_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRestrictions_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalPlaytimeRestrictions.class, Builder.class);
            }

            private Builder() {
                this.playtimeDays_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.playtimeDays_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.applyPlaytimeRestrictions_ = false;
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.playtimeDays_ = Collections.emptyList();
                } else {
                    this.playtimeDays_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRestrictions_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalPlaytimeRestrictions getDefaultInstanceForType() {
                return ParentalPlaytimeRestrictions.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalPlaytimeRestrictions build() {
                ParentalPlaytimeRestrictions parentalPlaytimeRestrictionsBuildPartial = buildPartial();
                if (parentalPlaytimeRestrictionsBuildPartial.isInitialized()) {
                    return parentalPlaytimeRestrictionsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalPlaytimeRestrictionsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalPlaytimeRestrictions buildPartial() {
                ParentalPlaytimeRestrictions parentalPlaytimeRestrictions = new ParentalPlaytimeRestrictions(this);
                buildPartialRepeatedFields(parentalPlaytimeRestrictions);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalPlaytimeRestrictions);
                }
                onBuilt();
                return parentalPlaytimeRestrictions;
            }

            private void buildPartialRepeatedFields(ParentalPlaytimeRestrictions parentalPlaytimeRestrictions) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.playtimeDays_ = Collections.unmodifiableList(this.playtimeDays_);
                        this.bitField0_ &= -3;
                    }
                    parentalPlaytimeRestrictions.playtimeDays_ = this.playtimeDays_;
                    return;
                }
                parentalPlaytimeRestrictions.playtimeDays_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(ParentalPlaytimeRestrictions parentalPlaytimeRestrictions) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    parentalPlaytimeRestrictions.applyPlaytimeRestrictions_ = this.applyPlaytimeRestrictions_;
                } else {
                    i = 0;
                }
                parentalPlaytimeRestrictions.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalPlaytimeRestrictions) {
                    return mergeFrom((ParentalPlaytimeRestrictions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalPlaytimeRestrictions parentalPlaytimeRestrictions) {
                if (parentalPlaytimeRestrictions == ParentalPlaytimeRestrictions.getDefaultInstance()) {
                    return this;
                }
                if (parentalPlaytimeRestrictions.hasApplyPlaytimeRestrictions()) {
                    setApplyPlaytimeRestrictions(parentalPlaytimeRestrictions.getApplyPlaytimeRestrictions());
                }
                if (this.playtimeDaysBuilder_ == null) {
                    if (!parentalPlaytimeRestrictions.playtimeDays_.isEmpty()) {
                        if (this.playtimeDays_.isEmpty()) {
                            this.playtimeDays_ = parentalPlaytimeRestrictions.playtimeDays_;
                            this.bitField0_ &= -3;
                        } else {
                            ensurePlaytimeDaysIsMutable();
                            this.playtimeDays_.addAll(parentalPlaytimeRestrictions.playtimeDays_);
                        }
                        onChanged();
                    }
                } else if (!parentalPlaytimeRestrictions.playtimeDays_.isEmpty()) {
                    if (this.playtimeDaysBuilder_.isEmpty()) {
                        this.playtimeDaysBuilder_.dispose();
                        this.playtimeDaysBuilder_ = null;
                        this.playtimeDays_ = parentalPlaytimeRestrictions.playtimeDays_;
                        this.bitField0_ &= -3;
                        this.playtimeDaysBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPlaytimeDaysFieldBuilder() : null;
                    } else {
                        this.playtimeDaysBuilder_.addAllMessages(parentalPlaytimeRestrictions.playtimeDays_);
                    }
                }
                mergeUnknownFields(parentalPlaytimeRestrictions.getUnknownFields());
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
                                if (tag == 16) {
                                    this.applyPlaytimeRestrictions_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 122) {
                                    ParentalPlaytimeDay parentalPlaytimeDay = (ParentalPlaytimeDay) codedInputStream.readMessage(ParentalPlaytimeDay.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensurePlaytimeDaysIsMutable();
                                        this.playtimeDays_.add(parentalPlaytimeDay);
                                    } else {
                                        repeatedFieldBuilder.addMessage(parentalPlaytimeDay);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public boolean hasApplyPlaytimeRestrictions() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public boolean getApplyPlaytimeRestrictions() {
                return this.applyPlaytimeRestrictions_;
            }

            public Builder setApplyPlaytimeRestrictions(boolean z) {
                this.applyPlaytimeRestrictions_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearApplyPlaytimeRestrictions() {
                this.bitField0_ &= -2;
                this.applyPlaytimeRestrictions_ = false;
                onChanged();
                return this;
            }

            private void ensurePlaytimeDaysIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.playtimeDays_ = new ArrayList(this.playtimeDays_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public List<ParentalPlaytimeDay> getPlaytimeDaysList() {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.playtimeDays_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public int getPlaytimeDaysCount() {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.playtimeDays_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public ParentalPlaytimeDay getPlaytimeDays(int i) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.playtimeDays_.get(i);
                }
                return (ParentalPlaytimeDay) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPlaytimeDays(int i, ParentalPlaytimeDay parentalPlaytimeDay) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalPlaytimeDay.getClass();
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.set(i, parentalPlaytimeDay);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, parentalPlaytimeDay);
                }
                return this;
            }

            public Builder setPlaytimeDays(int i, ParentalPlaytimeDay.Builder builder) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPlaytimeDays(ParentalPlaytimeDay parentalPlaytimeDay) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalPlaytimeDay.getClass();
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.add(parentalPlaytimeDay);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(parentalPlaytimeDay);
                }
                return this;
            }

            public Builder addPlaytimeDays(int i, ParentalPlaytimeDay parentalPlaytimeDay) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalPlaytimeDay.getClass();
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.add(i, parentalPlaytimeDay);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, parentalPlaytimeDay);
                }
                return this;
            }

            public Builder addPlaytimeDays(ParentalPlaytimeDay.Builder builder) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPlaytimeDays(int i, ParentalPlaytimeDay.Builder builder) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPlaytimeDays(Iterable<? extends ParentalPlaytimeDay> iterable) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeDaysIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.playtimeDays_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPlaytimeDays() {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.playtimeDays_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePlaytimeDays(int i) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeDaysIsMutable();
                    this.playtimeDays_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public ParentalPlaytimeDay.Builder getPlaytimeDaysBuilder(int i) {
                return (ParentalPlaytimeDay.Builder) internalGetPlaytimeDaysFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public ParentalPlaytimeDayOrBuilder getPlaytimeDaysOrBuilder(int i) {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.playtimeDays_.get(i);
                }
                return (ParentalPlaytimeDayOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRestrictionsOrBuilder
            public List<? extends ParentalPlaytimeDayOrBuilder> getPlaytimeDaysOrBuilderList() {
                RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> repeatedFieldBuilder = this.playtimeDaysBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.playtimeDays_);
            }

            public ParentalPlaytimeDay.Builder addPlaytimeDaysBuilder() {
                return (ParentalPlaytimeDay.Builder) internalGetPlaytimeDaysFieldBuilder().addBuilder(ParentalPlaytimeDay.getDefaultInstance());
            }

            public ParentalPlaytimeDay.Builder addPlaytimeDaysBuilder(int i) {
                return (ParentalPlaytimeDay.Builder) internalGetPlaytimeDaysFieldBuilder().addBuilder(i, ParentalPlaytimeDay.getDefaultInstance());
            }

            public List<ParentalPlaytimeDay.Builder> getPlaytimeDaysBuilderList() {
                return internalGetPlaytimeDaysFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> internalGetPlaytimeDaysFieldBuilder() {
                if (this.playtimeDaysBuilder_ == null) {
                    this.playtimeDaysBuilder_ = new RepeatedFieldBuilder<>(this.playtimeDays_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.playtimeDays_ = null;
                }
                return this.playtimeDaysBuilder_;
            }
        }

        public static ParentalPlaytimeRestrictions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalPlaytimeRestrictions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalPlaytimeRestrictions> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalPlaytimeRestrictions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ParentalTemporaryPlaytimeRestrictions extends GeneratedMessage implements ParentalTemporaryPlaytimeRestrictionsOrBuilder {
        private static final ParentalTemporaryPlaytimeRestrictions DEFAULT_INSTANCE;
        private static final Parser<ParentalTemporaryPlaytimeRestrictions> PARSER;
        public static final int RESTRICTIONS_FIELD_NUMBER = 1;
        public static final int RTIME_EXPIRES_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ParentalPlaytimeDay restrictions_;
        private int rtimeExpires_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalTemporaryPlaytimeRestrictions.class.getName());
            DEFAULT_INSTANCE = new ParentalTemporaryPlaytimeRestrictions();
            PARSER = new AbstractParser<ParentalTemporaryPlaytimeRestrictions>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.1
                @Override // com.google.protobuf.Parser
                public ParentalTemporaryPlaytimeRestrictions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalTemporaryPlaytimeRestrictions.newBuilder();
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

        private ParentalTemporaryPlaytimeRestrictions(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.rtimeExpires_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalTemporaryPlaytimeRestrictions() {
            this.rtimeExpires_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalTemporaryPlaytimeRestrictions_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalTemporaryPlaytimeRestrictions_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalTemporaryPlaytimeRestrictions.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
        public boolean hasRestrictions() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
        public ParentalPlaytimeDay getRestrictions() {
            ParentalPlaytimeDay parentalPlaytimeDay = this.restrictions_;
            return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
        public ParentalPlaytimeDayOrBuilder getRestrictionsOrBuilder() {
            ParentalPlaytimeDay parentalPlaytimeDay = this.restrictions_;
            return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
        public boolean hasRtimeExpires() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
        public int getRtimeExpires() {
            return this.rtimeExpires_;
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
                codedOutputStream.writeMessage(1, getRestrictions());
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.rtimeExpires_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeMessageSize(1, getRestrictions()) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeMessageSize += CodedOutputStream.computeUInt32Size(2, this.rtimeExpires_);
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
            if (!(obj instanceof ParentalTemporaryPlaytimeRestrictions)) {
                return super.equals(obj);
            }
            ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = (ParentalTemporaryPlaytimeRestrictions) obj;
            if (hasRestrictions() != parentalTemporaryPlaytimeRestrictions.hasRestrictions()) {
                return false;
            }
            if ((!hasRestrictions() || getRestrictions().equals(parentalTemporaryPlaytimeRestrictions.getRestrictions())) && hasRtimeExpires() == parentalTemporaryPlaytimeRestrictions.hasRtimeExpires()) {
                return (!hasRtimeExpires() || getRtimeExpires() == parentalTemporaryPlaytimeRestrictions.getRtimeExpires()) && getUnknownFields().equals(parentalTemporaryPlaytimeRestrictions.getUnknownFields());
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
            if (hasRestrictions()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getRestrictions().hashCode();
            }
            if (hasRtimeExpires()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getRtimeExpires();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(InputStream inputStream) throws IOException {
            return (ParentalTemporaryPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalTemporaryPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalTemporaryPlaytimeRestrictions) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalTemporaryPlaytimeRestrictions) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalTemporaryPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalTemporaryPlaytimeRestrictions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalTemporaryPlaytimeRestrictions) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalTemporaryPlaytimeRestrictions);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalTemporaryPlaytimeRestrictionsOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> restrictionsBuilder_;
            private ParentalPlaytimeDay restrictions_;
            private int rtimeExpires_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalTemporaryPlaytimeRestrictions_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalTemporaryPlaytimeRestrictions_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalTemporaryPlaytimeRestrictions.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetRestrictionsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.restrictions_ = null;
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.restrictionsBuilder_ = null;
                }
                this.rtimeExpires_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalTemporaryPlaytimeRestrictions_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalTemporaryPlaytimeRestrictions getDefaultInstanceForType() {
                return ParentalTemporaryPlaytimeRestrictions.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalTemporaryPlaytimeRestrictions build() {
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictionsBuildPartial = buildPartial();
                if (parentalTemporaryPlaytimeRestrictionsBuildPartial.isInitialized()) {
                    return parentalTemporaryPlaytimeRestrictionsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalTemporaryPlaytimeRestrictionsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalTemporaryPlaytimeRestrictions buildPartial() {
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = new ParentalTemporaryPlaytimeRestrictions(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalTemporaryPlaytimeRestrictions);
                }
                onBuilt();
                return parentalTemporaryPlaytimeRestrictions;
            }

            private void buildPartial0(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                int i;
                ParentalPlaytimeDay parentalPlaytimeDay;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalPlaytimeDay = this.restrictions_;
                    } else {
                        parentalPlaytimeDay = (ParentalPlaytimeDay) singleFieldBuilder.build();
                    }
                    parentalTemporaryPlaytimeRestrictions.restrictions_ = parentalPlaytimeDay;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    parentalTemporaryPlaytimeRestrictions.rtimeExpires_ = this.rtimeExpires_;
                    i |= 2;
                }
                parentalTemporaryPlaytimeRestrictions.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalTemporaryPlaytimeRestrictions) {
                    return mergeFrom((ParentalTemporaryPlaytimeRestrictions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                if (parentalTemporaryPlaytimeRestrictions == ParentalTemporaryPlaytimeRestrictions.getDefaultInstance()) {
                    return this;
                }
                if (parentalTemporaryPlaytimeRestrictions.hasRestrictions()) {
                    mergeRestrictions(parentalTemporaryPlaytimeRestrictions.getRestrictions());
                }
                if (parentalTemporaryPlaytimeRestrictions.hasRtimeExpires()) {
                    setRtimeExpires(parentalTemporaryPlaytimeRestrictions.getRtimeExpires());
                }
                mergeUnknownFields(parentalTemporaryPlaytimeRestrictions.getUnknownFields());
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
                                    codedInputStream.readMessage(internalGetRestrictionsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.rtimeExpires_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
            public boolean hasRestrictions() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
            public ParentalPlaytimeDay getRestrictions() {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    ParentalPlaytimeDay parentalPlaytimeDay = this.restrictions_;
                    return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
                }
                return (ParentalPlaytimeDay) singleFieldBuilder.getMessage();
            }

            public Builder setRestrictions(ParentalPlaytimeDay parentalPlaytimeDay) {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalPlaytimeDay.getClass();
                    this.restrictions_ = parentalPlaytimeDay;
                } else {
                    singleFieldBuilder.setMessage(parentalPlaytimeDay);
                }
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder setRestrictions(ParentalPlaytimeDay.Builder builder) {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    this.restrictions_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder mergeRestrictions(ParentalPlaytimeDay parentalPlaytimeDay) {
                ParentalPlaytimeDay parentalPlaytimeDay2;
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0 && (parentalPlaytimeDay2 = this.restrictions_) != null && parentalPlaytimeDay2 != ParentalPlaytimeDay.getDefaultInstance()) {
                        getRestrictionsBuilder().mergeFrom(parentalPlaytimeDay);
                    } else {
                        this.restrictions_ = parentalPlaytimeDay;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalPlaytimeDay);
                }
                if (this.restrictions_ != null) {
                    this.bitField0_ |= 1;
                    onChanged();
                }
                return this;
            }

            public Builder clearRestrictions() {
                this.bitField0_ &= -2;
                this.restrictions_ = null;
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.restrictionsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public ParentalPlaytimeDay.Builder getRestrictionsBuilder() {
                this.bitField0_ |= 1;
                onChanged();
                return (ParentalPlaytimeDay.Builder) internalGetRestrictionsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
            public ParentalPlaytimeDayOrBuilder getRestrictionsOrBuilder() {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.restrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    return (ParentalPlaytimeDayOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                ParentalPlaytimeDay parentalPlaytimeDay = this.restrictions_;
                return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
            }

            private SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> internalGetRestrictionsFieldBuilder() {
                if (this.restrictionsBuilder_ == null) {
                    this.restrictionsBuilder_ = new SingleFieldBuilder<>(getRestrictions(), getParentForChildren(), isClean());
                    this.restrictions_ = null;
                }
                return this.restrictionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
            public boolean hasRtimeExpires() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder
            public int getRtimeExpires() {
                return this.rtimeExpires_;
            }

            public Builder setRtimeExpires(int i) {
                this.rtimeExpires_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRtimeExpires() {
                this.bitField0_ &= -3;
                this.rtimeExpires_ = 0;
                onChanged();
                return this;
            }
        }

        public static ParentalTemporaryPlaytimeRestrictions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalTemporaryPlaytimeRestrictions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalTemporaryPlaytimeRestrictions> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalTemporaryPlaytimeRestrictions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ParentalSettings extends GeneratedMessage implements ParentalSettingsOrBuilder {
        public static final int APPLIST_BASE_DESCRIPTION_FIELD_NUMBER = 3;
        public static final int APPLIST_BASE_FIELD_NUMBER = 4;
        public static final int APPLIST_BASE_ID_FIELD_NUMBER = 2;
        public static final int APPLIST_CUSTOM_FIELD_NUMBER = 5;
        private static final ParentalSettings DEFAULT_INSTANCE;
        public static final int ENABLED_FEATURES_FIELD_NUMBER = 10;
        public static final int EXCLUDED_COMMUNITY_CONTENT_DESCRIPTORS_FIELD_NUMBER = 18;
        public static final int EXCLUDED_STORE_CONTENT_DESCRIPTORS_FIELD_NUMBER = 17;
        public static final int IS_ENABLED_FIELD_NUMBER = 9;
        public static final int IS_SITE_LICENSE_LOCK_FIELD_NUMBER = 12;
        private static final Parser<ParentalSettings> PARSER;
        public static final int PASSWORDHASHTYPE_FIELD_NUMBER = 6;
        public static final int PASSWORDHASH_FIELD_NUMBER = 8;
        public static final int PLAYTIME_RESTRICTIONS_FIELD_NUMBER = 15;
        public static final int RECOVERY_EMAIL_FIELD_NUMBER = 11;
        public static final int RTIME_TEMPORARY_FEATURE_EXPIRATION_FIELD_NUMBER = 14;
        public static final int SALT_FIELD_NUMBER = 7;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int TEMPORARY_ENABLED_FEATURES_FIELD_NUMBER = 13;
        public static final int TEMPORARY_PLAYTIME_RESTRICTIONS_FIELD_NUMBER = 16;
        public static final int UTILITY_APPIDS_FIELD_NUMBER = 19;
        private static final long serialVersionUID = 0;
        private volatile Object applistBaseDescription_;
        private int applistBaseId_;
        private List<ParentalApp> applistBase_;
        private List<ParentalApp> applistCustom_;
        private int bitField0_;
        private int enabledFeatures_;
        private Internal.IntList excludedCommunityContentDescriptors_;
        private Internal.IntList excludedStoreContentDescriptors_;
        private boolean isEnabled_;
        private boolean isSiteLicenseLock_;
        private byte memoizedIsInitialized;
        private ByteString passwordhash_;
        private int passwordhashtype_;
        private ParentalPlaytimeRestrictions playtimeRestrictions_;
        private volatile Object recoveryEmail_;
        private int rtimeTemporaryFeatureExpiration_;
        private ByteString salt_;
        private long steamid_;
        private int temporaryEnabledFeatures_;
        private ParentalTemporaryPlaytimeRestrictions temporaryPlaytimeRestrictions_;
        private Internal.IntList utilityAppids_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalSettings.class.getName());
            DEFAULT_INSTANCE = new ParentalSettings();
            PARSER = new AbstractParser<ParentalSettings>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettings.1
                @Override // com.google.protobuf.Parser
                public ParentalSettings parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalSettings.newBuilder();
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

        private ParentalSettings(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.applistBaseId_ = 0;
            this.applistBaseDescription_ = "";
            this.passwordhashtype_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.salt_ = byteString;
            this.passwordhash_ = byteString;
            this.isEnabled_ = false;
            this.enabledFeatures_ = 0;
            this.recoveryEmail_ = "";
            this.isSiteLicenseLock_ = false;
            this.temporaryEnabledFeatures_ = 0;
            this.rtimeTemporaryFeatureExpiration_ = 0;
            this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
            this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
            this.utilityAppids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalSettings() {
            this.steamid_ = 0L;
            this.applistBaseId_ = 0;
            this.applistBaseDescription_ = "";
            this.passwordhashtype_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.salt_ = byteString;
            this.passwordhash_ = byteString;
            this.isEnabled_ = false;
            this.enabledFeatures_ = 0;
            this.recoveryEmail_ = "";
            this.isSiteLicenseLock_ = false;
            this.temporaryEnabledFeatures_ = 0;
            this.rtimeTemporaryFeatureExpiration_ = 0;
            this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
            this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
            this.utilityAppids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.applistBaseDescription_ = "";
            this.applistBase_ = Collections.emptyList();
            this.applistCustom_ = Collections.emptyList();
            this.salt_ = byteString;
            this.passwordhash_ = byteString;
            this.recoveryEmail_ = "";
            this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
            this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
            this.utilityAppids_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalSettings_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalSettings_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalSettings.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasApplistBaseId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getApplistBaseId() {
            return this.applistBaseId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasApplistBaseDescription() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public String getApplistBaseDescription() {
            Object obj = this.applistBaseDescription_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.applistBaseDescription_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ByteString getApplistBaseDescriptionBytes() {
            Object obj = this.applistBaseDescription_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.applistBaseDescription_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<ParentalApp> getApplistBaseList() {
            return this.applistBase_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<? extends ParentalAppOrBuilder> getApplistBaseOrBuilderList() {
            return this.applistBase_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getApplistBaseCount() {
            return this.applistBase_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalApp getApplistBase(int i) {
            return this.applistBase_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalAppOrBuilder getApplistBaseOrBuilder(int i) {
            return this.applistBase_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<ParentalApp> getApplistCustomList() {
            return this.applistCustom_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<? extends ParentalAppOrBuilder> getApplistCustomOrBuilderList() {
            return this.applistCustom_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getApplistCustomCount() {
            return this.applistCustom_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalApp getApplistCustom(int i) {
            return this.applistCustom_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalAppOrBuilder getApplistCustomOrBuilder(int i) {
            return this.applistCustom_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasPasswordhashtype() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getPasswordhashtype() {
            return this.passwordhashtype_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasSalt() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ByteString getSalt() {
            return this.salt_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasPasswordhash() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ByteString getPasswordhash() {
            return this.passwordhash_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasIsEnabled() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean getIsEnabled() {
            return this.isEnabled_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasEnabledFeatures() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getEnabledFeatures() {
            return this.enabledFeatures_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasRecoveryEmail() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public String getRecoveryEmail() {
            Object obj = this.recoveryEmail_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.recoveryEmail_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ByteString getRecoveryEmailBytes() {
            Object obj = this.recoveryEmail_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.recoveryEmail_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasIsSiteLicenseLock() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean getIsSiteLicenseLock() {
            return this.isSiteLicenseLock_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasTemporaryEnabledFeatures() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getTemporaryEnabledFeatures() {
            return this.temporaryEnabledFeatures_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasRtimeTemporaryFeatureExpiration() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getRtimeTemporaryFeatureExpiration() {
            return this.rtimeTemporaryFeatureExpiration_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasPlaytimeRestrictions() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalPlaytimeRestrictions getPlaytimeRestrictions() {
            ParentalPlaytimeRestrictions parentalPlaytimeRestrictions = this.playtimeRestrictions_;
            return parentalPlaytimeRestrictions == null ? ParentalPlaytimeRestrictions.getDefaultInstance() : parentalPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalPlaytimeRestrictionsOrBuilder getPlaytimeRestrictionsOrBuilder() {
            ParentalPlaytimeRestrictions parentalPlaytimeRestrictions = this.playtimeRestrictions_;
            return parentalPlaytimeRestrictions == null ? ParentalPlaytimeRestrictions.getDefaultInstance() : parentalPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public boolean hasTemporaryPlaytimeRestrictions() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalTemporaryPlaytimeRestrictions getTemporaryPlaytimeRestrictions() {
            ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.temporaryPlaytimeRestrictions_;
            return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public ParentalTemporaryPlaytimeRestrictionsOrBuilder getTemporaryPlaytimeRestrictionsOrBuilder() {
            ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.temporaryPlaytimeRestrictions_;
            return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<Integer> getExcludedStoreContentDescriptorsList() {
            return this.excludedStoreContentDescriptors_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getExcludedStoreContentDescriptorsCount() {
            return this.excludedStoreContentDescriptors_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getExcludedStoreContentDescriptors(int i) {
            return this.excludedStoreContentDescriptors_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<Integer> getExcludedCommunityContentDescriptorsList() {
            return this.excludedCommunityContentDescriptors_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getExcludedCommunityContentDescriptorsCount() {
            return this.excludedCommunityContentDescriptors_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getExcludedCommunityContentDescriptors(int i) {
            return this.excludedCommunityContentDescriptors_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public List<Integer> getUtilityAppidsList() {
            return this.utilityAppids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getUtilityAppidsCount() {
            return this.utilityAppids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
        public int getUtilityAppids(int i) {
            return this.utilityAppids_.getInt(i);
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
                codedOutputStream.writeFixed64(1, this.steamid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.applistBaseId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.applistBaseDescription_);
            }
            for (int i = 0; i < this.applistBase_.size(); i++) {
                codedOutputStream.writeMessage(4, this.applistBase_.get(i));
            }
            for (int i2 = 0; i2 < this.applistCustom_.size(); i2++) {
                codedOutputStream.writeMessage(5, this.applistCustom_.get(i2));
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(6, this.passwordhashtype_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBytes(7, this.salt_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBytes(8, this.passwordhash_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(9, this.isEnabled_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(10, this.enabledFeatures_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 11, this.recoveryEmail_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeBool(12, this.isSiteLicenseLock_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeUInt32(13, this.temporaryEnabledFeatures_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeUInt32(14, this.rtimeTemporaryFeatureExpiration_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                codedOutputStream.writeMessage(15, getPlaytimeRestrictions());
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeMessage(16, getTemporaryPlaytimeRestrictions());
            }
            for (int i3 = 0; i3 < this.excludedStoreContentDescriptors_.size(); i3++) {
                codedOutputStream.writeUInt32(17, this.excludedStoreContentDescriptors_.getInt(i3));
            }
            for (int i4 = 0; i4 < this.excludedCommunityContentDescriptors_.size(); i4++) {
                codedOutputStream.writeUInt32(18, this.excludedCommunityContentDescriptors_.getInt(i4));
            }
            for (int i5 = 0; i5 < this.utilityAppids_.size(); i5++) {
                codedOutputStream.writeUInt32(19, this.utilityAppids_.getInt(i5));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.applistBaseId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(3, this.applistBaseDescription_);
            }
            for (int i2 = 0; i2 < this.applistBase_.size(); i2++) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(4, this.applistBase_.get(i2));
            }
            for (int i3 = 0; i3 < this.applistCustom_.size(); i3++) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(5, this.applistCustom_.get(i3));
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(6, this.passwordhashtype_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(7, this.salt_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(8, this.passwordhash_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(9, this.isEnabled_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(10, this.enabledFeatures_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(11, this.recoveryEmail_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(12, this.isSiteLicenseLock_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(13, this.temporaryEnabledFeatures_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(14, this.rtimeTemporaryFeatureExpiration_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(15, getPlaytimeRestrictions());
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(16, getTemporaryPlaytimeRestrictions());
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i4 = 0; i4 < this.excludedStoreContentDescriptors_.size(); i4++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.excludedStoreContentDescriptors_.getInt(i4));
            }
            int size = iComputeFixed64Size + iComputeUInt32SizeNoTag + (getExcludedStoreContentDescriptorsList().size() * 2);
            int iComputeUInt32SizeNoTag2 = 0;
            for (int i5 = 0; i5 < this.excludedCommunityContentDescriptors_.size(); i5++) {
                iComputeUInt32SizeNoTag2 += CodedOutputStream.computeUInt32SizeNoTag(this.excludedCommunityContentDescriptors_.getInt(i5));
            }
            int size2 = size + iComputeUInt32SizeNoTag2 + (getExcludedCommunityContentDescriptorsList().size() * 2);
            int iComputeUInt32SizeNoTag3 = 0;
            for (int i6 = 0; i6 < this.utilityAppids_.size(); i6++) {
                iComputeUInt32SizeNoTag3 += CodedOutputStream.computeUInt32SizeNoTag(this.utilityAppids_.getInt(i6));
            }
            int size3 = size2 + iComputeUInt32SizeNoTag3 + (getUtilityAppidsList().size() * 2) + getUnknownFields().getSerializedSize();
            this.memoizedSize = size3;
            return size3;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ParentalSettings)) {
                return super.equals(obj);
            }
            ParentalSettings parentalSettings = (ParentalSettings) obj;
            if (hasSteamid() != parentalSettings.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != parentalSettings.getSteamid()) || hasApplistBaseId() != parentalSettings.hasApplistBaseId()) {
                return false;
            }
            if ((hasApplistBaseId() && getApplistBaseId() != parentalSettings.getApplistBaseId()) || hasApplistBaseDescription() != parentalSettings.hasApplistBaseDescription()) {
                return false;
            }
            if ((hasApplistBaseDescription() && !getApplistBaseDescription().equals(parentalSettings.getApplistBaseDescription())) || !getApplistBaseList().equals(parentalSettings.getApplistBaseList()) || !getApplistCustomList().equals(parentalSettings.getApplistCustomList()) || hasPasswordhashtype() != parentalSettings.hasPasswordhashtype()) {
                return false;
            }
            if ((hasPasswordhashtype() && getPasswordhashtype() != parentalSettings.getPasswordhashtype()) || hasSalt() != parentalSettings.hasSalt()) {
                return false;
            }
            if ((hasSalt() && !getSalt().equals(parentalSettings.getSalt())) || hasPasswordhash() != parentalSettings.hasPasswordhash()) {
                return false;
            }
            if ((hasPasswordhash() && !getPasswordhash().equals(parentalSettings.getPasswordhash())) || hasIsEnabled() != parentalSettings.hasIsEnabled()) {
                return false;
            }
            if ((hasIsEnabled() && getIsEnabled() != parentalSettings.getIsEnabled()) || hasEnabledFeatures() != parentalSettings.hasEnabledFeatures()) {
                return false;
            }
            if ((hasEnabledFeatures() && getEnabledFeatures() != parentalSettings.getEnabledFeatures()) || hasRecoveryEmail() != parentalSettings.hasRecoveryEmail()) {
                return false;
            }
            if ((hasRecoveryEmail() && !getRecoveryEmail().equals(parentalSettings.getRecoveryEmail())) || hasIsSiteLicenseLock() != parentalSettings.hasIsSiteLicenseLock()) {
                return false;
            }
            if ((hasIsSiteLicenseLock() && getIsSiteLicenseLock() != parentalSettings.getIsSiteLicenseLock()) || hasTemporaryEnabledFeatures() != parentalSettings.hasTemporaryEnabledFeatures()) {
                return false;
            }
            if ((hasTemporaryEnabledFeatures() && getTemporaryEnabledFeatures() != parentalSettings.getTemporaryEnabledFeatures()) || hasRtimeTemporaryFeatureExpiration() != parentalSettings.hasRtimeTemporaryFeatureExpiration()) {
                return false;
            }
            if ((hasRtimeTemporaryFeatureExpiration() && getRtimeTemporaryFeatureExpiration() != parentalSettings.getRtimeTemporaryFeatureExpiration()) || hasPlaytimeRestrictions() != parentalSettings.hasPlaytimeRestrictions()) {
                return false;
            }
            if ((!hasPlaytimeRestrictions() || getPlaytimeRestrictions().equals(parentalSettings.getPlaytimeRestrictions())) && hasTemporaryPlaytimeRestrictions() == parentalSettings.hasTemporaryPlaytimeRestrictions()) {
                return (!hasTemporaryPlaytimeRestrictions() || getTemporaryPlaytimeRestrictions().equals(parentalSettings.getTemporaryPlaytimeRestrictions())) && getExcludedStoreContentDescriptorsList().equals(parentalSettings.getExcludedStoreContentDescriptorsList()) && getExcludedCommunityContentDescriptorsList().equals(parentalSettings.getExcludedCommunityContentDescriptorsList()) && getUtilityAppidsList().equals(parentalSettings.getUtilityAppidsList()) && getUnknownFields().equals(parentalSettings.getUnknownFields());
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
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasApplistBaseId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getApplistBaseId();
            }
            if (hasApplistBaseDescription()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getApplistBaseDescription().hashCode();
            }
            if (getApplistBaseCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getApplistBaseList().hashCode();
            }
            if (getApplistCustomCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getApplistCustomList().hashCode();
            }
            if (hasPasswordhashtype()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getPasswordhashtype();
            }
            if (hasSalt()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getSalt().hashCode();
            }
            if (hasPasswordhash()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getPasswordhash().hashCode();
            }
            if (hasIsEnabled()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + Internal.hashBoolean(getIsEnabled());
            }
            if (hasEnabledFeatures()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getEnabledFeatures();
            }
            if (hasRecoveryEmail()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getRecoveryEmail().hashCode();
            }
            if (hasIsSiteLicenseLock()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + Internal.hashBoolean(getIsSiteLicenseLock());
            }
            if (hasTemporaryEnabledFeatures()) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getTemporaryEnabledFeatures();
            }
            if (hasRtimeTemporaryFeatureExpiration()) {
                iHashCode = (((iHashCode * 37) + 14) * 53) + getRtimeTemporaryFeatureExpiration();
            }
            if (hasPlaytimeRestrictions()) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getPlaytimeRestrictions().hashCode();
            }
            if (hasTemporaryPlaytimeRestrictions()) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + getTemporaryPlaytimeRestrictions().hashCode();
            }
            if (getExcludedStoreContentDescriptorsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 17) * 53) + getExcludedStoreContentDescriptorsList().hashCode();
            }
            if (getExcludedCommunityContentDescriptorsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 18) * 53) + getExcludedCommunityContentDescriptorsList().hashCode();
            }
            if (getUtilityAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 19) * 53) + getUtilityAppidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalSettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalSettings parseFrom(InputStream inputStream) throws IOException {
            return (ParentalSettings) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalSettings) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalSettings) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalSettings) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalSettings) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalSettings) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalSettings parentalSettings) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalSettings);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalSettingsOrBuilder {
            private RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> applistBaseBuilder_;
            private Object applistBaseDescription_;
            private int applistBaseId_;
            private List<ParentalApp> applistBase_;
            private RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> applistCustomBuilder_;
            private List<ParentalApp> applistCustom_;
            private int bitField0_;
            private int enabledFeatures_;
            private Internal.IntList excludedCommunityContentDescriptors_;
            private Internal.IntList excludedStoreContentDescriptors_;
            private boolean isEnabled_;
            private boolean isSiteLicenseLock_;
            private ByteString passwordhash_;
            private int passwordhashtype_;
            private SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> playtimeRestrictionsBuilder_;
            private ParentalPlaytimeRestrictions playtimeRestrictions_;
            private Object recoveryEmail_;
            private int rtimeTemporaryFeatureExpiration_;
            private ByteString salt_;
            private long steamid_;
            private int temporaryEnabledFeatures_;
            private SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> temporaryPlaytimeRestrictionsBuilder_;
            private ParentalTemporaryPlaytimeRestrictions temporaryPlaytimeRestrictions_;
            private Internal.IntList utilityAppids_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalSettings_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalSettings_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalSettings.class, Builder.class);
            }

            private Builder() {
                this.applistBaseDescription_ = "";
                this.applistBase_ = Collections.emptyList();
                this.applistCustom_ = Collections.emptyList();
                ByteString byteString = ByteString.EMPTY;
                this.salt_ = byteString;
                this.passwordhash_ = byteString;
                this.recoveryEmail_ = "";
                this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.utilityAppids_ = GeneratedMessage.emptyIntList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.applistBaseDescription_ = "";
                this.applistBase_ = Collections.emptyList();
                this.applistCustom_ = Collections.emptyList();
                ByteString byteString = ByteString.EMPTY;
                this.salt_ = byteString;
                this.passwordhash_ = byteString;
                this.recoveryEmail_ = "";
                this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.utilityAppids_ = GeneratedMessage.emptyIntList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetApplistBaseFieldBuilder();
                    internalGetApplistCustomFieldBuilder();
                    internalGetPlaytimeRestrictionsFieldBuilder();
                    internalGetTemporaryPlaytimeRestrictionsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.applistBaseId_ = 0;
                this.applistBaseDescription_ = "";
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.applistBase_ = Collections.emptyList();
                } else {
                    this.applistBase_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder2 = this.applistCustomBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.applistCustom_ = Collections.emptyList();
                } else {
                    this.applistCustom_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -17;
                this.passwordhashtype_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.salt_ = byteString;
                this.passwordhash_ = byteString;
                this.isEnabled_ = false;
                this.enabledFeatures_ = 0;
                this.recoveryEmail_ = "";
                this.isSiteLicenseLock_ = false;
                this.temporaryEnabledFeatures_ = 0;
                this.rtimeTemporaryFeatureExpiration_ = 0;
                this.playtimeRestrictions_ = null;
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.playtimeRestrictionsBuilder_ = null;
                }
                this.temporaryPlaytimeRestrictions_ = null;
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder2 = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder2 != null) {
                    singleFieldBuilder2.dispose();
                    this.temporaryPlaytimeRestrictionsBuilder_ = null;
                }
                this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.utilityAppids_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalSettings_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalSettings getDefaultInstanceForType() {
                return ParentalSettings.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalSettings build() {
                ParentalSettings parentalSettingsBuildPartial = buildPartial();
                if (parentalSettingsBuildPartial.isInitialized()) {
                    return parentalSettingsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalSettingsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalSettings buildPartial() {
                ParentalSettings parentalSettings = new ParentalSettings(this);
                buildPartialRepeatedFields(parentalSettings);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalSettings);
                }
                onBuilt();
                return parentalSettings;
            }

            private void buildPartialRepeatedFields(ParentalSettings parentalSettings) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.applistBase_ = Collections.unmodifiableList(this.applistBase_);
                        this.bitField0_ &= -9;
                    }
                    parentalSettings.applistBase_ = this.applistBase_;
                } else {
                    parentalSettings.applistBase_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder2 = this.applistCustomBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.applistCustom_ = Collections.unmodifiableList(this.applistCustom_);
                        this.bitField0_ &= -17;
                    }
                    parentalSettings.applistCustom_ = this.applistCustom_;
                    return;
                }
                parentalSettings.applistCustom_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(ParentalSettings parentalSettings) {
                int i;
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions;
                ParentalPlaytimeRestrictions parentalPlaytimeRestrictions;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    parentalSettings.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    parentalSettings.applistBaseId_ = this.applistBaseId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    parentalSettings.applistBaseDescription_ = this.applistBaseDescription_;
                    i |= 4;
                }
                if ((i2 & 32) != 0) {
                    parentalSettings.passwordhashtype_ = this.passwordhashtype_;
                    i |= 8;
                }
                if ((i2 & 64) != 0) {
                    parentalSettings.salt_ = this.salt_;
                    i |= 16;
                }
                if ((i2 & 128) != 0) {
                    parentalSettings.passwordhash_ = this.passwordhash_;
                    i |= 32;
                }
                if ((i2 & 256) != 0) {
                    parentalSettings.isEnabled_ = this.isEnabled_;
                    i |= 64;
                }
                if ((i2 & 512) != 0) {
                    parentalSettings.enabledFeatures_ = this.enabledFeatures_;
                    i |= 128;
                }
                if ((i2 & 1024) != 0) {
                    parentalSettings.recoveryEmail_ = this.recoveryEmail_;
                    i |= 256;
                }
                if ((i2 & 2048) != 0) {
                    parentalSettings.isSiteLicenseLock_ = this.isSiteLicenseLock_;
                    i |= 512;
                }
                if ((i2 & 4096) != 0) {
                    parentalSettings.temporaryEnabledFeatures_ = this.temporaryEnabledFeatures_;
                    i |= 1024;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    parentalSettings.rtimeTemporaryFeatureExpiration_ = this.rtimeTemporaryFeatureExpiration_;
                    i |= 2048;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalPlaytimeRestrictions = this.playtimeRestrictions_;
                    } else {
                        parentalPlaytimeRestrictions = (ParentalPlaytimeRestrictions) singleFieldBuilder.build();
                    }
                    parentalSettings.playtimeRestrictions_ = parentalPlaytimeRestrictions;
                    i |= 4096;
                }
                if ((32768 & i2) != 0) {
                    SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder2 = this.temporaryPlaytimeRestrictionsBuilder_;
                    if (singleFieldBuilder2 == null) {
                        parentalTemporaryPlaytimeRestrictions = this.temporaryPlaytimeRestrictions_;
                    } else {
                        parentalTemporaryPlaytimeRestrictions = (ParentalTemporaryPlaytimeRestrictions) singleFieldBuilder2.build();
                    }
                    parentalSettings.temporaryPlaytimeRestrictions_ = parentalTemporaryPlaytimeRestrictions;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((65536 & i2) != 0) {
                    this.excludedStoreContentDescriptors_.makeImmutable();
                    parentalSettings.excludedStoreContentDescriptors_ = this.excludedStoreContentDescriptors_;
                }
                if ((131072 & i2) != 0) {
                    this.excludedCommunityContentDescriptors_.makeImmutable();
                    parentalSettings.excludedCommunityContentDescriptors_ = this.excludedCommunityContentDescriptors_;
                }
                if ((i2 & 262144) != 0) {
                    this.utilityAppids_.makeImmutable();
                    parentalSettings.utilityAppids_ = this.utilityAppids_;
                }
                parentalSettings.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalSettings) {
                    return mergeFrom((ParentalSettings) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalSettings parentalSettings) {
                if (parentalSettings == ParentalSettings.getDefaultInstance()) {
                    return this;
                }
                if (parentalSettings.hasSteamid()) {
                    setSteamid(parentalSettings.getSteamid());
                }
                if (parentalSettings.hasApplistBaseId()) {
                    setApplistBaseId(parentalSettings.getApplistBaseId());
                }
                if (parentalSettings.hasApplistBaseDescription()) {
                    this.applistBaseDescription_ = parentalSettings.applistBaseDescription_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (this.applistBaseBuilder_ == null) {
                    if (!parentalSettings.applistBase_.isEmpty()) {
                        if (this.applistBase_.isEmpty()) {
                            this.applistBase_ = parentalSettings.applistBase_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureApplistBaseIsMutable();
                            this.applistBase_.addAll(parentalSettings.applistBase_);
                        }
                        onChanged();
                    }
                } else if (!parentalSettings.applistBase_.isEmpty()) {
                    if (this.applistBaseBuilder_.isEmpty()) {
                        this.applistBaseBuilder_.dispose();
                        this.applistBaseBuilder_ = null;
                        this.applistBase_ = parentalSettings.applistBase_;
                        this.bitField0_ &= -9;
                        this.applistBaseBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetApplistBaseFieldBuilder() : null;
                    } else {
                        this.applistBaseBuilder_.addAllMessages(parentalSettings.applistBase_);
                    }
                }
                if (this.applistCustomBuilder_ == null) {
                    if (!parentalSettings.applistCustom_.isEmpty()) {
                        if (this.applistCustom_.isEmpty()) {
                            this.applistCustom_ = parentalSettings.applistCustom_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureApplistCustomIsMutable();
                            this.applistCustom_.addAll(parentalSettings.applistCustom_);
                        }
                        onChanged();
                    }
                } else if (!parentalSettings.applistCustom_.isEmpty()) {
                    if (this.applistCustomBuilder_.isEmpty()) {
                        this.applistCustomBuilder_.dispose();
                        this.applistCustomBuilder_ = null;
                        this.applistCustom_ = parentalSettings.applistCustom_;
                        this.bitField0_ &= -17;
                        this.applistCustomBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetApplistCustomFieldBuilder() : null;
                    } else {
                        this.applistCustomBuilder_.addAllMessages(parentalSettings.applistCustom_);
                    }
                }
                if (parentalSettings.hasPasswordhashtype()) {
                    setPasswordhashtype(parentalSettings.getPasswordhashtype());
                }
                if (parentalSettings.hasSalt()) {
                    setSalt(parentalSettings.getSalt());
                }
                if (parentalSettings.hasPasswordhash()) {
                    setPasswordhash(parentalSettings.getPasswordhash());
                }
                if (parentalSettings.hasIsEnabled()) {
                    setIsEnabled(parentalSettings.getIsEnabled());
                }
                if (parentalSettings.hasEnabledFeatures()) {
                    setEnabledFeatures(parentalSettings.getEnabledFeatures());
                }
                if (parentalSettings.hasRecoveryEmail()) {
                    this.recoveryEmail_ = parentalSettings.recoveryEmail_;
                    this.bitField0_ |= 1024;
                    onChanged();
                }
                if (parentalSettings.hasIsSiteLicenseLock()) {
                    setIsSiteLicenseLock(parentalSettings.getIsSiteLicenseLock());
                }
                if (parentalSettings.hasTemporaryEnabledFeatures()) {
                    setTemporaryEnabledFeatures(parentalSettings.getTemporaryEnabledFeatures());
                }
                if (parentalSettings.hasRtimeTemporaryFeatureExpiration()) {
                    setRtimeTemporaryFeatureExpiration(parentalSettings.getRtimeTemporaryFeatureExpiration());
                }
                if (parentalSettings.hasPlaytimeRestrictions()) {
                    mergePlaytimeRestrictions(parentalSettings.getPlaytimeRestrictions());
                }
                if (parentalSettings.hasTemporaryPlaytimeRestrictions()) {
                    mergeTemporaryPlaytimeRestrictions(parentalSettings.getTemporaryPlaytimeRestrictions());
                }
                if (!parentalSettings.excludedStoreContentDescriptors_.isEmpty()) {
                    if (this.excludedStoreContentDescriptors_.isEmpty()) {
                        Internal.IntList intList = parentalSettings.excludedStoreContentDescriptors_;
                        this.excludedStoreContentDescriptors_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    } else {
                        ensureExcludedStoreContentDescriptorsIsMutable();
                        this.excludedStoreContentDescriptors_.addAll(parentalSettings.excludedStoreContentDescriptors_);
                    }
                    onChanged();
                }
                if (!parentalSettings.excludedCommunityContentDescriptors_.isEmpty()) {
                    if (this.excludedCommunityContentDescriptors_.isEmpty()) {
                        Internal.IntList intList2 = parentalSettings.excludedCommunityContentDescriptors_;
                        this.excludedCommunityContentDescriptors_ = intList2;
                        intList2.makeImmutable();
                        this.bitField0_ |= 131072;
                    } else {
                        ensureExcludedCommunityContentDescriptorsIsMutable();
                        this.excludedCommunityContentDescriptors_.addAll(parentalSettings.excludedCommunityContentDescriptors_);
                    }
                    onChanged();
                }
                if (!parentalSettings.utilityAppids_.isEmpty()) {
                    if (this.utilityAppids_.isEmpty()) {
                        Internal.IntList intList3 = parentalSettings.utilityAppids_;
                        this.utilityAppids_ = intList3;
                        intList3.makeImmutable();
                        this.bitField0_ |= 262144;
                    } else {
                        ensureUtilityAppidsIsMutable();
                        this.utilityAppids_.addAll(parentalSettings.utilityAppids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(parentalSettings.getUnknownFields());
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
                                case 9:
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.applistBaseId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.applistBaseDescription_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    ParentalApp parentalApp = (ParentalApp) codedInputStream.readMessage(ParentalApp.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureApplistBaseIsMutable();
                                        this.applistBase_.add(parentalApp);
                                    } else {
                                        repeatedFieldBuilder.addMessage(parentalApp);
                                    }
                                    break;
                                case 42:
                                    ParentalApp parentalApp2 = (ParentalApp) codedInputStream.readMessage(ParentalApp.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder2 = this.applistCustomBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensureApplistCustomIsMutable();
                                        this.applistCustom_.add(parentalApp2);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(parentalApp2);
                                    }
                                    break;
                                case 48:
                                    this.passwordhashtype_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER /* 58 */:
                                    this.salt_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.passwordhash_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 72:
                                    this.isEnabled_ = codedInputStream.readBool();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.enabledFeatures_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER /* 90 */:
                                    this.recoveryEmail_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1024;
                                    break;
                                case 96:
                                    this.isSiteLicenseLock_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2048;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    this.temporaryEnabledFeatures_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4096;
                                    break;
                                case 112:
                                    this.rtimeTemporaryFeatureExpiration_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 122:
                                    codedInputStream.readMessage(internalGetPlaytimeRestrictionsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 130:
                                    codedInputStream.readMessage(internalGetTemporaryPlaytimeRestrictionsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 32768;
                                    break;
                                case 136:
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureExcludedStoreContentDescriptorsIsMutable();
                                    this.excludedStoreContentDescriptors_.addInt(uInt32);
                                    break;
                                case 138:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureExcludedStoreContentDescriptorsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.excludedStoreContentDescriptors_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case 144:
                                    int uInt322 = codedInputStream.readUInt32();
                                    ensureExcludedCommunityContentDescriptorsIsMutable();
                                    this.excludedCommunityContentDescriptors_.addInt(uInt322);
                                    break;
                                case 146:
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureExcludedCommunityContentDescriptorsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.excludedCommunityContentDescriptors_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                    break;
                                case 152:
                                    int uInt323 = codedInputStream.readUInt32();
                                    ensureUtilityAppidsIsMutable();
                                    this.utilityAppids_.addInt(uInt323);
                                    break;
                                case 154:
                                    int iPushLimit3 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureUtilityAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.utilityAppids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit3);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -2;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasApplistBaseId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getApplistBaseId() {
                return this.applistBaseId_;
            }

            public Builder setApplistBaseId(int i) {
                this.applistBaseId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearApplistBaseId() {
                this.bitField0_ &= -3;
                this.applistBaseId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasApplistBaseDescription() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public String getApplistBaseDescription() {
                Object obj = this.applistBaseDescription_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.applistBaseDescription_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ByteString getApplistBaseDescriptionBytes() {
                Object obj = this.applistBaseDescription_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.applistBaseDescription_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setApplistBaseDescription(String str) {
                str.getClass();
                this.applistBaseDescription_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearApplistBaseDescription() {
                this.applistBaseDescription_ = ParentalSettings.getDefaultInstance().getApplistBaseDescription();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setApplistBaseDescriptionBytes(ByteString byteString) {
                byteString.getClass();
                this.applistBaseDescription_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            private void ensureApplistBaseIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.applistBase_ = new ArrayList(this.applistBase_);
                    this.bitField0_ |= 8;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<ParentalApp> getApplistBaseList() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.applistBase_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getApplistBaseCount() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.applistBase_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalApp getApplistBase(int i) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.applistBase_.get(i);
                }
                return (ParentalApp) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setApplistBase(int i, ParentalApp parentalApp) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalApp.getClass();
                    ensureApplistBaseIsMutable();
                    this.applistBase_.set(i, parentalApp);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, parentalApp);
                }
                return this;
            }

            public Builder setApplistBase(int i, ParentalApp.Builder builder) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistBaseIsMutable();
                    this.applistBase_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addApplistBase(ParentalApp parentalApp) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalApp.getClass();
                    ensureApplistBaseIsMutable();
                    this.applistBase_.add(parentalApp);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(parentalApp);
                }
                return this;
            }

            public Builder addApplistBase(int i, ParentalApp parentalApp) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalApp.getClass();
                    ensureApplistBaseIsMutable();
                    this.applistBase_.add(i, parentalApp);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, parentalApp);
                }
                return this;
            }

            public Builder addApplistBase(ParentalApp.Builder builder) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistBaseIsMutable();
                    this.applistBase_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addApplistBase(int i, ParentalApp.Builder builder) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistBaseIsMutable();
                    this.applistBase_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllApplistBase(Iterable<? extends ParentalApp> iterable) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistBaseIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.applistBase_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearApplistBase() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.applistBase_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeApplistBase(int i) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistBaseIsMutable();
                    this.applistBase_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public ParentalApp.Builder getApplistBaseBuilder(int i) {
                return (ParentalApp.Builder) internalGetApplistBaseFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalAppOrBuilder getApplistBaseOrBuilder(int i) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.applistBase_.get(i);
                }
                return (ParentalAppOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<? extends ParentalAppOrBuilder> getApplistBaseOrBuilderList() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistBaseBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.applistBase_);
            }

            public ParentalApp.Builder addApplistBaseBuilder() {
                return (ParentalApp.Builder) internalGetApplistBaseFieldBuilder().addBuilder(ParentalApp.getDefaultInstance());
            }

            public ParentalApp.Builder addApplistBaseBuilder(int i) {
                return (ParentalApp.Builder) internalGetApplistBaseFieldBuilder().addBuilder(i, ParentalApp.getDefaultInstance());
            }

            public List<ParentalApp.Builder> getApplistBaseBuilderList() {
                return internalGetApplistBaseFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> internalGetApplistBaseFieldBuilder() {
                if (this.applistBaseBuilder_ == null) {
                    this.applistBaseBuilder_ = new RepeatedFieldBuilder<>(this.applistBase_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                    this.applistBase_ = null;
                }
                return this.applistBaseBuilder_;
            }

            private void ensureApplistCustomIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.applistCustom_ = new ArrayList(this.applistCustom_);
                    this.bitField0_ |= 16;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<ParentalApp> getApplistCustomList() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.applistCustom_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getApplistCustomCount() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.applistCustom_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalApp getApplistCustom(int i) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.applistCustom_.get(i);
                }
                return (ParentalApp) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setApplistCustom(int i, ParentalApp parentalApp) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalApp.getClass();
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.set(i, parentalApp);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, parentalApp);
                }
                return this;
            }

            public Builder setApplistCustom(int i, ParentalApp.Builder builder) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addApplistCustom(ParentalApp parentalApp) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalApp.getClass();
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.add(parentalApp);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(parentalApp);
                }
                return this;
            }

            public Builder addApplistCustom(int i, ParentalApp parentalApp) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalApp.getClass();
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.add(i, parentalApp);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, parentalApp);
                }
                return this;
            }

            public Builder addApplistCustom(ParentalApp.Builder builder) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addApplistCustom(int i, ParentalApp.Builder builder) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllApplistCustom(Iterable<? extends ParentalApp> iterable) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistCustomIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.applistCustom_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearApplistCustom() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.applistCustom_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeApplistCustom(int i) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureApplistCustomIsMutable();
                    this.applistCustom_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public ParentalApp.Builder getApplistCustomBuilder(int i) {
                return (ParentalApp.Builder) internalGetApplistCustomFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalAppOrBuilder getApplistCustomOrBuilder(int i) {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.applistCustom_.get(i);
                }
                return (ParentalAppOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<? extends ParentalAppOrBuilder> getApplistCustomOrBuilderList() {
                RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> repeatedFieldBuilder = this.applistCustomBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.applistCustom_);
            }

            public ParentalApp.Builder addApplistCustomBuilder() {
                return (ParentalApp.Builder) internalGetApplistCustomFieldBuilder().addBuilder(ParentalApp.getDefaultInstance());
            }

            public ParentalApp.Builder addApplistCustomBuilder(int i) {
                return (ParentalApp.Builder) internalGetApplistCustomFieldBuilder().addBuilder(i, ParentalApp.getDefaultInstance());
            }

            public List<ParentalApp.Builder> getApplistCustomBuilderList() {
                return internalGetApplistCustomFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ParentalApp, ParentalApp.Builder, ParentalAppOrBuilder> internalGetApplistCustomFieldBuilder() {
                if (this.applistCustomBuilder_ == null) {
                    this.applistCustomBuilder_ = new RepeatedFieldBuilder<>(this.applistCustom_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.applistCustom_ = null;
                }
                return this.applistCustomBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasPasswordhashtype() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getPasswordhashtype() {
                return this.passwordhashtype_;
            }

            public Builder setPasswordhashtype(int i) {
                this.passwordhashtype_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearPasswordhashtype() {
                this.bitField0_ &= -33;
                this.passwordhashtype_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasSalt() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ByteString getSalt() {
                return this.salt_;
            }

            public Builder setSalt(ByteString byteString) {
                byteString.getClass();
                this.salt_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSalt() {
                this.bitField0_ &= -65;
                this.salt_ = ParentalSettings.getDefaultInstance().getSalt();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasPasswordhash() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ByteString getPasswordhash() {
                return this.passwordhash_;
            }

            public Builder setPasswordhash(ByteString byteString) {
                byteString.getClass();
                this.passwordhash_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearPasswordhash() {
                this.bitField0_ &= -129;
                this.passwordhash_ = ParentalSettings.getDefaultInstance().getPasswordhash();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasIsEnabled() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean getIsEnabled() {
                return this.isEnabled_;
            }

            public Builder setIsEnabled(boolean z) {
                this.isEnabled_ = z;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearIsEnabled() {
                this.bitField0_ &= -257;
                this.isEnabled_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasEnabledFeatures() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getEnabledFeatures() {
                return this.enabledFeatures_;
            }

            public Builder setEnabledFeatures(int i) {
                this.enabledFeatures_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearEnabledFeatures() {
                this.bitField0_ &= -513;
                this.enabledFeatures_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasRecoveryEmail() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public String getRecoveryEmail() {
                Object obj = this.recoveryEmail_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.recoveryEmail_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ByteString getRecoveryEmailBytes() {
                Object obj = this.recoveryEmail_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.recoveryEmail_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRecoveryEmail(String str) {
                str.getClass();
                this.recoveryEmail_ = str;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearRecoveryEmail() {
                this.recoveryEmail_ = ParentalSettings.getDefaultInstance().getRecoveryEmail();
                this.bitField0_ &= -1025;
                onChanged();
                return this;
            }

            public Builder setRecoveryEmailBytes(ByteString byteString) {
                byteString.getClass();
                this.recoveryEmail_ = byteString;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasIsSiteLicenseLock() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean getIsSiteLicenseLock() {
                return this.isSiteLicenseLock_;
            }

            public Builder setIsSiteLicenseLock(boolean z) {
                this.isSiteLicenseLock_ = z;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearIsSiteLicenseLock() {
                this.bitField0_ &= -2049;
                this.isSiteLicenseLock_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasTemporaryEnabledFeatures() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getTemporaryEnabledFeatures() {
                return this.temporaryEnabledFeatures_;
            }

            public Builder setTemporaryEnabledFeatures(int i) {
                this.temporaryEnabledFeatures_ = i;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearTemporaryEnabledFeatures() {
                this.bitField0_ &= -4097;
                this.temporaryEnabledFeatures_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasRtimeTemporaryFeatureExpiration() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getRtimeTemporaryFeatureExpiration() {
                return this.rtimeTemporaryFeatureExpiration_;
            }

            public Builder setRtimeTemporaryFeatureExpiration(int i) {
                this.rtimeTemporaryFeatureExpiration_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearRtimeTemporaryFeatureExpiration() {
                this.bitField0_ &= -8193;
                this.rtimeTemporaryFeatureExpiration_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasPlaytimeRestrictions() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalPlaytimeRestrictions getPlaytimeRestrictions() {
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    ParentalPlaytimeRestrictions parentalPlaytimeRestrictions = this.playtimeRestrictions_;
                    return parentalPlaytimeRestrictions == null ? ParentalPlaytimeRestrictions.getDefaultInstance() : parentalPlaytimeRestrictions;
                }
                return (ParentalPlaytimeRestrictions) singleFieldBuilder.getMessage();
            }

            public Builder setPlaytimeRestrictions(ParentalPlaytimeRestrictions parentalPlaytimeRestrictions) {
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalPlaytimeRestrictions.getClass();
                    this.playtimeRestrictions_ = parentalPlaytimeRestrictions;
                } else {
                    singleFieldBuilder.setMessage(parentalPlaytimeRestrictions);
                }
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder setPlaytimeRestrictions(ParentalPlaytimeRestrictions.Builder builder) {
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    this.playtimeRestrictions_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder mergePlaytimeRestrictions(ParentalPlaytimeRestrictions parentalPlaytimeRestrictions) {
                ParentalPlaytimeRestrictions parentalPlaytimeRestrictions2;
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0 && (parentalPlaytimeRestrictions2 = this.playtimeRestrictions_) != null && parentalPlaytimeRestrictions2 != ParentalPlaytimeRestrictions.getDefaultInstance()) {
                        getPlaytimeRestrictionsBuilder().mergeFrom(parentalPlaytimeRestrictions);
                    } else {
                        this.playtimeRestrictions_ = parentalPlaytimeRestrictions;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalPlaytimeRestrictions);
                }
                if (this.playtimeRestrictions_ != null) {
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                }
                return this;
            }

            public Builder clearPlaytimeRestrictions() {
                this.bitField0_ &= -16385;
                this.playtimeRestrictions_ = null;
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.playtimeRestrictionsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public ParentalPlaytimeRestrictions.Builder getPlaytimeRestrictionsBuilder() {
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return (ParentalPlaytimeRestrictions.Builder) internalGetPlaytimeRestrictionsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalPlaytimeRestrictionsOrBuilder getPlaytimeRestrictionsOrBuilder() {
                SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.playtimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    return (ParentalPlaytimeRestrictionsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                ParentalPlaytimeRestrictions parentalPlaytimeRestrictions = this.playtimeRestrictions_;
                return parentalPlaytimeRestrictions == null ? ParentalPlaytimeRestrictions.getDefaultInstance() : parentalPlaytimeRestrictions;
            }

            private SingleFieldBuilder<ParentalPlaytimeRestrictions, ParentalPlaytimeRestrictions.Builder, ParentalPlaytimeRestrictionsOrBuilder> internalGetPlaytimeRestrictionsFieldBuilder() {
                if (this.playtimeRestrictionsBuilder_ == null) {
                    this.playtimeRestrictionsBuilder_ = new SingleFieldBuilder<>(getPlaytimeRestrictions(), getParentForChildren(), isClean());
                    this.playtimeRestrictions_ = null;
                }
                return this.playtimeRestrictionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public boolean hasTemporaryPlaytimeRestrictions() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalTemporaryPlaytimeRestrictions getTemporaryPlaytimeRestrictions() {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.temporaryPlaytimeRestrictions_;
                    return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
                }
                return (ParentalTemporaryPlaytimeRestrictions) singleFieldBuilder.getMessage();
            }

            public Builder setTemporaryPlaytimeRestrictions(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalTemporaryPlaytimeRestrictions.getClass();
                    this.temporaryPlaytimeRestrictions_ = parentalTemporaryPlaytimeRestrictions;
                } else {
                    singleFieldBuilder.setMessage(parentalTemporaryPlaytimeRestrictions);
                }
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder setTemporaryPlaytimeRestrictions(ParentalTemporaryPlaytimeRestrictions.Builder builder) {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    this.temporaryPlaytimeRestrictions_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder mergeTemporaryPlaytimeRestrictions(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions2;
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 32768) != 0 && (parentalTemporaryPlaytimeRestrictions2 = this.temporaryPlaytimeRestrictions_) != null && parentalTemporaryPlaytimeRestrictions2 != ParentalTemporaryPlaytimeRestrictions.getDefaultInstance()) {
                        getTemporaryPlaytimeRestrictionsBuilder().mergeFrom(parentalTemporaryPlaytimeRestrictions);
                    } else {
                        this.temporaryPlaytimeRestrictions_ = parentalTemporaryPlaytimeRestrictions;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalTemporaryPlaytimeRestrictions);
                }
                if (this.temporaryPlaytimeRestrictions_ != null) {
                    this.bitField0_ |= 32768;
                    onChanged();
                }
                return this;
            }

            public Builder clearTemporaryPlaytimeRestrictions() {
                this.bitField0_ &= -32769;
                this.temporaryPlaytimeRestrictions_ = null;
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.temporaryPlaytimeRestrictionsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public ParentalTemporaryPlaytimeRestrictions.Builder getTemporaryPlaytimeRestrictionsBuilder() {
                this.bitField0_ |= 32768;
                onChanged();
                return (ParentalTemporaryPlaytimeRestrictions.Builder) internalGetTemporaryPlaytimeRestrictionsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public ParentalTemporaryPlaytimeRestrictionsOrBuilder getTemporaryPlaytimeRestrictionsOrBuilder() {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.temporaryPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    return (ParentalTemporaryPlaytimeRestrictionsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.temporaryPlaytimeRestrictions_;
                return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
            }

            private SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> internalGetTemporaryPlaytimeRestrictionsFieldBuilder() {
                if (this.temporaryPlaytimeRestrictionsBuilder_ == null) {
                    this.temporaryPlaytimeRestrictionsBuilder_ = new SingleFieldBuilder<>(getTemporaryPlaytimeRestrictions(), getParentForChildren(), isClean());
                    this.temporaryPlaytimeRestrictions_ = null;
                }
                return this.temporaryPlaytimeRestrictionsBuilder_;
            }

            private void ensureExcludedStoreContentDescriptorsIsMutable() {
                if (!this.excludedStoreContentDescriptors_.isModifiable()) {
                    this.excludedStoreContentDescriptors_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.excludedStoreContentDescriptors_);
                }
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<Integer> getExcludedStoreContentDescriptorsList() {
                this.excludedStoreContentDescriptors_.makeImmutable();
                return this.excludedStoreContentDescriptors_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getExcludedStoreContentDescriptorsCount() {
                return this.excludedStoreContentDescriptors_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getExcludedStoreContentDescriptors(int i) {
                return this.excludedStoreContentDescriptors_.getInt(i);
            }

            public Builder setExcludedStoreContentDescriptors(int i, int i2) {
                ensureExcludedStoreContentDescriptorsIsMutable();
                this.excludedStoreContentDescriptors_.setInt(i, i2);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder addExcludedStoreContentDescriptors(int i) {
                ensureExcludedStoreContentDescriptorsIsMutable();
                this.excludedStoreContentDescriptors_.addInt(i);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder addAllExcludedStoreContentDescriptors(Iterable<? extends Integer> iterable) {
                ensureExcludedStoreContentDescriptorsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.excludedStoreContentDescriptors_);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearExcludedStoreContentDescriptors() {
                this.excludedStoreContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -65537;
                onChanged();
                return this;
            }

            private void ensureExcludedCommunityContentDescriptorsIsMutable() {
                if (!this.excludedCommunityContentDescriptors_.isModifiable()) {
                    this.excludedCommunityContentDescriptors_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.excludedCommunityContentDescriptors_);
                }
                this.bitField0_ |= 131072;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<Integer> getExcludedCommunityContentDescriptorsList() {
                this.excludedCommunityContentDescriptors_.makeImmutable();
                return this.excludedCommunityContentDescriptors_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getExcludedCommunityContentDescriptorsCount() {
                return this.excludedCommunityContentDescriptors_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getExcludedCommunityContentDescriptors(int i) {
                return this.excludedCommunityContentDescriptors_.getInt(i);
            }

            public Builder setExcludedCommunityContentDescriptors(int i, int i2) {
                ensureExcludedCommunityContentDescriptorsIsMutable();
                this.excludedCommunityContentDescriptors_.setInt(i, i2);
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder addExcludedCommunityContentDescriptors(int i) {
                ensureExcludedCommunityContentDescriptorsIsMutable();
                this.excludedCommunityContentDescriptors_.addInt(i);
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder addAllExcludedCommunityContentDescriptors(Iterable<? extends Integer> iterable) {
                ensureExcludedCommunityContentDescriptorsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.excludedCommunityContentDescriptors_);
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearExcludedCommunityContentDescriptors() {
                this.excludedCommunityContentDescriptors_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -131073;
                onChanged();
                return this;
            }

            private void ensureUtilityAppidsIsMutable() {
                if (!this.utilityAppids_.isModifiable()) {
                    this.utilityAppids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.utilityAppids_);
                }
                this.bitField0_ |= 262144;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public List<Integer> getUtilityAppidsList() {
                this.utilityAppids_.makeImmutable();
                return this.utilityAppids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getUtilityAppidsCount() {
                return this.utilityAppids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalSettingsOrBuilder
            public int getUtilityAppids(int i) {
                return this.utilityAppids_.getInt(i);
            }

            public Builder setUtilityAppids(int i, int i2) {
                ensureUtilityAppidsIsMutable();
                this.utilityAppids_.setInt(i, i2);
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder addUtilityAppids(int i) {
                ensureUtilityAppidsIsMutable();
                this.utilityAppids_.addInt(i);
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder addAllUtilityAppids(Iterable<? extends Integer> iterable) {
                ensureUtilityAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.utilityAppids_);
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder clearUtilityAppids() {
                this.utilityAppids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -262145;
                onChanged();
                return this;
            }
        }

        public static ParentalSettings getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalSettings> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalSettings> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalSettings getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ParentalFeatureRequest extends GeneratedMessage implements ParentalFeatureRequestOrBuilder {
        public static final int APPROVED_FIELD_NUMBER = 6;
        private static final ParentalFeatureRequest DEFAULT_INSTANCE;
        public static final int FAMILY_GROUPID_FIELD_NUMBER = 2;
        public static final int FEATURES_FIELD_NUMBER = 4;
        private static final Parser<ParentalFeatureRequest> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 3;
        public static final int STEAMID_RESPONDER_FIELD_NUMBER = 7;
        public static final int TIME_REQUESTED_FIELD_NUMBER = 5;
        public static final int TIME_RESPONDED_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private boolean approved_;
        private int bitField0_;
        private long familyGroupid_;
        private int features_;
        private byte memoizedIsInitialized;
        private long requestid_;
        private long steamidResponder_;
        private long steamid_;
        private int timeRequested_;
        private int timeResponded_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalFeatureRequest.class.getName());
            DEFAULT_INSTANCE = new ParentalFeatureRequest();
            PARSER = new AbstractParser<ParentalFeatureRequest>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequest.1
                @Override // com.google.protobuf.Parser
                public ParentalFeatureRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalFeatureRequest.newBuilder();
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

        private ParentalFeatureRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.requestid_ = 0L;
            this.familyGroupid_ = 0L;
            this.steamid_ = 0L;
            this.features_ = 0;
            this.timeRequested_ = 0;
            this.approved_ = false;
            this.steamidResponder_ = 0L;
            this.timeResponded_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalFeatureRequest() {
            this.requestid_ = 0L;
            this.familyGroupid_ = 0L;
            this.steamid_ = 0L;
            this.features_ = 0;
            this.timeRequested_ = 0;
            this.approved_ = false;
            this.steamidResponder_ = 0L;
            this.timeResponded_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalFeatureRequest_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalFeatureRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalFeatureRequest.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public long getRequestid() {
            return this.requestid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasFamilyGroupid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public long getFamilyGroupid() {
            return this.familyGroupid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasFeatures() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public int getFeatures() {
            return this.features_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasTimeRequested() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public int getTimeRequested() {
            return this.timeRequested_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasApproved() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean getApproved() {
            return this.approved_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasSteamidResponder() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public long getSteamidResponder() {
            return this.steamidResponder_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public boolean hasTimeResponded() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
        public int getTimeResponded() {
            return this.timeResponded_;
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
                codedOutputStream.writeFixed64(1, this.requestid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.familyGroupid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.features_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.timeRequested_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBool(6, this.approved_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeFixed64(7, this.steamidResponder_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(8, this.timeResponded_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.requestid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.familyGroupid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(3, this.steamid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(4, this.features_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(5, this.timeRequested_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(6, this.approved_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(7, this.steamidResponder_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(8, this.timeResponded_);
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
            if (!(obj instanceof ParentalFeatureRequest)) {
                return super.equals(obj);
            }
            ParentalFeatureRequest parentalFeatureRequest = (ParentalFeatureRequest) obj;
            if (hasRequestid() != parentalFeatureRequest.hasRequestid()) {
                return false;
            }
            if ((hasRequestid() && getRequestid() != parentalFeatureRequest.getRequestid()) || hasFamilyGroupid() != parentalFeatureRequest.hasFamilyGroupid()) {
                return false;
            }
            if ((hasFamilyGroupid() && getFamilyGroupid() != parentalFeatureRequest.getFamilyGroupid()) || hasSteamid() != parentalFeatureRequest.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != parentalFeatureRequest.getSteamid()) || hasFeatures() != parentalFeatureRequest.hasFeatures()) {
                return false;
            }
            if ((hasFeatures() && getFeatures() != parentalFeatureRequest.getFeatures()) || hasTimeRequested() != parentalFeatureRequest.hasTimeRequested()) {
                return false;
            }
            if ((hasTimeRequested() && getTimeRequested() != parentalFeatureRequest.getTimeRequested()) || hasApproved() != parentalFeatureRequest.hasApproved()) {
                return false;
            }
            if ((hasApproved() && getApproved() != parentalFeatureRequest.getApproved()) || hasSteamidResponder() != parentalFeatureRequest.hasSteamidResponder()) {
                return false;
            }
            if ((!hasSteamidResponder() || getSteamidResponder() == parentalFeatureRequest.getSteamidResponder()) && hasTimeResponded() == parentalFeatureRequest.hasTimeResponded()) {
                return (!hasTimeResponded() || getTimeResponded() == parentalFeatureRequest.getTimeResponded()) && getUnknownFields().equals(parentalFeatureRequest.getUnknownFields());
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
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRequestid());
            }
            if (hasFamilyGroupid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getFamilyGroupid());
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasFeatures()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getFeatures();
            }
            if (hasTimeRequested()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getTimeRequested();
            }
            if (hasApproved()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getApproved());
            }
            if (hasSteamidResponder()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashLong(getSteamidResponder());
            }
            if (hasTimeResponded()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getTimeResponded();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalFeatureRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalFeatureRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalFeatureRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalFeatureRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalFeatureRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalFeatureRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalFeatureRequest parseFrom(InputStream inputStream) throws IOException {
            return (ParentalFeatureRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalFeatureRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalFeatureRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalFeatureRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalFeatureRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalFeatureRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalFeatureRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalFeatureRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalFeatureRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalFeatureRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalFeatureRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalFeatureRequest parentalFeatureRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalFeatureRequest);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalFeatureRequestOrBuilder {
            private boolean approved_;
            private int bitField0_;
            private long familyGroupid_;
            private int features_;
            private long requestid_;
            private long steamidResponder_;
            private long steamid_;
            private int timeRequested_;
            private int timeResponded_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalFeatureRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalFeatureRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalFeatureRequest.class, Builder.class);
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
                this.requestid_ = 0L;
                this.familyGroupid_ = 0L;
                this.steamid_ = 0L;
                this.features_ = 0;
                this.timeRequested_ = 0;
                this.approved_ = false;
                this.steamidResponder_ = 0L;
                this.timeResponded_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalFeatureRequest_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalFeatureRequest getDefaultInstanceForType() {
                return ParentalFeatureRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalFeatureRequest build() {
                ParentalFeatureRequest parentalFeatureRequestBuildPartial = buildPartial();
                if (parentalFeatureRequestBuildPartial.isInitialized()) {
                    return parentalFeatureRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalFeatureRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalFeatureRequest buildPartial() {
                ParentalFeatureRequest parentalFeatureRequest = new ParentalFeatureRequest(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalFeatureRequest);
                }
                onBuilt();
                return parentalFeatureRequest;
            }

            private void buildPartial0(ParentalFeatureRequest parentalFeatureRequest) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    parentalFeatureRequest.requestid_ = this.requestid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    parentalFeatureRequest.familyGroupid_ = this.familyGroupid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    parentalFeatureRequest.steamid_ = this.steamid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    parentalFeatureRequest.features_ = this.features_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    parentalFeatureRequest.timeRequested_ = this.timeRequested_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    parentalFeatureRequest.approved_ = this.approved_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    parentalFeatureRequest.steamidResponder_ = this.steamidResponder_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    parentalFeatureRequest.timeResponded_ = this.timeResponded_;
                    i |= 128;
                }
                parentalFeatureRequest.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalFeatureRequest) {
                    return mergeFrom((ParentalFeatureRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalFeatureRequest parentalFeatureRequest) {
                if (parentalFeatureRequest == ParentalFeatureRequest.getDefaultInstance()) {
                    return this;
                }
                if (parentalFeatureRequest.hasRequestid()) {
                    setRequestid(parentalFeatureRequest.getRequestid());
                }
                if (parentalFeatureRequest.hasFamilyGroupid()) {
                    setFamilyGroupid(parentalFeatureRequest.getFamilyGroupid());
                }
                if (parentalFeatureRequest.hasSteamid()) {
                    setSteamid(parentalFeatureRequest.getSteamid());
                }
                if (parentalFeatureRequest.hasFeatures()) {
                    setFeatures(parentalFeatureRequest.getFeatures());
                }
                if (parentalFeatureRequest.hasTimeRequested()) {
                    setTimeRequested(parentalFeatureRequest.getTimeRequested());
                }
                if (parentalFeatureRequest.hasApproved()) {
                    setApproved(parentalFeatureRequest.getApproved());
                }
                if (parentalFeatureRequest.hasSteamidResponder()) {
                    setSteamidResponder(parentalFeatureRequest.getSteamidResponder());
                }
                if (parentalFeatureRequest.hasTimeResponded()) {
                    setTimeResponded(parentalFeatureRequest.getTimeResponded());
                }
                mergeUnknownFields(parentalFeatureRequest.getUnknownFields());
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
                                    this.requestid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.familyGroupid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.features_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.timeRequested_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.approved_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                } else if (tag == 57) {
                                    this.steamidResponder_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 64;
                                } else if (tag == 64) {
                                    this.timeResponded_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -2;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasFamilyGroupid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public long getFamilyGroupid() {
                return this.familyGroupid_;
            }

            public Builder setFamilyGroupid(long j) {
                this.familyGroupid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFamilyGroupid() {
                this.bitField0_ &= -3;
                this.familyGroupid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -5;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasFeatures() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public int getFeatures() {
                return this.features_;
            }

            public Builder setFeatures(int i) {
                this.features_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearFeatures() {
                this.bitField0_ &= -9;
                this.features_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasTimeRequested() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public int getTimeRequested() {
                return this.timeRequested_;
            }

            public Builder setTimeRequested(int i) {
                this.timeRequested_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearTimeRequested() {
                this.bitField0_ &= -17;
                this.timeRequested_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasApproved() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean getApproved() {
                return this.approved_;
            }

            public Builder setApproved(boolean z) {
                this.approved_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearApproved() {
                this.bitField0_ &= -33;
                this.approved_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasSteamidResponder() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public long getSteamidResponder() {
                return this.steamidResponder_;
            }

            public Builder setSteamidResponder(long j) {
                this.steamidResponder_ = j;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSteamidResponder() {
                this.bitField0_ &= -65;
                this.steamidResponder_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public boolean hasTimeResponded() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder
            public int getTimeResponded() {
                return this.timeResponded_;
            }

            public Builder setTimeResponded(int i) {
                this.timeResponded_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearTimeResponded() {
                this.bitField0_ &= -129;
                this.timeResponded_ = 0;
                onChanged();
                return this;
            }
        }

        public static ParentalFeatureRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalFeatureRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalFeatureRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalFeatureRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class ParentalPlaytimeRequest extends GeneratedMessage implements ParentalPlaytimeRequestOrBuilder {
        public static final int APPROVED_FIELD_NUMBER = 7;
        public static final int CURRENT_PLAYTIME_RESTRICTIONS_FIELD_NUMBER = 4;
        private static final ParentalPlaytimeRequest DEFAULT_INSTANCE;
        public static final int FAMILY_GROUPID_FIELD_NUMBER = 2;
        private static final Parser<ParentalPlaytimeRequest> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 1;
        public static final int RESTRICTIONS_APPROVED_FIELD_NUMBER = 10;
        public static final int STEAMID_FIELD_NUMBER = 3;
        public static final int STEAMID_RESPONDER_FIELD_NUMBER = 8;
        public static final int TIME_EXPIRES_FIELD_NUMBER = 5;
        public static final int TIME_REQUESTED_FIELD_NUMBER = 6;
        public static final int TIME_RESPONDED_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private boolean approved_;
        private int bitField0_;
        private ParentalPlaytimeDay currentPlaytimeRestrictions_;
        private long familyGroupid_;
        private byte memoizedIsInitialized;
        private long requestid_;
        private ParentalTemporaryPlaytimeRestrictions restrictionsApproved_;
        private long steamidResponder_;
        private long steamid_;
        private int timeExpires_;
        private int timeRequested_;
        private int timeResponded_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ParentalPlaytimeRequest.class.getName());
            DEFAULT_INSTANCE = new ParentalPlaytimeRequest();
            PARSER = new AbstractParser<ParentalPlaytimeRequest>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequest.1
                @Override // com.google.protobuf.Parser
                public ParentalPlaytimeRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = ParentalPlaytimeRequest.newBuilder();
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

        private ParentalPlaytimeRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.requestid_ = 0L;
            this.familyGroupid_ = 0L;
            this.steamid_ = 0L;
            this.timeExpires_ = 0;
            this.timeRequested_ = 0;
            this.approved_ = false;
            this.steamidResponder_ = 0L;
            this.timeResponded_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private ParentalPlaytimeRequest() {
            this.requestid_ = 0L;
            this.familyGroupid_ = 0L;
            this.steamid_ = 0L;
            this.timeExpires_ = 0;
            this.timeRequested_ = 0;
            this.approved_ = false;
            this.steamidResponder_ = 0L;
            this.timeResponded_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRequest_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalPlaytimeRequest.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public long getRequestid() {
            return this.requestid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasFamilyGroupid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public long getFamilyGroupid() {
            return this.familyGroupid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasCurrentPlaytimeRestrictions() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public ParentalPlaytimeDay getCurrentPlaytimeRestrictions() {
            ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
            return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public ParentalPlaytimeDayOrBuilder getCurrentPlaytimeRestrictionsOrBuilder() {
            ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
            return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasTimeExpires() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public int getTimeExpires() {
            return this.timeExpires_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasTimeRequested() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public int getTimeRequested() {
            return this.timeRequested_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasApproved() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean getApproved() {
            return this.approved_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasSteamidResponder() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public long getSteamidResponder() {
            return this.steamidResponder_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasTimeResponded() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public int getTimeResponded() {
            return this.timeResponded_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public boolean hasRestrictionsApproved() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public ParentalTemporaryPlaytimeRestrictions getRestrictionsApproved() {
            ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
            return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
        public ParentalTemporaryPlaytimeRestrictionsOrBuilder getRestrictionsApprovedOrBuilder() {
            ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
            return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
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
                codedOutputStream.writeFixed64(1, this.requestid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.familyGroupid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeMessage(4, getCurrentPlaytimeRestrictions());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.timeExpires_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.timeRequested_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.approved_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeFixed64(8, this.steamidResponder_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(9, this.timeResponded_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeMessage(10, getRestrictionsApproved());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.requestid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.familyGroupid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(3, this.steamid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(4, getCurrentPlaytimeRestrictions());
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(5, this.timeExpires_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(6, this.timeRequested_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(7, this.approved_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(8, this.steamidResponder_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(9, this.timeResponded_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(10, getRestrictionsApproved());
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
            if (!(obj instanceof ParentalPlaytimeRequest)) {
                return super.equals(obj);
            }
            ParentalPlaytimeRequest parentalPlaytimeRequest = (ParentalPlaytimeRequest) obj;
            if (hasRequestid() != parentalPlaytimeRequest.hasRequestid()) {
                return false;
            }
            if ((hasRequestid() && getRequestid() != parentalPlaytimeRequest.getRequestid()) || hasFamilyGroupid() != parentalPlaytimeRequest.hasFamilyGroupid()) {
                return false;
            }
            if ((hasFamilyGroupid() && getFamilyGroupid() != parentalPlaytimeRequest.getFamilyGroupid()) || hasSteamid() != parentalPlaytimeRequest.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != parentalPlaytimeRequest.getSteamid()) || hasCurrentPlaytimeRestrictions() != parentalPlaytimeRequest.hasCurrentPlaytimeRestrictions()) {
                return false;
            }
            if ((hasCurrentPlaytimeRestrictions() && !getCurrentPlaytimeRestrictions().equals(parentalPlaytimeRequest.getCurrentPlaytimeRestrictions())) || hasTimeExpires() != parentalPlaytimeRequest.hasTimeExpires()) {
                return false;
            }
            if ((hasTimeExpires() && getTimeExpires() != parentalPlaytimeRequest.getTimeExpires()) || hasTimeRequested() != parentalPlaytimeRequest.hasTimeRequested()) {
                return false;
            }
            if ((hasTimeRequested() && getTimeRequested() != parentalPlaytimeRequest.getTimeRequested()) || hasApproved() != parentalPlaytimeRequest.hasApproved()) {
                return false;
            }
            if ((hasApproved() && getApproved() != parentalPlaytimeRequest.getApproved()) || hasSteamidResponder() != parentalPlaytimeRequest.hasSteamidResponder()) {
                return false;
            }
            if ((hasSteamidResponder() && getSteamidResponder() != parentalPlaytimeRequest.getSteamidResponder()) || hasTimeResponded() != parentalPlaytimeRequest.hasTimeResponded()) {
                return false;
            }
            if ((!hasTimeResponded() || getTimeResponded() == parentalPlaytimeRequest.getTimeResponded()) && hasRestrictionsApproved() == parentalPlaytimeRequest.hasRestrictionsApproved()) {
                return (!hasRestrictionsApproved() || getRestrictionsApproved().equals(parentalPlaytimeRequest.getRestrictionsApproved())) && getUnknownFields().equals(parentalPlaytimeRequest.getUnknownFields());
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
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRequestid());
            }
            if (hasFamilyGroupid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getFamilyGroupid());
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasCurrentPlaytimeRestrictions()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getCurrentPlaytimeRestrictions().hashCode();
            }
            if (hasTimeExpires()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getTimeExpires();
            }
            if (hasTimeRequested()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getTimeRequested();
            }
            if (hasApproved()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getApproved());
            }
            if (hasSteamidResponder()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashLong(getSteamidResponder());
            }
            if (hasTimeResponded()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getTimeResponded();
            }
            if (hasRestrictionsApproved()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getRestrictionsApproved().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static ParentalPlaytimeRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ParentalPlaytimeRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ParentalPlaytimeRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ParentalPlaytimeRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParentalPlaytimeRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ParentalPlaytimeRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParentalPlaytimeRequest parseFrom(InputStream inputStream) throws IOException {
            return (ParentalPlaytimeRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static ParentalPlaytimeRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeRequest) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalPlaytimeRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParentalPlaytimeRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ParentalPlaytimeRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeRequest) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ParentalPlaytimeRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParentalPlaytimeRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static ParentalPlaytimeRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParentalPlaytimeRequest) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ParentalPlaytimeRequest parentalPlaytimeRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(parentalPlaytimeRequest);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParentalPlaytimeRequestOrBuilder {
            private boolean approved_;
            private int bitField0_;
            private SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> currentPlaytimeRestrictionsBuilder_;
            private ParentalPlaytimeDay currentPlaytimeRestrictions_;
            private long familyGroupid_;
            private long requestid_;
            private SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> restrictionsApprovedBuilder_;
            private ParentalTemporaryPlaytimeRestrictions restrictionsApproved_;
            private long steamidResponder_;
            private long steamid_;
            private int timeExpires_;
            private int timeRequested_;
            private int timeResponded_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ParentalPlaytimeRequest.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetCurrentPlaytimeRestrictionsFieldBuilder();
                    internalGetRestrictionsApprovedFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.requestid_ = 0L;
                this.familyGroupid_ = 0L;
                this.steamid_ = 0L;
                this.currentPlaytimeRestrictions_ = null;
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.currentPlaytimeRestrictionsBuilder_ = null;
                }
                this.timeExpires_ = 0;
                this.timeRequested_ = 0;
                this.approved_ = false;
                this.steamidResponder_ = 0L;
                this.timeResponded_ = 0;
                this.restrictionsApproved_ = null;
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder2 = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder2 != null) {
                    singleFieldBuilder2.dispose();
                    this.restrictionsApprovedBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalObjects.internal_static_ParentalPlaytimeRequest_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParentalPlaytimeRequest getDefaultInstanceForType() {
                return ParentalPlaytimeRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalPlaytimeRequest build() {
                ParentalPlaytimeRequest parentalPlaytimeRequestBuildPartial = buildPartial();
                if (parentalPlaytimeRequestBuildPartial.isInitialized()) {
                    return parentalPlaytimeRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) parentalPlaytimeRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParentalPlaytimeRequest buildPartial() {
                ParentalPlaytimeRequest parentalPlaytimeRequest = new ParentalPlaytimeRequest(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(parentalPlaytimeRequest);
                }
                onBuilt();
                return parentalPlaytimeRequest;
            }

            private void buildPartial0(ParentalPlaytimeRequest parentalPlaytimeRequest) {
                int i;
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions;
                ParentalPlaytimeDay parentalPlaytimeDay;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    parentalPlaytimeRequest.requestid_ = this.requestid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    parentalPlaytimeRequest.familyGroupid_ = this.familyGroupid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    parentalPlaytimeRequest.steamid_ = this.steamid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
                    } else {
                        parentalPlaytimeDay = (ParentalPlaytimeDay) singleFieldBuilder.build();
                    }
                    parentalPlaytimeRequest.currentPlaytimeRestrictions_ = parentalPlaytimeDay;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    parentalPlaytimeRequest.timeExpires_ = this.timeExpires_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    parentalPlaytimeRequest.timeRequested_ = this.timeRequested_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    parentalPlaytimeRequest.approved_ = this.approved_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    parentalPlaytimeRequest.steamidResponder_ = this.steamidResponder_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    parentalPlaytimeRequest.timeResponded_ = this.timeResponded_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder2 = this.restrictionsApprovedBuilder_;
                    if (singleFieldBuilder2 == null) {
                        parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
                    } else {
                        parentalTemporaryPlaytimeRestrictions = (ParentalTemporaryPlaytimeRestrictions) singleFieldBuilder2.build();
                    }
                    parentalPlaytimeRequest.restrictionsApproved_ = parentalTemporaryPlaytimeRestrictions;
                    i |= 512;
                }
                parentalPlaytimeRequest.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ParentalPlaytimeRequest) {
                    return mergeFrom((ParentalPlaytimeRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ParentalPlaytimeRequest parentalPlaytimeRequest) {
                if (parentalPlaytimeRequest == ParentalPlaytimeRequest.getDefaultInstance()) {
                    return this;
                }
                if (parentalPlaytimeRequest.hasRequestid()) {
                    setRequestid(parentalPlaytimeRequest.getRequestid());
                }
                if (parentalPlaytimeRequest.hasFamilyGroupid()) {
                    setFamilyGroupid(parentalPlaytimeRequest.getFamilyGroupid());
                }
                if (parentalPlaytimeRequest.hasSteamid()) {
                    setSteamid(parentalPlaytimeRequest.getSteamid());
                }
                if (parentalPlaytimeRequest.hasCurrentPlaytimeRestrictions()) {
                    mergeCurrentPlaytimeRestrictions(parentalPlaytimeRequest.getCurrentPlaytimeRestrictions());
                }
                if (parentalPlaytimeRequest.hasTimeExpires()) {
                    setTimeExpires(parentalPlaytimeRequest.getTimeExpires());
                }
                if (parentalPlaytimeRequest.hasTimeRequested()) {
                    setTimeRequested(parentalPlaytimeRequest.getTimeRequested());
                }
                if (parentalPlaytimeRequest.hasApproved()) {
                    setApproved(parentalPlaytimeRequest.getApproved());
                }
                if (parentalPlaytimeRequest.hasSteamidResponder()) {
                    setSteamidResponder(parentalPlaytimeRequest.getSteamidResponder());
                }
                if (parentalPlaytimeRequest.hasTimeResponded()) {
                    setTimeResponded(parentalPlaytimeRequest.getTimeResponded());
                }
                if (parentalPlaytimeRequest.hasRestrictionsApproved()) {
                    mergeRestrictionsApproved(parentalPlaytimeRequest.getRestrictionsApproved());
                }
                mergeUnknownFields(parentalPlaytimeRequest.getUnknownFields());
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
                                case 9:
                                    this.requestid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                    break;
                                case 17:
                                    this.familyGroupid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                    break;
                                case 25:
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    codedInputStream.readMessage(internalGetCurrentPlaytimeRestrictionsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.timeExpires_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.timeRequested_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.approved_ = codedInputStream.readBool();
                                    this.bitField0_ |= 64;
                                    break;
                                case 65:
                                    this.steamidResponder_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 128;
                                    break;
                                case 72:
                                    this.timeResponded_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 256;
                                    break;
                                case 82:
                                    codedInputStream.readMessage(internalGetRestrictionsApprovedFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -2;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasFamilyGroupid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public long getFamilyGroupid() {
                return this.familyGroupid_;
            }

            public Builder setFamilyGroupid(long j) {
                this.familyGroupid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFamilyGroupid() {
                this.bitField0_ &= -3;
                this.familyGroupid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -5;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasCurrentPlaytimeRestrictions() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public ParentalPlaytimeDay getCurrentPlaytimeRestrictions() {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
                    return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
                }
                return (ParentalPlaytimeDay) singleFieldBuilder.getMessage();
            }

            public Builder setCurrentPlaytimeRestrictions(ParentalPlaytimeDay parentalPlaytimeDay) {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalPlaytimeDay.getClass();
                    this.currentPlaytimeRestrictions_ = parentalPlaytimeDay;
                } else {
                    singleFieldBuilder.setMessage(parentalPlaytimeDay);
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder setCurrentPlaytimeRestrictions(ParentalPlaytimeDay.Builder builder) {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    this.currentPlaytimeRestrictions_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder mergeCurrentPlaytimeRestrictions(ParentalPlaytimeDay parentalPlaytimeDay) {
                ParentalPlaytimeDay parentalPlaytimeDay2;
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0 && (parentalPlaytimeDay2 = this.currentPlaytimeRestrictions_) != null && parentalPlaytimeDay2 != ParentalPlaytimeDay.getDefaultInstance()) {
                        getCurrentPlaytimeRestrictionsBuilder().mergeFrom(parentalPlaytimeDay);
                    } else {
                        this.currentPlaytimeRestrictions_ = parentalPlaytimeDay;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalPlaytimeDay);
                }
                if (this.currentPlaytimeRestrictions_ != null) {
                    this.bitField0_ |= 8;
                    onChanged();
                }
                return this;
            }

            public Builder clearCurrentPlaytimeRestrictions() {
                this.bitField0_ &= -9;
                this.currentPlaytimeRestrictions_ = null;
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.currentPlaytimeRestrictionsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public ParentalPlaytimeDay.Builder getCurrentPlaytimeRestrictionsBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (ParentalPlaytimeDay.Builder) internalGetCurrentPlaytimeRestrictionsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public ParentalPlaytimeDayOrBuilder getCurrentPlaytimeRestrictionsOrBuilder() {
                SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    return (ParentalPlaytimeDayOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
                return parentalPlaytimeDay == null ? ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
            }

            private SingleFieldBuilder<ParentalPlaytimeDay, ParentalPlaytimeDay.Builder, ParentalPlaytimeDayOrBuilder> internalGetCurrentPlaytimeRestrictionsFieldBuilder() {
                if (this.currentPlaytimeRestrictionsBuilder_ == null) {
                    this.currentPlaytimeRestrictionsBuilder_ = new SingleFieldBuilder<>(getCurrentPlaytimeRestrictions(), getParentForChildren(), isClean());
                    this.currentPlaytimeRestrictions_ = null;
                }
                return this.currentPlaytimeRestrictionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasTimeExpires() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public int getTimeExpires() {
                return this.timeExpires_;
            }

            public Builder setTimeExpires(int i) {
                this.timeExpires_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearTimeExpires() {
                this.bitField0_ &= -17;
                this.timeExpires_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasTimeRequested() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public int getTimeRequested() {
                return this.timeRequested_;
            }

            public Builder setTimeRequested(int i) {
                this.timeRequested_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearTimeRequested() {
                this.bitField0_ &= -33;
                this.timeRequested_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasApproved() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean getApproved() {
                return this.approved_;
            }

            public Builder setApproved(boolean z) {
                this.approved_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearApproved() {
                this.bitField0_ &= -65;
                this.approved_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasSteamidResponder() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public long getSteamidResponder() {
                return this.steamidResponder_;
            }

            public Builder setSteamidResponder(long j) {
                this.steamidResponder_ = j;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearSteamidResponder() {
                this.bitField0_ &= -129;
                this.steamidResponder_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasTimeResponded() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public int getTimeResponded() {
                return this.timeResponded_;
            }

            public Builder setTimeResponded(int i) {
                this.timeResponded_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearTimeResponded() {
                this.bitField0_ &= -257;
                this.timeResponded_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public boolean hasRestrictionsApproved() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public ParentalTemporaryPlaytimeRestrictions getRestrictionsApproved() {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
                    return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
                }
                return (ParentalTemporaryPlaytimeRestrictions) singleFieldBuilder.getMessage();
            }

            public Builder setRestrictionsApproved(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    parentalTemporaryPlaytimeRestrictions.getClass();
                    this.restrictionsApproved_ = parentalTemporaryPlaytimeRestrictions;
                } else {
                    singleFieldBuilder.setMessage(parentalTemporaryPlaytimeRestrictions);
                }
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder setRestrictionsApproved(ParentalTemporaryPlaytimeRestrictions.Builder builder) {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    this.restrictionsApproved_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder mergeRestrictionsApproved(ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions2;
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 512) != 0 && (parentalTemporaryPlaytimeRestrictions2 = this.restrictionsApproved_) != null && parentalTemporaryPlaytimeRestrictions2 != ParentalTemporaryPlaytimeRestrictions.getDefaultInstance()) {
                        getRestrictionsApprovedBuilder().mergeFrom(parentalTemporaryPlaytimeRestrictions);
                    } else {
                        this.restrictionsApproved_ = parentalTemporaryPlaytimeRestrictions;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalTemporaryPlaytimeRestrictions);
                }
                if (this.restrictionsApproved_ != null) {
                    this.bitField0_ |= 512;
                    onChanged();
                }
                return this;
            }

            public Builder clearRestrictionsApproved() {
                this.bitField0_ &= -513;
                this.restrictionsApproved_ = null;
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.restrictionsApprovedBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public ParentalTemporaryPlaytimeRestrictions.Builder getRestrictionsApprovedBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return (ParentalTemporaryPlaytimeRestrictions.Builder) internalGetRestrictionsApprovedFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder
            public ParentalTemporaryPlaytimeRestrictionsOrBuilder getRestrictionsApprovedOrBuilder() {
                SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder != null) {
                    return (ParentalTemporaryPlaytimeRestrictionsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
                return parentalTemporaryPlaytimeRestrictions == null ? ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
            }

            private SingleFieldBuilder<ParentalTemporaryPlaytimeRestrictions, ParentalTemporaryPlaytimeRestrictions.Builder, ParentalTemporaryPlaytimeRestrictionsOrBuilder> internalGetRestrictionsApprovedFieldBuilder() {
                if (this.restrictionsApprovedBuilder_ == null) {
                    this.restrictionsApprovedBuilder_ = new SingleFieldBuilder<>(getRestrictionsApproved(), getParentForChildren(), isClean());
                    this.restrictionsApproved_ = null;
                }
                return this.restrictionsApprovedBuilder_;
            }
        }

        public static ParentalPlaytimeRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ParentalPlaytimeRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParentalPlaytimeRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParentalPlaytimeRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
