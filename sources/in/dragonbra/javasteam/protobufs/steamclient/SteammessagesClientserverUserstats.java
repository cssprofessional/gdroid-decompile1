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
public final class SteammessagesClientserverUserstats {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetUserStatsResponse_Stats_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetUserStatsResponse_Stats_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetUserStatsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetUserStatsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetUserStats_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetUserStats_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStatsUpdated_Updated_Stats_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStatsUpdated_Updated_Stats_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStatsUpdated_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStatsUpdated_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStoreUserStats2_Stats_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStoreUserStats2_Stats_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStoreUserStats2_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStoreUserStats2_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStoreUserStatsResponse_Stats_Failed_Validation_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStoreUserStatsResponse_Stats_Failed_Validation_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStoreUserStatsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStoreUserStatsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStoreUserStats_Stats_To_Store_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStoreUserStats_Stats_To_Store_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStoreUserStats_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStoreUserStats_fieldAccessorTable;

    public interface CMsgClientGetUserStatsOrBuilder extends MessageOrBuilder {
        int getCrcStats();

        long getGameId();

        int getSchemaLocalVersion();

        long getSteamIdForUser();

        boolean hasCrcStats();

        boolean hasGameId();

        boolean hasSchemaLocalVersion();

        boolean hasSteamIdForUser();
    }

    public interface CMsgClientGetUserStatsResponseOrBuilder extends MessageOrBuilder {
        CMsgClientGetUserStatsResponse.Achievement_Blocks getAchievementBlocks(int i);

        int getAchievementBlocksCount();

        List<CMsgClientGetUserStatsResponse.Achievement_Blocks> getAchievementBlocksList();

        CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder getAchievementBlocksOrBuilder(int i);

        List<? extends CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder> getAchievementBlocksOrBuilderList();

        int getCrcStats();

        int getEresult();

        long getGameId();

        ByteString getSchema();

        CMsgClientGetUserStatsResponse.Stats getStats(int i);

        int getStatsCount();

        List<CMsgClientGetUserStatsResponse.Stats> getStatsList();

        CMsgClientGetUserStatsResponse.StatsOrBuilder getStatsOrBuilder(int i);

        List<? extends CMsgClientGetUserStatsResponse.StatsOrBuilder> getStatsOrBuilderList();

        boolean hasCrcStats();

        boolean hasEresult();

        boolean hasGameId();

