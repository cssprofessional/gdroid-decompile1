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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes.dex */
public final class SteammessagesClientserverGameservers {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientGMSServerQuery_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGMSServerQuery_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGMSClientServerQueryResponse_Server_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGMSClientServerQueryResponse_Server_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGMSClientServerQueryResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGMSClientServerQueryResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSAssociateWithClanResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSAssociateWithClanResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSAssociateWithClan_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSAssociateWithClan_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSComputeNewPlayerCompatibilityResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSComputeNewPlayerCompatibilityResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSComputeNewPlayerCompatibility_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSComputeNewPlayerCompatibility_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSDisconnectNotice_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSDisconnectNotice_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSPlayerList_Player_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSPlayerList_Player_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSPlayerList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSPlayerList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSServerType_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSServerType_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSStatusReply_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSStatusReply_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGSUserPlaying_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGSUserPlaying_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGameServerData_Player_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGameServerData_Player_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGameServerData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGameServerData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGameServerOutOfDate_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGameServerOutOfDate_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGameServerRemove_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGameServerRemove_fieldAccessorTable;

    public interface CMsgClientGMSServerQueryOrBuilder extends MessageOrBuilder {
        int getAppId();

        String getFilterText();

        ByteString getFilterTextBytes();

        int getGeoLocationIp();

        int getMaxServers();

        int getRegionCode();

        String getSdrPingLocation();

        ByteString getSdrPingLocationBytes();

        boolean hasAppId();

        boolean hasFilterText();

        boolean hasGeoLocationIp();

        boolean hasMaxServers();

        boolean hasRegionCode();

