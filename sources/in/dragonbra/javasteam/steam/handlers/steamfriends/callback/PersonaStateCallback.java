package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.enums.EClientPersonaStateFlag;
import in.dragonbra.javasteam.enums.EPersonaState;
import in.dragonbra.javasteam.enums.EPersonaStateFlag;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.handlers.steamfriends.ClanData;
import in.dragonbra.javasteam.steam.handlers.steamfriends.KV;
import in.dragonbra.javasteam.steam.handlers.steamfriends.OtherGameData;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.NetHelpers;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PersonaStateCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PersonaStateCallback extends CallbackMsg {
    private final byte[] avatarHash;
    private final boolean avatarPendingReview;
    private final long broadcastId;
    private final ClanData clanData;
    private final int clanRank;
    private final String clanTag;
    private final SteamID friendId;
    private final byte[] gameDataBlob;
    private final GameID gameId;
    private final long gameLobbyId;
    private final String gameName;
    private final int gamePlayedAppId;
    private final InetAddress gameServerIp;
    private final int gameServerPort;
    private final int gamingDeviceType;
    private final boolean isCommunityBanned;
    private final Date lastLogoff;
    private final Date lastLogon;
    private final Date lastSeenOnline;
    private final boolean onSteamDeck;
    private final int onlineSessionInstances;
    private final List<OtherGameData> otherGameData;
    private final boolean personaSetByUser;
    private final EPersonaState personaState;
    private final EnumSet<EPersonaStateFlag> personaStateFlags;
    private final String playerName;
    private final boolean playerNamePendingReview;
    private final int queryPort;
    private final List<KV> richPresence;
    private final EnumSet<EClientPersonaStateFlag> statusFlags;
    private final SteamID steamIdSource;
    private final int watchingBroadcastAccountId;
    private final int watchingBroadcastAppId;
    private final String watchingBroadcastTitle;
    private final int watchingBroadcastViewers;

    public PersonaStateCallback(SteammessagesClientserverFriends.CMsgClientPersonaState.Friend friend, EnumSet<EClientPersonaStateFlag> statusFlags) {
        Intrinsics.checkNotNullParameter(friend, "friend");
        Intrinsics.checkNotNullParameter(statusFlags, "statusFlags");
        this.statusFlags = statusFlags;
        this.friendId = new SteamID(friend.getFriendid());
        EPersonaState ePersonaStateFrom = EPersonaState.from(friend.getPersonaState());
        this.personaState = ePersonaStateFrom == null ? EPersonaState.Offline : ePersonaStateFrom;
        this.gamePlayedAppId = friend.getGamePlayedAppId();
        this.gameServerIp = NetHelpers.getIPAddress(friend.getGameServerIp());
        this.gameServerPort = friend.getGameServerPort();
        EnumSet<EPersonaStateFlag> enumSetFrom = EPersonaStateFlag.from(friend.getPersonaStateFlags());
        Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
        this.personaStateFlags = enumSetFrom;
        this.onlineSessionInstances = friend.getOnlineSessionInstances();
        this.personaSetByUser = friend.getPersonaSetByUser();
        String playerName = friend.getPlayerName();
        Intrinsics.checkNotNullExpressionValue(playerName, "getPlayerName(...)");
        this.playerName = playerName;
        this.queryPort = friend.getQueryPort();
        this.steamIdSource = new SteamID(friend.getSteamidSource());
        byte[] byteArray = friend.getAvatarHash().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.avatarHash = byteArray;
        this.lastLogoff = new Date(((long) friend.getLastLogoff()) * 1000);
        this.lastLogon = new Date(((long) friend.getLastLogon()) * 1000);
        this.lastSeenOnline = new Date(((long) friend.getLastSeenOnline()) * 1000);
        this.clanRank = friend.getClanRank();
        String gameName = friend.getGameName();
        Intrinsics.checkNotNullExpressionValue(gameName, "getGameName(...)");
        this.gameName = gameName;
        this.gameId = new GameID(friend.getGameid());
        byte[] byteArray2 = friend.getGameDataBlob().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
        this.gameDataBlob = byteArray2;
        this.clanData = new ClanData(friend.getClanData().getOggAppId(), friend.getClanData().getChatGroupId());
        String clanTag = friend.getClanTag();
        Intrinsics.checkNotNullExpressionValue(clanTag, "getClanTag(...)");
        this.clanTag = clanTag;
        List<SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KV> richPresenceList = friend.getRichPresenceList();
        Intrinsics.checkNotNullExpressionValue(richPresenceList, "getRichPresenceList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(richPresenceList, 10));
        for (SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KV kv : richPresenceList) {
            String key = kv.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
            String value = kv.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            arrayList.add(new KV(key, value));
        }
        this.richPresence = arrayList;
        this.broadcastId = friend.getBroadcastId();
        this.gameLobbyId = friend.getGameLobbyId();
        this.watchingBroadcastAccountId = friend.getWatchingBroadcastAccountid();
        this.watchingBroadcastAppId = friend.getWatchingBroadcastAppid();
        this.watchingBroadcastViewers = friend.getWatchingBroadcastViewers();
        String watchingBroadcastTitle = friend.getWatchingBroadcastTitle();
        Intrinsics.checkNotNullExpressionValue(watchingBroadcastTitle, "getWatchingBroadcastTitle(...)");
        this.watchingBroadcastTitle = watchingBroadcastTitle;
        this.isCommunityBanned = friend.getIsCommunityBanned();
        this.playerNamePendingReview = friend.getPlayerNamePendingReview();
        this.avatarPendingReview = friend.getAvatarPendingReview();
        this.onSteamDeck = friend.getOnSteamDeck();
        List<SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameData> otherGameDataList = friend.getOtherGameDataList();
        Intrinsics.checkNotNullExpressionValue(otherGameDataList, "getOtherGameDataList(...)");
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(otherGameDataList, 10));
        for (SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameData otherGameData : otherGameDataList) {
            long gameid = otherGameData.getGameid();
            List<SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KV> richPresenceList2 = otherGameData.getRichPresenceList();
            Intrinsics.checkNotNullExpressionValue(richPresenceList2, "getRichPresenceList(...)");
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(richPresenceList2, 10));
            for (SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KV kv2 : richPresenceList2) {
                String key2 = kv2.getKey();
                Intrinsics.checkNotNullExpressionValue(key2, "getKey(...)");
                String value2 = kv2.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
                arrayList3.add(new KV(key2, value2));
            }
            arrayList2.add(new OtherGameData(gameid, arrayList3));
        }
        this.otherGameData = arrayList2;
        this.gamingDeviceType = friend.getGamingDeviceType();
    }

    public final EnumSet<EClientPersonaStateFlag> getStatusFlags() {
        return this.statusFlags;
    }

    public final SteamID getFriendId() {
        return this.friendId;
    }

    public final EPersonaState getState() {
        return this.personaState;
    }

    public final int getGameAppID() {
        return this.gamePlayedAppId;
    }

    public final InetAddress getGameServerIp() {
        return this.gameServerIp;
    }

    public final int getGameServerPort() {
        return this.gameServerPort;
    }

    public final EnumSet<EPersonaStateFlag> getPersonaStateFlags() {
        return this.personaStateFlags;
    }

    public final int getOnlineSessionInstances() {
        return this.onlineSessionInstances;
    }

    public final boolean getPersonaSetByUser() {
        return this.personaSetByUser;
    }

    public final String getName() {
        return this.playerName;
    }

    public final int getQueryPort() {
        return this.queryPort;
    }

    public final SteamID getSteamIdSource() {
        return this.steamIdSource;
    }

    public final byte[] getAvatarHash() {
        return this.avatarHash;
    }

    public final Date getLastLogoff() {
        return this.lastLogoff;
    }

    public final Date getLastLogon() {
        return this.lastLogon;
    }

    public final Date getLastSeenOnline() {
        return this.lastSeenOnline;
    }

    public final int getClanRank() {
        return this.clanRank;
    }

    public final String getGameName() {
        return this.gameName;
    }

    public final GameID getGameId() {
        return this.gameId;
    }

    public final byte[] getGameDataBlob() {
        return this.gameDataBlob;
    }

    public final ClanData getClanData() {
        return this.clanData;
    }

    public final String getClanTag() {
        return this.clanTag;
    }

    public final List<KV> getRichPresence() {
        return this.richPresence;
    }

    public final long getBroadcastId() {
        return this.broadcastId;
    }

    public final long getGameLobbyId() {
        return this.gameLobbyId;
    }

    public final int getWatchingBroadcastAccountId() {
        return this.watchingBroadcastAccountId;
    }

    public final int getWatchingBroadcastAppId() {
        return this.watchingBroadcastAppId;
    }

    public final int getWatchingBroadcastViewers() {
        return this.watchingBroadcastViewers;
    }

    public final String getWatchingBroadcastTitle() {
        return this.watchingBroadcastTitle;
    }

    public final boolean isCommunityBanned() {
        return this.isCommunityBanned;
    }

    public final boolean getPlayerNamePendingReview() {
        return this.playerNamePendingReview;
    }

    public final boolean getAvatarPendingReview() {
        return this.avatarPendingReview;
    }

    public final boolean getOnSteamDeck() {
        return this.onSteamDeck;
    }

    public final List<OtherGameData> getOtherGameData() {
        return this.otherGameData;
    }

    public final int getGamingDeviceType() {
        return this.gamingDeviceType;
    }
}