        boolean hasSchema();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverUserstats() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverUserstats.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nWin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_userstats.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"u\n\u0016CMsgClientGetUserStats\u0012\u000f\n\u0007game_id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tcrc_stats\u0018\u0002 \u0001(\r\u0012\u001c\n\u0014schema_local_version\u0018\u0003 \u0001(\u0005\u0012\u0019\n\u0011steam_id_for_user\u0018\u0004 \u0001(\u0006\"ß\u0002\n\u001eCMsgClientGetUserStatsResponse\u0012\u000f\n\u0007game_id\u0018\u0001 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\u0005:\u00012\u0012\u0011\n\tcrc_stats\u0018\u0003 \u0001(\r\u0012\u000e\n\u0006schema\u0018\u0004 \u0001(\f\u00124\n\u0005stats\u0018\u0005 \u0003(\u000b2%.CMsgClientGetUserStatsResponse.Stats\u0012N\n\u0012achievement_blocks\u0018\u0006 \u0003(\u000b22.CMsgClientGetUserStatsResponse.Achievement_Blocks\u001a,\n\u0005Stats\u0012\u000f\n\u0007stat_id\u0018\u0001 \u0001(\r\u0012\u0012\n\nstat_value\u0018\u0002 \u0001(\r\u001aA\n\u0012Achievement_Blocks\u0012\u0016\n\u000eachievement_id\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bunlock_time\u0018\u0002 \u0003(\u0007\"\u009a\u0002\n CMsgClientStoreUserStatsResponse\u0012\u000f\n\u0007game_id\u0018\u0001 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\u0005:\u00012\u0012\u0011\n\tcrc_stats\u0018\u0003 \u0001(\r\u0012Z\n\u0017stats_failed_validation\u0018\u0004 \u0003(\u000b29.CMsgClientStoreUserStatsResponse.Stats_Failed_Validation\u0012\u0019\n\u0011stats_out_of_date\u0018\u0005 \u0001(\b\u001aG\n\u0017Stats_Failed_Validation\u0012\u000f\n\u0007stat_id\u0018\u0001 \u0001(\r\u0012\u001b\n\u0013reverted_stat_value\u0018\u0002 \u0001(\r\"è\u0001\n\u0019CMsgClientStoreUserStats2\u0012\u000f\n\u0007game_id\u0018\u0001 \u0001(\u0006\u0012\u0017\n\u000fsettor_steam_id\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000fsettee_steam_id\u0018\u0003 \u0001(\u0006\u0012\u0011\n\tcrc_stats\u0018\u0004 \u0001(\r\u0012\u0016\n\u000eexplicit_reset\u0018\u0005 \u0001(\b\u0012/\n\u0005stats\u0018\u0006 \u0003(\u000b2 .CMsgClientStoreUserStats2.Stats\u001a,\n\u0005Stats\u0012\u000f\n\u0007stat_id\u0018\u0001 \u0001(\r\u0012\u0012\n\nstat_value\u0018\u0002 \u0001(\r\"Â\u0001\n\u0016CMsgClientStatsUpdated\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007game_id\u0018\u0002 \u0001(\u0006\u0012\u0011\n\tcrc_stats\u0018\u0003 \u0001(\r\u0012<\n\rupdated_stats\u0018\u0004 \u0003(\u000b2%.CMsgClientStatsUpdated.Updated_Stats\u001a4\n\rUpdated_Stats\u0012\u000f\n\u0007stat_id\u0018\u0001 \u0001(\r\u0012\u0012\n\nstat_value\u0018\u0002 \u0001(\r\"¼\u0001\n\u0018CMsgClientStoreUserStats\u0012\u000f\n\u0007game_id\u0018\u0001 \u0001(\u0006\u0012\u0016\n\u000eexplicit_reset\u0018\u0002 \u0001(\b\u0012@\n\u000estats_to_store\u0018\u0003 \u0003(\u000b2(.CMsgClientStoreUserStats.Stats_To_Store\u001a5\n\u000eStats_To_Store\u0012\u000f\n\u0007stat_id\u0018\u0001 \u0001(\r\u0012\u0012\n\nstat_value\u0018\u0002 \u0001(\rB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientGetUserStats_descriptor = descriptor2;
        internal_static_CMsgClientGetUserStats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"GameId", "CrcStats", "SchemaLocalVersion", "SteamIdForUser"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientGetUserStatsResponse_descriptor = descriptor3;
        internal_static_CMsgClientGetUserStatsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"GameId", "Eresult", "CrcStats", "Schema", "Stats", "AchievementBlocks"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        internal_static_CMsgClientGetUserStatsResponse_Stats_descriptor = descriptor4;
        internal_static_CMsgClientGetUserStatsResponse_Stats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"StatId", "StatValue"});
        Descriptors.Descriptor descriptor5 = descriptor3.getNestedTypes().get(1);
        internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_descriptor = descriptor5;
        internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"AchievementId", "UnlockTime"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientStoreUserStatsResponse_descriptor = descriptor6;
        internal_static_CMsgClientStoreUserStatsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"GameId", "Eresult", "CrcStats", "StatsFailedValidation", "StatsOutOfDate"});
        Descriptors.Descriptor descriptor7 = descriptor6.getNestedTypes().get(0);
        internal_static_CMsgClientStoreUserStatsResponse_Stats_Failed_Validation_descriptor = descriptor7;
        internal_static_CMsgClientStoreUserStatsResponse_Stats_Failed_Validation_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"StatId", "RevertedStatValue"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientStoreUserStats2_descriptor = descriptor8;
        internal_static_CMsgClientStoreUserStats2_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"GameId", "SettorSteamId", "SetteeSteamId", "CrcStats", "ExplicitReset", "Stats"});
        Descriptors.Descriptor descriptor9 = descriptor8.getNestedTypes().get(0);
        internal_static_CMsgClientStoreUserStats2_Stats_descriptor = descriptor9;
        internal_static_CMsgClientStoreUserStats2_Stats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"StatId", "StatValue"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientStatsUpdated_descriptor = descriptor10;
        internal_static_CMsgClientStatsUpdated_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"SteamId", "GameId", "CrcStats", "UpdatedStats"});
        Descriptors.Descriptor descriptor11 = descriptor10.getNestedTypes().get(0);
        internal_static_CMsgClientStatsUpdated_Updated_Stats_descriptor = descriptor11;
        internal_static_CMsgClientStatsUpdated_Updated_Stats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"StatId", "StatValue"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientStoreUserStats_descriptor = descriptor12;
        internal_static_CMsgClientStoreUserStats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"GameId", "ExplicitReset", "StatsToStore"});
        Descriptors.Descriptor descriptor13 = descriptor12.getNestedTypes().get(0);
        internal_static_CMsgClientStoreUserStats_Stats_To_Store_descriptor = descriptor13;
        internal_static_CMsgClientStoreUserStats_Stats_To_Store_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"StatId", "StatValue"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientGetUserStats extends GeneratedMessage implements CMsgClientGetUserStatsOrBuilder {
        public static final int CRC_STATS_FIELD_NUMBER = 2;
        private static final CMsgClientGetUserStats DEFAULT_INSTANCE;
        public static final int GAME_ID_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientGetUserStats> PARSER;
        public static final int SCHEMA_LOCAL_VERSION_FIELD_NUMBER = 3;
        public static final int STEAM_ID_FOR_USER_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int crcStats_;
        private long gameId_;
        private byte memoizedIsInitialized;
        private int schemaLocalVersion_;
        private long steamIdForUser_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientGetUserStats.class.getName());
            DEFAULT_INSTANCE = new CMsgClientGetUserStats();
            PARSER = new AbstractParser<CMsgClientGetUserStats>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStats.1
                @Override // com.google.protobuf.Parser
                public CMsgClientGetUserStats parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientGetUserStats.newBuilder();
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

        private CMsgClientGetUserStats(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.gameId_ = 0L;
            this.crcStats_ = 0;
            this.schemaLocalVersion_ = 0;
            this.steamIdForUser_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientGetUserStats() {
            this.gameId_ = 0L;
            this.crcStats_ = 0;
            this.schemaLocalVersion_ = 0;
            this.steamIdForUser_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStats_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStats_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetUserStats.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public boolean hasGameId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public long getGameId() {
            return this.gameId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public boolean hasCrcStats() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public int getCrcStats() {
            return this.crcStats_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public boolean hasSchemaLocalVersion() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public int getSchemaLocalVersion() {
            return this.schemaLocalVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public boolean hasSteamIdForUser() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
        public long getSteamIdForUser() {
            return this.steamIdForUser_;
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
                codedOutputStream.writeFixed64(1, this.gameId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.crcStats_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.schemaLocalVersion_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(4, this.steamIdForUser_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.gameId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.crcStats_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(3, this.schemaLocalVersion_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(4, this.steamIdForUser_);
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
            if (!(obj instanceof CMsgClientGetUserStats)) {
                return super.equals(obj);
            }
            CMsgClientGetUserStats cMsgClientGetUserStats = (CMsgClientGetUserStats) obj;
            if (hasGameId() != cMsgClientGetUserStats.hasGameId()) {
                return false;
            }
            if ((hasGameId() && getGameId() != cMsgClientGetUserStats.getGameId()) || hasCrcStats() != cMsgClientGetUserStats.hasCrcStats()) {
                return false;
            }
            if ((hasCrcStats() && getCrcStats() != cMsgClientGetUserStats.getCrcStats()) || hasSchemaLocalVersion() != cMsgClientGetUserStats.hasSchemaLocalVersion()) {
                return false;
            }
            if ((!hasSchemaLocalVersion() || getSchemaLocalVersion() == cMsgClientGetUserStats.getSchemaLocalVersion()) && hasSteamIdForUser() == cMsgClientGetUserStats.hasSteamIdForUser()) {
                return (!hasSteamIdForUser() || getSteamIdForUser() == cMsgClientGetUserStats.getSteamIdForUser()) && getUnknownFields().equals(cMsgClientGetUserStats.getUnknownFields());
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
            if (hasGameId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getGameId());
            }
            if (hasCrcStats()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getCrcStats();
            }
            if (hasSchemaLocalVersion()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getSchemaLocalVersion();
            }
            if (hasSteamIdForUser()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getSteamIdForUser());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientGetUserStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientGetUserStats parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientGetUserStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientGetUserStats parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientGetUserStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientGetUserStats parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientGetUserStats parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetUserStats) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetUserStats parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetUserStats) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetUserStats parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetUserStats) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetUserStats parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetUserStats) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetUserStats parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientGetUserStats) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientGetUserStats parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetUserStats) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientGetUserStats cMsgClientGetUserStats) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientGetUserStats);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientGetUserStatsOrBuilder {
            private int bitField0_;
            private int crcStats_;
            private long gameId_;
            private int schemaLocalVersion_;
            private long steamIdForUser_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStats_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStats_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetUserStats.class, Builder.class);
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
                this.gameId_ = 0L;
                this.crcStats_ = 0;
                this.schemaLocalVersion_ = 0;
                this.steamIdForUser_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStats_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientGetUserStats getDefaultInstanceForType() {
                return CMsgClientGetUserStats.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetUserStats build() {
                CMsgClientGetUserStats cMsgClientGetUserStatsBuildPartial = buildPartial();
                if (cMsgClientGetUserStatsBuildPartial.isInitialized()) {
                    return cMsgClientGetUserStatsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientGetUserStatsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetUserStats buildPartial() {
                CMsgClientGetUserStats cMsgClientGetUserStats = new CMsgClientGetUserStats(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientGetUserStats);
                }
                onBuilt();
                return cMsgClientGetUserStats;
            }

            private void buildPartial0(CMsgClientGetUserStats cMsgClientGetUserStats) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientGetUserStats.gameId_ = this.gameId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientGetUserStats.crcStats_ = this.crcStats_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientGetUserStats.schemaLocalVersion_ = this.schemaLocalVersion_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientGetUserStats.steamIdForUser_ = this.steamIdForUser_;
                    i |= 8;
                }
                cMsgClientGetUserStats.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientGetUserStats) {
                    return mergeFrom((CMsgClientGetUserStats) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientGetUserStats cMsgClientGetUserStats) {
                if (cMsgClientGetUserStats == CMsgClientGetUserStats.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientGetUserStats.hasGameId()) {
                    setGameId(cMsgClientGetUserStats.getGameId());
                }
                if (cMsgClientGetUserStats.hasCrcStats()) {
                    setCrcStats(cMsgClientGetUserStats.getCrcStats());
                }
                if (cMsgClientGetUserStats.hasSchemaLocalVersion()) {
                    setSchemaLocalVersion(cMsgClientGetUserStats.getSchemaLocalVersion());
                }
                if (cMsgClientGetUserStats.hasSteamIdForUser()) {
                    setSteamIdForUser(cMsgClientGetUserStats.getSteamIdForUser());
                }
                mergeUnknownFields(cMsgClientGetUserStats.getUnknownFields());
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
                                    this.gameId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.crcStats_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.schemaLocalVersion_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 33) {
                                    this.steamIdForUser_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public boolean hasGameId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public long getGameId() {
                return this.gameId_;
            }

            public Builder setGameId(long j) {
                this.gameId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearGameId() {
                this.bitField0_ &= -2;
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public boolean hasCrcStats() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public int getCrcStats() {
                return this.crcStats_;
            }

            public Builder setCrcStats(int i) {
                this.crcStats_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearCrcStats() {
                this.bitField0_ &= -3;
                this.crcStats_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public boolean hasSchemaLocalVersion() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public int getSchemaLocalVersion() {
                return this.schemaLocalVersion_;
            }

            public Builder setSchemaLocalVersion(int i) {
                this.schemaLocalVersion_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSchemaLocalVersion() {
                this.bitField0_ &= -5;
                this.schemaLocalVersion_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public boolean hasSteamIdForUser() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsOrBuilder
            public long getSteamIdForUser() {
                return this.steamIdForUser_;
            }

            public Builder setSteamIdForUser(long j) {
                this.steamIdForUser_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSteamIdForUser() {
                this.bitField0_ &= -9;
                this.steamIdForUser_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientGetUserStats getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientGetUserStats> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientGetUserStats> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientGetUserStats getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientGetUserStatsResponse extends GeneratedMessage implements CMsgClientGetUserStatsResponseOrBuilder {
        public static final int ACHIEVEMENT_BLOCKS_FIELD_NUMBER = 6;
        public static final int CRC_STATS_FIELD_NUMBER = 3;
        private static final CMsgClientGetUserStatsResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 2;
        public static final int GAME_ID_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientGetUserStatsResponse> PARSER;
        public static final int SCHEMA_FIELD_NUMBER = 4;
        public static final int STATS_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private List<Achievement_Blocks> achievementBlocks_;
        private int bitField0_;
        private int crcStats_;
        private int eresult_;
        private long gameId_;
        private byte memoizedIsInitialized;
        private ByteString schema_;
        private List<Stats> stats_;

        public interface Achievement_BlocksOrBuilder extends MessageOrBuilder {
            int getAchievementId();

            int getUnlockTime(int i);

            int getUnlockTimeCount();

            List<Integer> getUnlockTimeList();

            boolean hasAchievementId();
        }

        public interface StatsOrBuilder extends MessageOrBuilder {
            int getStatId();

            int getStatValue();

            boolean hasStatId();

            boolean hasStatValue();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientGetUserStatsResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientGetUserStatsResponse();
            PARSER = new AbstractParser<CMsgClientGetUserStatsResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientGetUserStatsResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientGetUserStatsResponse.newBuilder();
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

        private CMsgClientGetUserStatsResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.gameId_ = 0L;
            this.eresult_ = 2;
            this.crcStats_ = 0;
            this.schema_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientGetUserStatsResponse() {
            this.gameId_ = 0L;
            this.eresult_ = 2;
            this.crcStats_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.schema_ = byteString;
            this.stats_ = Collections.emptyList();
            this.achievementBlocks_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetUserStatsResponse.class, Builder.class);
        }

        public static final class Stats extends GeneratedMessage implements StatsOrBuilder {
            private static final Stats DEFAULT_INSTANCE;
            private static final Parser<Stats> PARSER;
            public static final int STAT_ID_FIELD_NUMBER = 1;
            public static final int STAT_VALUE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private int statId_;
            private int statValue_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Stats.class.getName());
                DEFAULT_INSTANCE = new Stats();
                PARSER = new AbstractParser<Stats>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Stats.1
                    @Override // com.google.protobuf.Parser
                    public Stats parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Stats.newBuilder();
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

            private Stats(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.statId_ = 0;
                this.statValue_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Stats() {
                this.statId_ = 0;
                this.statValue_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Stats_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Stats_fieldAccessorTable.ensureFieldAccessorsInitialized(Stats.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
            public boolean hasStatId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
            public int getStatId() {
                return this.statId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
            public boolean hasStatValue() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
            public int getStatValue() {
                return this.statValue_;
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
                    codedOutputStream.writeUInt32(1, this.statId_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.statValue_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.statId_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.statValue_);
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
                if (!(obj instanceof Stats)) {
                    return super.equals(obj);
                }
                Stats stats = (Stats) obj;
                if (hasStatId() != stats.hasStatId()) {
                    return false;
                }
                if ((!hasStatId() || getStatId() == stats.getStatId()) && hasStatValue() == stats.hasStatValue()) {
                    return (!hasStatValue() || getStatValue() == stats.getStatValue()) && getUnknownFields().equals(stats.getUnknownFields());
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
                if (hasStatId()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getStatId();
                }
                if (hasStatValue()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getStatValue();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Stats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Stats parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Stats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Stats parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Stats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Stats parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Stats parseFrom(InputStream inputStream) throws IOException {
                return (Stats) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Stats parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Stats) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Stats parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Stats) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Stats parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Stats) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Stats parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Stats) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Stats parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Stats) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Stats stats) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(stats);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements StatsOrBuilder {
                private int bitField0_;
                private int statId_;
                private int statValue_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Stats_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Stats_fieldAccessorTable.ensureFieldAccessorsInitialized(Stats.class, Builder.class);
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
                    this.statId_ = 0;
                    this.statValue_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Stats_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Stats getDefaultInstanceForType() {
                    return Stats.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Stats build() {
                    Stats statsBuildPartial = buildPartial();
                    if (statsBuildPartial.isInitialized()) {
                        return statsBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) statsBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Stats buildPartial() {
                    Stats stats = new Stats(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(stats);
                    }
                    onBuilt();
                    return stats;
                }

                private void buildPartial0(Stats stats) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        stats.statId_ = this.statId_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        stats.statValue_ = this.statValue_;
                        i |= 2;
                    }
                    stats.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Stats) {
                        return mergeFrom((Stats) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Stats stats) {
                    if (stats == Stats.getDefaultInstance()) {
                        return this;
                    }
                    if (stats.hasStatId()) {
                        setStatId(stats.getStatId());
                    }
                    if (stats.hasStatValue()) {
                        setStatValue(stats.getStatValue());
                    }
                    mergeUnknownFields(stats.getUnknownFields());
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
                                        this.statId_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.statValue_ = codedInputStream.readUInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
                public boolean hasStatId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
                public int getStatId() {
                    return this.statId_;
                }

                public Builder setStatId(int i) {
                    this.statId_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearStatId() {
                    this.bitField0_ &= -2;
                    this.statId_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
                public boolean hasStatValue() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.StatsOrBuilder
                public int getStatValue() {
                    return this.statValue_;
                }

                public Builder setStatValue(int i) {
                    this.statValue_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearStatValue() {
                    this.bitField0_ &= -3;
                    this.statValue_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Stats getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Stats> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Stats> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Stats getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class Achievement_Blocks extends GeneratedMessage implements Achievement_BlocksOrBuilder {
            public static final int ACHIEVEMENT_ID_FIELD_NUMBER = 1;
            private static final Achievement_Blocks DEFAULT_INSTANCE;
            private static final Parser<Achievement_Blocks> PARSER;
            public static final int UNLOCK_TIME_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int achievementId_;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private Internal.IntList unlockTime_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Achievement_Blocks.class.getName());
                DEFAULT_INSTANCE = new Achievement_Blocks();
                PARSER = new AbstractParser<Achievement_Blocks>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_Blocks.1
                    @Override // com.google.protobuf.Parser
                    public Achievement_Blocks parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Achievement_Blocks.newBuilder();
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

            private Achievement_Blocks(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.achievementId_ = 0;
                this.unlockTime_ = GeneratedMessage.emptyIntList();
                this.memoizedIsInitialized = (byte) -1;
            }

            private Achievement_Blocks() {
                this.achievementId_ = 0;
                this.unlockTime_ = GeneratedMessage.emptyIntList();
                this.memoizedIsInitialized = (byte) -1;
                this.unlockTime_ = GeneratedMessage.emptyIntList();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_fieldAccessorTable.ensureFieldAccessorsInitialized(Achievement_Blocks.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
            public boolean hasAchievementId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
            public int getAchievementId() {
                return this.achievementId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
            public List<Integer> getUnlockTimeList() {
                return this.unlockTime_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
            public int getUnlockTimeCount() {
                return this.unlockTime_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
            public int getUnlockTime(int i) {
                return this.unlockTime_.getInt(i);
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
                    codedOutputStream.writeUInt32(1, this.achievementId_);
                }
                for (int i = 0; i < this.unlockTime_.size(); i++) {
                    codedOutputStream.writeFixed32(2, this.unlockTime_.getInt(i));
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.achievementId_) : 0) + (getUnlockTimeList().size() * 4) + getUnlockTimeList().size() + getUnknownFields().getSerializedSize();
                this.memoizedSize = iComputeUInt32Size;
                return iComputeUInt32Size;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Achievement_Blocks)) {
                    return super.equals(obj);
                }
                Achievement_Blocks achievement_Blocks = (Achievement_Blocks) obj;
                if (hasAchievementId() != achievement_Blocks.hasAchievementId()) {
                    return false;
                }
                return (!hasAchievementId() || getAchievementId() == achievement_Blocks.getAchievementId()) && getUnlockTimeList().equals(achievement_Blocks.getUnlockTimeList()) && getUnknownFields().equals(achievement_Blocks.getUnknownFields());
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasAchievementId()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getAchievementId();
                }
                if (getUnlockTimeCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getUnlockTimeList().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Achievement_Blocks parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Achievement_Blocks parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Achievement_Blocks parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Achievement_Blocks parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Achievement_Blocks parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Achievement_Blocks parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Achievement_Blocks parseFrom(InputStream inputStream) throws IOException {
                return (Achievement_Blocks) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Achievement_Blocks parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Achievement_Blocks) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Achievement_Blocks parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Achievement_Blocks) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Achievement_Blocks parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Achievement_Blocks) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Achievement_Blocks parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Achievement_Blocks) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Achievement_Blocks parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Achievement_Blocks) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Achievement_Blocks achievement_Blocks) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(achievement_Blocks);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements Achievement_BlocksOrBuilder {
                private int achievementId_;
                private int bitField0_;
                private Internal.IntList unlockTime_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_fieldAccessorTable.ensureFieldAccessorsInitialized(Achievement_Blocks.class, Builder.class);
                }

                private Builder() {
                    this.unlockTime_ = GeneratedMessage.emptyIntList();
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.unlockTime_ = GeneratedMessage.emptyIntList();
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.achievementId_ = 0;
                    this.unlockTime_ = GeneratedMessage.emptyIntList();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_Achievement_Blocks_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Achievement_Blocks getDefaultInstanceForType() {
                    return Achievement_Blocks.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Achievement_Blocks build() {
                    Achievement_Blocks achievement_BlocksBuildPartial = buildPartial();
                    if (achievement_BlocksBuildPartial.isInitialized()) {
                        return achievement_BlocksBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) achievement_BlocksBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Achievement_Blocks buildPartial() {
                    Achievement_Blocks achievement_Blocks = new Achievement_Blocks(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(achievement_Blocks);
                    }
                    onBuilt();
                    return achievement_Blocks;
                }

                private void buildPartial0(Achievement_Blocks achievement_Blocks) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        achievement_Blocks.achievementId_ = this.achievementId_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        this.unlockTime_.makeImmutable();
                        achievement_Blocks.unlockTime_ = this.unlockTime_;
                    }
                    achievement_Blocks.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Achievement_Blocks) {
                        return mergeFrom((Achievement_Blocks) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Achievement_Blocks achievement_Blocks) {
                    if (achievement_Blocks == Achievement_Blocks.getDefaultInstance()) {
                        return this;
                    }
                    if (achievement_Blocks.hasAchievementId()) {
                        setAchievementId(achievement_Blocks.getAchievementId());
                    }
                    if (!achievement_Blocks.unlockTime_.isEmpty()) {
                        if (this.unlockTime_.isEmpty()) {
                            Internal.IntList intList = achievement_Blocks.unlockTime_;
                            this.unlockTime_ = intList;
                            intList.makeImmutable();
                            this.bitField0_ |= 2;
                        } else {
                            ensureUnlockTimeIsMutable();
                            this.unlockTime_.addAll(achievement_Blocks.unlockTime_);
                        }
                        onChanged();
                    }
                    mergeUnknownFields(achievement_Blocks.getUnknownFields());
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
                                        this.achievementId_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        int rawVarint32 = codedInputStream.readRawVarint32();
                                        int iPushLimit = codedInputStream.pushLimit(rawVarint32);
                                        if (rawVarint32 > 4096) {
                                            rawVarint32 = 4096;
                                        }
                                        ensureUnlockTimeIsMutable(rawVarint32 / 4);
                                        while (codedInputStream.getBytesUntilLimit() > 0) {
                                            this.unlockTime_.addInt(codedInputStream.readFixed32());
                                        }
                                        codedInputStream.popLimit(iPushLimit);
                                    } else if (tag == 21) {
                                        int fixed32 = codedInputStream.readFixed32();
                                        ensureUnlockTimeIsMutable();
                                        this.unlockTime_.addInt(fixed32);
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
                public boolean hasAchievementId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
                public int getAchievementId() {
                    return this.achievementId_;
                }

                public Builder setAchievementId(int i) {
                    this.achievementId_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearAchievementId() {
                    this.bitField0_ &= -2;
                    this.achievementId_ = 0;
                    onChanged();
                    return this;
                }

                private void ensureUnlockTimeIsMutable() {
                    if (!this.unlockTime_.isModifiable()) {
                        this.unlockTime_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.unlockTime_);
                    }
                    this.bitField0_ |= 2;
                }

                private void ensureUnlockTimeIsMutable(int i) {
                    if (!this.unlockTime_.isModifiable()) {
                        this.unlockTime_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.unlockTime_, i);
                    }
                    this.bitField0_ |= 2;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
                public List<Integer> getUnlockTimeList() {
                    this.unlockTime_.makeImmutable();
                    return this.unlockTime_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
                public int getUnlockTimeCount() {
                    return this.unlockTime_.size();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_BlocksOrBuilder
                public int getUnlockTime(int i) {
                    return this.unlockTime_.getInt(i);
                }

                public Builder setUnlockTime(int i, int i2) {
                    ensureUnlockTimeIsMutable();
                    this.unlockTime_.setInt(i, i2);
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder addUnlockTime(int i) {
                    ensureUnlockTimeIsMutable();
                    this.unlockTime_.addInt(i);
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder addAllUnlockTime(Iterable<? extends Integer> iterable) {
                    ensureUnlockTimeIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.unlockTime_);
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearUnlockTime() {
                    this.unlockTime_ = GeneratedMessage.emptyIntList();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }
            }

            public static Achievement_Blocks getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Achievement_Blocks> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Achievement_Blocks> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Achievement_Blocks getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public boolean hasGameId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public long getGameId() {
            return this.gameId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public boolean hasCrcStats() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public int getCrcStats() {
            return this.crcStats_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public boolean hasSchema() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public ByteString getSchema() {
            return this.schema_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public List<Stats> getStatsList() {
            return this.stats_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public List<? extends StatsOrBuilder> getStatsOrBuilderList() {
            return this.stats_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public int getStatsCount() {
            return this.stats_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public Stats getStats(int i) {
            return this.stats_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public StatsOrBuilder getStatsOrBuilder(int i) {
            return this.stats_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public List<Achievement_Blocks> getAchievementBlocksList() {
            return this.achievementBlocks_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public List<? extends Achievement_BlocksOrBuilder> getAchievementBlocksOrBuilderList() {
            return this.achievementBlocks_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public int getAchievementBlocksCount() {
            return this.achievementBlocks_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public Achievement_Blocks getAchievementBlocks(int i) {
            return this.achievementBlocks_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
        public Achievement_BlocksOrBuilder getAchievementBlocksOrBuilder(int i) {
            return this.achievementBlocks_.get(i);
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
                codedOutputStream.writeFixed64(1, this.gameId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.eresult_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.crcStats_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBytes(4, this.schema_);
            }
            for (int i = 0; i < this.stats_.size(); i++) {
                codedOutputStream.writeMessage(5, this.stats_.get(i));
            }
            for (int i2 = 0; i2 < this.achievementBlocks_.size(); i2++) {
                codedOutputStream.writeMessage(6, this.achievementBlocks_.get(i2));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.gameId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.eresult_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.crcStats_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(4, this.schema_);
            }
            for (int i2 = 0; i2 < this.stats_.size(); i2++) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(5, this.stats_.get(i2));
            }
            for (int i3 = 0; i3 < this.achievementBlocks_.size(); i3++) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(6, this.achievementBlocks_.get(i3));
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
            if (!(obj instanceof CMsgClientGetUserStatsResponse)) {
                return super.equals(obj);
            }
            CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponse = (CMsgClientGetUserStatsResponse) obj;
            if (hasGameId() != cMsgClientGetUserStatsResponse.hasGameId()) {
                return false;
            }
            if ((hasGameId() && getGameId() != cMsgClientGetUserStatsResponse.getGameId()) || hasEresult() != cMsgClientGetUserStatsResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientGetUserStatsResponse.getEresult()) || hasCrcStats() != cMsgClientGetUserStatsResponse.hasCrcStats()) {
                return false;
            }
            if ((!hasCrcStats() || getCrcStats() == cMsgClientGetUserStatsResponse.getCrcStats()) && hasSchema() == cMsgClientGetUserStatsResponse.hasSchema()) {
                return (!hasSchema() || getSchema().equals(cMsgClientGetUserStatsResponse.getSchema())) && getStatsList().equals(cMsgClientGetUserStatsResponse.getStatsList()) && getAchievementBlocksList().equals(cMsgClientGetUserStatsResponse.getAchievementBlocksList()) && getUnknownFields().equals(cMsgClientGetUserStatsResponse.getUnknownFields());
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
            if (hasGameId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getGameId());
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getEresult();
            }
            if (hasCrcStats()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCrcStats();
            }
            if (hasSchema()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getSchema().hashCode();
            }
            if (getStatsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getStatsList().hashCode();
            }
            if (getAchievementBlocksCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getAchievementBlocksList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientGetUserStatsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetUserStatsResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetUserStatsResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetUserStatsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetUserStatsResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetUserStatsResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetUserStatsResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientGetUserStatsResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientGetUserStatsResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetUserStatsResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientGetUserStatsResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientGetUserStatsResponseOrBuilder {
            private RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> achievementBlocksBuilder_;
            private List<Achievement_Blocks> achievementBlocks_;
            private int bitField0_;
            private int crcStats_;
            private int eresult_;
            private long gameId_;
            private ByteString schema_;
            private RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> statsBuilder_;
            private List<Stats> stats_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetUserStatsResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.schema_ = ByteString.EMPTY;
                this.stats_ = Collections.emptyList();
                this.achievementBlocks_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.schema_ = ByteString.EMPTY;
                this.stats_ = Collections.emptyList();
                this.achievementBlocks_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.gameId_ = 0L;
                this.eresult_ = 2;
                this.crcStats_ = 0;
                this.schema_ = ByteString.EMPTY;
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.stats_ = Collections.emptyList();
                } else {
                    this.stats_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -17;
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder2 = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.achievementBlocks_ = Collections.emptyList();
                } else {
                    this.achievementBlocks_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverUserstats.internal_static_CMsgClientGetUserStatsResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientGetUserStatsResponse getDefaultInstanceForType() {
                return CMsgClientGetUserStatsResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetUserStatsResponse build() {
                CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponseBuildPartial = buildPartial();
                if (cMsgClientGetUserStatsResponseBuildPartial.isInitialized()) {
                    return cMsgClientGetUserStatsResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientGetUserStatsResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetUserStatsResponse buildPartial() {
                CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponse = new CMsgClientGetUserStatsResponse(this);
                buildPartialRepeatedFields(cMsgClientGetUserStatsResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientGetUserStatsResponse);
                }
                onBuilt();
                return cMsgClientGetUserStatsResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponse) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.stats_ = Collections.unmodifiableList(this.stats_);
                        this.bitField0_ &= -17;
                    }
                    cMsgClientGetUserStatsResponse.stats_ = this.stats_;
                } else {
                    cMsgClientGetUserStatsResponse.stats_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder2 = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 32) != 0) {
                        this.achievementBlocks_ = Collections.unmodifiableList(this.achievementBlocks_);
                        this.bitField0_ &= -33;
                    }
                    cMsgClientGetUserStatsResponse.achievementBlocks_ = this.achievementBlocks_;
                    return;
                }
                cMsgClientGetUserStatsResponse.achievementBlocks_ = repeatedFieldBuilder2.build();
            }

            private void buildPartial0(CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientGetUserStatsResponse.gameId_ = this.gameId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientGetUserStatsResponse.eresult_ = this.eresult_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientGetUserStatsResponse.crcStats_ = this.crcStats_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientGetUserStatsResponse.schema_ = this.schema_;
                    i |= 8;
                }
                cMsgClientGetUserStatsResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientGetUserStatsResponse) {
                    return mergeFrom((CMsgClientGetUserStatsResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientGetUserStatsResponse cMsgClientGetUserStatsResponse) {
                if (cMsgClientGetUserStatsResponse == CMsgClientGetUserStatsResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientGetUserStatsResponse.hasGameId()) {
                    setGameId(cMsgClientGetUserStatsResponse.getGameId());
                }
                if (cMsgClientGetUserStatsResponse.hasEresult()) {
                    setEresult(cMsgClientGetUserStatsResponse.getEresult());
                }
                if (cMsgClientGetUserStatsResponse.hasCrcStats()) {
                    setCrcStats(cMsgClientGetUserStatsResponse.getCrcStats());
                }
                if (cMsgClientGetUserStatsResponse.hasSchema()) {
                    setSchema(cMsgClientGetUserStatsResponse.getSchema());
                }
                if (this.statsBuilder_ == null) {
                    if (!cMsgClientGetUserStatsResponse.stats_.isEmpty()) {
                        if (this.stats_.isEmpty()) {
                            this.stats_ = cMsgClientGetUserStatsResponse.stats_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureStatsIsMutable();
                            this.stats_.addAll(cMsgClientGetUserStatsResponse.stats_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientGetUserStatsResponse.stats_.isEmpty()) {
                    if (this.statsBuilder_.isEmpty()) {
                        this.statsBuilder_.dispose();
                        this.statsBuilder_ = null;
                        this.stats_ = cMsgClientGetUserStatsResponse.stats_;
                        this.bitField0_ &= -17;
                        this.statsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetStatsFieldBuilder() : null;
                    } else {
                        this.statsBuilder_.addAllMessages(cMsgClientGetUserStatsResponse.stats_);
                    }
                }
                if (this.achievementBlocksBuilder_ == null) {
                    if (!cMsgClientGetUserStatsResponse.achievementBlocks_.isEmpty()) {
                        if (this.achievementBlocks_.isEmpty()) {
                            this.achievementBlocks_ = cMsgClientGetUserStatsResponse.achievementBlocks_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureAchievementBlocksIsMutable();
                            this.achievementBlocks_.addAll(cMsgClientGetUserStatsResponse.achievementBlocks_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientGetUserStatsResponse.achievementBlocks_.isEmpty()) {
                    if (this.achievementBlocksBuilder_.isEmpty()) {
                        this.achievementBlocksBuilder_.dispose();
                        this.achievementBlocksBuilder_ = null;
                        this.achievementBlocks_ = cMsgClientGetUserStatsResponse.achievementBlocks_;
                        this.bitField0_ &= -33;
                        this.achievementBlocksBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetAchievementBlocksFieldBuilder() : null;
                    } else {
                        this.achievementBlocksBuilder_.addAllMessages(cMsgClientGetUserStatsResponse.achievementBlocks_);
                    }
                }
                mergeUnknownFields(cMsgClientGetUserStatsResponse.getUnknownFields());
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
                                    this.gameId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.crcStats_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.schema_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    Stats stats = (Stats) codedInputStream.readMessage(Stats.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureStatsIsMutable();
                                        this.stats_.add(stats);
                                    } else {
                                        repeatedFieldBuilder.addMessage(stats);
                                    }
                                } else if (tag == 50) {
                                    Achievement_Blocks achievement_Blocks = (Achievement_Blocks) codedInputStream.readMessage(Achievement_Blocks.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder2 = this.achievementBlocksBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensureAchievementBlocksIsMutable();
                                        this.achievementBlocks_.add(achievement_Blocks);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(achievement_Blocks);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public boolean hasGameId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public long getGameId() {
                return this.gameId_;
            }

            public Builder setGameId(long j) {
                this.gameId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearGameId() {
                this.bitField0_ &= -2;
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -3;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public boolean hasCrcStats() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public int getCrcStats() {
                return this.crcStats_;
            }

            public Builder setCrcStats(int i) {
                this.crcStats_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCrcStats() {
                this.bitField0_ &= -5;
                this.crcStats_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public boolean hasSchema() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public ByteString getSchema() {
                return this.schema_;
            }

            public Builder setSchema(ByteString byteString) {
                byteString.getClass();
                this.schema_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSchema() {
                this.bitField0_ &= -9;
                this.schema_ = CMsgClientGetUserStatsResponse.getDefaultInstance().getSchema();
                onChanged();
                return this;
            }

            private void ensureStatsIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.stats_ = new ArrayList(this.stats_);
                    this.bitField0_ |= 16;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public List<Stats> getStatsList() {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.stats_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public int getStatsCount() {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.stats_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public Stats getStats(int i) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.stats_.get(i);
                }
                return (Stats) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setStats(int i, Stats stats) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    stats.getClass();
                    ensureStatsIsMutable();
                    this.stats_.set(i, stats);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, stats);
                }
                return this;
            }

            public Builder setStats(int i, Stats.Builder builder) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureStatsIsMutable();
                    this.stats_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addStats(Stats stats) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    stats.getClass();
                    ensureStatsIsMutable();
                    this.stats_.add(stats);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(stats);
                }
                return this;
            }

            public Builder addStats(int i, Stats stats) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    stats.getClass();
                    ensureStatsIsMutable();
                    this.stats_.add(i, stats);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, stats);
                }
                return this;
            }

            public Builder addStats(Stats.Builder builder) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureStatsIsMutable();
                    this.stats_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addStats(int i, Stats.Builder builder) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureStatsIsMutable();
                    this.stats_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllStats(Iterable<? extends Stats> iterable) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureStatsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.stats_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearStats() {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.stats_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeStats(int i) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureStatsIsMutable();
                    this.stats_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Stats.Builder getStatsBuilder(int i) {
                return (Stats.Builder) internalGetStatsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public StatsOrBuilder getStatsOrBuilder(int i) {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.stats_.get(i);
                }
                return (StatsOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public List<? extends StatsOrBuilder> getStatsOrBuilderList() {
                RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> repeatedFieldBuilder = this.statsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.stats_);
            }

            public Stats.Builder addStatsBuilder() {
                return (Stats.Builder) internalGetStatsFieldBuilder().addBuilder(Stats.getDefaultInstance());
            }

            public Stats.Builder addStatsBuilder(int i) {
                return (Stats.Builder) internalGetStatsFieldBuilder().addBuilder(i, Stats.getDefaultInstance());
            }

            public List<Stats.Builder> getStatsBuilderList() {
                return internalGetStatsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Stats, Stats.Builder, StatsOrBuilder> internalGetStatsFieldBuilder() {
                if (this.statsBuilder_ == null) {
                    this.statsBuilder_ = new RepeatedFieldBuilder<>(this.stats_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.stats_ = null;
                }
                return this.statsBuilder_;
            }

            private void ensureAchievementBlocksIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.achievementBlocks_ = new ArrayList(this.achievementBlocks_);
                    this.bitField0_ |= 32;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public List<Achievement_Blocks> getAchievementBlocksList() {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.achievementBlocks_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public int getAchievementBlocksCount() {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.achievementBlocks_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public Achievement_Blocks getAchievementBlocks(int i) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.achievementBlocks_.get(i);
                }
                return (Achievement_Blocks) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setAchievementBlocks(int i, Achievement_Blocks achievement_Blocks) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    achievement_Blocks.getClass();
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.set(i, achievement_Blocks);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, achievement_Blocks);
                }
                return this;
            }

            public Builder setAchievementBlocks(int i, Achievement_Blocks.Builder builder) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAchievementBlocks(Achievement_Blocks achievement_Blocks) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    achievement_Blocks.getClass();
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.add(achievement_Blocks);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(achievement_Blocks);
                }
                return this;
            }

            public Builder addAchievementBlocks(int i, Achievement_Blocks achievement_Blocks) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    achievement_Blocks.getClass();
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.add(i, achievement_Blocks);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, achievement_Blocks);
                }
                return this;
            }

            public Builder addAchievementBlocks(Achievement_Blocks.Builder builder) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addAchievementBlocks(int i, Achievement_Blocks.Builder builder) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllAchievementBlocks(Iterable<? extends Achievement_Blocks> iterable) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAchievementBlocksIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.achievementBlocks_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearAchievementBlocks() {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.achievementBlocks_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeAchievementBlocks(int i) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureAchievementBlocksIsMutable();
                    this.achievementBlocks_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Achievement_Blocks.Builder getAchievementBlocksBuilder(int i) {
                return (Achievement_Blocks.Builder) internalGetAchievementBlocksFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public Achievement_BlocksOrBuilder getAchievementBlocksOrBuilder(int i) {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.achievementBlocks_.get(i);
                }
                return (Achievement_BlocksOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponseOrBuilder
            public List<? extends Achievement_BlocksOrBuilder> getAchievementBlocksOrBuilderList() {
                RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> repeatedFieldBuilder = this.achievementBlocksBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.achievementBlocks_);
            }

            public Achievement_Blocks.Builder addAchievementBlocksBuilder() {
                return (Achievement_Blocks.Builder) internalGetAchievementBlocksFieldBuilder().addBuilder(Achievement_Blocks.getDefaultInstance());
            }

            public Achievement_Blocks.Builder addAchievementBlocksBuilder(int i) {
                return (Achievement_Blocks.Builder) internalGetAchievementBlocksFieldBuilder().addBuilder(i, Achievement_Blocks.getDefaultInstance());
            }

            public List<Achievement_Blocks.Builder> getAchievementBlocksBuilderList() {
                return internalGetAchievementBlocksFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Achievement_Blocks, Achievement_Blocks.Builder, Achievement_BlocksOrBuilder> internalGetAchievementBlocksFieldBuilder() {
                if (this.achievementBlocksBuilder_ == null) {
                    this.achievementBlocksBuilder_ = new RepeatedFieldBuilder<>(this.achievementBlocks_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                    this.achievementBlocks_ = null;
                }
                return this.achievementBlocksBuilder_;
            }
        }

        public static CMsgClientGetUserStatsResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientGetUserStatsResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientGetUserStatsResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientGetUserStatsResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