        boolean hasSdrPingLocation();
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface CMsgGMSClientServerQueryResponseOrBuilder extends MessageOrBuilder {
        CMsgGMSClientServerQueryResponse.Server getDefaultServerData();

        CMsgGMSClientServerQueryResponse.ServerOrBuilder getDefaultServerDataOrBuilder();

        String getError();

        ByteString getErrorBytes();

        String getServerStrings(int i);

        ByteString getServerStringsBytes(int i);

        int getServerStringsCount();

        List<String> getServerStringsList();

        CMsgGMSClientServerQueryResponse.Server getServers(int i);

        int getServersCount();

        List<CMsgGMSClientServerQueryResponse.Server> getServersList();

        CMsgGMSClientServerQueryResponse.ServerOrBuilder getServersOrBuilder(int i);

        List<? extends CMsgGMSClientServerQueryResponse.ServerOrBuilder> getServersOrBuilderList();

        boolean hasDefaultServerData();

        boolean hasError();
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface CMsgGSServerTypeOrBuilder extends MessageOrBuilder {
        int getAppIdServed();

        int getDeprecatedGameIpAddress();

        int getFakeIp();

        int getFlags();

        String getGameDir();

        ByteString getGameDirBytes();

        int getGamePort();

        int getGamePortLocal();

        int getGameQueryPort();

        String getGameVersion();

        ByteString getGameVersionBytes();

        ByteString getSdrLogon();

        boolean hasAppIdServed();

        boolean hasDeprecatedGameIpAddress();

        boolean hasFakeIp();

        boolean hasFlags();

        boolean hasGameDir();

        boolean hasGamePort();

        boolean hasGamePortLocal();

        boolean hasGameQueryPort();

        boolean hasGameVersion();

        boolean hasSdrLogon();
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface CMsgGSStatusReplyOrBuilder extends MessageOrBuilder {
        boolean getIsSecure();

        boolean getIsValveds();

        boolean hasIsSecure();

        boolean hasIsValveds();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverGameservers() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverGameservers.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nYin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_gameservers.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"í\u0001\n\u0010CMsgGSServerType\u0012\u0015\n\rapp_id_served\u0018\u0001 \u0001(\r\u0012\r\n\u0005flags\u0018\u0002 \u0001(\r\u0012\"\n\u001adeprecated_game_ip_address\u0018\u0003 \u0001(\r\u0012\u0011\n\tgame_port\u0018\u0004 \u0001(\r\u0012\u0010\n\bgame_dir\u0018\u0005 \u0001(\t\u0012\u0014\n\fgame_version\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fgame_query_port\u0018\u0007 \u0001(\r\u0012\u0017\n\u000fgame_port_local\u0018\n \u0001(\r\u0012\u0011\n\tsdr_logon\u0018\b \u0001(\f\u0012\u000f\n\u0007fake_ip\u0018\t \u0001(\u0007\":\n\u0011CMsgGSStatusReply\u0012\u0011\n\tis_secure\u0018\u0001 \u0001(\b\u0012\u0012\n\nis_valveds\u0018\u0002 \u0001(\b\"©\u0001\n\u0010CMsgGSPlayerList\u0012)\n\u0007players\u0018\u0001 \u0003(\u000b2\u0018.CMsgGSPlayerList.Player\u001aj\n\u0006Player\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0004\u0012\u001c\n\u0014deprecated_public_ip\u0018\u0002 \u0001(\r\u0012\r\n\u0005token\u0018\u0003 \u0001(\f\u0012!\n\tpublic_ip\u0018\u0004 \u0001(\u000b2\u000e.CMsgIPAddress\"u\n\u0011CMsgGSUserPlaying\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\u0012\u001c\n\u0014deprecated_public_ip\u0018\u0002 \u0001(\r\u0012\r\n\u0005token\u0018\u0003 \u0001(\f\u0012!\n\tpublic_ip\u0018\u0004 \u0001(\u000b2\u000e.CMsgIPAddress\"*\n\u0016CMsgGSDisconnectNotice\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\"\u0097\u0004\n\u0012CMsgGameServerData\u0012\u0010\n\brevision\u0018\u0018 \u0001(\r\u0012\u0012\n\nquery_port\u0018\u0003 \u0001(\r\u0012\u0011\n\tgame_port\u0018\u0004 \u0001(\r\u0012\u0016\n\u000espectator_port\u0018\u0005 \u0001(\r\u0012\u0013\n\u000bserver_name\u0018\u0016 \u0001(\t\u0012\u0018\n\u0010game_description\u0018\u001d \u0001(\t\u0012\u001d\n\u0015spectator_server_name\u0018\u001b \u0001(\t\u0012\u000f\n\u0007fake_ip\u0018\u001c \u0001(\u0007\u0012\u0019\n\u0011sdr_ping_location\u0018\u001e \u0001(\t\u0012\u000e\n\u0006app_id\u0018\u0006 \u0001(\r\u0012\u000f\n\u0007gamedir\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007version\u0018\b \u0001(\t\u0012\u000f\n\u0007product\u0018\t \u0001(\t\u0012\u000e\n\u0006region\u0018\n \u0001(\t\u0012+\n\u0007players\u0018\u000b \u0003(\u000b2\u001a.CMsgGameServerData.Player\u0012\u0013\n\u000bmax_players\u0018\f \u0001(\r\u0012\u0011\n\tbot_count\u0018\r \u0001(\r\u0012\u0010\n\bpassword\u0018\u000e \u0001(\b\u0012\u000e\n\u0006secure\u0018\u000f \u0001(\b\u0012\u0011\n\tdedicated\u0018\u0010 \u0001(\b\u0012\n\n\u0002os\u0018\u0011 \u0001(\t\u0012\u0011\n\tgame_data\u0018\u0012 \u0001(\t\u0012\u0011\n\tgame_type\u0018\u0014 \u0001(\t\u0012\u000b\n\u0003map\u0018\u0015 \u0001(\t\u001a\u001a\n\u0006Player\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\"M\n\u0014CMsgGameServerRemove\u0012\u001a\n\u0012legacy_steam_id_gs\u0018\u0001 \u0001(\u0006\u0012\u0019\n\u0011legacy_query_port\u0018\u0003 \u0001(\r\"\u009d\u0001\n\u0018CMsgClientGMSServerQuery\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0017\n\u000fgeo_location_ip\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bregion_code\u0018\u0003 \u0001(\r\u0012\u0013\n\u000bfilter_text\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bmax_servers\u0018\u0005 \u0001(\r\u0012\u0019\n\u0011sdr_ping_location\u0018\u0006 \u0001(\t\"¥\u0007\n CMsgGMSClientServerQueryResponse\u00129\n\u0007servers\u0018\u0001 \u0003(\u000b2(.CMsgGMSClientServerQueryResponse.Server\u0012\r\n\u0005error\u0018\u0002 \u0001(\t\u0012E\n\u0013default_server_data\u0018\u0003 \u0001(\u000b2(.CMsgGMSClientServerQueryResponse.Server\u0012\u0016\n\u000eserver_strings\u0018\u0004 \u0003(\t\u001a \u0005\n\u0006Server\u0012\u001c\n\u0014deprecated_server_ip\u0018\u0001 \u0001(\r\u0012\u0012\n\nquery_port\u0018\u0002 \u0001(\r\u0012\u0014\n\fauth_players\u0018\u0003 \u0001(\r\u0012!\n\tserver_ip\u0018\u0004 \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u0010\n\bsteam_id\u0018\u0006 \u0001(\u0006\u0012\u0010\n\brevision\u0018\u0007 \u0001(\r\u0012\u000f\n\u0007players\u0018\b \u0001(\r\u0012\u0011\n\tgame_port\u0018\t \u0001(\r\u0012\u0011\n\tsdr_popid\u0018\n \u0001(\u0007\u0012\u0019\n\u0011sdr_ping_location\u0018  \u0001(\t\u0012\r\n\u0005flags\u0018\u000b \u0001(\r\u0012\u000e\n\u0006app_id\u0018\f \u0001(\r\u0012\u0013\n\u000bmax_players\u0018\r \u0001(\r\u0012\f\n\u0004bots\u0018\u000e \u0001(\r\u0012\u0016\n\u000espectator_port\u0018\u000f \u0001(\r\u0012\u0013\n\u000bgamedir_str\u0018\u0010 \u0001(\t\u0012\u0018\n\u0010gamedir_strindex\u0018\u0011 \u0001(\r\u0012\u000f\n\u0007map_str\u0018\u0012 \u0001(\t\u0012\u0014\n\fmap_strindex\u0018\u0013 \u0001(\r\u0012\u0010\n\bname_str\u0018\u0014 \u0001(\t\u0012\u0015\n\rname_strindex\u0018\u0015 \u0001(\r\u0012\u001c\n\u0014game_description_str\u0018\u0016 \u0001(\t\u0012!\n\u0019game_description_strindex\u0018\u0017 \u0001(\r\u0012\u0013\n\u000bversion_str\u0018\u0018 \u0001(\t\u0012\u0018\n\u0010version_strindex\u0018\u0019 \u0001(\r\u0012\u0014\n\fgametype_str\u0018\u001a \u0001(\t\u0012\u0019\n\u0011gametype_strindex\u0018\u001b \u0001(\r\u0012\u001a\n\u0012spectator_name_str\u0018\u001e \u0001(\t\u0012\u001f\n\u0017spectator_name_strindex\u0018\u001f \u0001(\r\"5\n\u0006EFlags\u0012\u0017\n\u0013k_EFlag_HasPassword\u0010\u0001\u0012\u0012\n\u000ek_EFlag_Secure\u0010\u0002\"O\n\u0017CMsgGameServerOutOfDate\u0012\u0013\n\u000bsteam_id_gs\u0018\u0001 \u0001(\u0006\u0012\u000e\n\u0006reject\u0018\u0002 \u0001(\b\u0012\u000f\n\u0007message\u0018\u0003 \u0001(\t\"0\n\u0017CMsgGSAssociateWithClan\u0012\u0015\n\rsteam_id_clan\u0018\u0001 \u0001(\u0006\"L\n\u001fCMsgGSAssociateWithClanResponse\u0012\u0015\n\rsteam_id_clan\u0018\u0001 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\r:\u00012\"A\n#CMsgGSComputeNewPlayerCompatibility\u0012\u001a\n\u0012steam_id_candidate\u0018\u0001 \u0001(\u0006\"Ï\u0001\n+CMsgGSComputeNewPlayerCompatibilityResponse\u0012\u001a\n\u0012steam_id_candidate\u0018\u0001 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\r:\u00012\u0012\u0016\n\u000eis_clan_member\u0018\u0003 \u0001(\b\u0012\u0018\n\u0010ct_dont_like_you\u0018\u0004 \u0001(\u0005\u0012\u0018\n\u0010ct_you_dont_like\u0018\u0005 \u0001(\u0005\u0012$\n\u001cct_clanmembers_dont_like_you\u0018\u0006 \u0001(\u0005B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgGSServerType_descriptor = descriptor2;
        internal_static_CMsgGSServerType_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"AppIdServed", "Flags", "DeprecatedGameIpAddress", "GamePort", "GameDir", "GameVersion", "GameQueryPort", "GamePortLocal", "SdrLogon", "FakeIp"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgGSStatusReply_descriptor = descriptor3;
        internal_static_CMsgGSStatusReply_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"IsSecure", "IsValveds"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgGSPlayerList_descriptor = descriptor4;
        internal_static_CMsgGSPlayerList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Players"});
        Descriptors.Descriptor descriptor5 = descriptor4.getNestedTypes().get(0);
        internal_static_CMsgGSPlayerList_Player_descriptor = descriptor5;
        internal_static_CMsgGSPlayerList_Player_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"SteamId", "DeprecatedPublicIp", "Token", "PublicIp"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgGSUserPlaying_descriptor = descriptor6;
        internal_static_CMsgGSUserPlaying_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"SteamId", "DeprecatedPublicIp", "Token", "PublicIp"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgGSDisconnectNotice_descriptor = descriptor7;
        internal_static_CMsgGSDisconnectNotice_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"SteamId"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgGameServerData_descriptor = descriptor8;
        internal_static_CMsgGameServerData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Revision", "QueryPort", "GamePort", "SpectatorPort", "ServerName", "GameDescription", "SpectatorServerName", "FakeIp", "SdrPingLocation", "AppId", "Gamedir", "Version", "Product", "Region", "Players", "MaxPlayers", "BotCount", "Password", "Secure", "Dedicated", "Os", "GameData", "GameType", "Map"});
        Descriptors.Descriptor descriptor9 = descriptor8.getNestedTypes().get(0);
        internal_static_CMsgGameServerData_Player_descriptor = descriptor9;
        internal_static_CMsgGameServerData_Player_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"SteamId"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgGameServerRemove_descriptor = descriptor10;
        internal_static_CMsgGameServerRemove_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"LegacySteamIdGs", "LegacyQueryPort"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientGMSServerQuery_descriptor = descriptor11;
        internal_static_CMsgClientGMSServerQuery_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"AppId", "GeoLocationIp", "RegionCode", "FilterText", "MaxServers", "SdrPingLocation"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgGMSClientServerQueryResponse_descriptor = descriptor12;
        internal_static_CMsgGMSClientServerQueryResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Servers", "Error", "DefaultServerData", "ServerStrings"});
        Descriptors.Descriptor descriptor13 = descriptor12.getNestedTypes().get(0);
        internal_static_CMsgGMSClientServerQueryResponse_Server_descriptor = descriptor13;
        internal_static_CMsgGMSClientServerQueryResponse_Server_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"DeprecatedServerIp", "QueryPort", "AuthPlayers", "ServerIp", "SteamId", "Revision", "Players", "GamePort", "SdrPopid", "SdrPingLocation", "Flags", "AppId", "MaxPlayers", "Bots", "SpectatorPort", "GamedirStr", "GamedirStrindex", "MapStr", "MapStrindex", "NameStr", "NameStrindex", "GameDescriptionStr", "GameDescriptionStrindex", "VersionStr", "VersionStrindex", "GametypeStr", "GametypeStrindex", "SpectatorNameStr", "SpectatorNameStrindex"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgGameServerOutOfDate_descriptor = descriptor14;
        internal_static_CMsgGameServerOutOfDate_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"SteamIdGs", "Reject", "Message"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgGSAssociateWithClan_descriptor = descriptor15;
        internal_static_CMsgGSAssociateWithClan_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"SteamIdClan"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgGSAssociateWithClanResponse_descriptor = descriptor16;
        internal_static_CMsgGSAssociateWithClanResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"SteamIdClan", "Eresult"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgGSComputeNewPlayerCompatibility_descriptor = descriptor17;
        internal_static_CMsgGSComputeNewPlayerCompatibility_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"SteamIdCandidate"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgGSComputeNewPlayerCompatibilityResponse_descriptor = descriptor18;
        internal_static_CMsgGSComputeNewPlayerCompatibilityResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"SteamIdCandidate", "Eresult", "IsClanMember", "CtDontLikeYou", "CtYouDontLike", "CtClanmembersDontLikeYou"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class CMsgGSServerType extends GeneratedMessage implements CMsgGSServerTypeOrBuilder {
        public static final int APP_ID_SERVED_FIELD_NUMBER = 1;
        private static final CMsgGSServerType DEFAULT_INSTANCE;
        public static final int DEPRECATED_GAME_IP_ADDRESS_FIELD_NUMBER = 3;
        public static final int FAKE_IP_FIELD_NUMBER = 9;
        public static final int FLAGS_FIELD_NUMBER = 2;
        public static final int GAME_DIR_FIELD_NUMBER = 5;
        public static final int GAME_PORT_FIELD_NUMBER = 4;
        public static final int GAME_PORT_LOCAL_FIELD_NUMBER = 10;
        public static final int GAME_QUERY_PORT_FIELD_NUMBER = 7;
        public static final int GAME_VERSION_FIELD_NUMBER = 6;
        private static final Parser<CMsgGSServerType> PARSER;
        public static final int SDR_LOGON_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private int appIdServed_;
        private int bitField0_;
        private int deprecatedGameIpAddress_;
        private int fakeIp_;
        private int flags_;
        private volatile Object gameDir_;
        private int gamePortLocal_;
        private int gamePort_;
        private int gameQueryPort_;
        private volatile Object gameVersion_;
        private byte memoizedIsInitialized;
        private ByteString sdrLogon_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgGSServerType.class.getName());
            DEFAULT_INSTANCE = new CMsgGSServerType();
            PARSER = new AbstractParser<CMsgGSServerType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerType.1
                @Override // com.google.protobuf.Parser
                public CMsgGSServerType parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgGSServerType.newBuilder();
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

        private CMsgGSServerType(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appIdServed_ = 0;
            this.flags_ = 0;
            this.deprecatedGameIpAddress_ = 0;
            this.gamePort_ = 0;
            this.gameDir_ = "";
            this.gameVersion_ = "";
            this.gameQueryPort_ = 0;
            this.gamePortLocal_ = 0;
            this.sdrLogon_ = ByteString.EMPTY;
            this.fakeIp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgGSServerType() {
            this.appIdServed_ = 0;
            this.flags_ = 0;
            this.deprecatedGameIpAddress_ = 0;
            this.gamePort_ = 0;
            this.gameDir_ = "";
            this.gameVersion_ = "";
            this.gameQueryPort_ = 0;
            this.gamePortLocal_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.sdrLogon_ = byteString;
            this.fakeIp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.gameDir_ = "";
            this.gameVersion_ = "";
            this.sdrLogon_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverGameservers.internal_static_CMsgGSServerType_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverGameservers.internal_static_CMsgGSServerType_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGSServerType.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasAppIdServed() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getAppIdServed() {
            return this.appIdServed_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasFlags() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getFlags() {
            return this.flags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasDeprecatedGameIpAddress() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getDeprecatedGameIpAddress() {
            return this.deprecatedGameIpAddress_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasGamePort() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getGamePort() {
            return this.gamePort_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasGameDir() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public String getGameDir() {
            Object obj = this.gameDir_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gameDir_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public ByteString getGameDirBytes() {
            Object obj = this.gameDir_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gameDir_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasGameVersion() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public String getGameVersion() {
            Object obj = this.gameVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gameVersion_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public ByteString getGameVersionBytes() {
            Object obj = this.gameVersion_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gameVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasGameQueryPort() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getGameQueryPort() {
            return this.gameQueryPort_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasGamePortLocal() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getGamePortLocal() {
            return this.gamePortLocal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasSdrLogon() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public ByteString getSdrLogon() {
            return this.sdrLogon_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public boolean hasFakeIp() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
        public int getFakeIp() {
            return this.fakeIp_;
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
                codedOutputStream.writeUInt32(1, this.appIdServed_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.flags_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.deprecatedGameIpAddress_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.gamePort_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.gameDir_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.gameVersion_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.gameQueryPort_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeBytes(8, this.sdrLogon_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeFixed32(9, this.fakeIp_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(10, this.gamePortLocal_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appIdServed_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.flags_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.deprecatedGameIpAddress_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.gamePort_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.gameDir_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(6, this.gameVersion_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.gameQueryPort_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(8, this.sdrLogon_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed32Size(9, this.fakeIp_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(10, this.gamePortLocal_);
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
            if (!(obj instanceof CMsgGSServerType)) {
                return super.equals(obj);
            }
            CMsgGSServerType cMsgGSServerType = (CMsgGSServerType) obj;
            if (hasAppIdServed() != cMsgGSServerType.hasAppIdServed()) {
                return false;
            }
            if ((hasAppIdServed() && getAppIdServed() != cMsgGSServerType.getAppIdServed()) || hasFlags() != cMsgGSServerType.hasFlags()) {
                return false;
            }
            if ((hasFlags() && getFlags() != cMsgGSServerType.getFlags()) || hasDeprecatedGameIpAddress() != cMsgGSServerType.hasDeprecatedGameIpAddress()) {
                return false;
            }
            if ((hasDeprecatedGameIpAddress() && getDeprecatedGameIpAddress() != cMsgGSServerType.getDeprecatedGameIpAddress()) || hasGamePort() != cMsgGSServerType.hasGamePort()) {
                return false;
            }
            if ((hasGamePort() && getGamePort() != cMsgGSServerType.getGamePort()) || hasGameDir() != cMsgGSServerType.hasGameDir()) {
                return false;
            }
            if ((hasGameDir() && !getGameDir().equals(cMsgGSServerType.getGameDir())) || hasGameVersion() != cMsgGSServerType.hasGameVersion()) {
                return false;
            }
            if ((hasGameVersion() && !getGameVersion().equals(cMsgGSServerType.getGameVersion())) || hasGameQueryPort() != cMsgGSServerType.hasGameQueryPort()) {
                return false;
            }
            if ((hasGameQueryPort() && getGameQueryPort() != cMsgGSServerType.getGameQueryPort()) || hasGamePortLocal() != cMsgGSServerType.hasGamePortLocal()) {
                return false;
            }
            if ((hasGamePortLocal() && getGamePortLocal() != cMsgGSServerType.getGamePortLocal()) || hasSdrLogon() != cMsgGSServerType.hasSdrLogon()) {
                return false;
            }
            if ((!hasSdrLogon() || getSdrLogon().equals(cMsgGSServerType.getSdrLogon())) && hasFakeIp() == cMsgGSServerType.hasFakeIp()) {
                return (!hasFakeIp() || getFakeIp() == cMsgGSServerType.getFakeIp()) && getUnknownFields().equals(cMsgGSServerType.getUnknownFields());
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
            if (hasAppIdServed()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppIdServed();
            }
            if (hasFlags()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFlags();
            }
            if (hasDeprecatedGameIpAddress()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDeprecatedGameIpAddress();
            }
            if (hasGamePort()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getGamePort();
            }
            if (hasGameDir()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getGameDir().hashCode();
            }
            if (hasGameVersion()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getGameVersion().hashCode();
            }
            if (hasGameQueryPort()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getGameQueryPort();
            }
            if (hasGamePortLocal()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getGamePortLocal();
            }
            if (hasSdrLogon()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getSdrLogon().hashCode();
            }
            if (hasFakeIp()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getFakeIp();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgGSServerType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgGSServerType parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgGSServerType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgGSServerType parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgGSServerType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgGSServerType parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgGSServerType parseFrom(InputStream inputStream) throws IOException {
            return (CMsgGSServerType) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgGSServerType parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGSServerType) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGSServerType parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgGSServerType) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgGSServerType parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGSServerType) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGSServerType parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgGSServerType) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgGSServerType parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGSServerType) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgGSServerType cMsgGSServerType) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgGSServerType);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgGSServerTypeOrBuilder {
            private int appIdServed_;
            private int bitField0_;
            private int deprecatedGameIpAddress_;
            private int fakeIp_;
            private int flags_;
            private Object gameDir_;
            private int gamePortLocal_;
            private int gamePort_;
            private int gameQueryPort_;
            private Object gameVersion_;
            private ByteString sdrLogon_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGSServerType_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGSServerType_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGSServerType.class, Builder.class);
            }

            private Builder() {
                this.gameDir_ = "";
                this.gameVersion_ = "";
                this.sdrLogon_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.gameDir_ = "";
                this.gameVersion_ = "";
                this.sdrLogon_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appIdServed_ = 0;
                this.flags_ = 0;
                this.deprecatedGameIpAddress_ = 0;
                this.gamePort_ = 0;
                this.gameDir_ = "";
                this.gameVersion_ = "";
                this.gameQueryPort_ = 0;
                this.gamePortLocal_ = 0;
                this.sdrLogon_ = ByteString.EMPTY;
                this.fakeIp_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGSServerType_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgGSServerType getDefaultInstanceForType() {
                return CMsgGSServerType.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGSServerType build() {
                CMsgGSServerType cMsgGSServerTypeBuildPartial = buildPartial();
                if (cMsgGSServerTypeBuildPartial.isInitialized()) {
                    return cMsgGSServerTypeBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgGSServerTypeBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGSServerType buildPartial() {
                CMsgGSServerType cMsgGSServerType = new CMsgGSServerType(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgGSServerType);
                }
                onBuilt();
                return cMsgGSServerType;
            }

            private void buildPartial0(CMsgGSServerType cMsgGSServerType) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgGSServerType.appIdServed_ = this.appIdServed_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgGSServerType.flags_ = this.flags_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgGSServerType.deprecatedGameIpAddress_ = this.deprecatedGameIpAddress_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgGSServerType.gamePort_ = this.gamePort_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgGSServerType.gameDir_ = this.gameDir_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgGSServerType.gameVersion_ = this.gameVersion_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgGSServerType.gameQueryPort_ = this.gameQueryPort_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgGSServerType.gamePortLocal_ = this.gamePortLocal_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgGSServerType.sdrLogon_ = this.sdrLogon_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgGSServerType.fakeIp_ = this.fakeIp_;
                    i |= 512;
                }
                cMsgGSServerType.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgGSServerType) {
                    return mergeFrom((CMsgGSServerType) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgGSServerType cMsgGSServerType) {
                if (cMsgGSServerType == CMsgGSServerType.getDefaultInstance()) {
                    return this;
                }
                if (cMsgGSServerType.hasAppIdServed()) {
                    setAppIdServed(cMsgGSServerType.getAppIdServed());
                }
                if (cMsgGSServerType.hasFlags()) {
                    setFlags(cMsgGSServerType.getFlags());
                }
                if (cMsgGSServerType.hasDeprecatedGameIpAddress()) {
                    setDeprecatedGameIpAddress(cMsgGSServerType.getDeprecatedGameIpAddress());
                }
                if (cMsgGSServerType.hasGamePort()) {
                    setGamePort(cMsgGSServerType.getGamePort());
                }
                if (cMsgGSServerType.hasGameDir()) {
                    this.gameDir_ = cMsgGSServerType.gameDir_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (cMsgGSServerType.hasGameVersion()) {
                    this.gameVersion_ = cMsgGSServerType.gameVersion_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cMsgGSServerType.hasGameQueryPort()) {
                    setGameQueryPort(cMsgGSServerType.getGameQueryPort());
                }
                if (cMsgGSServerType.hasGamePortLocal()) {
                    setGamePortLocal(cMsgGSServerType.getGamePortLocal());
                }
                if (cMsgGSServerType.hasSdrLogon()) {
                    setSdrLogon(cMsgGSServerType.getSdrLogon());
                }
                if (cMsgGSServerType.hasFakeIp()) {
                    setFakeIp(cMsgGSServerType.getFakeIp());
                }
                mergeUnknownFields(cMsgGSServerType.getUnknownFields());
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
                                case 8:
                                    this.appIdServed_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.flags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.deprecatedGameIpAddress_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.gamePort_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 42:
                                    this.gameDir_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                    break;
                                case 50:
                                    this.gameVersion_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.gameQueryPort_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.sdrLogon_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.WATCHING_BROADCAST_TITLE_FIELD_NUMBER /* 77 */:
                                    this.fakeIp_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 512;
                                    break;
                                case 80:
                                    this.gamePortLocal_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasAppIdServed() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getAppIdServed() {
                return this.appIdServed_;
            }

            public Builder setAppIdServed(int i) {
                this.appIdServed_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppIdServed() {
                this.bitField0_ &= -2;
                this.appIdServed_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasFlags() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getFlags() {
                return this.flags_;
            }

            public Builder setFlags(int i) {
                this.flags_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFlags() {
                this.bitField0_ &= -3;
                this.flags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasDeprecatedGameIpAddress() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getDeprecatedGameIpAddress() {
                return this.deprecatedGameIpAddress_;
            }

            public Builder setDeprecatedGameIpAddress(int i) {
                this.deprecatedGameIpAddress_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDeprecatedGameIpAddress() {
                this.bitField0_ &= -5;
                this.deprecatedGameIpAddress_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasGamePort() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getGamePort() {
                return this.gamePort_;
            }

            public Builder setGamePort(int i) {
                this.gamePort_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearGamePort() {
                this.bitField0_ &= -9;
                this.gamePort_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasGameDir() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public String getGameDir() {
                Object obj = this.gameDir_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.gameDir_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public ByteString getGameDirBytes() {
                Object obj = this.gameDir_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gameDir_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setGameDir(String str) {
                str.getClass();
                this.gameDir_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearGameDir() {
                this.gameDir_ = CMsgGSServerType.getDefaultInstance().getGameDir();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setGameDirBytes(ByteString byteString) {
                byteString.getClass();
                this.gameDir_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasGameVersion() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public String getGameVersion() {
                Object obj = this.gameVersion_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.gameVersion_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public ByteString getGameVersionBytes() {
                Object obj = this.gameVersion_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gameVersion_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setGameVersion(String str) {
                str.getClass();
                this.gameVersion_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearGameVersion() {
                this.gameVersion_ = CMsgGSServerType.getDefaultInstance().getGameVersion();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setGameVersionBytes(ByteString byteString) {
                byteString.getClass();
                this.gameVersion_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasGameQueryPort() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getGameQueryPort() {
                return this.gameQueryPort_;
            }

            public Builder setGameQueryPort(int i) {
                this.gameQueryPort_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearGameQueryPort() {
                this.bitField0_ &= -65;
                this.gameQueryPort_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasGamePortLocal() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getGamePortLocal() {
                return this.gamePortLocal_;
            }

            public Builder setGamePortLocal(int i) {
                this.gamePortLocal_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearGamePortLocal() {
                this.bitField0_ &= -129;
                this.gamePortLocal_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasSdrLogon() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public ByteString getSdrLogon() {
                return this.sdrLogon_;
            }

            public Builder setSdrLogon(ByteString byteString) {
                byteString.getClass();
                this.sdrLogon_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearSdrLogon() {
                this.bitField0_ &= -257;
                this.sdrLogon_ = CMsgGSServerType.getDefaultInstance().getSdrLogon();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public boolean hasFakeIp() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSServerTypeOrBuilder
            public int getFakeIp() {
                return this.fakeIp_;
            }

            public Builder setFakeIp(int i) {
                this.fakeIp_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearFakeIp() {
                this.bitField0_ &= -513;
                this.fakeIp_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgGSServerType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgGSServerType> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgGSServerType> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgGSServerType getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class CMsgGSStatusReply extends GeneratedMessage implements CMsgGSStatusReplyOrBuilder {
        private static final CMsgGSStatusReply DEFAULT_INSTANCE;
        public static final int IS_SECURE_FIELD_NUMBER = 1;
        public static final int IS_VALVEDS_FIELD_NUMBER = 2;
        private static final Parser<CMsgGSStatusReply> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean isSecure_;
        private boolean isValveds_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgGSStatusReply.class.getName());
            DEFAULT_INSTANCE = new CMsgGSStatusReply();
            PARSER = new AbstractParser<CMsgGSStatusReply>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReply.1
                @Override // com.google.protobuf.Parser
                public CMsgGSStatusReply parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgGSStatusReply.newBuilder();
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

        private CMsgGSStatusReply(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.isSecure_ = false;
            this.isValveds_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgGSStatusReply() {
            this.isSecure_ = false;
            this.isValveds_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverGameservers.internal_static_CMsgGSStatusReply_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverGameservers.internal_static_CMsgGSStatusReply_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGSStatusReply.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
        public boolean hasIsSecure() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
        public boolean getIsSecure() {
            return this.isSecure_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
        public boolean hasIsValveds() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
        public boolean getIsValveds() {
            return this.isValveds_;
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
                codedOutputStream.writeBool(1, this.isSecure_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.isValveds_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.isSecure_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(2, this.isValveds_);
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
            if (!(obj instanceof CMsgGSStatusReply)) {
                return super.equals(obj);
            }
            CMsgGSStatusReply cMsgGSStatusReply = (CMsgGSStatusReply) obj;
            if (hasIsSecure() != cMsgGSStatusReply.hasIsSecure()) {
                return false;
            }
            if ((!hasIsSecure() || getIsSecure() == cMsgGSStatusReply.getIsSecure()) && hasIsValveds() == cMsgGSStatusReply.hasIsValveds()) {
                return (!hasIsValveds() || getIsValveds() == cMsgGSStatusReply.getIsValveds()) && getUnknownFields().equals(cMsgGSStatusReply.getUnknownFields());
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
            if (hasIsSecure()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getIsSecure());
            }
            if (hasIsValveds()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getIsValveds());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgGSStatusReply parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgGSStatusReply parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgGSStatusReply parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgGSStatusReply parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgGSStatusReply parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgGSStatusReply parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgGSStatusReply parseFrom(InputStream inputStream) throws IOException {
            return (CMsgGSStatusReply) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgGSStatusReply parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGSStatusReply) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGSStatusReply parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgGSStatusReply) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgGSStatusReply parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGSStatusReply) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGSStatusReply parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgGSStatusReply) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgGSStatusReply parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGSStatusReply) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgGSStatusReply cMsgGSStatusReply) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgGSStatusReply);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgGSStatusReplyOrBuilder {
            private int bitField0_;
            private boolean isSecure_;
            private boolean isValveds_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGSStatusReply_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGSStatusReply_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGSStatusReply.class, Builder.class);
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
                this.isSecure_ = false;
                this.isValveds_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGSStatusReply_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgGSStatusReply getDefaultInstanceForType() {
                return CMsgGSStatusReply.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGSStatusReply build() {
                CMsgGSStatusReply cMsgGSStatusReplyBuildPartial = buildPartial();
                if (cMsgGSStatusReplyBuildPartial.isInitialized()) {
                    return cMsgGSStatusReplyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgGSStatusReplyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGSStatusReply buildPartial() {
                CMsgGSStatusReply cMsgGSStatusReply = new CMsgGSStatusReply(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgGSStatusReply);
                }
                onBuilt();
                return cMsgGSStatusReply;
            }

            private void buildPartial0(CMsgGSStatusReply cMsgGSStatusReply) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgGSStatusReply.isSecure_ = this.isSecure_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgGSStatusReply.isValveds_ = this.isValveds_;
                    i |= 2;
                }
                cMsgGSStatusReply.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgGSStatusReply) {
                    return mergeFrom((CMsgGSStatusReply) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgGSStatusReply cMsgGSStatusReply) {
                if (cMsgGSStatusReply == CMsgGSStatusReply.getDefaultInstance()) {
                    return this;
                }
                if (cMsgGSStatusReply.hasIsSecure()) {
                    setIsSecure(cMsgGSStatusReply.getIsSecure());
                }
                if (cMsgGSStatusReply.hasIsValveds()) {
                    setIsValveds(cMsgGSStatusReply.getIsValveds());
                }
                mergeUnknownFields(cMsgGSStatusReply.getUnknownFields());
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
                                    this.isSecure_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.isValveds_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
            public boolean hasIsSecure() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
            public boolean getIsSecure() {
                return this.isSecure_;
            }

            public Builder setIsSecure(boolean z) {
                this.isSecure_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearIsSecure() {
                this.bitField0_ &= -2;
                this.isSecure_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
            public boolean hasIsValveds() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGSStatusReplyOrBuilder
            public boolean getIsValveds() {
                return this.isValveds_;
            }

            public Builder setIsValveds(boolean z) {
                this.isValveds_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIsValveds() {
                this.bitField0_ &= -3;
                this.isValveds_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgGSStatusReply getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgGSStatusReply> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgGSStatusReply> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgGSStatusReply getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientGMSServerQuery extends GeneratedMessage implements CMsgClientGMSServerQueryOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientGMSServerQuery DEFAULT_INSTANCE;
        public static final int FILTER_TEXT_FIELD_NUMBER = 4;
        public static final int GEO_LOCATION_IP_FIELD_NUMBER = 2;
        public static final int MAX_SERVERS_FIELD_NUMBER = 5;
        private static final Parser<CMsgClientGMSServerQuery> PARSER;
        public static final int REGION_CODE_FIELD_NUMBER = 3;
        public static final int SDR_PING_LOCATION_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private volatile Object filterText_;
        private int geoLocationIp_;
        private int maxServers_;
        private byte memoizedIsInitialized;
        private int regionCode_;
        private volatile Object sdrPingLocation_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientGMSServerQuery.class.getName());
            DEFAULT_INSTANCE = new CMsgClientGMSServerQuery();
            PARSER = new AbstractParser<CMsgClientGMSServerQuery>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.1
                @Override // com.google.protobuf.Parser
                public CMsgClientGMSServerQuery parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientGMSServerQuery.newBuilder();
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

        private CMsgClientGMSServerQuery(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.geoLocationIp_ = 0;
            this.regionCode_ = 0;
            this.filterText_ = "";
            this.maxServers_ = 0;
            this.sdrPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientGMSServerQuery() {
            this.appId_ = 0;
            this.geoLocationIp_ = 0;
            this.regionCode_ = 0;
            this.filterText_ = "";
            this.maxServers_ = 0;
            this.sdrPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.filterText_ = "";
            this.sdrPingLocation_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverGameservers.internal_static_CMsgClientGMSServerQuery_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverGameservers.internal_static_CMsgClientGMSServerQuery_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGMSServerQuery.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public boolean hasGeoLocationIp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public int getGeoLocationIp() {
            return this.geoLocationIp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public boolean hasRegionCode() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public int getRegionCode() {
            return this.regionCode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public boolean hasFilterText() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public String getFilterText() {
            Object obj = this.filterText_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.filterText_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public ByteString getFilterTextBytes() {
            Object obj = this.filterText_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.filterText_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public boolean hasMaxServers() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public int getMaxServers() {
            return this.maxServers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public boolean hasSdrPingLocation() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public String getSdrPingLocation() {
            Object obj = this.sdrPingLocation_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sdrPingLocation_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
        public ByteString getSdrPingLocationBytes() {
            Object obj = this.sdrPingLocation_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdrPingLocation_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(2, this.geoLocationIp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.regionCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.filterText_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.maxServers_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.sdrPingLocation_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.geoLocationIp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.regionCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.filterText_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.maxServers_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(6, this.sdrPingLocation_);
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
            if (!(obj instanceof CMsgClientGMSServerQuery)) {
                return super.equals(obj);
            }
            CMsgClientGMSServerQuery cMsgClientGMSServerQuery = (CMsgClientGMSServerQuery) obj;
            if (hasAppId() != cMsgClientGMSServerQuery.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientGMSServerQuery.getAppId()) || hasGeoLocationIp() != cMsgClientGMSServerQuery.hasGeoLocationIp()) {
                return false;
            }
            if ((hasGeoLocationIp() && getGeoLocationIp() != cMsgClientGMSServerQuery.getGeoLocationIp()) || hasRegionCode() != cMsgClientGMSServerQuery.hasRegionCode()) {
                return false;
            }
            if ((hasRegionCode() && getRegionCode() != cMsgClientGMSServerQuery.getRegionCode()) || hasFilterText() != cMsgClientGMSServerQuery.hasFilterText()) {
                return false;
            }
            if ((hasFilterText() && !getFilterText().equals(cMsgClientGMSServerQuery.getFilterText())) || hasMaxServers() != cMsgClientGMSServerQuery.hasMaxServers()) {
                return false;
            }
            if ((!hasMaxServers() || getMaxServers() == cMsgClientGMSServerQuery.getMaxServers()) && hasSdrPingLocation() == cMsgClientGMSServerQuery.hasSdrPingLocation()) {
                return (!hasSdrPingLocation() || getSdrPingLocation().equals(cMsgClientGMSServerQuery.getSdrPingLocation())) && getUnknownFields().equals(cMsgClientGMSServerQuery.getUnknownFields());
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
            if (hasGeoLocationIp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getGeoLocationIp();
            }
            if (hasRegionCode()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRegionCode();
            }
            if (hasFilterText()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getFilterText().hashCode();
            }
            if (hasMaxServers()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getMaxServers();
            }
            if (hasSdrPingLocation()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getSdrPingLocation().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientGMSServerQuery parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientGMSServerQuery parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientGMSServerQuery parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientGMSServerQuery parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientGMSServerQuery parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientGMSServerQuery parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientGMSServerQuery parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGMSServerQuery) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGMSServerQuery parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGMSServerQuery) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGMSServerQuery parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGMSServerQuery) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGMSServerQuery parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGMSServerQuery) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGMSServerQuery parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientGMSServerQuery) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientGMSServerQuery parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGMSServerQuery) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientGMSServerQuery cMsgClientGMSServerQuery) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientGMSServerQuery);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientGMSServerQueryOrBuilder {
            private int appId_;
            private int bitField0_;
            private Object filterText_;
            private int geoLocationIp_;
            private int maxServers_;
            private int regionCode_;
            private Object sdrPingLocation_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverGameservers.internal_static_CMsgClientGMSServerQuery_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverGameservers.internal_static_CMsgClientGMSServerQuery_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGMSServerQuery.class, Builder.class);
            }

            private Builder() {
                this.filterText_ = "";
                this.sdrPingLocation_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.filterText_ = "";
                this.sdrPingLocation_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.geoLocationIp_ = 0;
                this.regionCode_ = 0;
                this.filterText_ = "";
                this.maxServers_ = 0;
                this.sdrPingLocation_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverGameservers.internal_static_CMsgClientGMSServerQuery_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientGMSServerQuery getDefaultInstanceForType() {
                return CMsgClientGMSServerQuery.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGMSServerQuery build() {
                CMsgClientGMSServerQuery cMsgClientGMSServerQueryBuildPartial = buildPartial();
                if (cMsgClientGMSServerQueryBuildPartial.isInitialized()) {
                    return cMsgClientGMSServerQueryBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientGMSServerQueryBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGMSServerQuery buildPartial() {
                CMsgClientGMSServerQuery cMsgClientGMSServerQuery = new CMsgClientGMSServerQuery(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientGMSServerQuery);
                }
                onBuilt();
                return cMsgClientGMSServerQuery;
            }

            private void buildPartial0(CMsgClientGMSServerQuery cMsgClientGMSServerQuery) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientGMSServerQuery.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientGMSServerQuery.geoLocationIp_ = this.geoLocationIp_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientGMSServerQuery.regionCode_ = this.regionCode_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientGMSServerQuery.filterText_ = this.filterText_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientGMSServerQuery.maxServers_ = this.maxServers_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientGMSServerQuery.sdrPingLocation_ = this.sdrPingLocation_;
                    i |= 32;
                }
                cMsgClientGMSServerQuery.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientGMSServerQuery) {
                    return mergeFrom((CMsgClientGMSServerQuery) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientGMSServerQuery cMsgClientGMSServerQuery) {
                if (cMsgClientGMSServerQuery == CMsgClientGMSServerQuery.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientGMSServerQuery.hasAppId()) {
                    setAppId(cMsgClientGMSServerQuery.getAppId());
                }
                if (cMsgClientGMSServerQuery.hasGeoLocationIp()) {
                    setGeoLocationIp(cMsgClientGMSServerQuery.getGeoLocationIp());
                }
                if (cMsgClientGMSServerQuery.hasRegionCode()) {
                    setRegionCode(cMsgClientGMSServerQuery.getRegionCode());
                }
                if (cMsgClientGMSServerQuery.hasFilterText()) {
                    this.filterText_ = cMsgClientGMSServerQuery.filterText_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cMsgClientGMSServerQuery.hasMaxServers()) {
                    setMaxServers(cMsgClientGMSServerQuery.getMaxServers());
                }
                if (cMsgClientGMSServerQuery.hasSdrPingLocation()) {
                    this.sdrPingLocation_ = cMsgClientGMSServerQuery.sdrPingLocation_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientGMSServerQuery.getUnknownFields());
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
                                    this.geoLocationIp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.regionCode_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.filterText_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.maxServers_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 50) {
                                    this.sdrPingLocation_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public boolean hasGeoLocationIp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public int getGeoLocationIp() {
                return this.geoLocationIp_;
            }

            public Builder setGeoLocationIp(int i) {
                this.geoLocationIp_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearGeoLocationIp() {
                this.bitField0_ &= -3;
                this.geoLocationIp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public boolean hasRegionCode() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public int getRegionCode() {
                return this.regionCode_;
            }

            public Builder setRegionCode(int i) {
                this.regionCode_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRegionCode() {
                this.bitField0_ &= -5;
                this.regionCode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public boolean hasFilterText() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public String getFilterText() {
                Object obj = this.filterText_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.filterText_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public ByteString getFilterTextBytes() {
                Object obj = this.filterText_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.filterText_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFilterText(String str) {
                str.getClass();
                this.filterText_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearFilterText() {
                this.filterText_ = CMsgClientGMSServerQuery.getDefaultInstance().getFilterText();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setFilterTextBytes(ByteString byteString) {
                byteString.getClass();
                this.filterText_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public boolean hasMaxServers() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public int getMaxServers() {
                return this.maxServers_;
            }

            public Builder setMaxServers(int i) {
                this.maxServers_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearMaxServers() {
                this.bitField0_ &= -17;
                this.maxServers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public boolean hasSdrPingLocation() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public String getSdrPingLocation() {
                Object obj = this.sdrPingLocation_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sdrPingLocation_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgClientGMSServerQueryOrBuilder
            public ByteString getSdrPingLocationBytes() {
                Object obj = this.sdrPingLocation_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sdrPingLocation_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSdrPingLocation(String str) {
                str.getClass();
                this.sdrPingLocation_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearSdrPingLocation() {
                this.sdrPingLocation_ = CMsgClientGMSServerQuery.getDefaultInstance().getSdrPingLocation();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setSdrPingLocationBytes(ByteString byteString) {
                byteString.getClass();
                this.sdrPingLocation_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }
        }

        public static CMsgClientGMSServerQuery getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientGMSServerQuery> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientGMSServerQuery> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientGMSServerQuery getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgGMSClientServerQueryResponse extends GeneratedMessage implements CMsgGMSClientServerQueryResponseOrBuilder {
        private static final CMsgGMSClientServerQueryResponse DEFAULT_INSTANCE;
        public static final int DEFAULT_SERVER_DATA_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 2;
        private static final Parser<CMsgGMSClientServerQueryResponse> PARSER;
        public static final int SERVERS_FIELD_NUMBER = 1;
        public static final int SERVER_STRINGS_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Server defaultServerData_;
        private volatile Object error_;
        private byte memoizedIsInitialized;
        private LazyStringArrayList serverStrings_;
        private List<Server> servers_;

        /* JADX INFO: loaded from: classes2.dex */
        public interface ServerOrBuilder extends MessageOrBuilder {
            int getAppId();

            int getAuthPlayers();

            int getBots();

            int getDeprecatedServerIp();

            int getFlags();

            String getGameDescriptionStr();

            ByteString getGameDescriptionStrBytes();

            int getGameDescriptionStrindex();

            int getGamePort();

            String getGamedirStr();

            ByteString getGamedirStrBytes();

            int getGamedirStrindex();

            String getGametypeStr();

            ByteString getGametypeStrBytes();

            int getGametypeStrindex();

            String getMapStr();

            ByteString getMapStrBytes();

            int getMapStrindex();

            int getMaxPlayers();

            String getNameStr();

            ByteString getNameStrBytes();

            int getNameStrindex();

            int getPlayers();

            int getQueryPort();

            int getRevision();

            String getSdrPingLocation();

            ByteString getSdrPingLocationBytes();

            int getSdrPopid();

            SteammessagesBase.CMsgIPAddress getServerIp();

            SteammessagesBase.CMsgIPAddressOrBuilder getServerIpOrBuilder();

            String getSpectatorNameStr();

            ByteString getSpectatorNameStrBytes();

            int getSpectatorNameStrindex();

            int getSpectatorPort();

            long getSteamId();

            String getVersionStr();

            ByteString getVersionStrBytes();

            int getVersionStrindex();

            boolean hasAppId();

            boolean hasAuthPlayers();

            boolean hasBots();

            boolean hasDeprecatedServerIp();

            boolean hasFlags();

            boolean hasGameDescriptionStr();

            boolean hasGameDescriptionStrindex();

            boolean hasGamePort();

            boolean hasGamedirStr();

            boolean hasGamedirStrindex();

            boolean hasGametypeStr();

            boolean hasGametypeStrindex();

            boolean hasMapStr();

            boolean hasMapStrindex();

            boolean hasMaxPlayers();

            boolean hasNameStr();

            boolean hasNameStrindex();

            boolean hasPlayers();

            boolean hasQueryPort();

            boolean hasRevision();

            boolean hasSdrPingLocation();

            boolean hasSdrPopid();

            boolean hasServerIp();

            boolean hasSpectatorNameStr();

            boolean hasSpectatorNameStrindex();

            boolean hasSpectatorPort();

            boolean hasSteamId();

            boolean hasVersionStr();

            boolean hasVersionStrindex();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgGMSClientServerQueryResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgGMSClientServerQueryResponse();
            PARSER = new AbstractParser<CMsgGMSClientServerQueryResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgGMSClientServerQueryResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgGMSClientServerQueryResponse.newBuilder();
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

        private CMsgGMSClientServerQueryResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.error_ = "";
            this.serverStrings_ = LazyStringArrayList.emptyList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgGMSClientServerQueryResponse() {
            this.error_ = "";
            this.serverStrings_ = LazyStringArrayList.emptyList();
            this.memoizedIsInitialized = (byte) -1;
            this.servers_ = Collections.emptyList();
            this.error_ = "";
            this.serverStrings_ = LazyStringArrayList.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGMSClientServerQueryResponse.class, Builder.class);
        }

        public static final class Server extends GeneratedMessage implements ServerOrBuilder {
            public static final int APP_ID_FIELD_NUMBER = 12;
            public static final int AUTH_PLAYERS_FIELD_NUMBER = 3;
            public static final int BOTS_FIELD_NUMBER = 14;
            private static final Server DEFAULT_INSTANCE;
            public static final int DEPRECATED_SERVER_IP_FIELD_NUMBER = 1;
            public static final int FLAGS_FIELD_NUMBER = 11;
            public static final int GAMEDIR_STRINDEX_FIELD_NUMBER = 17;
            public static final int GAMEDIR_STR_FIELD_NUMBER = 16;
            public static final int GAMETYPE_STRINDEX_FIELD_NUMBER = 27;
            public static final int GAMETYPE_STR_FIELD_NUMBER = 26;
            public static final int GAME_DESCRIPTION_STRINDEX_FIELD_NUMBER = 23;
            public static final int GAME_DESCRIPTION_STR_FIELD_NUMBER = 22;
            public static final int GAME_PORT_FIELD_NUMBER = 9;
            public static final int MAP_STRINDEX_FIELD_NUMBER = 19;
            public static final int MAP_STR_FIELD_NUMBER = 18;
            public static final int MAX_PLAYERS_FIELD_NUMBER = 13;
            public static final int NAME_STRINDEX_FIELD_NUMBER = 21;
            public static final int NAME_STR_FIELD_NUMBER = 20;
            private static final Parser<Server> PARSER;
            public static final int PLAYERS_FIELD_NUMBER = 8;
            public static final int QUERY_PORT_FIELD_NUMBER = 2;
            public static final int REVISION_FIELD_NUMBER = 7;
            public static final int SDR_PING_LOCATION_FIELD_NUMBER = 32;
            public static final int SDR_POPID_FIELD_NUMBER = 10;
            public static final int SERVER_IP_FIELD_NUMBER = 4;
            public static final int SPECTATOR_NAME_STRINDEX_FIELD_NUMBER = 31;
            public static final int SPECTATOR_NAME_STR_FIELD_NUMBER = 30;
            public static final int SPECTATOR_PORT_FIELD_NUMBER = 15;
            public static final int STEAM_ID_FIELD_NUMBER = 6;
            public static final int VERSION_STRINDEX_FIELD_NUMBER = 25;
            public static final int VERSION_STR_FIELD_NUMBER = 24;
            private static final long serialVersionUID = 0;
            private int appId_;
            private int authPlayers_;
            private int bitField0_;
            private int bots_;
            private int deprecatedServerIp_;
            private int flags_;
            private volatile Object gameDescriptionStr_;
            private int gameDescriptionStrindex_;
            private int gamePort_;
            private volatile Object gamedirStr_;
            private int gamedirStrindex_;
            private volatile Object gametypeStr_;
            private int gametypeStrindex_;
            private volatile Object mapStr_;
            private int mapStrindex_;
            private int maxPlayers_;
            private byte memoizedIsInitialized;
            private volatile Object nameStr_;
            private int nameStrindex_;
            private int players_;
            private int queryPort_;
            private int revision_;
            private volatile Object sdrPingLocation_;
            private int sdrPopid_;
            private SteammessagesBase.CMsgIPAddress serverIp_;
            private volatile Object spectatorNameStr_;
            private int spectatorNameStrindex_;
            private int spectatorPort_;
            private long steamId_;
            private volatile Object versionStr_;
            private int versionStrindex_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Server.class.getName());
                DEFAULT_INSTANCE = new Server();
                PARSER = new AbstractParser<Server>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server.1
                    @Override // com.google.protobuf.Parser
                    public Server parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Server.newBuilder();
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

            private Server(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.deprecatedServerIp_ = 0;
                this.queryPort_ = 0;
                this.authPlayers_ = 0;
                this.steamId_ = 0L;
                this.revision_ = 0;
                this.players_ = 0;
                this.gamePort_ = 0;
                this.sdrPopid_ = 0;
                this.sdrPingLocation_ = "";
                this.flags_ = 0;
                this.appId_ = 0;
                this.maxPlayers_ = 0;
                this.bots_ = 0;
                this.spectatorPort_ = 0;
                this.gamedirStr_ = "";
                this.gamedirStrindex_ = 0;
                this.mapStr_ = "";
                this.mapStrindex_ = 0;
                this.nameStr_ = "";
                this.nameStrindex_ = 0;
                this.gameDescriptionStr_ = "";
                this.gameDescriptionStrindex_ = 0;
                this.versionStr_ = "";
                this.versionStrindex_ = 0;
                this.gametypeStr_ = "";
                this.gametypeStrindex_ = 0;
                this.spectatorNameStr_ = "";
                this.spectatorNameStrindex_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Server() {
                this.deprecatedServerIp_ = 0;
                this.queryPort_ = 0;
                this.authPlayers_ = 0;
                this.steamId_ = 0L;
                this.revision_ = 0;
                this.players_ = 0;
                this.gamePort_ = 0;
                this.sdrPopid_ = 0;
                this.sdrPingLocation_ = "";
                this.flags_ = 0;
                this.appId_ = 0;
                this.maxPlayers_ = 0;
                this.bots_ = 0;
                this.spectatorPort_ = 0;
                this.gamedirStr_ = "";
                this.gamedirStrindex_ = 0;
                this.mapStr_ = "";
                this.mapStrindex_ = 0;
                this.nameStr_ = "";
                this.nameStrindex_ = 0;
                this.gameDescriptionStr_ = "";
                this.gameDescriptionStrindex_ = 0;
                this.versionStr_ = "";
                this.versionStrindex_ = 0;
                this.gametypeStr_ = "";
                this.gametypeStrindex_ = 0;
                this.spectatorNameStr_ = "";
                this.spectatorNameStrindex_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.sdrPingLocation_ = "";
                this.gamedirStr_ = "";
                this.mapStr_ = "";
                this.nameStr_ = "";
                this.gameDescriptionStr_ = "";
                this.versionStr_ = "";
                this.gametypeStr_ = "";
                this.spectatorNameStr_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_Server_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_Server_fieldAccessorTable.ensureFieldAccessorsInitialized(Server.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasDeprecatedServerIp() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getDeprecatedServerIp() {
                return this.deprecatedServerIp_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasQueryPort() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getQueryPort() {
                return this.queryPort_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasAuthPlayers() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getAuthPlayers() {
                return this.authPlayers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasServerIp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public SteammessagesBase.CMsgIPAddress getServerIp() {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.serverIp_;
                return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public SteammessagesBase.CMsgIPAddressOrBuilder getServerIpOrBuilder() {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.serverIp_;
                return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasSteamId() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public long getSteamId() {
                return this.steamId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasRevision() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getRevision() {
                return this.revision_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasPlayers() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getPlayers() {
                return this.players_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGamePort() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getGamePort() {
                return this.gamePort_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasSdrPopid() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getSdrPopid() {
                return this.sdrPopid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasSdrPingLocation() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getSdrPingLocation() {
                Object obj = this.sdrPingLocation_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sdrPingLocation_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getSdrPingLocationBytes() {
                Object obj = this.sdrPingLocation_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sdrPingLocation_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasFlags() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getFlags() {
                return this.flags_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getAppId() {
                return this.appId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasMaxPlayers() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getMaxPlayers() {
                return this.maxPlayers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasBots() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getBots() {
                return this.bots_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasSpectatorPort() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getSpectatorPort() {
                return this.spectatorPort_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGamedirStr() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getGamedirStr() {
                Object obj = this.gamedirStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gamedirStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getGamedirStrBytes() {
                Object obj = this.gamedirStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gamedirStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGamedirStrindex() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getGamedirStrindex() {
                return this.gamedirStrindex_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasMapStr() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getMapStr() {
                Object obj = this.mapStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.mapStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getMapStrBytes() {
                Object obj = this.mapStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.mapStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasMapStrindex() {
                return (this.bitField0_ & 262144) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getMapStrindex() {
                return this.mapStrindex_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasNameStr() {
                return (this.bitField0_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getNameStr() {
                Object obj = this.nameStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.nameStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getNameStrBytes() {
                Object obj = this.nameStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.nameStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasNameStrindex() {
                return (this.bitField0_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getNameStrindex() {
                return this.nameStrindex_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGameDescriptionStr() {
                return (this.bitField0_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getGameDescriptionStr() {
                Object obj = this.gameDescriptionStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gameDescriptionStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getGameDescriptionStrBytes() {
                Object obj = this.gameDescriptionStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gameDescriptionStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGameDescriptionStrindex() {
                return (this.bitField0_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getGameDescriptionStrindex() {
                return this.gameDescriptionStrindex_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasVersionStr() {
                return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getVersionStr() {
                Object obj = this.versionStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.versionStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getVersionStrBytes() {
                Object obj = this.versionStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.versionStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasVersionStrindex() {
                return (this.bitField0_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getVersionStrindex() {
                return this.versionStrindex_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGametypeStr() {
                return (this.bitField0_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getGametypeStr() {
                Object obj = this.gametypeStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gametypeStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getGametypeStrBytes() {
                Object obj = this.gametypeStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gametypeStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasGametypeStrindex() {
                return (this.bitField0_ & 67108864) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getGametypeStrindex() {
                return this.gametypeStrindex_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasSpectatorNameStr() {
                return (this.bitField0_ & 134217728) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public String getSpectatorNameStr() {
                Object obj = this.spectatorNameStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.spectatorNameStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public ByteString getSpectatorNameStrBytes() {
                Object obj = this.spectatorNameStr_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.spectatorNameStr_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public boolean hasSpectatorNameStrindex() {
                return (this.bitField0_ & 268435456) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
            public int getSpectatorNameStrindex() {
                return this.spectatorNameStrindex_;
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
                    codedOutputStream.writeUInt32(1, this.deprecatedServerIp_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.queryPort_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeUInt32(3, this.authPlayers_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeMessage(4, getServerIp());
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeFixed64(6, this.steamId_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeUInt32(7, this.revision_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    codedOutputStream.writeUInt32(8, this.players_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    codedOutputStream.writeUInt32(9, this.gamePort_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    codedOutputStream.writeFixed32(10, this.sdrPopid_);
                }
                if ((this.bitField0_ & 1024) != 0) {
                    codedOutputStream.writeUInt32(11, this.flags_);
                }
                if ((this.bitField0_ & 2048) != 0) {
                    codedOutputStream.writeUInt32(12, this.appId_);
                }
                if ((this.bitField0_ & 4096) != 0) {
                    codedOutputStream.writeUInt32(13, this.maxPlayers_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    codedOutputStream.writeUInt32(14, this.bots_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    codedOutputStream.writeUInt32(15, this.spectatorPort_);
                }
                if ((this.bitField0_ & 32768) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 16, this.gamedirStr_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    codedOutputStream.writeUInt32(17, this.gamedirStrindex_);
                }
                if ((this.bitField0_ & 131072) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 18, this.mapStr_);
                }
                if ((this.bitField0_ & 262144) != 0) {
                    codedOutputStream.writeUInt32(19, this.mapStrindex_);
                }
                if ((this.bitField0_ & 524288) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 20, this.nameStr_);
                }
                if ((this.bitField0_ & 1048576) != 0) {
                    codedOutputStream.writeUInt32(21, this.nameStrindex_);
                }
                if ((this.bitField0_ & 2097152) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 22, this.gameDescriptionStr_);
                }
                if ((this.bitField0_ & 4194304) != 0) {
                    codedOutputStream.writeUInt32(23, this.gameDescriptionStrindex_);
                }
                if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 24, this.versionStr_);
                }
                if ((this.bitField0_ & 16777216) != 0) {
                    codedOutputStream.writeUInt32(25, this.versionStrindex_);
                }
                if ((this.bitField0_ & 33554432) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 26, this.gametypeStr_);
                }
                if ((this.bitField0_ & 67108864) != 0) {
                    codedOutputStream.writeUInt32(27, this.gametypeStrindex_);
                }
                if ((this.bitField0_ & 134217728) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 30, this.spectatorNameStr_);
                }
                if ((this.bitField0_ & 268435456) != 0) {
                    codedOutputStream.writeUInt32(31, this.spectatorNameStrindex_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 32, this.sdrPingLocation_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.deprecatedServerIp_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.queryPort_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.authPlayers_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeMessageSize(4, getServerIp());
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeFixed64Size(6, this.steamId_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.revision_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(8, this.players_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(9, this.gamePort_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeFixed32Size(10, this.sdrPopid_);
                }
                if ((this.bitField0_ & 1024) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(11, this.flags_);
                }
                if ((this.bitField0_ & 2048) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(12, this.appId_);
                }
                if ((this.bitField0_ & 4096) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(13, this.maxPlayers_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(14, this.bots_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(15, this.spectatorPort_);
                }
                if ((this.bitField0_ & 32768) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(16, this.gamedirStr_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(17, this.gamedirStrindex_);
                }
                if ((this.bitField0_ & 131072) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(18, this.mapStr_);
                }
                if ((this.bitField0_ & 262144) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(19, this.mapStrindex_);
                }
                if ((this.bitField0_ & 524288) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(20, this.nameStr_);
                }
                if ((this.bitField0_ & 1048576) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(21, this.nameStrindex_);
                }
                if ((this.bitField0_ & 2097152) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(22, this.gameDescriptionStr_);
                }
                if ((this.bitField0_ & 4194304) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(23, this.gameDescriptionStrindex_);
                }
                if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(24, this.versionStr_);
                }
                if ((this.bitField0_ & 16777216) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(25, this.versionStrindex_);
                }
                if ((this.bitField0_ & 33554432) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(26, this.gametypeStr_);
                }
                if ((this.bitField0_ & 67108864) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(27, this.gametypeStrindex_);
                }
                if ((this.bitField0_ & 134217728) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(30, this.spectatorNameStr_);
                }
                if ((this.bitField0_ & 268435456) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(31, this.spectatorNameStrindex_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(32, this.sdrPingLocation_);
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
                if (!(obj instanceof Server)) {
                    return super.equals(obj);
                }
                Server server = (Server) obj;
                if (hasDeprecatedServerIp() != server.hasDeprecatedServerIp()) {
                    return false;
                }
                if ((hasDeprecatedServerIp() && getDeprecatedServerIp() != server.getDeprecatedServerIp()) || hasQueryPort() != server.hasQueryPort()) {
                    return false;
                }
                if ((hasQueryPort() && getQueryPort() != server.getQueryPort()) || hasAuthPlayers() != server.hasAuthPlayers()) {
                    return false;
                }
                if ((hasAuthPlayers() && getAuthPlayers() != server.getAuthPlayers()) || hasServerIp() != server.hasServerIp()) {
                    return false;
                }
                if ((hasServerIp() && !getServerIp().equals(server.getServerIp())) || hasSteamId() != server.hasSteamId()) {
                    return false;
                }
                if ((hasSteamId() && getSteamId() != server.getSteamId()) || hasRevision() != server.hasRevision()) {
                    return false;
                }
                if ((hasRevision() && getRevision() != server.getRevision()) || hasPlayers() != server.hasPlayers()) {
                    return false;
                }
                if ((hasPlayers() && getPlayers() != server.getPlayers()) || hasGamePort() != server.hasGamePort()) {
                    return false;
                }
                if ((hasGamePort() && getGamePort() != server.getGamePort()) || hasSdrPopid() != server.hasSdrPopid()) {
                    return false;
                }
                if ((hasSdrPopid() && getSdrPopid() != server.getSdrPopid()) || hasSdrPingLocation() != server.hasSdrPingLocation()) {
                    return false;
                }
                if ((hasSdrPingLocation() && !getSdrPingLocation().equals(server.getSdrPingLocation())) || hasFlags() != server.hasFlags()) {
                    return false;
                }
                if ((hasFlags() && getFlags() != server.getFlags()) || hasAppId() != server.hasAppId()) {
                    return false;
                }
                if ((hasAppId() && getAppId() != server.getAppId()) || hasMaxPlayers() != server.hasMaxPlayers()) {
                    return false;
                }
                if ((hasMaxPlayers() && getMaxPlayers() != server.getMaxPlayers()) || hasBots() != server.hasBots()) {
                    return false;
                }
                if ((hasBots() && getBots() != server.getBots()) || hasSpectatorPort() != server.hasSpectatorPort()) {
                    return false;
                }
                if ((hasSpectatorPort() && getSpectatorPort() != server.getSpectatorPort()) || hasGamedirStr() != server.hasGamedirStr()) {
                    return false;
                }
                if ((hasGamedirStr() && !getGamedirStr().equals(server.getGamedirStr())) || hasGamedirStrindex() != server.hasGamedirStrindex()) {
                    return false;
                }
                if ((hasGamedirStrindex() && getGamedirStrindex() != server.getGamedirStrindex()) || hasMapStr() != server.hasMapStr()) {
                    return false;
                }
                if ((hasMapStr() && !getMapStr().equals(server.getMapStr())) || hasMapStrindex() != server.hasMapStrindex()) {
                    return false;
                }
                if ((hasMapStrindex() && getMapStrindex() != server.getMapStrindex()) || hasNameStr() != server.hasNameStr()) {
                    return false;
                }
                if ((hasNameStr() && !getNameStr().equals(server.getNameStr())) || hasNameStrindex() != server.hasNameStrindex()) {
                    return false;
                }
                if ((hasNameStrindex() && getNameStrindex() != server.getNameStrindex()) || hasGameDescriptionStr() != server.hasGameDescriptionStr()) {
                    return false;
                }
                if ((hasGameDescriptionStr() && !getGameDescriptionStr().equals(server.getGameDescriptionStr())) || hasGameDescriptionStrindex() != server.hasGameDescriptionStrindex()) {
                    return false;
                }
                if ((hasGameDescriptionStrindex() && getGameDescriptionStrindex() != server.getGameDescriptionStrindex()) || hasVersionStr() != server.hasVersionStr()) {
                    return false;
                }
                if ((hasVersionStr() && !getVersionStr().equals(server.getVersionStr())) || hasVersionStrindex() != server.hasVersionStrindex()) {
                    return false;
                }
                if ((hasVersionStrindex() && getVersionStrindex() != server.getVersionStrindex()) || hasGametypeStr() != server.hasGametypeStr()) {
                    return false;
                }
                if ((hasGametypeStr() && !getGametypeStr().equals(server.getGametypeStr())) || hasGametypeStrindex() != server.hasGametypeStrindex()) {
                    return false;
                }
                if ((hasGametypeStrindex() && getGametypeStrindex() != server.getGametypeStrindex()) || hasSpectatorNameStr() != server.hasSpectatorNameStr()) {
                    return false;
                }
                if ((!hasSpectatorNameStr() || getSpectatorNameStr().equals(server.getSpectatorNameStr())) && hasSpectatorNameStrindex() == server.hasSpectatorNameStrindex()) {
                    return (!hasSpectatorNameStrindex() || getSpectatorNameStrindex() == server.getSpectatorNameStrindex()) && getUnknownFields().equals(server.getUnknownFields());
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
                if (hasDeprecatedServerIp()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getDeprecatedServerIp();
                }
                if (hasQueryPort()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getQueryPort();
                }
                if (hasAuthPlayers()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getAuthPlayers();
                }
                if (hasServerIp()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getServerIp().hashCode();
                }
                if (hasSteamId()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getSteamId());
                }
                if (hasRevision()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + getRevision();
                }
                if (hasPlayers()) {
                    iHashCode = (((iHashCode * 37) + 8) * 53) + getPlayers();
                }
                if (hasGamePort()) {
                    iHashCode = (((iHashCode * 37) + 9) * 53) + getGamePort();
                }
                if (hasSdrPopid()) {
                    iHashCode = (((iHashCode * 37) + 10) * 53) + getSdrPopid();
                }
                if (hasSdrPingLocation()) {
                    iHashCode = (((iHashCode * 37) + 32) * 53) + getSdrPingLocation().hashCode();
                }
                if (hasFlags()) {
                    iHashCode = (((iHashCode * 37) + 11) * 53) + getFlags();
                }
                if (hasAppId()) {
                    iHashCode = (((iHashCode * 37) + 12) * 53) + getAppId();
                }
                if (hasMaxPlayers()) {
                    iHashCode = (((iHashCode * 37) + 13) * 53) + getMaxPlayers();
                }
                if (hasBots()) {
                    iHashCode = (((iHashCode * 37) + 14) * 53) + getBots();
                }
                if (hasSpectatorPort()) {
                    iHashCode = (((iHashCode * 37) + 15) * 53) + getSpectatorPort();
                }
                if (hasGamedirStr()) {
                    iHashCode = (((iHashCode * 37) + 16) * 53) + getGamedirStr().hashCode();
                }
                if (hasGamedirStrindex()) {
                    iHashCode = (((iHashCode * 37) + 17) * 53) + getGamedirStrindex();
                }
                if (hasMapStr()) {
                    iHashCode = (((iHashCode * 37) + 18) * 53) + getMapStr().hashCode();
                }
                if (hasMapStrindex()) {
                    iHashCode = (((iHashCode * 37) + 19) * 53) + getMapStrindex();
                }
                if (hasNameStr()) {
                    iHashCode = (((iHashCode * 37) + 20) * 53) + getNameStr().hashCode();
                }
                if (hasNameStrindex()) {
                    iHashCode = (((iHashCode * 37) + 21) * 53) + getNameStrindex();
                }
                if (hasGameDescriptionStr()) {
                    iHashCode = (((iHashCode * 37) + 22) * 53) + getGameDescriptionStr().hashCode();
                }
                if (hasGameDescriptionStrindex()) {
                    iHashCode = (((iHashCode * 37) + 23) * 53) + getGameDescriptionStrindex();
                }
                if (hasVersionStr()) {
                    iHashCode = (((iHashCode * 37) + 24) * 53) + getVersionStr().hashCode();
                }
                if (hasVersionStrindex()) {
                    iHashCode = (((iHashCode * 37) + 25) * 53) + getVersionStrindex();
                }
                if (hasGametypeStr()) {
                    iHashCode = (((iHashCode * 37) + 26) * 53) + getGametypeStr().hashCode();
                }
                if (hasGametypeStrindex()) {
                    iHashCode = (((iHashCode * 37) + 27) * 53) + getGametypeStrindex();
                }
                if (hasSpectatorNameStr()) {
                    iHashCode = (((iHashCode * 37) + 30) * 53) + getSpectatorNameStr().hashCode();
                }
                if (hasSpectatorNameStrindex()) {
                    iHashCode = (((iHashCode * 37) + 31) * 53) + getSpectatorNameStrindex();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Server parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Server parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Server parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Server parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Server parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Server parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Server parseFrom(InputStream inputStream) throws IOException {
                return (Server) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Server parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Server) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Server parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Server) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Server parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Server) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Server parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Server) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Server parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Server) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Server server) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(server);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ServerOrBuilder {
                private int appId_;
                private int authPlayers_;
                private int bitField0_;
                private int bots_;
                private int deprecatedServerIp_;
                private int flags_;
                private Object gameDescriptionStr_;
                private int gameDescriptionStrindex_;
                private int gamePort_;
                private Object gamedirStr_;
                private int gamedirStrindex_;
                private Object gametypeStr_;
                private int gametypeStrindex_;
                private Object mapStr_;
                private int mapStrindex_;
                private int maxPlayers_;
                private Object nameStr_;
                private int nameStrindex_;
                private int players_;
                private int queryPort_;
                private int revision_;
                private Object sdrPingLocation_;
                private int sdrPopid_;
                private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> serverIpBuilder_;
                private SteammessagesBase.CMsgIPAddress serverIp_;
                private Object spectatorNameStr_;
                private int spectatorNameStrindex_;
                private int spectatorPort_;
                private long steamId_;
                private Object versionStr_;
                private int versionStrindex_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_Server_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_Server_fieldAccessorTable.ensureFieldAccessorsInitialized(Server.class, Builder.class);
                }

                private Builder() {
                    this.sdrPingLocation_ = "";
                    this.gamedirStr_ = "";
                    this.mapStr_ = "";
                    this.nameStr_ = "";
                    this.gameDescriptionStr_ = "";
                    this.versionStr_ = "";
                    this.gametypeStr_ = "";
                    this.spectatorNameStr_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.sdrPingLocation_ = "";
                    this.gamedirStr_ = "";
                    this.mapStr_ = "";
                    this.nameStr_ = "";
                    this.gameDescriptionStr_ = "";
                    this.versionStr_ = "";
                    this.gametypeStr_ = "";
                    this.spectatorNameStr_ = "";
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessage.alwaysUseFieldBuilders) {
                        internalGetServerIpFieldBuilder();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.deprecatedServerIp_ = 0;
                    this.queryPort_ = 0;
                    this.authPlayers_ = 0;
                    this.serverIp_ = null;
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder != null) {
                        singleFieldBuilder.dispose();
                        this.serverIpBuilder_ = null;
                    }
                    this.steamId_ = 0L;
                    this.revision_ = 0;
                    this.players_ = 0;
                    this.gamePort_ = 0;
                    this.sdrPopid_ = 0;
                    this.sdrPingLocation_ = "";
                    this.flags_ = 0;
                    this.appId_ = 0;
                    this.maxPlayers_ = 0;
                    this.bots_ = 0;
                    this.spectatorPort_ = 0;
                    this.gamedirStr_ = "";
                    this.gamedirStrindex_ = 0;
                    this.mapStr_ = "";
                    this.mapStrindex_ = 0;
                    this.nameStr_ = "";
                    this.nameStrindex_ = 0;
                    this.gameDescriptionStr_ = "";
                    this.gameDescriptionStrindex_ = 0;
                    this.versionStr_ = "";
                    this.versionStrindex_ = 0;
                    this.gametypeStr_ = "";
                    this.gametypeStrindex_ = 0;
                    this.spectatorNameStr_ = "";
                    this.spectatorNameStrindex_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_Server_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Server getDefaultInstanceForType() {
                    return Server.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Server build() {
                    Server serverBuildPartial = buildPartial();
                    if (serverBuildPartial.isInitialized()) {
                        return serverBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) serverBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Server buildPartial() {
                    Server server = new Server(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(server);
                    }
                    onBuilt();
                    return server;
                }

                private void buildPartial0(Server server) {
                    int i;
                    SteammessagesBase.CMsgIPAddress cMsgIPAddress;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        server.deprecatedServerIp_ = this.deprecatedServerIp_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        server.queryPort_ = this.queryPort_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        server.authPlayers_ = this.authPlayers_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                        if (singleFieldBuilder == null) {
                            cMsgIPAddress = this.serverIp_;
                        } else {
                            cMsgIPAddress = (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.build();
                        }
                        server.serverIp_ = cMsgIPAddress;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        server.steamId_ = this.steamId_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        server.revision_ = this.revision_;
                        i |= 32;
                    }
                    if ((i2 & 64) != 0) {
                        server.players_ = this.players_;
                        i |= 64;
                    }
                    if ((i2 & 128) != 0) {
                        server.gamePort_ = this.gamePort_;
                        i |= 128;
                    }
                    if ((i2 & 256) != 0) {
                        server.sdrPopid_ = this.sdrPopid_;
                        i |= 256;
                    }
                    if ((i2 & 512) != 0) {
                        server.sdrPingLocation_ = this.sdrPingLocation_;
                        i |= 512;
                    }
                    if ((i2 & 1024) != 0) {
                        server.flags_ = this.flags_;
                        i |= 1024;
                    }
                    if ((i2 & 2048) != 0) {
                        server.appId_ = this.appId_;
                        i |= 2048;
                    }
                    if ((i2 & 4096) != 0) {
                        server.maxPlayers_ = this.maxPlayers_;
                        i |= 4096;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                        server.bots_ = this.bots_;
                        i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                        server.spectatorPort_ = this.spectatorPort_;
                        i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    }
                    if ((i2 & 32768) != 0) {
                        server.gamedirStr_ = this.gamedirStr_;
                        i |= 32768;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                        server.gamedirStrindex_ = this.gamedirStrindex_;
                        i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    }
                    if ((i2 & 131072) != 0) {
                        server.mapStr_ = this.mapStr_;
                        i |= 131072;
                    }
                    if ((i2 & 262144) != 0) {
                        server.mapStrindex_ = this.mapStrindex_;
                        i |= 262144;
                    }
                    if ((i2 & 524288) != 0) {
                        server.nameStr_ = this.nameStr_;
                        i |= 524288;
                    }
                    if ((i2 & 1048576) != 0) {
                        server.nameStrindex_ = this.nameStrindex_;
                        i |= 1048576;
                    }
                    if ((i2 & 2097152) != 0) {
                        server.gameDescriptionStr_ = this.gameDescriptionStr_;
                        i |= 2097152;
                    }
                    if ((4194304 & i2) != 0) {
                        server.gameDescriptionStrindex_ = this.gameDescriptionStrindex_;
                        i |= 4194304;
                    }
                    if ((8388608 & i2) != 0) {
                        server.versionStr_ = this.versionStr_;
                        i |= LZMA2Options.DICT_SIZE_DEFAULT;
                    }
                    if ((16777216 & i2) != 0) {
                        server.versionStrindex_ = this.versionStrindex_;
                        i |= 16777216;
                    }
                    if ((33554432 & i2) != 0) {
                        server.gametypeStr_ = this.gametypeStr_;
                        i |= 33554432;
                    }
                    if ((67108864 & i2) != 0) {
                        server.gametypeStrindex_ = this.gametypeStrindex_;
                        i |= 67108864;
                    }
                    if ((134217728 & i2) != 0) {
                        server.spectatorNameStr_ = this.spectatorNameStr_;
                        i |= 134217728;
                    }
                    if ((i2 & 268435456) != 0) {
                        server.spectatorNameStrindex_ = this.spectatorNameStrindex_;
                        i |= 268435456;
                    }
                    server.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Server) {
                        return mergeFrom((Server) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Server server) {
                    if (server == Server.getDefaultInstance()) {
                        return this;
                    }
                    if (server.hasDeprecatedServerIp()) {
                        setDeprecatedServerIp(server.getDeprecatedServerIp());
                    }
                    if (server.hasQueryPort()) {
                        setQueryPort(server.getQueryPort());
                    }
                    if (server.hasAuthPlayers()) {
                        setAuthPlayers(server.getAuthPlayers());
                    }
                    if (server.hasServerIp()) {
                        mergeServerIp(server.getServerIp());
                    }
                    if (server.hasSteamId()) {
                        setSteamId(server.getSteamId());
                    }
                    if (server.hasRevision()) {
                        setRevision(server.getRevision());
                    }
                    if (server.hasPlayers()) {
                        setPlayers(server.getPlayers());
                    }
                    if (server.hasGamePort()) {
                        setGamePort(server.getGamePort());
                    }
                    if (server.hasSdrPopid()) {
                        setSdrPopid(server.getSdrPopid());
                    }
                    if (server.hasSdrPingLocation()) {
                        this.sdrPingLocation_ = server.sdrPingLocation_;
                        this.bitField0_ |= 512;
                        onChanged();
                    }
                    if (server.hasFlags()) {
                        setFlags(server.getFlags());
                    }
                    if (server.hasAppId()) {
                        setAppId(server.getAppId());
                    }
                    if (server.hasMaxPlayers()) {
                        setMaxPlayers(server.getMaxPlayers());
                    }
                    if (server.hasBots()) {
                        setBots(server.getBots());
                    }
                    if (server.hasSpectatorPort()) {
                        setSpectatorPort(server.getSpectatorPort());
                    }
                    if (server.hasGamedirStr()) {
                        this.gamedirStr_ = server.gamedirStr_;
                        this.bitField0_ |= 32768;
                        onChanged();
                    }
                    if (server.hasGamedirStrindex()) {
                        setGamedirStrindex(server.getGamedirStrindex());
                    }
                    if (server.hasMapStr()) {
                        this.mapStr_ = server.mapStr_;
                        this.bitField0_ |= 131072;
                        onChanged();
                    }
                    if (server.hasMapStrindex()) {
                        setMapStrindex(server.getMapStrindex());
                    }
                    if (server.hasNameStr()) {
                        this.nameStr_ = server.nameStr_;
                        this.bitField0_ |= 524288;
                        onChanged();
                    }
                    if (server.hasNameStrindex()) {
                        setNameStrindex(server.getNameStrindex());
                    }
                    if (server.hasGameDescriptionStr()) {
                        this.gameDescriptionStr_ = server.gameDescriptionStr_;
                        this.bitField0_ |= 2097152;
                        onChanged();
                    }
                    if (server.hasGameDescriptionStrindex()) {
                        setGameDescriptionStrindex(server.getGameDescriptionStrindex());
                    }
                    if (server.hasVersionStr()) {
                        this.versionStr_ = server.versionStr_;
                        this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                        onChanged();
                    }
                    if (server.hasVersionStrindex()) {
                        setVersionStrindex(server.getVersionStrindex());
                    }
                    if (server.hasGametypeStr()) {
                        this.gametypeStr_ = server.gametypeStr_;
                        this.bitField0_ |= 33554432;
                        onChanged();
                    }
                    if (server.hasGametypeStrindex()) {
                        setGametypeStrindex(server.getGametypeStrindex());
                    }
                    if (server.hasSpectatorNameStr()) {
                        this.spectatorNameStr_ = server.spectatorNameStr_;
                        this.bitField0_ |= 134217728;
                        onChanged();
                    }
                    if (server.hasSpectatorNameStrindex()) {
                        setSpectatorNameStrindex(server.getSpectatorNameStrindex());
                    }
                    mergeUnknownFields(server.getUnknownFields());
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
                                    case 8:
                                        this.deprecatedServerIp_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                        break;
                                    case 16:
                                        this.queryPort_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                        break;
                                    case 24:
                                        this.authPlayers_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4;
                                        break;
                                    case 34:
                                        codedInputStream.readMessage(internalGetServerIpFieldBuilder().getBuilder(), extensionRegistryLite);
                                        this.bitField0_ |= 8;
                                        break;
                                    case SteammessagesPublishedfileSteamclient.PublishedFileDetails.NUM_CHILDREN_FIELD_NUMBER /* 49 */:
                                        this.steamId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 16;
                                        break;
                                    case 56:
                                        this.revision_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 32;
                                        break;
                                    case 64:
                                        this.players_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 64;
                                        break;
                                    case 72:
                                        this.gamePort_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 128;
                                        break;
                                    case SteammessagesClientserverLogin.CMsgClientLogon.OTP_TYPE_FIELD_NUMBER /* 85 */:
                                        this.sdrPopid_ = codedInputStream.readFixed32();
                                        this.bitField0_ |= 256;
                                        break;
                                    case SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER /* 88 */:
                                        this.flags_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1024;
                                        break;
                                    case 96:
                                        this.appId_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2048;
                                        break;
                                    case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                        this.maxPlayers_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4096;
                                        break;
                                    case 112:
                                        this.bots_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                        break;
                                    case 120:
                                        this.spectatorPort_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                        break;
                                    case 130:
                                        this.gamedirStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 32768;
                                        break;
                                    case 136:
                                        this.gamedirStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                        break;
                                    case 146:
                                        this.mapStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 131072;
                                        break;
                                    case 152:
                                        this.mapStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 262144;
                                        break;
                                    case 162:
                                        this.nameStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 524288;
                                        break;
                                    case 168:
                                        this.nameStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1048576;
                                        break;
                                    case 178:
                                        this.gameDescriptionStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2097152;
                                        break;
                                    case 184:
                                        this.gameDescriptionStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4194304;
                                        break;
                                    case 194:
                                        this.versionStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                        break;
                                    case 200:
                                        this.versionStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 16777216;
                                        break;
                                    case 210:
                                        this.gametypeStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 33554432;
                                        break;
                                    case 216:
                                        this.gametypeStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 67108864;
                                        break;
                                    case 242:
                                        this.spectatorNameStr_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 134217728;
                                        break;
                                    case 248:
                                        this.spectatorNameStrindex_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 268435456;
                                        break;
                                    case 258:
                                        this.sdrPingLocation_ = codedInputStream.readBytes();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasDeprecatedServerIp() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getDeprecatedServerIp() {
                    return this.deprecatedServerIp_;
                }

                public Builder setDeprecatedServerIp(int i) {
                    this.deprecatedServerIp_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearDeprecatedServerIp() {
                    this.bitField0_ &= -2;
                    this.deprecatedServerIp_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasQueryPort() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getQueryPort() {
                    return this.queryPort_;
                }

                public Builder setQueryPort(int i) {
                    this.queryPort_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearQueryPort() {
                    this.bitField0_ &= -3;
                    this.queryPort_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasAuthPlayers() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getAuthPlayers() {
                    return this.authPlayers_;
                }

                public Builder setAuthPlayers(int i) {
                    this.authPlayers_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearAuthPlayers() {
                    this.bitField0_ &= -5;
                    this.authPlayers_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasServerIp() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public SteammessagesBase.CMsgIPAddress getServerIp() {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder == null) {
                        SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.serverIp_;
                        return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
                    }
                    return (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.getMessage();
                }

                public Builder setServerIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgIPAddress.getClass();
                        this.serverIp_ = cMsgIPAddress;
                    } else {
                        singleFieldBuilder.setMessage(cMsgIPAddress);
                    }
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder setServerIp(SteammessagesBase.CMsgIPAddress.Builder builder) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder == null) {
                        this.serverIp_ = builder.build();
                    } else {
                        singleFieldBuilder.setMessage(builder.build());
                    }
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder mergeServerIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                    SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder == null) {
                        if ((this.bitField0_ & 8) != 0 && (cMsgIPAddress2 = this.serverIp_) != null && cMsgIPAddress2 != SteammessagesBase.CMsgIPAddress.getDefaultInstance()) {
                            getServerIpBuilder().mergeFrom(cMsgIPAddress);
                        } else {
                            this.serverIp_ = cMsgIPAddress;
                        }
                    } else {
                        singleFieldBuilder.mergeFrom(cMsgIPAddress);
                    }
                    if (this.serverIp_ != null) {
                        this.bitField0_ |= 8;
                        onChanged();
                    }
                    return this;
                }

                public Builder clearServerIp() {
                    this.bitField0_ &= -9;
                    this.serverIp_ = null;
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder != null) {
                        singleFieldBuilder.dispose();
                        this.serverIpBuilder_ = null;
                    }
                    onChanged();
                    return this;
                }

                public SteammessagesBase.CMsgIPAddress.Builder getServerIpBuilder() {
                    this.bitField0_ |= 8;
                    onChanged();
                    return (SteammessagesBase.CMsgIPAddress.Builder) internalGetServerIpFieldBuilder().getBuilder();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public SteammessagesBase.CMsgIPAddressOrBuilder getServerIpOrBuilder() {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.serverIpBuilder_;
                    if (singleFieldBuilder != null) {
                        return (SteammessagesBase.CMsgIPAddressOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                    }
                    SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.serverIp_;
                    return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
                }

                private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> internalGetServerIpFieldBuilder() {
                    if (this.serverIpBuilder_ == null) {
                        this.serverIpBuilder_ = new SingleFieldBuilder<>(getServerIp(), getParentForChildren(), isClean());
                        this.serverIp_ = null;
                    }
                    return this.serverIpBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasSteamId() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public long getSteamId() {
                    return this.steamId_;
                }

                public Builder setSteamId(long j) {
                    this.steamId_ = j;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearSteamId() {
                    this.bitField0_ &= -17;
                    this.steamId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasRevision() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getRevision() {
                    return this.revision_;
                }

                public Builder setRevision(int i) {
                    this.revision_ = i;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearRevision() {
                    this.bitField0_ &= -33;
                    this.revision_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasPlayers() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getPlayers() {
                    return this.players_;
                }

                public Builder setPlayers(int i) {
                    this.players_ = i;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearPlayers() {
                    this.bitField0_ &= -65;
                    this.players_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGamePort() {
                    return (this.bitField0_ & 128) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getGamePort() {
                    return this.gamePort_;
                }

                public Builder setGamePort(int i) {
                    this.gamePort_ = i;
                    this.bitField0_ |= 128;
                    onChanged();
                    return this;
                }

                public Builder clearGamePort() {
                    this.bitField0_ &= -129;
                    this.gamePort_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasSdrPopid() {
                    return (this.bitField0_ & 256) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getSdrPopid() {
                    return this.sdrPopid_;
                }

                public Builder setSdrPopid(int i) {
                    this.sdrPopid_ = i;
                    this.bitField0_ |= 256;
                    onChanged();
                    return this;
                }

                public Builder clearSdrPopid() {
                    this.bitField0_ &= -257;
                    this.sdrPopid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasSdrPingLocation() {
                    return (this.bitField0_ & 512) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getSdrPingLocation() {
                    Object obj = this.sdrPingLocation_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.sdrPingLocation_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getSdrPingLocationBytes() {
                    Object obj = this.sdrPingLocation_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.sdrPingLocation_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setSdrPingLocation(String str) {
                    str.getClass();
                    this.sdrPingLocation_ = str;
                    this.bitField0_ |= 512;
                    onChanged();
                    return this;
                }

                public Builder clearSdrPingLocation() {
                    this.sdrPingLocation_ = Server.getDefaultInstance().getSdrPingLocation();
                    this.bitField0_ &= -513;
                    onChanged();
                    return this;
                }

                public Builder setSdrPingLocationBytes(ByteString byteString) {
                    byteString.getClass();
                    this.sdrPingLocation_ = byteString;
                    this.bitField0_ |= 512;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasFlags() {
                    return (this.bitField0_ & 1024) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getFlags() {
                    return this.flags_;
                }

                public Builder setFlags(int i) {
                    this.flags_ = i;
                    this.bitField0_ |= 1024;
                    onChanged();
                    return this;
                }

                public Builder clearFlags() {
                    this.bitField0_ &= -1025;
                    this.flags_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasAppId() {
                    return (this.bitField0_ & 2048) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getAppId() {
                    return this.appId_;
                }

                public Builder setAppId(int i) {
                    this.appId_ = i;
                    this.bitField0_ |= 2048;
                    onChanged();
                    return this;
                }

                public Builder clearAppId() {
                    this.bitField0_ &= -2049;
                    this.appId_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasMaxPlayers() {
                    return (this.bitField0_ & 4096) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getMaxPlayers() {
                    return this.maxPlayers_;
                }

                public Builder setMaxPlayers(int i) {
                    this.maxPlayers_ = i;
                    this.bitField0_ |= 4096;
                    onChanged();
                    return this;
                }

                public Builder clearMaxPlayers() {
                    this.bitField0_ &= -4097;
                    this.maxPlayers_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasBots() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getBots() {
                    return this.bots_;
                }

                public Builder setBots(int i) {
                    this.bots_ = i;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearBots() {
                    this.bitField0_ &= -8193;
                    this.bots_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasSpectatorPort() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getSpectatorPort() {
                    return this.spectatorPort_;
                }

                public Builder setSpectatorPort(int i) {
                    this.spectatorPort_ = i;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearSpectatorPort() {
                    this.bitField0_ &= -16385;
                    this.spectatorPort_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGamedirStr() {
                    return (this.bitField0_ & 32768) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getGamedirStr() {
                    Object obj = this.gamedirStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.gamedirStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getGamedirStrBytes() {
                    Object obj = this.gamedirStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.gamedirStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setGamedirStr(String str) {
                    str.getClass();
                    this.gamedirStr_ = str;
                    this.bitField0_ |= 32768;
                    onChanged();
                    return this;
                }

                public Builder clearGamedirStr() {
                    this.gamedirStr_ = Server.getDefaultInstance().getGamedirStr();
                    this.bitField0_ &= -32769;
                    onChanged();
                    return this;
                }

                public Builder setGamedirStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.gamedirStr_ = byteString;
                    this.bitField0_ |= 32768;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGamedirStrindex() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getGamedirStrindex() {
                    return this.gamedirStrindex_;
                }

                public Builder setGamedirStrindex(int i) {
                    this.gamedirStrindex_ = i;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearGamedirStrindex() {
                    this.bitField0_ &= -65537;
                    this.gamedirStrindex_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasMapStr() {
                    return (this.bitField0_ & 131072) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getMapStr() {
                    Object obj = this.mapStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.mapStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getMapStrBytes() {
                    Object obj = this.mapStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.mapStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setMapStr(String str) {
                    str.getClass();
                    this.mapStr_ = str;
                    this.bitField0_ |= 131072;
                    onChanged();
                    return this;
                }

                public Builder clearMapStr() {
                    this.mapStr_ = Server.getDefaultInstance().getMapStr();
                    this.bitField0_ &= -131073;
                    onChanged();
                    return this;
                }

                public Builder setMapStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.mapStr_ = byteString;
                    this.bitField0_ |= 131072;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasMapStrindex() {
                    return (this.bitField0_ & 262144) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getMapStrindex() {
                    return this.mapStrindex_;
                }

                public Builder setMapStrindex(int i) {
                    this.mapStrindex_ = i;
                    this.bitField0_ |= 262144;
                    onChanged();
                    return this;
                }

                public Builder clearMapStrindex() {
                    this.bitField0_ &= -262145;
                    this.mapStrindex_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasNameStr() {
                    return (this.bitField0_ & 524288) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getNameStr() {
                    Object obj = this.nameStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.nameStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getNameStrBytes() {
                    Object obj = this.nameStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.nameStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setNameStr(String str) {
                    str.getClass();
                    this.nameStr_ = str;
                    this.bitField0_ |= 524288;
                    onChanged();
                    return this;
                }

                public Builder clearNameStr() {
                    this.nameStr_ = Server.getDefaultInstance().getNameStr();
                    this.bitField0_ &= -524289;
                    onChanged();
                    return this;
                }

                public Builder setNameStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.nameStr_ = byteString;
                    this.bitField0_ |= 524288;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasNameStrindex() {
                    return (this.bitField0_ & 1048576) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getNameStrindex() {
                    return this.nameStrindex_;
                }

                public Builder setNameStrindex(int i) {
                    this.nameStrindex_ = i;
                    this.bitField0_ |= 1048576;
                    onChanged();
                    return this;
                }

                public Builder clearNameStrindex() {
                    this.bitField0_ &= -1048577;
                    this.nameStrindex_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGameDescriptionStr() {
                    return (this.bitField0_ & 2097152) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getGameDescriptionStr() {
                    Object obj = this.gameDescriptionStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.gameDescriptionStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getGameDescriptionStrBytes() {
                    Object obj = this.gameDescriptionStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.gameDescriptionStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setGameDescriptionStr(String str) {
                    str.getClass();
                    this.gameDescriptionStr_ = str;
                    this.bitField0_ |= 2097152;
                    onChanged();
                    return this;
                }

                public Builder clearGameDescriptionStr() {
                    this.gameDescriptionStr_ = Server.getDefaultInstance().getGameDescriptionStr();
                    this.bitField0_ &= -2097153;
                    onChanged();
                    return this;
                }

                public Builder setGameDescriptionStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.gameDescriptionStr_ = byteString;
                    this.bitField0_ |= 2097152;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGameDescriptionStrindex() {
                    return (this.bitField0_ & 4194304) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getGameDescriptionStrindex() {
                    return this.gameDescriptionStrindex_;
                }

                public Builder setGameDescriptionStrindex(int i) {
                    this.gameDescriptionStrindex_ = i;
                    this.bitField0_ |= 4194304;
                    onChanged();
                    return this;
                }

                public Builder clearGameDescriptionStrindex() {
                    this.bitField0_ &= -4194305;
                    this.gameDescriptionStrindex_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasVersionStr() {
                    return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getVersionStr() {
                    Object obj = this.versionStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.versionStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getVersionStrBytes() {
                    Object obj = this.versionStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.versionStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setVersionStr(String str) {
                    str.getClass();
                    this.versionStr_ = str;
                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                    onChanged();
                    return this;
                }

                public Builder clearVersionStr() {
                    this.versionStr_ = Server.getDefaultInstance().getVersionStr();
                    this.bitField0_ &= -8388609;
                    onChanged();
                    return this;
                }

                public Builder setVersionStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.versionStr_ = byteString;
                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasVersionStrindex() {
                    return (this.bitField0_ & 16777216) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getVersionStrindex() {
                    return this.versionStrindex_;
                }

                public Builder setVersionStrindex(int i) {
                    this.versionStrindex_ = i;
                    this.bitField0_ |= 16777216;
                    onChanged();
                    return this;
                }

                public Builder clearVersionStrindex() {
                    this.bitField0_ &= -16777217;
                    this.versionStrindex_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGametypeStr() {
                    return (this.bitField0_ & 33554432) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getGametypeStr() {
                    Object obj = this.gametypeStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.gametypeStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getGametypeStrBytes() {
                    Object obj = this.gametypeStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.gametypeStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setGametypeStr(String str) {
                    str.getClass();
                    this.gametypeStr_ = str;
                    this.bitField0_ |= 33554432;
                    onChanged();
                    return this;
                }

                public Builder clearGametypeStr() {
                    this.gametypeStr_ = Server.getDefaultInstance().getGametypeStr();
                    this.bitField0_ &= -33554433;
                    onChanged();
                    return this;
                }

                public Builder setGametypeStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.gametypeStr_ = byteString;
                    this.bitField0_ |= 33554432;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasGametypeStrindex() {
                    return (this.bitField0_ & 67108864) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getGametypeStrindex() {
                    return this.gametypeStrindex_;
                }

                public Builder setGametypeStrindex(int i) {
                    this.gametypeStrindex_ = i;
                    this.bitField0_ |= 67108864;
                    onChanged();
                    return this;
                }

                public Builder clearGametypeStrindex() {
                    this.bitField0_ &= -67108865;
                    this.gametypeStrindex_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasSpectatorNameStr() {
                    return (this.bitField0_ & 134217728) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public String getSpectatorNameStr() {
                    Object obj = this.spectatorNameStr_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.spectatorNameStr_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public ByteString getSpectatorNameStrBytes() {
                    Object obj = this.spectatorNameStr_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.spectatorNameStr_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setSpectatorNameStr(String str) {
                    str.getClass();
                    this.spectatorNameStr_ = str;
                    this.bitField0_ |= 134217728;
                    onChanged();
                    return this;
                }

                public Builder clearSpectatorNameStr() {
                    this.spectatorNameStr_ = Server.getDefaultInstance().getSpectatorNameStr();
                    this.bitField0_ &= -134217729;
                    onChanged();
                    return this;
                }

                public Builder setSpectatorNameStrBytes(ByteString byteString) {
                    byteString.getClass();
                    this.spectatorNameStr_ = byteString;
                    this.bitField0_ |= 134217728;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public boolean hasSpectatorNameStrindex() {
                    return (this.bitField0_ & 268435456) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.ServerOrBuilder
                public int getSpectatorNameStrindex() {
                    return this.spectatorNameStrindex_;
                }

                public Builder setSpectatorNameStrindex(int i) {
                    this.spectatorNameStrindex_ = i;
                    this.bitField0_ |= 268435456;
                    onChanged();
                    return this;
                }

                public Builder clearSpectatorNameStrindex() {
                    this.bitField0_ &= -268435457;
                    this.spectatorNameStrindex_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Server getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Server> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Server> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Server getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public List<Server> getServersList() {
            return this.servers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public List<? extends ServerOrBuilder> getServersOrBuilderList() {
            return this.servers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public int getServersCount() {
            return this.servers_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public Server getServers(int i) {
            return this.servers_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public ServerOrBuilder getServersOrBuilder(int i) {
            return this.servers_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public String getError() {
            Object obj = this.error_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.error_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public ByteString getErrorBytes() {
            Object obj = this.error_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.error_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public boolean hasDefaultServerData() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public Server getDefaultServerData() {
            Server server = this.defaultServerData_;
            return server == null ? Server.getDefaultInstance() : server;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public ServerOrBuilder getDefaultServerDataOrBuilder() {
            Server server = this.defaultServerData_;
            return server == null ? Server.getDefaultInstance() : server;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public ProtocolStringList getServerStringsList() {
            return this.serverStrings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public int getServerStringsCount() {
            return this.serverStrings_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public String getServerStrings(int i) {
            return this.serverStrings_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
        public ByteString getServerStringsBytes(int i) {
            return this.serverStrings_.getByteString(i);
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
            for (int i = 0; i < this.servers_.size(); i++) {
                codedOutputStream.writeMessage(1, this.servers_.get(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.error_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(3, getDefaultServerData());
            }
            for (int i2 = 0; i2 < this.serverStrings_.size(); i2++) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.serverStrings_.getRaw(i2));
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
            if ((this.bitField0_ & 1) != 0) {
                iComputeMessageSize += GeneratedMessage.computeStringSize(2, this.error_);
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getDefaultServerData());
            }
            int iComputeStringSizeNoTag = 0;
            for (int i3 = 0; i3 < this.serverStrings_.size(); i3++) {
                iComputeStringSizeNoTag += GeneratedMessage.computeStringSizeNoTag(this.serverStrings_.getRaw(i3));
            }
            int size = iComputeMessageSize + iComputeStringSizeNoTag + getServerStringsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgGMSClientServerQueryResponse)) {
                return super.equals(obj);
            }
            CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponse = (CMsgGMSClientServerQueryResponse) obj;
            if (!getServersList().equals(cMsgGMSClientServerQueryResponse.getServersList()) || hasError() != cMsgGMSClientServerQueryResponse.hasError()) {
                return false;
            }
            if ((!hasError() || getError().equals(cMsgGMSClientServerQueryResponse.getError())) && hasDefaultServerData() == cMsgGMSClientServerQueryResponse.hasDefaultServerData()) {
                return (!hasDefaultServerData() || getDefaultServerData().equals(cMsgGMSClientServerQueryResponse.getDefaultServerData())) && getServerStringsList().equals(cMsgGMSClientServerQueryResponse.getServerStringsList()) && getUnknownFields().equals(cMsgGMSClientServerQueryResponse.getUnknownFields());
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
            if (getServersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getServersList().hashCode();
            }
            if (hasError()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getError().hashCode();
            }
            if (hasDefaultServerData()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDefaultServerData().hashCode();
            }
            if (getServerStringsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getServerStringsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgGMSClientServerQueryResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGMSClientServerQueryResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGMSClientServerQueryResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgGMSClientServerQueryResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgGMSClientServerQueryResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGMSClientServerQueryResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgGMSClientServerQueryResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgGMSClientServerQueryResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGMSClientServerQueryResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgGMSClientServerQueryResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgGMSClientServerQueryResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> defaultServerDataBuilder_;
            private Server defaultServerData_;
            private Object error_;
            private LazyStringArrayList serverStrings_;
            private RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> serversBuilder_;
            private List<Server> servers_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGMSClientServerQueryResponse.class, Builder.class);
            }

            private Builder() {
                this.servers_ = Collections.emptyList();
                this.error_ = "";
                this.serverStrings_ = LazyStringArrayList.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.servers_ = Collections.emptyList();
                this.error_ = "";
                this.serverStrings_ = LazyStringArrayList.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetServersFieldBuilder();
                    internalGetDefaultServerDataFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.servers_ = Collections.emptyList();
                } else {
                    this.servers_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.error_ = "";
                this.defaultServerData_ = null;
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.defaultServerDataBuilder_ = null;
                }
                this.serverStrings_ = LazyStringArrayList.emptyList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverGameservers.internal_static_CMsgGMSClientServerQueryResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgGMSClientServerQueryResponse getDefaultInstanceForType() {
                return CMsgGMSClientServerQueryResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGMSClientServerQueryResponse build() {
                CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponseBuildPartial = buildPartial();
                if (cMsgGMSClientServerQueryResponseBuildPartial.isInitialized()) {
                    return cMsgGMSClientServerQueryResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgGMSClientServerQueryResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGMSClientServerQueryResponse buildPartial() {
                CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponse = new CMsgGMSClientServerQueryResponse(this);
                buildPartialRepeatedFields(cMsgGMSClientServerQueryResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgGMSClientServerQueryResponse);
                }
                onBuilt();
                return cMsgGMSClientServerQueryResponse;
            }

            private void buildPartialRepeatedFields(CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponse) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.servers_ = Collections.unmodifiableList(this.servers_);
                        this.bitField0_ &= -2;
                    }
                    cMsgGMSClientServerQueryResponse.servers_ = this.servers_;
                    return;
                }
                cMsgGMSClientServerQueryResponse.servers_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponse) {
                int i;
                Server server;
                int i2 = this.bitField0_;
                if ((i2 & 2) != 0) {
                    cMsgGMSClientServerQueryResponse.error_ = this.error_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                    if (singleFieldBuilder == null) {
                        server = this.defaultServerData_;
                    } else {
                        server = (Server) singleFieldBuilder.build();
                    }
                    cMsgGMSClientServerQueryResponse.defaultServerData_ = server;
                    i |= 2;
                }
                if ((i2 & 8) != 0) {
                    this.serverStrings_.makeImmutable();
                    cMsgGMSClientServerQueryResponse.serverStrings_ = this.serverStrings_;
                }
                cMsgGMSClientServerQueryResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgGMSClientServerQueryResponse) {
                    return mergeFrom((CMsgGMSClientServerQueryResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponse) {
                if (cMsgGMSClientServerQueryResponse == CMsgGMSClientServerQueryResponse.getDefaultInstance()) {
                    return this;
                }
                if (this.serversBuilder_ == null) {
                    if (!cMsgGMSClientServerQueryResponse.servers_.isEmpty()) {
                        if (this.servers_.isEmpty()) {
                            this.servers_ = cMsgGMSClientServerQueryResponse.servers_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureServersIsMutable();
                            this.servers_.addAll(cMsgGMSClientServerQueryResponse.servers_);
                        }
                        onChanged();
                    }
                } else if (!cMsgGMSClientServerQueryResponse.servers_.isEmpty()) {
                    if (this.serversBuilder_.isEmpty()) {
                        this.serversBuilder_.dispose();
                        this.serversBuilder_ = null;
                        this.servers_ = cMsgGMSClientServerQueryResponse.servers_;
                        this.bitField0_ &= -2;
                        this.serversBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetServersFieldBuilder() : null;
                    } else {
                        this.serversBuilder_.addAllMessages(cMsgGMSClientServerQueryResponse.servers_);
                    }
                }
                if (cMsgGMSClientServerQueryResponse.hasError()) {
                    this.error_ = cMsgGMSClientServerQueryResponse.error_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgGMSClientServerQueryResponse.hasDefaultServerData()) {
                    mergeDefaultServerData(cMsgGMSClientServerQueryResponse.getDefaultServerData());
                }
                if (!cMsgGMSClientServerQueryResponse.serverStrings_.isEmpty()) {
                    if (this.serverStrings_.isEmpty()) {
                        this.serverStrings_ = cMsgGMSClientServerQueryResponse.serverStrings_;
                        this.bitField0_ |= 8;
                    } else {
                        ensureServerStringsIsMutable();
                        this.serverStrings_.addAll(cMsgGMSClientServerQueryResponse.serverStrings_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgGMSClientServerQueryResponse.getUnknownFields());
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
                                    Server server = (Server) codedInputStream.readMessage(Server.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureServersIsMutable();
                                        this.servers_.add(server);
                                    } else {
                                        repeatedFieldBuilder.addMessage(server);
                                    }
                                } else if (tag == 18) {
                                    this.error_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetDefaultServerDataFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    ByteString bytes = codedInputStream.readBytes();
                                    ensureServerStringsIsMutable();
                                    this.serverStrings_.add(bytes);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public List<Server> getServersList() {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.servers_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public int getServersCount() {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public Server getServers(int i) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.get(i);
                }
                return (Server) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setServers(int i, Server server) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    server.getClass();
                    ensureServersIsMutable();
                    this.servers_.set(i, server);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, server);
                }
                return this;
            }

            public Builder setServers(int i, Server.Builder builder) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addServers(Server server) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    server.getClass();
                    ensureServersIsMutable();
                    this.servers_.add(server);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(server);
                }
                return this;
            }

            public Builder addServers(int i, Server server) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    server.getClass();
                    ensureServersIsMutable();
                    this.servers_.add(i, server);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, server);
                }
                return this;
            }

            public Builder addServers(Server.Builder builder) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addServers(int i, Server.Builder builder) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllServers(Iterable<? extends Server> iterable) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
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
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
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
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureServersIsMutable();
                    this.servers_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Server.Builder getServersBuilder(int i) {
                return (Server.Builder) internalGetServersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public ServerOrBuilder getServersOrBuilder(int i) {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.servers_.get(i);
                }
                return (ServerOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public List<? extends ServerOrBuilder> getServersOrBuilderList() {
                RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> repeatedFieldBuilder = this.serversBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.servers_);
            }

            public Server.Builder addServersBuilder() {
                return (Server.Builder) internalGetServersFieldBuilder().addBuilder(Server.getDefaultInstance());
            }

            public Server.Builder addServersBuilder(int i) {
                return (Server.Builder) internalGetServersFieldBuilder().addBuilder(i, Server.getDefaultInstance());
            }

            public List<Server.Builder> getServersBuilderList() {
                return internalGetServersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Server, Server.Builder, ServerOrBuilder> internalGetServersFieldBuilder() {
                if (this.serversBuilder_ == null) {
                    this.serversBuilder_ = new RepeatedFieldBuilder<>(this.servers_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.servers_ = null;
                }
                return this.serversBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public String getError() {
                Object obj = this.error_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.error_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public ByteString getErrorBytes() {
                Object obj = this.error_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.error_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setError(String str) {
                str.getClass();
                this.error_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearError() {
                this.error_ = CMsgGMSClientServerQueryResponse.getDefaultInstance().getError();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setErrorBytes(ByteString byteString) {
                byteString.getClass();
                this.error_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public boolean hasDefaultServerData() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public Server getDefaultServerData() {
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder == null) {
                    Server server = this.defaultServerData_;
                    return server == null ? Server.getDefaultInstance() : server;
                }
                return (Server) singleFieldBuilder.getMessage();
            }

            public Builder setDefaultServerData(Server server) {
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder == null) {
                    server.getClass();
                    this.defaultServerData_ = server;
                } else {
                    singleFieldBuilder.setMessage(server);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setDefaultServerData(Server.Builder builder) {
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder == null) {
                    this.defaultServerData_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeDefaultServerData(Server server) {
                Server server2;
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (server2 = this.defaultServerData_) != null && server2 != Server.getDefaultInstance()) {
                        getDefaultServerDataBuilder().mergeFrom(server);
                    } else {
                        this.defaultServerData_ = server;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(server);
                }
                if (this.defaultServerData_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearDefaultServerData() {
                this.bitField0_ &= -5;
                this.defaultServerData_ = null;
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.defaultServerDataBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public Server.Builder getDefaultServerDataBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Server.Builder) internalGetDefaultServerDataFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public ServerOrBuilder getDefaultServerDataOrBuilder() {
                SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> singleFieldBuilder = this.defaultServerDataBuilder_;
                if (singleFieldBuilder != null) {
                    return (ServerOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                Server server = this.defaultServerData_;
                return server == null ? Server.getDefaultInstance() : server;
            }

            private SingleFieldBuilder<Server, Server.Builder, ServerOrBuilder> internalGetDefaultServerDataFieldBuilder() {
                if (this.defaultServerDataBuilder_ == null) {
                    this.defaultServerDataBuilder_ = new SingleFieldBuilder<>(getDefaultServerData(), getParentForChildren(), isClean());
                    this.defaultServerData_ = null;
                }
                return this.defaultServerDataBuilder_;
            }

            private void ensureServerStringsIsMutable() {
                if (!this.serverStrings_.isModifiable()) {
                    this.serverStrings_ = new LazyStringArrayList((LazyStringList) this.serverStrings_);
                }
                this.bitField0_ |= 8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public ProtocolStringList getServerStringsList() {
                this.serverStrings_.makeImmutable();
                return this.serverStrings_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public int getServerStringsCount() {
                return this.serverStrings_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public String getServerStrings(int i) {
                return this.serverStrings_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponseOrBuilder
            public ByteString getServerStringsBytes(int i) {
                return this.serverStrings_.getByteString(i);
            }

            public Builder setServerStrings(int i, String str) {
                str.getClass();
                ensureServerStringsIsMutable();
                this.serverStrings_.set(i, str);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addServerStrings(String str) {
                str.getClass();
                ensureServerStringsIsMutable();
                this.serverStrings_.add(str);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addAllServerStrings(Iterable<String> iterable) {
                ensureServerStringsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.serverStrings_);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearServerStrings() {
                this.serverStrings_ = LazyStringArrayList.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder addServerStringsBytes(ByteString byteString) {
                byteString.getClass();
                ensureServerStringsIsMutable();
                this.serverStrings_.add(byteString);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }
        }

        public static CMsgGMSClientServerQueryResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgGMSClientServerQueryResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgGMSClientServerQueryResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgGMSClientServerQueryResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
