package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatRoomEnterResponse;
import in.dragonbra.javasteam.enums.ELobbyType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.CreateLobbyCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.GetLobbyListCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.JoinLobbyCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.LeaveLobbyCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.LobbyDataCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.SetLobbyDataCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.SetLobbyOwnerCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.UserJoinedLobbyCallback;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.UserLeftLobbyCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.NetHelpers;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamMatchmaking.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamMatchmaking extends ClientMsgHandler {
    private final ConcurrentHashMap<JobID, GeneratedMessage> lobbyManipulationRequests = new ConcurrentHashMap<>();
    private final LobbyCache lobbyCache = new LobbyCache();

    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EMsg.values().length];
            try {
                iArr[EMsg.ClientMMSCreateLobbyResponse.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EMsg.ClientMMSSetLobbyDataResponse.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EMsg.ClientMMSSetLobbyOwnerResponse.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EMsg.ClientMMSLobbyData.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EMsg.ClientMMSGetLobbyListResponse.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EMsg.ClientMMSJoinLobbyResponse.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EMsg.ClientMMSLeaveLobbyResponse.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EMsg.ClientMMSUserJoinedLobby.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EMsg.ClientMMSUserLeftLobby.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final AsyncJobSingle<CreateLobbyCallback> createLobby(int i, ELobbyType lobbyType, int i2) {
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        return createLobby$default(this, i, lobbyType, i2, 0, null, 24, null);
    }

    public final AsyncJobSingle<CreateLobbyCallback> createLobby(int i, ELobbyType lobbyType, int i2, int i3) {
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        return createLobby$default(this, i, lobbyType, i2, i3, null, 16, null);
    }

    public final AsyncJobSingle<GetLobbyListCallback> getLobbyList(int i) {
        return getLobbyList$default(this, i, null, 0, 6, null);
    }

    public final AsyncJobSingle<GetLobbyListCallback> getLobbyList(int i, List<? extends Filter> list) {
        return getLobbyList$default(this, i, list, 0, 4, null);
    }

    public final AsyncJobSingle<SetLobbyDataCallback> setLobbyData(int i, SteamID lobbySteamId, ELobbyType lobbyType, int i2) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        return setLobbyData$default(this, i, lobbySteamId, lobbyType, i2, 0, null, 48, null);
    }

    public final AsyncJobSingle<SetLobbyDataCallback> setLobbyData(int i, SteamID lobbySteamId, ELobbyType lobbyType, int i2, int i3) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        return setLobbyData$default(this, i, lobbySteamId, lobbyType, i2, i3, null, 32, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass1(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleCreateLobbyResponse", "handleCreateLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleCreateLobbyResponse(p0);
        }
    }

    private final Function1<IPacketMsg, Unit> getHandler(IPacketMsg iPacketMsg) {
        Function1<IPacketMsg, Unit> anonymousClass1;
        switch (WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()]) {
            case 1:
                anonymousClass1 = new AnonymousClass1(this);
                break;
            case 2:
                anonymousClass1 = new AnonymousClass2(this);
                break;
            case 3:
                anonymousClass1 = new AnonymousClass3(this);
                break;
            case 4:
                anonymousClass1 = new AnonymousClass4(this);
                break;
            case 5:
                anonymousClass1 = new AnonymousClass5(this);
                break;
            case 6:
                anonymousClass1 = new AnonymousClass6(this);
                break;
            case 7:
                anonymousClass1 = new AnonymousClass7(this);
                break;
            case 8:
                anonymousClass1 = new AnonymousClass8(this);
                break;
            case 9:
                anonymousClass1 = new AnonymousClass9(this);
                break;
            default:
                return null;
        }
        return anonymousClass1;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$2, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass2(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleSetLobbyDataResponse", "handleSetLobbyDataResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleSetLobbyDataResponse(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$3, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass3(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleSetLobbyOwnerResponse", "handleSetLobbyOwnerResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleSetLobbyOwnerResponse(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$4, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass4 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass4(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleLobbyData", "handleLobbyData(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleLobbyData(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$5, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass5(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleGetLobbyListResponse", "handleGetLobbyListResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleGetLobbyListResponse(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$6, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass6 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass6(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleJoinLobbyResponse", "handleJoinLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleJoinLobbyResponse(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$7, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass7 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass7(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleLeaveLobbyResponse", "handleLeaveLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleLeaveLobbyResponse(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$8, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass8 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass8(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleUserJoinedLobby", "handleUserJoinedLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleUserJoinedLobby(p0);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$9, reason: invalid class name */
    /* JADX INFO: compiled from: SteamMatchmaking.kt */
    public static final /* synthetic */ class AnonymousClass9 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
        public AnonymousClass9(Object obj) {
            super(1, obj, SteamMatchmaking.class, "handleUserLeftLobby", "handleUserLeftLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
            invoke2(iPacketMsg);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(IPacketMsg p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((SteamMatchmaking) this.receiver).handleUserLeftLobby(p0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AsyncJobSingle createLobby$default(SteamMatchmaking steamMatchmaking, int i, ELobbyType eLobbyType, int i2, int i3, Map map, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        int i5 = i3;
        if ((i4 & 16) != 0) {
            map = null;
        }
        return steamMatchmaking.createLobby(i, eLobbyType, i2, i5, map);
    }

    public final AsyncJobSingle<CreateLobbyCallback> createLobby(int i, ELobbyType lobbyType, int i2, int i3, Map<String, String> map) {
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        if (getClient().getCellID() == null) {
            return null;
        }
        ClientMsgHandler handler = getClient().getHandler(SteamFriends.class);
        Intrinsics.checkNotNull(handler);
        String personaName = ((SteamFriends) handler).getPersonaName();
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSCreateLobby.class, EMsg.ClientMMSCreateLobby, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody()).setLobbyType(lobbyType.code());
        ((SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody()).setMaxMembers(i2);
        ((SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody()).setLobbyFlags(i3);
        SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody();
        Lobby.Companion companion = Lobby.Companion;
        builder.setMetadata(companion.toByteString$javasteam(companion.encodeMetadata$javasteam(map)));
        SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder builder2 = (SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody();
        Integer cellID = getClient().getCellID();
        Intrinsics.checkNotNull(cellID);
        builder2.setCellId(cellID.intValue());
        SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder builder3 = (SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody();
        InetAddress publicIP = getClient().getPublicIP();
        Intrinsics.checkNotNull(publicIP);
        builder3.setPublicIp(NetHelpers.getMsgIPAddress(publicIP));
        ((SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody()).setPersonaNameOwner(personaName);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        this.lobbyManipulationRequests.put(clientMsgProtobuf.getSourceJobID(), ((SteammessagesClientserverMms.CMsgClientMMSCreateLobby.Builder) clientMsgProtobuf.getBody()).build());
        return attachIncompleteManipulationHandler(new AsyncJobSingle(getClient(), clientMsgProtobuf.getSourceJobID()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AsyncJobSingle setLobbyData$default(SteamMatchmaking steamMatchmaking, int i, SteamID steamID, ELobbyType eLobbyType, int i2, int i3, Map map, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            i3 = 0;
        }
        int i5 = i3;
        if ((i4 & 32) != 0) {
            map = null;
        }
        return steamMatchmaking.setLobbyData(i, steamID, eLobbyType, i2, i5, map);
    }

    public final AsyncJobSingle<SetLobbyDataCallback> setLobbyData(int i, SteamID lobbySteamId, ELobbyType lobbyType, int i2, int i3, Map<String, String> map) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.class, EMsg.ClientMMSSetLobbyData, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setSteamIdMember(0L);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setLobbyType(lobbyType.code());
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setMaxMembers(i2);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setLobbyFlags(i3);
        SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody();
        Lobby.Companion companion = Lobby.Companion;
        builder.setMetadata(companion.toByteString$javasteam(companion.encodeMetadata$javasteam(map)));
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        this.lobbyManipulationRequests.put(clientMsgProtobuf.getSourceJobID(), ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).build());
        return attachIncompleteManipulationHandler(new AsyncJobSingle(getClient(), clientMsgProtobuf.getSourceJobID()));
    }

    public final AsyncJobSingle<SetLobbyDataCallback> setLobbyMemberData(int i, SteamID lobbySteamId, Map<String, String> metadata) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        if (getClient().getSteamID() == null) {
            return null;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.class, EMsg.ClientMMSSetLobbyData, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody();
        SteamID steamID = getClient().getSteamID();
        Intrinsics.checkNotNull(steamID);
        builder.setSteamIdMember(steamID.convertToUInt64());
        SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder builder2 = (SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody();
        Lobby.Companion companion = Lobby.Companion;
        builder2.setMetadata(companion.toByteString$javasteam(companion.encodeMetadata$javasteam(metadata)));
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        this.lobbyManipulationRequests.put(clientMsgProtobuf.getSourceJobID(), ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.Builder) clientMsgProtobuf.getBody()).build());
        return attachIncompleteManipulationHandler(new AsyncJobSingle(getClient(), clientMsgProtobuf.getSourceJobID()));
    }

    public final AsyncJobSingle<SetLobbyOwnerCallback> setLobbyOwner(int i, SteamID lobbySteamId, SteamID newOwner) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(newOwner, "newOwner");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner.class, EMsg.ClientMMSSetLobbyOwner, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner.Builder) clientMsgProtobuf.getBody()).setSteamIdNewOwner(newOwner.convertToUInt64());
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        this.lobbyManipulationRequests.put(clientMsgProtobuf.getSourceJobID(), ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner.Builder) clientMsgProtobuf.getBody()).build());
        return attachIncompleteManipulationHandler(new AsyncJobSingle(getClient(), clientMsgProtobuf.getSourceJobID()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AsyncJobSingle getLobbyList$default(SteamMatchmaking steamMatchmaking, int i, List list, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            list = null;
        }
        if ((i3 & 4) != 0) {
            i2 = -1;
        }
        return steamMatchmaking.getLobbyList(i, list, i2);
    }

    public final AsyncJobSingle<GetLobbyListCallback> getLobbyList(int i, List<? extends Filter> list, int i2) {
        if (getClient().getCellID() == null) {
            return null;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.class, EMsg.ClientMMSGetLobbyList, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder) clientMsgProtobuf.getBody();
        Integer cellID = getClient().getCellID();
        Intrinsics.checkNotNull(cellID);
        builder.setCellId(cellID.intValue());
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder builder2 = (SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder) clientMsgProtobuf.getBody();
        InetAddress publicIP = getClient().getPublicIP();
        Intrinsics.checkNotNull(publicIP);
        builder2.setPublicIp(NetHelpers.getMsgIPAddress(publicIP));
        ((SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder) clientMsgProtobuf.getBody()).setNumLobbiesRequested(i2);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                ((SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Builder) clientMsgProtobuf.getBody()).addFilters(((Filter) it.next()).serialize().build());
            }
        }
        send(clientMsgProtobuf, i);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<JoinLobbyCallback> joinLobby(int i, SteamID lobbySteamId) {
        String personaName;
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        SteamFriends steamFriends = (SteamFriends) getClient().getHandler(SteamFriends.class);
        if (steamFriends == null || (personaName = steamFriends.getPersonaName()) == null) {
            return null;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSJoinLobby.class, EMsg.ClientMMSJoinLobby, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSJoinLobby.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSJoinLobby.Builder) clientMsgProtobuf.getBody()).setPersonaName(personaName);
        ((SteammessagesClientserverMms.CMsgClientMMSJoinLobby.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<LeaveLobbyCallback> leaveLobby(int i, SteamID lobbySteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSLeaveLobby.class, EMsg.ClientMMSLeaveLobby, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSLeaveLobby.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSLeaveLobby.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<LobbyDataCallback> getLobbyData(int i, SteamID lobbySteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSGetLobbyData.class, EMsg.ClientMMSGetLobbyData, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSGetLobbyData.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSGetLobbyData.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        send(clientMsgProtobuf, i);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final void inviteToLobby(int i, SteamID lobbySteamId, SteamID userSteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(userSteamId, "userSteamId");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverMms.CMsgClientMMSInviteToLobby.class, EMsg.ClientMMSInviteToLobby, 0, 4, null);
        ((SteammessagesClientserverMms.CMsgClientMMSInviteToLobby.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverMms.CMsgClientMMSInviteToLobby.Builder) clientMsgProtobuf.getBody()).setSteamIdLobby(lobbySteamId.convertToUInt64());
        ((SteammessagesClientserverMms.CMsgClientMMSInviteToLobby.Builder) clientMsgProtobuf.getBody()).setSteamIdUserInvited(userSteamId.convertToUInt64());
        send(clientMsgProtobuf, i);
    }

    public final Lobby getLobby(int i, SteamID lobbySteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        return this.lobbyCache.getLobby(i, lobbySteamId);
    }

    public final <T extends GeneratedMessage.Builder<T>> void send(ClientMsgProtobuf<T> msg, int i) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        msg.getProtoHeader().setRoutingAppid(i);
        getClient().send(msg);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        Function1<IPacketMsg, Unit> handler = getHandler(packetMsg);
        if (handler != null) {
            handler.invoke(packetMsg);
        }
    }

    public final void clearLobbyCache$javasteam() {
        this.lobbyCache.clear();
    }

    private final <T extends CallbackMsg> AsyncJobSingle<T> attachIncompleteManipulationHandler(final AsyncJobSingle<T> asyncJobSingle) {
        asyncJobSingle.toFuture().exceptionally(new Function() { // from class: in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return SteamMatchmaking.attachIncompleteManipulationHandler$lambda$0(this.f$0, asyncJobSingle, (Throwable) obj);
            }
        });
        return asyncJobSingle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CallbackMsg attachIncompleteManipulationHandler$lambda$0(SteamMatchmaking steamMatchmaking, AsyncJobSingle asyncJobSingle, Throwable th) {
        steamMatchmaking.lobbyManipulationRequests.remove(asyncJobSingle.getJobID());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleCreateLobbyResponse(IPacketMsg iPacketMsg) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponse.class, iPacketMsg);
        SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponse.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponse.Builder) clientMsgProtobuf.getBody();
        GeneratedMessage generatedMessageRemove = this.lobbyManipulationRequests.remove(clientMsgProtobuf.getTargetJobID());
        if (generatedMessageRemove != null && builder.getEresult() == EResult.OK.code()) {
            SteammessagesClientserverMms.CMsgClientMMSCreateLobby cMsgClientMMSCreateLobby = (SteammessagesClientserverMms.CMsgClientMMSCreateLobby) generatedMessageRemove;
            ArrayList arrayList = new ArrayList(1);
            SteamID steamID = getClient().getSteamID();
            Intrinsics.checkNotNull(steamID);
            String personaNameOwner = cMsgClientMMSCreateLobby.getPersonaNameOwner();
            Intrinsics.checkNotNullExpressionValue(personaNameOwner, "getPersonaNameOwner(...)");
            arrayList.add(new Member(steamID, personaNameOwner, null, 4, null));
            LobbyCache lobbyCache = this.lobbyCache;
            int appId = cMsgClientMMSCreateLobby.getAppId();
            SteamID steamID2 = new SteamID(builder.getSteamIdLobby());
            ELobbyType eLobbyTypeFrom = ELobbyType.from(cMsgClientMMSCreateLobby.getLobbyType());
            Intrinsics.checkNotNullExpressionValue(eLobbyTypeFrom, "from(...)");
            lobbyCache.cacheLobby(appId, new Lobby(steamID2, eLobbyTypeFrom, cMsgClientMMSCreateLobby.getLobbyFlags(), getClient().getSteamID(), Lobby.Companion.decodeMetadata$javasteam(cMsgClientMMSCreateLobby.getMetadata()), cMsgClientMMSCreateLobby.getMaxMembers(), 1, arrayList, null, null));
        }
        JobID targetJobID = clientMsgProtobuf.getTargetJobID();
        int appId2 = builder.getAppId();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        getClient().postCallback(new CreateLobbyCallback(targetJobID, appId2, eResultFrom, new SteamID(builder.getSteamIdLobby())));
    }

    public final void handleSetLobbyDataResponse(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponse.class, packetMsg);
        SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponse.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponse.Builder) clientMsgProtobuf.getBody();
        GeneratedMessage generatedMessageRemove = this.lobbyManipulationRequests.remove(clientMsgProtobuf.getTargetJobID());
        if (generatedMessageRemove != null && builder.getEresult() == EResult.OK.code()) {
            SteammessagesClientserverMms.CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyData = (SteammessagesClientserverMms.CMsgClientMMSSetLobbyData) generatedMessageRemove;
            Lobby lobby = this.lobbyCache.getLobby(cMsgClientMMSSetLobbyData.getAppId(), cMsgClientMMSSetLobbyData.getSteamIdLobby());
            if (lobby != null) {
                Map<String, String> mapDecodeMetadata$javasteam = Lobby.Companion.decodeMetadata$javasteam(cMsgClientMMSSetLobbyData.getMetadata());
                if (cMsgClientMMSSetLobbyData.getSteamIdMember() == 0) {
                    LobbyCache lobbyCache = this.lobbyCache;
                    int appId = cMsgClientMMSSetLobbyData.getAppId();
                    SteamID steamID = lobby.getSteamID();
                    ELobbyType eLobbyTypeFrom = ELobbyType.from(cMsgClientMMSSetLobbyData.getLobbyType());
                    Intrinsics.checkNotNullExpressionValue(eLobbyTypeFrom, "from(...)");
                    lobbyCache.cacheLobby(appId, new Lobby(steamID, eLobbyTypeFrom, cMsgClientMMSSetLobbyData.getLobbyFlags(), lobby.getOwnerSteamID(), mapDecodeMetadata$javasteam, cMsgClientMMSSetLobbyData.getMaxMembers(), lobby.getNumMembers(), lobby.getMembers(), lobby.getDistance(), lobby.getWeight()));
                } else {
                    List<Member> members = lobby.getMembers();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(members, 10));
                    for (Member member : members) {
                        if (member.getSteamID().convertToUInt64() == cMsgClientMMSSetLobbyData.getSteamIdMember()) {
                            member = new Member(member.getSteamID(), member.getPersonaName(), mapDecodeMetadata$javasteam);
                        }
                        arrayList.add(member);
                    }
                    this.lobbyCache.updateLobbyMembers(cMsgClientMMSSetLobbyData.getAppId(), lobby, arrayList);
                }
            }
        }
        JobID targetJobID = clientMsgProtobuf.getTargetJobID();
        int appId2 = builder.getAppId();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        getClient().postCallback(new SetLobbyDataCallback(targetJobID, appId2, eResultFrom, new SteamID(builder.getSteamIdLobby())));
    }

    public final void handleSetLobbyOwnerResponse(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponse.class, packetMsg);
        SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponse.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponse.Builder) clientMsgProtobuf.getBody();
        GeneratedMessage generatedMessageRemove = this.lobbyManipulationRequests.remove(clientMsgProtobuf.getTargetJobID());
        if (generatedMessageRemove != null && builder.getEresult() == EResult.OK.code()) {
            this.lobbyCache.updateLobbyOwner(builder.getAppId(), builder.getSteamIdLobby(), ((SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner) generatedMessageRemove).getSteamIdNewOwner());
        }
        JobID targetJobID = clientMsgProtobuf.getTargetJobID();
        int appId = builder.getAppId();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        getClient().postCallback(new SetLobbyOwnerCallback(targetJobID, appId, eResultFrom, new SteamID(builder.getSteamIdLobby())));
    }

    public final void handleGetLobbyListResponse(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.class, packetMsg);
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.Builder) clientMsgProtobuf.getBody();
        List<SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.Lobby> lobbiesList = builder.getLobbiesList();
        Intrinsics.checkNotNullExpressionValue(lobbiesList, "getLobbiesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(lobbiesList, 10));
        for (SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.Lobby lobby : lobbiesList) {
            Lobby lobby2 = this.lobbyCache.getLobby(builder.getAppId(), lobby.getSteamId());
            List<Member> members = lobby2 != null ? lobby2.getMembers() : null;
            SteamID steamID = new SteamID(lobby.getSteamId());
            ELobbyType eLobbyTypeFrom = ELobbyType.from(lobby.getLobbyType());
            Intrinsics.checkNotNullExpressionValue(eLobbyTypeFrom, "from(...)");
            int lobbyFlags = lobby.getLobbyFlags();
            SteamID ownerSteamID = lobby2 != null ? lobby2.getOwnerSteamID() : null;
            Map<String, String> mapDecodeMetadata$javasteam = Lobby.Companion.decodeMetadata$javasteam(lobby.getMetadata());
            int maxMembers = lobby.getMaxMembers();
            int numMembers = lobby.getNumMembers();
            if (members == null) {
                members = CollectionsKt__CollectionsKt.emptyList();
            }
            arrayList.add(new Lobby(steamID, eLobbyTypeFrom, lobbyFlags, ownerSteamID, mapDecodeMetadata$javasteam, maxMembers, numMembers, members, Float.valueOf(lobby.getDistance()), Long.valueOf(lobby.getWeight())));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.lobbyCache.cacheLobby(builder.getAppId(), (Lobby) it.next());
        }
        JobID targetJobID = clientMsgProtobuf.getTargetJobID();
        int appId = builder.getAppId();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        getClient().postCallback(new GetLobbyListCallback(targetJobID, appId, eResultFrom, arrayList));
    }

    public final void handleJoinLobbyResponse(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.class, packetMsg);
        SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.Builder) clientMsgProtobuf.getBody();
        Lobby lobby = null;
        if (builder.hasSteamIdLobby()) {
            List<SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.Member> membersList = builder.getMembersList();
            Intrinsics.checkNotNullExpressionValue(membersList, "getMembersList(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(membersList, 10));
            for (SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.Member member : membersList) {
                SteamID steamID = new SteamID(member.getSteamId());
                String personaName = member.getPersonaName();
                Intrinsics.checkNotNullExpressionValue(personaName, "getPersonaName(...)");
                arrayList.add(new Member(steamID, personaName, Lobby.Companion.decodeMetadata$javasteam(member.getMetadata())));
            }
            Lobby lobby2 = this.lobbyCache.getLobby(builder.getAppId(), builder.getSteamIdLobby());
            SteamID steamID2 = new SteamID(builder.getSteamIdLobby());
            ELobbyType eLobbyTypeFrom = ELobbyType.from(builder.getLobbyType());
            Intrinsics.checkNotNullExpressionValue(eLobbyTypeFrom, "from(...)");
            Lobby lobby3 = new Lobby(steamID2, eLobbyTypeFrom, builder.getLobbyFlags(), new SteamID(builder.getSteamIdOwner()), Lobby.Companion.decodeMetadata$javasteam(builder.getMetadata()), builder.getMaxMembers(), arrayList.size(), arrayList, lobby2 != null ? lobby2.getDistance() : null, lobby2 != null ? lobby2.getWeight() : null);
            this.lobbyCache.cacheLobby(builder.getAppId(), lobby3);
            lobby = lobby3;
        }
        JobID targetJobID = clientMsgProtobuf.getTargetJobID();
        int appId = builder.getAppId();
        EChatRoomEnterResponse eChatRoomEnterResponseFrom = EChatRoomEnterResponse.from(builder.getChatRoomEnterResponse());
        Intrinsics.checkNotNullExpressionValue(eChatRoomEnterResponseFrom, "from(...)");
        getClient().postCallback(new JoinLobbyCallback(targetJobID, appId, eChatRoomEnterResponseFrom, lobby));
    }

    public final void handleLeaveLobbyResponse(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponse.class, packetMsg);
        SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponse.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponse.Builder) clientMsgProtobuf.getBody();
        if (builder.getEresult() == EResult.OK.code()) {
            this.lobbyCache.clearLobbyMembers(builder.getAppId(), builder.getSteamIdLobby());
        }
        JobID targetJobID = clientMsgProtobuf.getTargetJobID();
        int appId = builder.getAppId();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        getClient().postCallback(new LeaveLobbyCallback(targetJobID, appId, eResultFrom, new SteamID(builder.getSteamIdLobby())));
    }

    public final void handleLobbyData(IPacketMsg packetMsg) {
        List<Member> listEmptyList;
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSLobbyData.class, packetMsg);
        SteammessagesClientserverMms.CMsgClientMMSLobbyData.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSLobbyData.Builder) clientMsgProtobuf.getBody();
        Lobby lobby = this.lobbyCache.getLobby(builder.getAppId(), builder.getSteamIdLobby());
        if (builder.getMembersList().isEmpty()) {
            listEmptyList = lobby != null ? lobby.getMembers() : null;
        } else {
            List<SteammessagesClientserverMms.CMsgClientMMSLobbyData.Member> membersList = builder.getMembersList();
            Intrinsics.checkNotNullExpressionValue(membersList, "getMembersList(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(membersList, 10));
            for (SteammessagesClientserverMms.CMsgClientMMSLobbyData.Member member : membersList) {
                SteamID steamID = new SteamID(member.getSteamId());
                String personaName = member.getPersonaName();
                Intrinsics.checkNotNullExpressionValue(personaName, "getPersonaName(...)");
                arrayList.add(new Member(steamID, personaName, Lobby.Companion.decodeMetadata$javasteam(member.getMetadata())));
            }
            listEmptyList = arrayList;
        }
        SteamID steamID2 = new SteamID(builder.getSteamIdLobby());
        ELobbyType eLobbyTypeFrom = ELobbyType.from(builder.getLobbyType());
        Intrinsics.checkNotNullExpressionValue(eLobbyTypeFrom, "from(...)");
        int lobbyFlags = builder.getLobbyFlags();
        SteamID steamID3 = new SteamID(builder.getSteamIdOwner());
        Map<String, String> mapDecodeMetadata$javasteam = Lobby.Companion.decodeMetadata$javasteam(builder.getMetadata());
        int maxMembers = builder.getMaxMembers();
        int numMembers = builder.getNumMembers();
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        Lobby lobby2 = new Lobby(steamID2, eLobbyTypeFrom, lobbyFlags, steamID3, mapDecodeMetadata$javasteam, maxMembers, numMembers, listEmptyList, lobby != null ? lobby.getDistance() : null, lobby != null ? lobby.getWeight() : null);
        this.lobbyCache.cacheLobby(builder.getAppId(), lobby2);
        getClient().postCallback(new LobbyDataCallback(clientMsgProtobuf.getTargetJobID(), builder.getAppId(), lobby2));
    }

    public final void handleUserJoinedLobby(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobby.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobby.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobby.class, packetMsg).getBody();
        Lobby lobby = this.lobbyCache.getLobby(builder.getAppId(), builder.getSteamIdLobby());
        if (lobby == null || lobby.getMembers().isEmpty()) {
            return;
        }
        LobbyCache lobbyCache = this.lobbyCache;
        int appId = builder.getAppId();
        long steamIdUser = builder.getSteamIdUser();
        String personaName = builder.getPersonaName();
        Intrinsics.checkNotNullExpressionValue(personaName, "getPersonaName(...)");
        Member memberAddLobbyMember = lobbyCache.addLobbyMember(appId, lobby, steamIdUser, personaName);
        if (memberAddLobbyMember != null) {
            getClient().postCallback(new UserJoinedLobbyCallback(builder.getAppId(), new SteamID(builder.getSteamIdLobby()), memberAddLobbyMember));
        }
    }

    public final void handleUserLeftLobby(IPacketMsg packetMsg) {
        Member memberRemoveLobbyMember;
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserverMms.CMsgClientMMSUserLeftLobby.Builder builder = (SteammessagesClientserverMms.CMsgClientMMSUserLeftLobby.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverMms.CMsgClientMMSUserLeftLobby.class, packetMsg).getBody();
        Lobby lobby = this.lobbyCache.getLobby(builder.getAppId(), builder.getSteamIdLobby());
        if (lobby == null || lobby.getMembers().isEmpty() || (memberRemoveLobbyMember = this.lobbyCache.removeLobbyMember(builder.getAppId(), lobby, builder.getSteamIdUser())) == null) {
            return;
        }
        if (Intrinsics.areEqual(memberRemoveLobbyMember.getSteamID(), getClient().getSteamID())) {
            this.lobbyCache.clearLobbyMembers(builder.getAppId(), builder.getSteamIdLobby());
        }
        getClient().postCallback(new UserLeftLobbyCallback(builder.getAppId(), new SteamID(builder.getSteamIdLobby()), memberRemoveLobbyMember));
    }
}
