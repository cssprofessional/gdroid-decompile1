package in.dragonbra.javasteam.steam.handlers.steamapps;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAppUsageEvent;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.generated.MsgClientAppUsageEvent;
import in.dragonbra.javasteam.generated.MsgClientGetLegacyGameKey;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.AppOwnershipTicketCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.CheckAppBetaPasswordCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.DepotKeyCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.EncryptedAppTicketCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.FreeLicenseCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.GameConnectTokensCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.GuestPassListCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.LegacyGameKeyCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.LicenseListCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSChangesCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSProductInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSTokensCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PrivateBetaCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PurchaseResponseCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.RedeemGuestPassResponseCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.VACStatusCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobMultiple;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.util.NetHelpers;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamApps.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamApps extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final void notifyGamesPlayed(EOSType clientOsType) {
        Intrinsics.checkNotNullParameter(clientOsType, "clientOsType");
        notifyGamesPlayed$default(this, null, clientOsType, 0, false, 13, null);
    }

    public final void notifyGamesPlayed(List<GamePlayedInfo> gamesPlayed, EOSType clientOsType) {
        Intrinsics.checkNotNullParameter(gamesPlayed, "gamesPlayed");
        Intrinsics.checkNotNullParameter(clientOsType, "clientOsType");
        notifyGamesPlayed$default(this, gamesPlayed, clientOsType, 0, false, 12, null);
    }

    public final void notifyGamesPlayed(List<GamePlayedInfo> gamesPlayed, EOSType clientOsType, int i) {
        Intrinsics.checkNotNullParameter(gamesPlayed, "gamesPlayed");
        Intrinsics.checkNotNullParameter(clientOsType, "clientOsType");
        notifyGamesPlayed$default(this, gamesPlayed, clientOsType, i, false, 8, null);
    }

    public final AsyncJobSingle<PICSTokensCallback> picsGetAccessTokens() {
        return picsGetAccessTokens$default(this, null, null, 3, null);
    }

    public final AsyncJobSingle<PICSTokensCallback> picsGetAccessTokens(Integer num) {
        return picsGetAccessTokens$default(this, num, null, 2, null);
    }

    public final AsyncJobSingle<PICSChangesCallback> picsGetChangesSince() {
        return picsGetChangesSince$default(this, 0, false, false, 7, null);
    }

    public final AsyncJobSingle<PICSChangesCallback> picsGetChangesSince(int i) {
        return picsGetChangesSince$default(this, i, false, false, 6, null);
    }

    public final AsyncJobSingle<PICSChangesCallback> picsGetChangesSince(int i, boolean z) {
        return picsGetChangesSince$default(this, i, z, false, 4, null);
    }

    public final AsyncJobMultiple<PICSProductInfoCallback> picsGetProductInfo() {
        return picsGetProductInfo$default(this, (PICSRequest) null, (PICSRequest) null, false, 7, (Object) null);
    }

    public final AsyncJobMultiple<PICSProductInfoCallback> picsGetProductInfo(PICSRequest pICSRequest) {
        return picsGetProductInfo$default(this, pICSRequest, (PICSRequest) null, false, 6, (Object) null);
    }

    public final AsyncJobMultiple<PICSProductInfoCallback> picsGetProductInfo(PICSRequest pICSRequest, PICSRequest pICSRequest2) {
        return picsGetProductInfo$default(this, pICSRequest, pICSRequest2, false, 4, (Object) null);
    }

    public final AsyncJobMultiple<PICSProductInfoCallback> picsGetProductInfo(Iterable<PICSRequest> apps, Iterable<PICSRequest> packages) {
        Intrinsics.checkNotNullParameter(apps, "apps");
        Intrinsics.checkNotNullParameter(packages, "packages");
        return picsGetProductInfo$default(this, (Iterable) apps, (Iterable) packages, false, 4, (Object) null);
    }

    public final AsyncJobSingle<EncryptedAppTicketCallback> requestEncryptedAppTicket(int i) {
        return requestEncryptedAppTicket$default(this, i, null, 2, null);
    }

    public final AsyncJobSingle<AppOwnershipTicketCallback> getAppOwnershipTicket(int i) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver.CMsgClientGetAppOwnershipTicket.class, EMsg.ClientGetAppOwnershipTicket, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserver.CMsgClientGetAppOwnershipTicket.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<DepotKeyCallback> getDepotDecryptionKey(int i, int i2) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientGetDepotDecryptionKey.class, EMsg.ClientGetDepotDecryptionKey, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserver2.CMsgClientGetDepotDecryptionKey.Builder) clientMsgProtobuf.getBody()).setDepotId(i);
        ((SteammessagesClientserver2.CMsgClientGetDepotDecryptionKey.Builder) clientMsgProtobuf.getBody()).setAppId(i2);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public static /* synthetic */ AsyncJobSingle requestEncryptedAppTicket$default(SteamApps steamApps, int i, byte[] bArr, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bArr = null;
        }
        return steamApps.requestEncryptedAppTicket(i, bArr);
    }

    public final AsyncJobSingle<EncryptedAppTicketCallback> requestEncryptedAppTicket(int i, byte[] bArr) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver.CMsgClientRequestEncryptedAppTicket.class, EMsg.ClientRequestEncryptedAppTicket, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserver.CMsgClientRequestEncryptedAppTicket.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        if (bArr != null) {
            ((SteammessagesClientserver.CMsgClientRequestEncryptedAppTicket.Builder) clientMsgProtobuf.getBody()).setUserdata(ByteString.copyFrom(bArr));
        }
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public static /* synthetic */ AsyncJobSingle picsGetAccessTokens$default(SteamApps steamApps, Integer num, Integer num2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        return steamApps.picsGetAccessTokens(num, num2);
    }

    public final AsyncJobSingle<PICSTokensCallback> picsGetAccessTokens(Integer num, Integer num2) {
        return picsGetAccessTokens(CollectionsKt__CollectionsKt.listOfNotNull(num), CollectionsKt__CollectionsKt.listOfNotNull(num2));
    }

    public final AsyncJobSingle<PICSTokensCallback> picsGetAccessTokens(Iterable<Integer> appIds, Iterable<Integer> packageIds) {
        Intrinsics.checkNotNullParameter(appIds, "appIds");
        Intrinsics.checkNotNullParameter(packageIds, "packageIds");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequest.class, EMsg.ClientPICSAccessTokenRequest, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequest.Builder) clientMsgProtobuf.getBody()).addAllAppids(appIds);
        ((SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenRequest.Builder) clientMsgProtobuf.getBody()).addAllPackageids(packageIds);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public static /* synthetic */ AsyncJobSingle picsGetChangesSince$default(SteamApps steamApps, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return steamApps.picsGetChangesSince(i, z, z2);
    }

    public final AsyncJobSingle<PICSChangesCallback> picsGetChangesSince(int i, boolean z, boolean z2) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequest.class, EMsg.ClientPICSChangesSinceRequest, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequest.Builder) clientMsgProtobuf.getBody()).setSinceChangeNumber(i);
        ((SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequest.Builder) clientMsgProtobuf.getBody()).setSendAppInfoChanges(z);
        ((SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceRequest.Builder) clientMsgProtobuf.getBody()).setSendPackageInfoChanges(z2);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public static /* synthetic */ AsyncJobMultiple picsGetProductInfo$default(SteamApps steamApps, PICSRequest pICSRequest, PICSRequest pICSRequest2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            pICSRequest = null;
        }
        if ((i & 2) != 0) {
            pICSRequest2 = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return steamApps.picsGetProductInfo(pICSRequest, pICSRequest2, z);
    }

    public final AsyncJobMultiple<PICSProductInfoCallback> picsGetProductInfo(PICSRequest pICSRequest, PICSRequest pICSRequest2, boolean z) {
        return picsGetProductInfo(CollectionsKt__CollectionsKt.listOfNotNull(pICSRequest), CollectionsKt__CollectionsKt.listOfNotNull(pICSRequest2), z);
    }

    public static /* synthetic */ AsyncJobMultiple picsGetProductInfo$default(SteamApps steamApps, Iterable iterable, Iterable iterable2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return steamApps.picsGetProductInfo((Iterable<PICSRequest>) iterable, (Iterable<PICSRequest>) iterable2, z);
    }

    public final AsyncJobMultiple<PICSProductInfoCallback> picsGetProductInfo(Iterable<PICSRequest> apps, Iterable<PICSRequest> packages, boolean z) {
        Intrinsics.checkNotNullParameter(apps, "apps");
        Intrinsics.checkNotNullParameter(packages, "packages");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.class, EMsg.ClientPICSProductInfoRequest, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        for (PICSRequest pICSRequest : apps) {
            SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfo.Builder builderNewBuilder = SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.AppInfo.newBuilder();
            builderNewBuilder.setAccessToken(pICSRequest.getAccessToken());
            builderNewBuilder.setAppid(pICSRequest.getId());
            builderNewBuilder.setOnlyPublicObsolete(false);
            ((SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.Builder) clientMsgProtobuf.getBody()).addApps(builderNewBuilder);
        }
        for (PICSRequest pICSRequest2 : packages) {
            SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfo.Builder builderNewBuilder2 = SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.PackageInfo.newBuilder();
            builderNewBuilder2.setAccessToken(pICSRequest2.getAccessToken());
            builderNewBuilder2.setPackageid(pICSRequest2.getId());
            ((SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.Builder) clientMsgProtobuf.getBody()).addPackages(builderNewBuilder2);
        }
        ((SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoRequest.Builder) clientMsgProtobuf.getBody()).setMetaDataOnly(z);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobMultiple<>(getClient(), clientMsgProtobuf.getSourceJobID(), new Function1() { // from class: in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SteamApps.picsGetProductInfo$lambda$1((PICSProductInfoCallback) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean picsGetProductInfo$lambda$1(PICSProductInfoCallback cb) {
        Intrinsics.checkNotNullParameter(cb, "cb");
        return Boolean.valueOf(!cb.isResponsePending());
    }

    public final AsyncJobSingle<FreeLicenseCallback> requestFreeLicense(int i) {
        return requestFreeLicense(CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(i)));
    }

    public final AsyncJobSingle<FreeLicenseCallback> requestFreeLicense(Iterable<Integer> apps) {
        Intrinsics.checkNotNullParameter(apps, "apps");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientRequestFreeLicense.class, EMsg.ClientRequestFreeLicense, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserver2.CMsgClientRequestFreeLicense.Builder) clientMsgProtobuf.getBody()).addAllAppids(apps);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<CheckAppBetaPasswordCallback> checkAppBetaPassword(int i, String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientCheckAppBetaPassword.class, EMsg.ClientCheckAppBetaPassword, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserver2.CMsgClientCheckAppBetaPassword.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserver2.CMsgClientCheckAppBetaPassword.Builder) clientMsgProtobuf.getBody()).setBetapassword(password);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<LegacyGameKeyCallback> getLegacyGameKey(int i) {
        ClientMsg clientMsg = new ClientMsg(MsgClientGetLegacyGameKey.class, 0, 2, null);
        clientMsg.setSourceJobID(getClient().getNextJobID());
        ((MsgClientGetLegacyGameKey) clientMsg.getBody()).setAppId(i);
        getClient().send(clientMsg);
        return new AsyncJobSingle<>(getClient(), clientMsg.getSourceJobID());
    }

    public final AsyncJobSingle<PrivateBetaCallback> picsGetPrivateBeta(int i, long j, String branch, byte[] branchPasswordHash) {
        Intrinsics.checkNotNullParameter(branch, "branch");
        Intrinsics.checkNotNullParameter(branchPasswordHash, "branchPasswordHash");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequest.class, EMsg.ClientPICSPrivateBetaRequest, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequest.Builder) clientMsgProtobuf.getBody()).setAppid(i);
        ((SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequest.Builder) clientMsgProtobuf.getBody()).setAccessToken(j);
        ((SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequest.Builder) clientMsgProtobuf.getBody()).setBetaName(branch);
        ((SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaRequest.Builder) clientMsgProtobuf.getBody()).setPasswordHash(ByteString.copyFrom(branchPasswordHash));
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final void sendClientAppUsageEvent(GameID gameId, EAppUsageEvent usageEvent, short s) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(usageEvent, "usageEvent");
        ClientMsg clientMsg = new ClientMsg(MsgClientAppUsageEvent.class, 0, 2, null);
        ((MsgClientAppUsageEvent) clientMsg.getBody()).setAppUsageEvent(usageEvent);
        ((MsgClientAppUsageEvent) clientMsg.getBody()).setGameID(gameId);
        ((MsgClientAppUsageEvent) clientMsg.getBody()).setOffline(s);
        getClient().send(clientMsg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void notifyGamesPlayed$default(SteamApps steamApps, List list, EOSType eOSType, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            z = false;
        }
        steamApps.notifyGamesPlayed(list, eOSType, i, z);
    }

    public final void notifyGamesPlayed(List<GamePlayedInfo> gamesPlayed, EOSType clientOsType, int i, boolean z) {
        Intrinsics.checkNotNullParameter(gamesPlayed, "gamesPlayed");
        Intrinsics.checkNotNullParameter(clientOsType, "clientOsType");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver.CMsgClientGamesPlayed.class, EMsg.ClientGamesPlayedWithDataBlob, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        SteammessagesClientserver.CMsgClientGamesPlayed.Builder builder = (SteammessagesClientserver.CMsgClientGamesPlayed.Builder) clientMsgProtobuf.getBody();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(gamesPlayed, 10));
        for (GamePlayedInfo gamePlayedInfo : gamesPlayed) {
            SteammessagesClientserver.CMsgClientGamesPlayed.GamePlayed.Builder builderNewBuilder = SteammessagesClientserver.CMsgClientGamesPlayed.GamePlayed.newBuilder();
            builderNewBuilder.setSteamIdGs(gamePlayedInfo.getSteamIdGs());
            builderNewBuilder.setGameId(gamePlayedInfo.getGameId());
            builderNewBuilder.setDeprecatedGameIpAddress(gamePlayedInfo.getDeprecatedGameIpAddress());
            builderNewBuilder.setGamePort(gamePlayedInfo.getGamePort());
            builderNewBuilder.setIsSecure(gamePlayedInfo.isSecure());
            builderNewBuilder.setToken(ByteString.copyFrom(gamePlayedInfo.getToken()));
            builderNewBuilder.setGameExtraInfo(gamePlayedInfo.getGameExtraInfo());
            byte[] gameDataBlob = gamePlayedInfo.getGameDataBlob();
            if (gameDataBlob != null) {
                builderNewBuilder.setGameDataBlob(ByteString.copyFrom(gameDataBlob));
            }
            builderNewBuilder.setProcessId(gamePlayedInfo.getProcessId());
            builderNewBuilder.setStreamingProviderId(gamePlayedInfo.getStreamingProviderId());
            builderNewBuilder.setGameFlags(gamePlayedInfo.getGameFlags());
            builderNewBuilder.setOwnerId(gamePlayedInfo.getOwnerId());
            builderNewBuilder.setVrHmdVendor(gamePlayedInfo.getVrHmdVendor());
            builderNewBuilder.setVrHmdModel(gamePlayedInfo.getVrHmdModel());
            builderNewBuilder.setLaunchOptionType(gamePlayedInfo.getLaunchOptionType());
            builderNewBuilder.setPrimaryControllerType(gamePlayedInfo.getPrimaryControllerType());
            builderNewBuilder.setPrimarySteamControllerSerial(gamePlayedInfo.getPrimarySteamControllerSerial());
            builderNewBuilder.setTotalSteamControllerCount(gamePlayedInfo.getTotalSteamControllerCount());
            builderNewBuilder.setTotalNonSteamControllerCount(gamePlayedInfo.getTotalNonSteamControllerCount());
            builderNewBuilder.setControllerWorkshopFileId(gamePlayedInfo.getControllerWorkshopFileId());
            builderNewBuilder.setLaunchSource(gamePlayedInfo.getLaunchSource());
            builderNewBuilder.setVrHmdRuntime(gamePlayedInfo.getVrHmdRuntime());
            InetAddress gameIpAddress = gamePlayedInfo.getGameIpAddress();
            if (gameIpAddress != null) {
                builderNewBuilder.setGameIpAddress(NetHelpers.getMsgIPAddress(gameIpAddress));
            }
            builderNewBuilder.setControllerConnectionType(gamePlayedInfo.getControllerConnectionType());
            builderNewBuilder.setGameOsPlatform(gamePlayedInfo.getGameOsPlatform());
            builderNewBuilder.setGameBuildId(gamePlayedInfo.getGameBuildId());
            builderNewBuilder.setCompatToolId(gamePlayedInfo.getCompatToolId());
            builderNewBuilder.setCompatToolCmd(gamePlayedInfo.getCompatToolCmd());
            builderNewBuilder.setCompatToolBuildId(gamePlayedInfo.getCompatToolBuildId());
            builderNewBuilder.setBetaName(gamePlayedInfo.getBetaName());
            builderNewBuilder.setDlcContext(gamePlayedInfo.getDlcContext());
            List<AppProcessInfo> processIdList = gamePlayedInfo.getProcessIdList();
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(processIdList, 10));
            for (AppProcessInfo appProcessInfo : processIdList) {
                SteammessagesClientserver.CMsgClientGamesPlayed.ProcessInfo.Builder builderNewBuilder2 = SteammessagesClientserver.CMsgClientGamesPlayed.ProcessInfo.newBuilder();
                builderNewBuilder2.setProcessId(appProcessInfo.getProcessId());
                builderNewBuilder2.setProcessIdParent(appProcessInfo.getProcessIdParent());
                builderNewBuilder2.setParentIsSteam(appProcessInfo.getParentIsSteam());
                arrayList2.add(builderNewBuilder2.build());
            }
            builderNewBuilder.addAllProcessIdList(arrayList2);
            arrayList.add(builderNewBuilder.build());
        }
        builder.addAllGamesPlayed(arrayList);
        ((SteammessagesClientserver.CMsgClientGamesPlayed.Builder) clientMsgProtobuf.getBody()).setClientOsType(clientOsType.code());
        ((SteammessagesClientserver.CMsgClientGamesPlayed.Builder) clientMsgProtobuf.getBody()).setCloudGamingPlatform(i);
        ((SteammessagesClientserver.CMsgClientGamesPlayed.Builder) clientMsgProtobuf.getBody()).setRecentReauthentication(z);
        getClient().send(clientMsgProtobuf);
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

    /* JADX INFO: compiled from: SteamApps.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamApps.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientLicenseList.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientRequestFreeLicenseResponse.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EMsg.ClientPurchaseResponse.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EMsg.ClientRedeemGuestPassResponse.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[EMsg.ClientGameConnectTokens.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[EMsg.ClientVACBanStatus.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[EMsg.ClientGetAppOwnershipTicketResponse.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[EMsg.ClientGetDepotDecryptionKeyResponse.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[EMsg.ClientGetLegacyGameKeyResponse.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[EMsg.ClientPICSAccessTokenResponse.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[EMsg.ClientPICSChangesSinceResponse.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[EMsg.ClientPICSProductInfoResponse.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr[EMsg.ClientUpdateGuestPassesList.ordinal()] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr[EMsg.ClientCheckAppBetaPasswordResponse.ordinal()] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr[EMsg.ClientPICSPrivateBetaResponse.ordinal()] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr[EMsg.ClientRequestEncryptedAppTicketResponse.ordinal()] = 16;
                } catch (NoSuchFieldError unused16) {
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
                    return new LicenseListCallback(iPacketMsg);
                case 2:
                    return new FreeLicenseCallback(iPacketMsg);
                case 3:
                    return new PurchaseResponseCallback(iPacketMsg);
                case 4:
                    return new RedeemGuestPassResponseCallback(iPacketMsg);
                case 5:
                    return new GameConnectTokensCallback(iPacketMsg);
                case 6:
                    return new VACStatusCallback(iPacketMsg);
                case 7:
                    return new AppOwnershipTicketCallback(iPacketMsg);
                case 8:
                    return new DepotKeyCallback(iPacketMsg);
                case 9:
                    return new LegacyGameKeyCallback(iPacketMsg);
                case 10:
                    return new PICSTokensCallback(iPacketMsg);
                case 11:
                    return new PICSChangesCallback(iPacketMsg);
                case 12:
                    return new PICSProductInfoCallback(iPacketMsg);
                case 13:
                    return new GuestPassListCallback(iPacketMsg);
                case 14:
                    return new CheckAppBetaPasswordCallback(iPacketMsg);
                case 15:
                    return new PrivateBetaCallback(iPacketMsg);
                case 16:
                    return new EncryptedAppTicketCallback(iPacketMsg);
                default:
                    return null;
            }
        }
    }
}
