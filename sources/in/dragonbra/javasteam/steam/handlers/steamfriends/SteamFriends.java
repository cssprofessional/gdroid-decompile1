package in.dragonbra.javasteam.steam.handlers.steamfriends;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatAction;
import in.dragonbra.javasteam.enums.EChatEntryType;
import in.dragonbra.javasteam.enums.EChatInfoType;
import in.dragonbra.javasteam.enums.EChatMemberStateChange;
import in.dragonbra.javasteam.enums.EClanRelationship;
import in.dragonbra.javasteam.enums.EClientPersonaStateFlag;
import in.dragonbra.javasteam.enums.EFriendRelationship;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EPersonaState;
import in.dragonbra.javasteam.enums.EPersonaStateFlag;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.generated.MsgClientChatAction;
import in.dragonbra.javasteam.generated.MsgClientChatMemberInfo;
import in.dragonbra.javasteam.generated.MsgClientChatMsg;
import in.dragonbra.javasteam.generated.MsgClientJoinChat;
import in.dragonbra.javasteam.generated.MsgClientSetIgnoreFriend;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamfriends.cache.AccountCache;
import in.dragonbra.javasteam.steam.handlers.steamfriends.cache.Clan;
import in.dragonbra.javasteam.steam.handlers.steamfriends.cache.User;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.AliasHistoryCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatActionResultCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatEnterCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatInviteCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMsgCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatRoomInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ClanStateCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendAddedCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgEchoCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgHistoryCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendsListCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.IgnoreFriendCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.NicknameCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.NicknameListCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.PersonaChangeCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.PersonaStateCallback;
import in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ProfileInfoCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamFriends.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamFriends extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(SteamFriends.class);
    private List<SteamID> friendsList = new ArrayList();
    private List<SteamID> clanList = new ArrayList();
    private AccountCache cache = new AccountCache();

    /* JADX INFO: compiled from: SteamFriends.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EMsg.values().length];
            try {
                iArr[EMsg.ClientPersonaState.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EMsg.ClientFriendsList.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EMsg.ClientChatGetFriendMessageHistoryResponse.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EMsg.ClientAccountInfo.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EMsg.ClientPersonaChangeResponse.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final AsyncJobSingle<IgnoreFriendCallback> ignoreFriend(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return ignoreFriend$default(this, steamID, false, 2, null);
    }

    public final boolean isLocalUser() {
        return isLocalUser$default(this, null, 1, null);
    }

    public final void requestFriendInfo(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        requestFriendInfo$default(this, steamID, 0, 2, (Object) null);
    }

    public final void requestFriendInfo(List<SteamID> steamIdList) {
        Intrinsics.checkNotNullParameter(steamIdList, "steamIdList");
        requestFriendInfo$default(this, steamIdList, 0, 2, (Object) null);
    }

    public final List<SteamID> getFriendsList() {
        return this.friendsList;
    }

    public final List<SteamID> getClanList() {
        return this.clanList;
    }

    public final List<User> getCachedUsers() {
        return this.cache.getUsers().getList();
    }

    public final List<Clan> getCachedClans() {
        return this.cache.getClans().getList();
    }

    public static /* synthetic */ boolean isLocalUser$default(SteamFriends steamFriends, SteamID steamID, int i, Object obj) {
        if ((i & 1) != 0) {
            steamID = null;
        }
        return steamFriends.isLocalUser(steamID);
    }

    public final boolean isLocalUser(SteamID steamID) {
        AccountCache accountCache = this.cache;
        if (steamID == null) {
            steamID = getClient().getSteamID();
        }
        return accountCache.isLocalUser(steamID);
    }

    public final SteamID getFriendSteamID(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getSteamID();
    }

    public final SteamID getClanSteamID(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return ((Clan) this.cache.getClans().getAccount(steamID)).getSteamID();
    }

    public final String getPersonaName() {
        return this.cache.getLocalUser().getName();
    }

    public final byte[] getPersonaAvatar() {
        return this.cache.getLocalUser().getAvatarHash();
    }

    public final void setPersonaName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.cache.getLocalUser().setName(name);
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientChangeStatus.class, EMsg.ClientChangeStatus, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaState(this.cache.getLocalUser().getPersonaState().code());
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPlayerName(name);
        getClient().send(clientMsgProtobuf);
    }

    public final EPersonaState getPersonaState() {
        return this.cache.getLocalUser().getPersonaState();
    }

    public final void setPersonaState(EPersonaState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.cache.getLocalUser().setPersonaState(state);
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientChangeStatus.class, EMsg.ClientChangeStatus, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaState(state.code());
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaSetByUser(true);
        getClient().send(clientMsgProtobuf);
    }

    public final void resetPersonaStateFlag() {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientChangeStatus.class, EMsg.ClientChangeStatus, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaSetByUser(true);
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaStateFlags(0);
        getClient().send(clientMsgProtobuf);
    }

    public final void setPersonaStateFlag(EPersonaStateFlag flag) {
        Intrinsics.checkNotNullParameter(flag, "flag");
        if (flag.code() < EPersonaStateFlag.ClientTypeWeb.code() || flag.code() > EPersonaStateFlag.ClientTypeVR.code()) {
            throw new IllegalArgumentException("Persona State Flag was not a valid ClientType");
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientChangeStatus.class, EMsg.ClientChangeStatus, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaSetByUser(true);
        ((SteammessagesClientserverFriends.CMsgClientChangeStatus.Builder) clientMsgProtobuf.getBody()).setPersonaStateFlags(flag.code());
        getClient().send(clientMsgProtobuf);
    }

    public final int getFriendCount() {
        return this.friendsList.size();
    }

    public final SteamID getFriendByIndex(int i) {
        return (i < 0 || i >= this.friendsList.size()) ? new SteamID(0L) : this.friendsList.get(i);
    }

    public final String getFriendPersonaName(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getName();
    }

    public final EPersonaState getFriendPersonaState(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getPersonaState();
    }

    public final EFriendRelationship getFriendRelationship(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getRelationship();
    }

    public final String getFriendGamePlayedName(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getGameName();
    }

    public final GameID getFriendGamePlayed(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getGameID();
    }

    public final byte[] getFriendAvatar(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getAvatarHash();
    }

    public final EnumSet<EPersonaStateFlag> getFriendPersonaStateFlags(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getPersonaStateFlags();
    }

    public final int getFriendGameAppId(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return this.cache.getUser(steamID).getGameAppID();
    }

    public final int getClanCount() {
        return this.clanList.size();
    }

    public final SteamID getClanByIndex(int i) {
        return (i < 0 || i >= this.clanList.size()) ? new SteamID(0L) : this.clanList.get(i);
    }

    public final String getClanName(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return ((Clan) this.cache.getClans().getAccount(steamID)).getName();
    }

    public final EClanRelationship getClanRelationship(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return ((Clan) this.cache.getClans().getAccount(steamID)).getRelationship();
    }

    public final byte[] getClanAvatar(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return ((Clan) this.cache.getClans().getAccount(steamID)).getAvatarHash();
    }

    public final void sendChatMessage(SteamID target, EChatEntryType type, String message) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(message, "message");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientFriendMsg.class, EMsg.ClientFriendMsg, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientFriendMsg.Builder) clientMsgProtobuf.getBody()).setSteamid(target.convertToUInt64());
        ((SteammessagesClientserverFriends.CMsgClientFriendMsg.Builder) clientMsgProtobuf.getBody()).setChatEntryType(type.code());
        ((SteammessagesClientserverFriends.CMsgClientFriendMsg.Builder) clientMsgProtobuf.getBody()).setMessage(ByteString.copyFrom(message, StandardCharsets.UTF_8));
        getClient().send(clientMsgProtobuf);
    }

    public final void addFriend(String accountNameOrEmail) {
        Intrinsics.checkNotNullParameter(accountNameOrEmail, "accountNameOrEmail");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientAddFriend.class, EMsg.ClientAddFriend, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientAddFriend.Builder) clientMsgProtobuf.getBody()).setAccountnameOrEmailToAdd(accountNameOrEmail);
        getClient().send(clientMsgProtobuf);
    }

    public final void addFriend(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientAddFriend.class, EMsg.ClientAddFriend, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientAddFriend.Builder) clientMsgProtobuf.getBody()).setSteamidToAdd(steamID.convertToUInt64());
        getClient().send(clientMsgProtobuf);
    }

    public final void removeFriend(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientRemoveFriend.class, EMsg.ClientRemoveFriend, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientRemoveFriend.Builder) clientMsgProtobuf.getBody()).setFriendid(steamID.convertToUInt64());
        getClient().send(clientMsgProtobuf);
    }

    public final void joinChat(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        SteamID steamIDFixChatID = fixChatID(steamID);
        ClientMsg clientMsg = new ClientMsg(MsgClientJoinChat.class, 0, 2, null);
        ((MsgClientJoinChat) clientMsg.getBody()).setSteamIdChat(steamIDFixChatID);
        getClient().send(clientMsg);
    }

    public final void leaveChat(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        SteamID steamIDFixChatID = fixChatID(steamID);
        ClientMsg clientMsg = new ClientMsg(MsgClientChatMemberInfo.class, 0, 2, null);
        ((MsgClientChatMemberInfo) clientMsg.getBody()).setSteamIdChat(steamIDFixChatID);
        ((MsgClientChatMemberInfo) clientMsg.getBody()).setType(EChatInfoType.StateChange);
        SteamID steamID2 = getClient().getSteamID();
        if (steamID2 == null) {
            steamID2 = new SteamID();
        }
        long jConvertToUInt64 = steamID2.convertToUInt64();
        try {
            clientMsg.writeLong(jConvertToUInt64);
            clientMsg.writeInt(EChatMemberStateChange.Left.code());
            clientMsg.writeLong(jConvertToUInt64);
        } catch (IOException e) {
            logger.debug(e);
        }
        getClient().send(clientMsg);
    }

    public final void sendChatRoomMessage(SteamID steamIdChat, EChatEntryType type, String message) {
        Intrinsics.checkNotNullParameter(steamIdChat, "steamIdChat");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(message, "message");
        SteamID steamIDFixChatID = fixChatID(steamIdChat);
        ClientMsg clientMsg = new ClientMsg(MsgClientChatMsg.class, 0, 2, null);
        ((MsgClientChatMsg) clientMsg.getBody()).setChatMsgType(type);
        ((MsgClientChatMsg) clientMsg.getBody()).setSteamIdChatRoom(steamIDFixChatID);
        ((MsgClientChatMsg) clientMsg.getBody()).setSteamIdChatter(getClient().getSteamID());
        try {
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            clientMsg.writeNullTermString(message, UTF_8);
        } catch (IOException e) {
            logger.debug(e);
        }
        getClient().send(clientMsg);
    }

    public final void inviteUserToChat(SteamID steamIdUser, SteamID steamIdChat) {
        Intrinsics.checkNotNullParameter(steamIdUser, "steamIdUser");
        Intrinsics.checkNotNullParameter(steamIdChat, "steamIdChat");
        SteamID steamIDFixChatID = fixChatID(steamIdChat);
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver.CMsgClientChatInvite.class, EMsg.ClientChatInvite, 0, 4, null);
        ((SteammessagesClientserver.CMsgClientChatInvite.Builder) clientMsgProtobuf.getBody()).setSteamIdChat(steamIDFixChatID.convertToUInt64());
        ((SteammessagesClientserver.CMsgClientChatInvite.Builder) clientMsgProtobuf.getBody()).setSteamIdInvited(steamIdUser.convertToUInt64());
        SteammessagesClientserver.CMsgClientChatInvite.Builder builder = (SteammessagesClientserver.CMsgClientChatInvite.Builder) clientMsgProtobuf.getBody();
        SteamID steamID = getClient().getSteamID();
        if (steamID == null) {
            steamID = new SteamID();
        }
        builder.setSteamIdPatron(steamID.convertToUInt64());
        getClient().send(clientMsgProtobuf);
    }

    public final void kickChatMember(SteamID steamIdChat, SteamID steamIdMember) {
        Intrinsics.checkNotNullParameter(steamIdChat, "steamIdChat");
        Intrinsics.checkNotNullParameter(steamIdMember, "steamIdMember");
        SteamID steamIDFixChatID = fixChatID(steamIdChat);
        ClientMsg clientMsg = new ClientMsg(MsgClientChatAction.class, 0, 2, null);
        ((MsgClientChatAction) clientMsg.getBody()).setSteamIdChat(steamIDFixChatID);
        ((MsgClientChatAction) clientMsg.getBody()).setSteamIdUserToActOn(steamIdMember);
        ((MsgClientChatAction) clientMsg.getBody()).setChatAction(EChatAction.Kick);
        getClient().send(clientMsg);
    }

    public final void banChatMember(SteamID steamIdChat, SteamID steamIdMember) {
        Intrinsics.checkNotNullParameter(steamIdChat, "steamIdChat");
        Intrinsics.checkNotNullParameter(steamIdMember, "steamIdMember");
        SteamID steamIDFixChatID = fixChatID(steamIdChat);
        ClientMsg clientMsg = new ClientMsg(MsgClientChatAction.class, 0, 2, null);
        ((MsgClientChatAction) clientMsg.getBody()).setSteamIdChat(steamIDFixChatID);
        ((MsgClientChatAction) clientMsg.getBody()).setSteamIdUserToActOn(steamIdMember);
        ((MsgClientChatAction) clientMsg.getBody()).setChatAction(EChatAction.Ban);
        getClient().send(clientMsg);
    }

    public final void unbanChatMember(SteamID steamIdChat, SteamID steamIdMember) {
        Intrinsics.checkNotNullParameter(steamIdChat, "steamIdChat");
        Intrinsics.checkNotNullParameter(steamIdMember, "steamIdMember");
        SteamID steamIDFixChatID = fixChatID(steamIdChat);
        ClientMsg clientMsg = new ClientMsg(MsgClientChatAction.class, 0, 2, null);
        ((MsgClientChatAction) clientMsg.getBody()).setSteamIdChat(steamIDFixChatID);
        ((MsgClientChatAction) clientMsg.getBody()).setSteamIdUserToActOn(steamIdMember);
        ((MsgClientChatAction) clientMsg.getBody()).setChatAction(EChatAction.UnBan);
        getClient().send(clientMsg);
    }

    public static /* synthetic */ void requestFriendInfo$default(SteamFriends steamFriends, List list, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        steamFriends.requestFriendInfo((List<SteamID>) list, i);
    }

    public final void requestFriendInfo(List<SteamID> steamIdList, int i) {
        Intrinsics.checkNotNullParameter(steamIdList, "steamIdList");
        if (i == 0) {
            i = EClientPersonaStateFlag.code(getClient().getConfiguration().getDefaultPersonaStateFlags());
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientRequestFriendData.class, EMsg.ClientRequestFriendData, 0, 4, null);
        SteammessagesClientserverFriends.CMsgClientRequestFriendData.Builder builder = (SteammessagesClientserverFriends.CMsgClientRequestFriendData.Builder) clientMsgProtobuf.getBody();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(steamIdList, 10));
        Iterator<T> it = steamIdList.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(((SteamID) it.next()).convertToUInt64()));
        }
        builder.addAllFriends(arrayList);
        ((SteammessagesClientserverFriends.CMsgClientRequestFriendData.Builder) clientMsgProtobuf.getBody()).setPersonaStateRequested(i);
        getClient().send(clientMsgProtobuf);
    }

    public static /* synthetic */ void requestFriendInfo$default(SteamFriends steamFriends, SteamID steamID, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        steamFriends.requestFriendInfo(steamID, i);
    }

    public final void requestFriendInfo(SteamID steamID, int i) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        requestFriendInfo(CollectionsKt__CollectionsJVMKt.listOf(steamID), i);
    }

    public static /* synthetic */ AsyncJobSingle ignoreFriend$default(SteamFriends steamFriends, SteamID steamID, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return steamFriends.ignoreFriend(steamID, z);
    }

    public final AsyncJobSingle<IgnoreFriendCallback> ignoreFriend(SteamID steamID, boolean z) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        ClientMsg clientMsg = new ClientMsg(MsgClientSetIgnoreFriend.class, 0, 2, null);
        clientMsg.setSourceJobID(getClient().getNextJobID());
        ((MsgClientSetIgnoreFriend) clientMsg.getBody()).setMySteamId(getClient().getSteamID());
        ((MsgClientSetIgnoreFriend) clientMsg.getBody()).setIgnore(z ? (byte) 1 : (byte) 0);
        ((MsgClientSetIgnoreFriend) clientMsg.getBody()).setSteamIdFriend(steamID);
        getClient().send(clientMsg);
        return new AsyncJobSingle<>(getClient(), clientMsg.getSourceJobID());
    }

    public final AsyncJobSingle<ProfileInfoCallback> requestProfileInfo(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientFriendProfileInfo.class, EMsg.ClientFriendProfileInfo, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverFriends.CMsgClientFriendProfileInfo.Builder) clientMsgProtobuf.getBody()).setSteamidFriend(steamID.convertToUInt64());
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final void requestMessageHistory(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistory.class, EMsg.ClientChatGetFriendMessageHistory, 0, 4, null);
        ((SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistory.Builder) clientMsgProtobuf.getBody()).setSteamid(steamID.convertToUInt64());
        getClient().send(clientMsgProtobuf);
    }

    public final void requestOfflineMessages() {
        getClient().send(new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryForOfflineMessages.class, EMsg.ClientChatGetFriendMessageHistoryForOfflineMessages, 0, 4, null));
    }

    public final JobID setFriendNickname(SteamID friendID, String nickname) {
        Intrinsics.checkNotNullParameter(friendID, "friendID");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        JobID nextJobID = getClient().getNextJobID();
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientSetPlayerNickname.class, EMsg.AMClientSetPlayerNickname, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(nextJobID);
        ((SteammessagesClientserverFriends.CMsgClientSetPlayerNickname.Builder) clientMsgProtobuf.getBody()).setSteamid(friendID.convertToUInt64());
        ((SteammessagesClientserverFriends.CMsgClientSetPlayerNickname.Builder) clientMsgProtobuf.getBody()).setNickname(nickname);
        getClient().send(clientMsgProtobuf);
        return nextJobID;
    }

    public final JobID requestAliasHistory(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        return requestAliasHistory(CollectionsKt__CollectionsJVMKt.listOf(steamID));
    }

    public final JobID requestAliasHistory(List<SteamID> steamIDs) {
        Intrinsics.checkNotNullParameter(steamIDs, "steamIDs");
        JobID nextJobID = getClient().getNextJobID();
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver.CMsgClientAMGetPersonaNameHistory.class, EMsg.ClientAMGetPersonaNameHistory, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(nextJobID);
        SteammessagesClientserver.CMsgClientAMGetPersonaNameHistory.Builder builder = (SteammessagesClientserver.CMsgClientAMGetPersonaNameHistory.Builder) clientMsgProtobuf.getBody();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(steamIDs, 10));
        Iterator<T> it = steamIDs.iterator();
        while (it.hasNext()) {
            arrayList.add(SteammessagesClientserver.CMsgClientAMGetPersonaNameHistory.IdInstance.newBuilder().setSteamid(((SteamID) it.next()).convertToUInt64()).build());
        }
        builder.addAllIds(arrayList);
        ((SteammessagesClientserver.CMsgClientAMGetPersonaNameHistory.Builder) clientMsgProtobuf.getBody()).setIdCount(((SteammessagesClientserver.CMsgClientAMGetPersonaNameHistory.Builder) clientMsgProtobuf.getBody()).getIdsCount());
        getClient().send(clientMsgProtobuf);
        return nextJobID;
    }

    private final SteamID fixChatID(SteamID steamID) {
        SteamID steamID2 = new SteamID(steamID.convertToUInt64());
        return steamID2.isClanAccount() ? steamID2.toChatID() : steamID2;
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        CallbackMsg callback = Companion.getCallback(packetMsg);
        if (callback != null) {
            getClient().postCallback(callback);
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[packetMsg.getMsgType().ordinal()];
        if (i == 1) {
            handlePersonaState(packetMsg);
            return;
        }
        if (i == 2) {
            handleFriendsList(packetMsg);
            return;
        }
        if (i == 3) {
            handleFriendMessageHistoryResponse(packetMsg);
        } else if (i == 4) {
            handleAccountInfo(packetMsg);
        } else {
            if (i != 5) {
                return;
            }
            handlePersonaChangeResponse(packetMsg);
        }
    }

    private final void handlePersonaState(IPacketMsg iPacketMsg) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientPersonaState.class, iPacketMsg);
        EnumSet<EClientPersonaStateFlag> enumSetFrom = EClientPersonaStateFlag.from(((SteammessagesClientserverFriends.CMsgClientPersonaState.Builder) clientMsgProtobuf.getBody()).getStatusFlags());
        List<SteammessagesClientserverFriends.CMsgClientPersonaState.Friend> friendsList = ((SteammessagesClientserverFriends.CMsgClientPersonaState.Builder) clientMsgProtobuf.getBody()).getFriendsList();
        Intrinsics.checkNotNullExpressionValue(friendsList, "getFriendsList(...)");
        for (SteammessagesClientserverFriends.CMsgClientPersonaState.Friend friend : friendsList) {
            SteamID steamID = new SteamID(friend.getFriendid());
            if (steamID.isIndividualAccount()) {
                User user = this.cache.getUser(steamID);
                if (enumSetFrom.contains(EClientPersonaStateFlag.PlayerName)) {
                    user.setName(friend.getPlayerName());
                }
                if (enumSetFrom.contains(EClientPersonaStateFlag.Presence)) {
                    user.setAvatarHash(friend.getAvatarHash().toByteArray());
                    EPersonaState ePersonaStateFrom = EPersonaState.from(friend.getPersonaState());
                    if (ePersonaStateFrom == null) {
                        ePersonaStateFrom = EPersonaState.Offline;
                    }
                    user.setPersonaState(ePersonaStateFrom);
                    user.setPersonaStateFlags(EPersonaStateFlag.from(friend.getPersonaStateFlags()));
                }
                if (enumSetFrom.contains(EClientPersonaStateFlag.GameDataBlob)) {
                    user.setGameName(friend.getGameName());
                    user.setGameID(new GameID(friend.getGameid()));
                    user.setGameAppID(friend.getGamePlayedAppId());
                }
            } else if (steamID.isClanAccount()) {
                Clan clan = (Clan) this.cache.getClans().getAccount(steamID);
                if (enumSetFrom.contains(EClientPersonaStateFlag.PlayerName)) {
                    clan.setName(friend.getPlayerName());
                }
                if (enumSetFrom.contains(EClientPersonaStateFlag.Presence)) {
                    clan.setAvatarHash(friend.getAvatarHash().toByteArray());
                }
            } else {
                Logger.debug$default(logger, "Unknown item in handlePersonaState(): " + steamID, null, 2, null);
            }
        }
        List<SteammessagesClientserverFriends.CMsgClientPersonaState.Friend> friendsList2 = ((SteammessagesClientserverFriends.CMsgClientPersonaState.Builder) clientMsgProtobuf.getBody()).getFriendsList();
        Intrinsics.checkNotNullExpressionValue(friendsList2, "getFriendsList(...)");
        for (SteammessagesClientserverFriends.CMsgClientPersonaState.Friend friend2 : friendsList2) {
            Intrinsics.checkNotNull(friend2);
            Intrinsics.checkNotNull(enumSetFrom);
            getClient().postCallback(new PersonaStateCallback(friend2, enumSetFrom));
        }
    }

    private final void handleFriendsList(IPacketMsg iPacketMsg) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientFriendsList.class, iPacketMsg);
        SteamID steamID = getClient().getSteamID();
        if (steamID != null) {
            this.cache.getLocalUser().setSteamID(steamID);
        }
        if (!((SteammessagesClientserverFriends.CMsgClientFriendsList.Builder) clientMsgProtobuf.getBody()).getBincremental()) {
            this.friendsList.clear();
            this.clanList.clear();
        }
        ClientMsgProtobuf clientMsgProtobuf2 = new ClientMsgProtobuf(SteammessagesClientserverFriends.CMsgClientRequestFriendData.class, EMsg.ClientRequestFriendData, 0, 4, null);
        ((SteammessagesClientserverFriends.CMsgClientRequestFriendData.Builder) clientMsgProtobuf2.getBody()).setPersonaStateRequested(EClientPersonaStateFlag.code(getClient().getConfiguration().getDefaultPersonaStateFlags()));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<SteammessagesClientserverFriends.CMsgClientFriendsList.Friend> friendsList = ((SteammessagesClientserverFriends.CMsgClientFriendsList.Builder) clientMsgProtobuf.getBody()).getFriendsList();
        Intrinsics.checkNotNullExpressionValue(friendsList, "getFriendsList(...)");
        for (SteammessagesClientserverFriends.CMsgClientFriendsList.Friend friend : friendsList) {
            SteamID steamID2 = new SteamID(friend.getUlfriendid());
            if (steamID2.isIndividualAccount()) {
                User user = this.cache.getUser(steamID2);
                user.setRelationship(EFriendRelationship.from(friend.getEfriendrelationship()));
                if (this.friendsList.contains(steamID2)) {
                    if (user.getRelationship() == EFriendRelationship.None) {
                        arrayList.add(steamID2);
                    }
                } else {
                    this.friendsList.add(steamID2);
                }
            } else if (steamID2.isClanAccount()) {
                Clan clan = (Clan) this.cache.getClans().getAccount(steamID2);
                EClanRelationship eClanRelationshipFrom = EClanRelationship.from(friend.getEfriendrelationship());
                if (eClanRelationshipFrom == null) {
                    eClanRelationshipFrom = EClanRelationship.None;
                }
                clan.setRelationship(eClanRelationshipFrom);
                if (this.clanList.contains(steamID2)) {
                    if (clan.getRelationship() == EClanRelationship.None || clan.getRelationship() == EClanRelationship.Kicked) {
                        arrayList2.add(steamID2);
                    }
                } else {
                    this.clanList.add(steamID2);
                }
            }
            if (!((SteammessagesClientserverFriends.CMsgClientFriendsList.Builder) clientMsgProtobuf.getBody()).getBincremental()) {
                ((SteammessagesClientserverFriends.CMsgClientRequestFriendData.Builder) clientMsgProtobuf2.getBody()).addFriends(friend.getUlfriendid());
            }
        }
        List<SteamID> list = this.friendsList;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            list.remove((SteamID) it.next());
        }
        List<SteamID> list2 = this.clanList;
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            list2.remove((SteamID) it2.next());
        }
        List<Long> friendsList2 = ((SteammessagesClientserverFriends.CMsgClientRequestFriendData.Builder) clientMsgProtobuf2.getBody()).getFriendsList();
        Intrinsics.checkNotNullExpressionValue(friendsList2, "getFriendsList(...)");
        if (!friendsList2.isEmpty()) {
            getClient().send(clientMsgProtobuf2);
        }
        getClient().postCallback(new FriendsListCallback((SteammessagesClientserverFriends.CMsgClientFriendsList.Builder) clientMsgProtobuf.getBody()));
    }

    private final void handleFriendMessageHistoryResponse(IPacketMsg iPacketMsg) {
        SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.Builder builder = (SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.class, iPacketMsg).getBody();
        EUniverse universe = getClient().getUniverse();
        Intrinsics.checkNotNullExpressionValue(universe, "getUniverse(...)");
        getClient().postCallback(new FriendMsgHistoryCallback(builder, universe));
    }

    private final void handleAccountInfo(IPacketMsg iPacketMsg) {
        this.cache.getLocalUser().setName(((SteammessagesClientserverLogin.CMsgClientAccountInfo.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientAccountInfo.class, iPacketMsg).getBody()).getPersonaName());
    }

    private final void handlePersonaChangeResponse(IPacketMsg iPacketMsg) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgPersonaChangeResponse.class, iPacketMsg);
        this.cache.getLocalUser().setName(((SteammessagesClientserverFriends.CMsgPersonaChangeResponse.Builder) clientMsgProtobuf.getBody()).getPlayerName());
        getClient().postCallback(new PersonaChangeCallback(clientMsgProtobuf.getTargetJobID(), (SteammessagesClientserverFriends.CMsgPersonaChangeResponse.Builder) clientMsgProtobuf.getBody()));
    }

    /* JADX INFO: compiled from: SteamFriends.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamFriends.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientClanState.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientFriendMsgIncoming.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EMsg.ClientFriendMsgEchoToSender.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EMsg.ClientAddFriendResponse.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[EMsg.ClientChatEnter.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[EMsg.ClientChatMsg.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[EMsg.ClientChatMemberInfo.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[EMsg.ClientChatRoomInfo.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[EMsg.ClientChatActionResult.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[EMsg.ClientChatInvite.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[EMsg.ClientSetIgnoreFriendResponse.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[EMsg.ClientFriendProfileInfoResponse.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr[EMsg.ClientAMGetPersonaNameHistoryResponse.ordinal()] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr[EMsg.ClientPlayerNicknameList.ordinal()] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr[EMsg.AMClientSetPlayerNicknameResponse.ordinal()] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CallbackMsg getCallback(IPacketMsg iPacketMsg) {
            switch (WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()]) {
                case 1:
                    return new ClanStateCallback(iPacketMsg);
                case 2:
                    return new FriendMsgCallback(iPacketMsg);
                case 3:
                    return new FriendMsgEchoCallback(iPacketMsg);
                case 4:
                    return new FriendAddedCallback(iPacketMsg);
                case 5:
                    return new ChatEnterCallback(iPacketMsg);
                case 6:
                    return new ChatMsgCallback(iPacketMsg);
                case 7:
                    return new ChatMemberInfoCallback(iPacketMsg);
                case 8:
                    return new ChatRoomInfoCallback(iPacketMsg);
                case 9:
                    return new ChatActionResultCallback(iPacketMsg);
                case 10:
                    return new ChatInviteCallback(iPacketMsg);
                case 11:
                    return new IgnoreFriendCallback(iPacketMsg);
                case 12:
                    return new ProfileInfoCallback(iPacketMsg);
                case 13:
                    return new AliasHistoryCallback(iPacketMsg);
                case 14:
                    return new NicknameListCallback(iPacketMsg);
                case 15:
                    return new NicknameCallback(iPacketMsg);
                default:
                    return null;
            }
        }
    }
}
