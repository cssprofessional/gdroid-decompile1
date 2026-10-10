package in.dragonbra.javasteam.steam.handlers.steamuserstats;

import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.ELeaderboardDataRequest;
import in.dragonbra.javasteam.enums.ELeaderboardDisplayType;
import in.dragonbra.javasteam.enums.ELeaderboardSortMethod;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.FindOrCreateLeaderboardCallback;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.LeaderboardEntriesCallback;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.NumberOfPlayersCallback;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.UserStatsCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamUserStats.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamUserStats extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final AsyncJobSingle<NumberOfPlayersCallback> getNumberOfCurrentPlayers(int i) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayers.class, EMsg.ClientGetNumberOfCurrentPlayersDP, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayers.Builder) clientMsgProtobuf.getBody()).setAppid(i);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<FindOrCreateLeaderboardCallback> findLeaderBoard(int i, String str) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.class, EMsg.ClientLBSFindOrCreateLB, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        clientMsgProtobuf.getProtoHeader().setRoutingAppid(i);
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setLeaderboardName(str);
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setCreateIfNotFound(false);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<FindOrCreateLeaderboardCallback> createLeaderboard(int i, String name, ELeaderboardSortMethod sortMethod, ELeaderboardDisplayType displayType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(sortMethod, "sortMethod");
        Intrinsics.checkNotNullParameter(displayType, "displayType");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.class, EMsg.ClientLBSFindOrCreateLB, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        clientMsgProtobuf.getProtoHeader().setRoutingAppid(i);
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setLeaderboardName(name);
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setLeaderboardDisplayType(displayType.code());
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setLeaderboardSortMethod(sortMethod.code());
        ((SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLB.Builder) clientMsgProtobuf.getBody()).setCreateIfNotFound(true);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<LeaderboardEntriesCallback> getLeaderboardEntries(int i, int i2, int i3, int i4, ELeaderboardDataRequest dataRequest) {
        Intrinsics.checkNotNullParameter(dataRequest, "dataRequest");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.class, EMsg.ClientLBSGetLBEntries, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.Builder) clientMsgProtobuf.getBody()).setLeaderboardId(i2);
        ((SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.Builder) clientMsgProtobuf.getBody()).setLeaderboardDataRequest(dataRequest.code());
        ((SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.Builder) clientMsgProtobuf.getBody()).setRangeStart(i3);
        ((SteammessagesClientserverLbs.CMsgClientLBSGetLBEntries.Builder) clientMsgProtobuf.getBody()).setRangeEnd(i4);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<UserStatsCallback> getUserStats(int i, SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverUserstats.CMsgClientGetUserStats.class, EMsg.ClientGetUserStats, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverUserstats.CMsgClientGetUserStats.Builder) clientMsgProtobuf.getBody()).setGameId(i);
        ((SteammessagesClientserverUserstats.CMsgClientGetUserStats.Builder) clientMsgProtobuf.getBody()).setSteamIdForUser(steamID.convertToUInt64());
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        CallbackMsg callback = Companion.getCallback(packetMsg);
        if (callback == null) {
            return;
        }
        getClient().postCallback(callback);
    }

    /* JADX INFO: compiled from: SteamUserStats.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamUserStats.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientGetNumberOfCurrentPlayersDPResponse.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientLBSFindOrCreateLBResponse.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EMsg.ClientLBSGetLBEntriesResponse.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EMsg.ClientGetUserStatsResponse.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
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
            int i = WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()];
            if (i == 1) {
                return new NumberOfPlayersCallback(iPacketMsg);
            }
            if (i == 2) {
                return new FindOrCreateLeaderboardCallback(iPacketMsg);
            }
            if (i == 3) {
                return new LeaderboardEntriesCallback(iPacketMsg);
            }
            if (i != 4) {
                return null;
            }
            return new UserStatsCallback(iPacketMsg);
        }
    }
}
