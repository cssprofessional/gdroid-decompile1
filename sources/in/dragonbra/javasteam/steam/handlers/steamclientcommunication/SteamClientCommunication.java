package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EGamingDeviceType;
import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.ESteamRealm;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm;
import in.dragonbra.javasteam.rpc.service.ClientComm;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: compiled from: SteamClientCommunication.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamClientCommunication extends ClientMsgHandler {
    private final Lazy clientComm$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SteamClientCommunication.clientComm_delegate$lambda$0(this.f$0);
        }
    });

    public final Deferred<ClientAppList> getClientAppList(long j) {
        return getClientAppList$default(this, j, null, null, 6, null);
    }

    public final Deferred<ClientAppList> getClientAppList(long j, InstalledAppsFilter filters) {
        Intrinsics.checkNotNullParameter(filters, "filters");
        return getClientAppList$default(this, j, filters, null, 4, null);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    public final Deferred<Boolean> launchClientApp(long j, int i) {
        return launchClientApp$default(this, j, i, null, 4, null);
    }

    public final Deferred<Boolean> setClientAppUpdateState(long j, int i) {
        return setClientAppUpdateState$default(this, j, i, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClientComm getClientComm() {
        return (ClientComm) this.clientComm$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClientComm clientComm_delegate$lambda$0(SteamClientCommunication steamClientCommunication) {
        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) steamClientCommunication.getClient().getHandler(SteamUnifiedMessages.class);
        if (steamUnifiedMessages != null) {
            return (ClientComm) steamUnifiedMessages.createService(ClientComm.class);
        }
        throw new NullPointerException("Unable to get SteamUnifiedMessages handler");
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getAllClientLogonInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getAllClientLogonInfo$1", f = "SteamClientCommunication.kt", l = {45}, m = "invokeSuspend", v = 1)
    public static final class C00131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AllClientLogonInfo>, Object> {
        Object L$0;
        int label;

        public C00131(Continuation<? super C00131> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00131(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AllClientLogonInfo> continuation) {
            return ((C00131) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Request cClientComm_GetAllClientLogonInfo_RequestBuild = ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Request.newBuilder().build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_GetAllClientLogonInfo_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response.Builder>> allClientLogonInfo = clientComm.getAllClientLogonInfo(cClientComm_GetAllClientLogonInfo_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_GetAllClientLogonInfo_RequestBuild);
                this.label = 1;
                obj = allClientLogonInfo.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response cClientComm_GetAllClientLogonInfo_ResponseBuild = ((ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response.Builder) ((ServiceMethodResponse) obj).getBody()).build();
            List<ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_Session> sessionsList = cClientComm_GetAllClientLogonInfo_ResponseBuild.getSessionsList();
            Intrinsics.checkNotNullExpressionValue(sessionsList, "getSessionsList(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(sessionsList, 10));
            for (ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response_Session cClientComm_GetAllClientLogonInfo_Response_Session : sessionsList) {
                long clientInstanceid = cClientComm_GetAllClientLogonInfo_Response_Session.getClientInstanceid();
                int protocolVersion = cClientComm_GetAllClientLogonInfo_Response_Session.getProtocolVersion();
                String osName = cClientComm_GetAllClientLogonInfo_Response_Session.getOsName();
                Intrinsics.checkNotNullExpressionValue(osName, "getOsName(...)");
                String machineName = cClientComm_GetAllClientLogonInfo_Response_Session.getMachineName();
                Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
                EOSType eOSTypeFrom = EOSType.from(cClientComm_GetAllClientLogonInfo_Response_Session.getOsType());
                Intrinsics.checkNotNullExpressionValue(eOSTypeFrom, "from(...)");
                EGamingDeviceType eGamingDeviceTypeFrom = EGamingDeviceType.from(cClientComm_GetAllClientLogonInfo_Response_Session.getDeviceType());
                Intrinsics.checkNotNullExpressionValue(eGamingDeviceTypeFrom, "from(...)");
                ESteamRealm eSteamRealmFrom = ESteamRealm.from(cClientComm_GetAllClientLogonInfo_Response_Session.getRealm());
                Intrinsics.checkNotNullExpressionValue(eSteamRealmFrom, "from(...)");
                arrayList.add(new AllClientLogonInfoSession(clientInstanceid, protocolVersion, osName, machineName, eOSTypeFrom, eGamingDeviceTypeFrom, eSteamRealmFrom));
            }
            return new AllClientLogonInfo(arrayList, cClientComm_GetAllClientLogonInfo_ResponseBuild.getRefetchIntervalSec());
        }
    }

    public final Deferred<AllClientLogonInfo> getAllClientLogonInfo() {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00131(null), 3, null);
    }

    public static /* synthetic */ Deferred getClientAppList$default(SteamClientCommunication steamClientCommunication, long j, InstalledAppsFilter installedAppsFilter, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            installedAppsFilter = InstalledAppsFilter.None;
        }
        if ((i & 4) != 0) {
            str = "english";
        }
        return steamClientCommunication.getClientAppList(j, installedAppsFilter, str);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientAppList$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientAppList$1", f = "SteamClientCommunication.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class C00141 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ClientAppList>, Object> {
        final /* synthetic */ InstalledAppsFilter $filters;
        final /* synthetic */ String $language;
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientAppList$1$WhenMappings */
        /* JADX INFO: compiled from: SteamClientCommunication.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[InstalledAppsFilter.values().length];
                try {
                    iArr[InstalledAppsFilter.None.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[InstalledAppsFilter.Changing.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00141(long j, String str, InstalledAppsFilter installedAppsFilter, Continuation<? super C00141> continuation) {
            super(2, continuation);
            this.$remoteId = j;
            this.$language = str;
            this.$filters = installedAppsFilter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00141(this.$remoteId, this.$language, this.$filters, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ClientAppList> continuation) {
            return ((C00141) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String str;
            Object objAwait;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_GetClientAppList_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_GetClientAppList_Request.newBuilder();
                long j = this.$remoteId;
                String str2 = this.$language;
                InstalledAppsFilter installedAppsFilter = this.$filters;
                builderNewBuilder.setClientInstanceid(j);
                builderNewBuilder.setLanguage(str2);
                builderNewBuilder.setIncludeClientInfo(true);
                builderNewBuilder.setFields("games");
                int i2 = WhenMappings.$EnumSwitchMapping$0[installedAppsFilter.ordinal()];
                if (i2 == 1) {
                    str = "none";
                } else {
                    if (i2 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    str = "changing";
                }
                builderNewBuilder.setFilters(str);
                ServiceClientcomm.CClientComm_GetClientAppList_Request cClientComm_GetClientAppList_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_GetClientAppList_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetClientAppList_Response.Builder>> clientAppList = clientComm.getClientAppList(cClientComm_GetClientAppList_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_GetClientAppList_RequestBuild);
                this.label = 1;
                objAwait = clientAppList.await(this);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objAwait = obj;
            }
            ServiceClientcomm.CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_ResponseBuild = ((ServiceClientcomm.CClientComm_GetClientAppList_Response.Builder) ((ServiceMethodResponse) objAwait).getBody()).build();
            long bytesAvailable = cClientComm_GetClientAppList_ResponseBuild.getBytesAvailable();
            List<ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData> appsList = cClientComm_GetClientAppList_ResponseBuild.getAppsList();
            Intrinsics.checkNotNullExpressionValue(appsList, "getAppsList(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(appsList, 10));
            Iterator it = appsList.iterator();
            while (it.hasNext()) {
                ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData cClientComm_GetClientAppList_Response_AppData = (ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData) it.next();
                int appid = cClientComm_GetClientAppList_Response_AppData.getAppid();
                String app = cClientComm_GetClientAppList_Response_AppData.getApp();
                Intrinsics.checkNotNullExpressionValue(app, "getApp(...)");
                String category = cClientComm_GetClientAppList_Response_AppData.getCategory();
                Intrinsics.checkNotNullExpressionValue(category, "getCategory(...)");
                String appType = cClientComm_GetClientAppList_Response_AppData.getAppType();
                Intrinsics.checkNotNullExpressionValue(appType, "getAppType(...)");
                int numDownloading = cClientComm_GetClientAppList_Response_AppData.getNumDownloading();
                int bytesDownloadRate = cClientComm_GetClientAppList_Response_AppData.getBytesDownloadRate();
                long bytesDownloaded = cClientComm_GetClientAppList_Response_AppData.getBytesDownloaded();
                long bytesToDownload = cClientComm_GetClientAppList_Response_AppData.getBytesToDownload();
                List<ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCData> dlcsList = cClientComm_GetClientAppList_Response_AppData.getDlcsList();
                Iterator it2 = it;
                Intrinsics.checkNotNullExpressionValue(dlcsList, "getDlcsList(...)");
                long j2 = bytesAvailable;
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(dlcsList, 10));
                Iterator it3 = dlcsList.iterator();
                while (it3.hasNext()) {
                    ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCData cClientComm_GetClientAppList_Response_AppData_DLCData = (ServiceClientcomm.CClientComm_GetClientAppList_Response_AppData_DLCData) it3.next();
                    Iterator it4 = it3;
                    int appid2 = cClientComm_GetClientAppList_Response_AppData_DLCData.getAppid();
                    ServiceClientcomm.CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response = cClientComm_GetClientAppList_ResponseBuild;
                    String app2 = cClientComm_GetClientAppList_Response_AppData_DLCData.getApp();
                    Intrinsics.checkNotNullExpressionValue(app2, "getApp(...)");
                    arrayList2.add(new ClientAppListDlcData(appid2, app2, cClientComm_GetClientAppList_Response_AppData_DLCData.getInstalled()));
                    it3 = it4;
                    cClientComm_GetClientAppList_ResponseBuild = cClientComm_GetClientAppList_Response;
                }
                arrayList.add(new ClientAppListAppData(appid, app, category, appType, numDownloading, bytesDownloadRate, bytesDownloaded, bytesToDownload, arrayList2, cClientComm_GetClientAppList_Response_AppData.getFavorite(), cClientComm_GetClientAppList_Response_AppData.getAutoUpdate(), cClientComm_GetClientAppList_Response_AppData.getInstalled(), cClientComm_GetClientAppList_Response_AppData.getDownloadPaused(), cClientComm_GetClientAppList_Response_AppData.getChanging(), cClientComm_GetClientAppList_Response_AppData.getAvailableOnPlatform(), cClientComm_GetClientAppList_Response_AppData.getBytesStaged(), cClientComm_GetClientAppList_Response_AppData.getBytesToStage(), cClientComm_GetClientAppList_Response_AppData.getBytesRequired(), cClientComm_GetClientAppList_Response_AppData.getSourceBuildid(), cClientComm_GetClientAppList_Response_AppData.getTargetBuildid(), cClientComm_GetClientAppList_Response_AppData.getEstimatedSecondsRemaining(), cClientComm_GetClientAppList_Response_AppData.getQueuePosition(), cClientComm_GetClientAppList_Response_AppData.getUninstalling(), cClientComm_GetClientAppList_Response_AppData.getRtTimeScheduled(), cClientComm_GetClientAppList_Response_AppData.getRunning(), cClientComm_GetClientAppList_Response_AppData.getUpdatePercentage()));
                it = it2;
                bytesAvailable = j2;
                cClientComm_GetClientAppList_ResponseBuild = cClientComm_GetClientAppList_ResponseBuild;
            }
            ServiceClientcomm.CClientComm_GetClientAppList_Response cClientComm_GetClientAppList_Response2 = cClientComm_GetClientAppList_ResponseBuild;
            long j3 = bytesAvailable;
            int packageVersion = cClientComm_GetClientAppList_Response2.getClientInfo().getPackageVersion();
            String os = cClientComm_GetClientAppList_Response2.getClientInfo().getOs();
            Intrinsics.checkNotNullExpressionValue(os, "getOs(...)");
            String machineName = cClientComm_GetClientAppList_Response2.getClientInfo().getMachineName();
            Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
            String ipPublic = cClientComm_GetClientAppList_Response2.getClientInfo().getIpPublic();
            Intrinsics.checkNotNullExpressionValue(ipPublic, "getIpPublic(...)");
            String ipPrivate = cClientComm_GetClientAppList_Response2.getClientInfo().getIpPrivate();
            Intrinsics.checkNotNullExpressionValue(ipPrivate, "getIpPrivate(...)");
            long bytesAvailable2 = cClientComm_GetClientAppList_Response2.getClientInfo().getBytesAvailable();
            List<ServiceClientcomm.CClientComm_ClientData_RunningGames> runningGamesList = cClientComm_GetClientAppList_Response2.getClientInfo().getRunningGamesList();
            Intrinsics.checkNotNullExpressionValue(runningGamesList, "getRunningGamesList(...)");
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(runningGamesList, 10));
            for (ServiceClientcomm.CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames : runningGamesList) {
                int appid3 = cClientComm_ClientData_RunningGames.getAppid();
                String extraInfo = cClientComm_ClientData_RunningGames.getExtraInfo();
                Intrinsics.checkNotNullExpressionValue(extraInfo, "getExtraInfo(...)");
                arrayList3.add(new RunningGames(appid3, extraInfo, cClientComm_ClientData_RunningGames.getTimeRunningSec()));
            }
            int protocolVersion = cClientComm_GetClientAppList_Response2.getClientInfo().getProtocolVersion();
            int clientcommVersion = cClientComm_GetClientAppList_Response2.getClientInfo().getClientcommVersion();
            List<Integer> localUsersList = cClientComm_GetClientAppList_Response2.getClientInfo().getLocalUsersList();
            Intrinsics.checkNotNullExpressionValue(localUsersList, "getLocalUsersList(...)");
            return new ClientAppList(j3, arrayList, new ClientInfo(packageVersion, os, machineName, ipPublic, ipPrivate, bytesAvailable2, arrayList3, protocolVersion, clientcommVersion, localUsersList), cClientComm_GetClientAppList_Response2.getRefetchIntervalSecFull(), cClientComm_GetClientAppList_Response2.getRefetchIntervalSecChanging(), cClientComm_GetClientAppList_Response2.getRefetchIntervalSecUpdating());
        }
    }

    public final Deferred<ClientAppList> getClientAppList(long j, InstalledAppsFilter filters, String language) {
        Intrinsics.checkNotNullParameter(filters, "filters");
        Intrinsics.checkNotNullParameter(language, "language");
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00141(j, language, filters, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$installClientApp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$installClientApp$1", f = "SteamClientCommunication.kt", l = {165}, m = "invokeSuspend", v = 1)
    public static final class C00171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00171(long j, int i, Continuation<? super C00171> continuation) {
            super(2, continuation);
            this.$remoteId = j;
            this.$appId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00171(this.$remoteId, this.$appId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C00171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_InstallClientApp_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_InstallClientApp_Request.newBuilder();
                long j = this.$remoteId;
                int i2 = this.$appId;
                builderNewBuilder.setClientInstanceid(j);
                builderNewBuilder.setAppid(i2);
                ServiceClientcomm.CClientComm_InstallClientApp_Request cClientComm_InstallClientApp_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_InstallClientApp_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_InstallClientApp_Response.Builder>> asyncJobSingleInstallClientApp = clientComm.installClientApp(cClientComm_InstallClientApp_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_InstallClientApp_RequestBuild);
                this.label = 1;
                obj = asyncJobSingleInstallClientApp.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(((ServiceMethodResponse) obj).getResult() == EResult.OK);
        }
    }

    public final Deferred<Boolean> installClientApp(long j, int i) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00171(j, i, null), 3, null);
    }

    public static /* synthetic */ Deferred setClientAppUpdateState$default(SteamClientCommunication steamClientCommunication, long j, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return steamClientCommunication.setClientAppUpdateState(j, i, z);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$setClientAppUpdateState$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$setClientAppUpdateState$1", f = "SteamClientCommunication.kt", l = {BERTags.PRIVATE}, m = "invokeSuspend", v = 1)
    public static final class C00191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ boolean $action;
        final /* synthetic */ int $appId;
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00191(long j, int i, boolean z, Continuation<? super C00191> continuation) {
            super(2, continuation);
            this.$remoteId = j;
            this.$appId = i;
            this.$action = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00191(this.$remoteId, this.$appId, this.$action, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C00191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_SetClientAppUpdateState_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_SetClientAppUpdateState_Request.newBuilder();
                long j = this.$remoteId;
                int i2 = this.$appId;
                boolean z = this.$action;
                builderNewBuilder.setClientInstanceid(j);
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setAction(z ? 1 : 0);
                ServiceClientcomm.CClientComm_SetClientAppUpdateState_Request cClientComm_SetClientAppUpdateState_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_SetClientAppUpdateState_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_SetClientAppUpdateState_Response.Builder>> clientAppUpdateState = clientComm.setClientAppUpdateState(cClientComm_SetClientAppUpdateState_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_SetClientAppUpdateState_RequestBuild);
                this.label = 1;
                obj = clientAppUpdateState.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(((ServiceMethodResponse) obj).getResult() == EResult.OK);
        }
    }

    public final Deferred<Boolean> setClientAppUpdateState(long j, int i, boolean z) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00191(j, i, z, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$uninstallClientApp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$uninstallClientApp$1", f = "SteamClientCommunication.kt", l = {213}, m = "invokeSuspend", v = 1)
    public static final class C00201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00201(long j, int i, Continuation<? super C00201> continuation) {
            super(2, continuation);
            this.$remoteId = j;
            this.$appId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00201(this.$remoteId, this.$appId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C00201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_UninstallClientApp_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_UninstallClientApp_Request.newBuilder();
                long j = this.$remoteId;
                int i2 = this.$appId;
                builderNewBuilder.setClientInstanceid(j);
                builderNewBuilder.setAppid(i2);
                ServiceClientcomm.CClientComm_UninstallClientApp_Request cClientComm_UninstallClientApp_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_UninstallClientApp_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_UninstallClientApp_Response.Builder>> asyncJobSingleUninstallClientApp = clientComm.uninstallClientApp(cClientComm_UninstallClientApp_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_UninstallClientApp_RequestBuild);
                this.label = 1;
                obj = asyncJobSingleUninstallClientApp.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(((ServiceMethodResponse) obj).getResult() == EResult.OK);
        }
    }

    public final Deferred<Boolean> uninstallClientApp(long j, int i) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00201(j, i, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$enableOrDisableDownloads$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$enableOrDisableDownloads$1", f = "SteamClientCommunication.kt", l = {234}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ boolean $enable;
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(long j, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$remoteId = j;
            this.$enable = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new AnonymousClass1(this.$remoteId, this.$enable, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Request.newBuilder();
                long j = this.$remoteId;
                boolean z = this.$enable;
                builderNewBuilder.setClientInstanceid(j);
                builderNewBuilder.setEnable(z);
                ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Request cClientComm_EnableOrDisableDownloads_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_EnableOrDisableDownloads_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Response.Builder>> asyncJobSingleEnableOrDisableDownloads = clientComm.enableOrDisableDownloads(cClientComm_EnableOrDisableDownloads_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_EnableOrDisableDownloads_RequestBuild);
                this.label = 1;
                obj = asyncJobSingleEnableOrDisableDownloads.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(((ServiceMethodResponse) obj).getResult() == EResult.OK);
        }
    }

    public final Deferred<Boolean> enableOrDisableDownloads(long j, boolean z) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new AnonymousClass1(j, z, null), 3, null);
    }

    public static /* synthetic */ Deferred launchClientApp$default(SteamClientCommunication steamClientCommunication, long j, int i, String str, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        return steamClientCommunication.launchClientApp(j, i, str);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$launchClientApp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$launchClientApp$1", f = "SteamClientCommunication.kt", l = {259}, m = "invokeSuspend", v = 1)
    public static final class C00181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ String $parameters;
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00181(long j, int i, String str, Continuation<? super C00181> continuation) {
            super(2, continuation);
            this.$remoteId = j;
            this.$appId = i;
            this.$parameters = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00181(this.$remoteId, this.$appId, this.$parameters, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C00181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_LaunchClientApp_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_LaunchClientApp_Request.newBuilder();
                long j = this.$remoteId;
                int i2 = this.$appId;
                String str = this.$parameters;
                builderNewBuilder.setClientInstanceid(j);
                builderNewBuilder.setAppid(i2);
                if (str == null) {
                    str = "";
                }
                builderNewBuilder.setQueryParams(str);
                ServiceClientcomm.CClientComm_LaunchClientApp_Request cClientComm_LaunchClientApp_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_LaunchClientApp_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_LaunchClientApp_Response.Builder>> asyncJobSingleLaunchClientApp = clientComm.launchClientApp(cClientComm_LaunchClientApp_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_LaunchClientApp_RequestBuild);
                this.label = 1;
                obj = asyncJobSingleLaunchClientApp.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(((ServiceMethodResponse) obj).getResult() == EResult.OK);
        }
    }

    public final Deferred<Boolean> launchClientApp(long j, int i, String str) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00181(j, i, str, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientLogonInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientLogonInfo$1", f = "SteamClientCommunication.kt", l = {275}, m = "invokeSuspend", v = 1)
    public static final class C00161 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ClientLogonInfo>, Object> {
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00161(long j, Continuation<? super C00161> continuation) {
            super(2, continuation);
            this.$remoteId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00161(this.$remoteId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ClientLogonInfo> continuation) {
            return ((C00161) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_GetClientLogonInfo_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_GetClientLogonInfo_Request.newBuilder();
                builderNewBuilder.setClientInstanceid(this.$remoteId);
                ServiceClientcomm.CClientComm_GetClientLogonInfo_Request cClientComm_GetClientLogonInfo_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_GetClientLogonInfo_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetClientLogonInfo_Response.Builder>> clientLogonInfo = clientComm.getClientLogonInfo(cClientComm_GetClientLogonInfo_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_GetClientLogonInfo_RequestBuild);
                this.label = 1;
                obj = clientLogonInfo.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceClientcomm.CClientComm_GetClientLogonInfo_Response cClientComm_GetClientLogonInfo_ResponseBuild = ((ServiceClientcomm.CClientComm_GetClientLogonInfo_Response.Builder) ((ServiceMethodResponse) obj).getBody()).build();
            int protocolVersion = cClientComm_GetClientLogonInfo_ResponseBuild.getProtocolVersion();
            String os = cClientComm_GetClientLogonInfo_ResponseBuild.getOs();
            Intrinsics.checkNotNullExpressionValue(os, "getOs(...)");
            String machineName = cClientComm_GetClientLogonInfo_ResponseBuild.getMachineName();
            Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
            return new ClientLogonInfo(protocolVersion, os, machineName);
        }
    }

    public final Deferred<ClientLogonInfo> getClientLogonInfo(long j) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00161(j, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamClientCommunication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientInfo$1", f = "SteamClientCommunication.kt", l = {295}, m = "invokeSuspend", v = 1)
    public static final class C00151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ClientInfo>, Object> {
        final /* synthetic */ long $remoteId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00151(long j, Continuation<? super C00151> continuation) {
            super(2, continuation);
            this.$remoteId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClientCommunication.this.new C00151(this.$remoteId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ClientInfo> continuation) {
            return ((C00151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ServiceClientcomm.CClientComm_GetClientInfo_Request.Builder builderNewBuilder = ServiceClientcomm.CClientComm_GetClientInfo_Request.newBuilder();
                builderNewBuilder.setClientInstanceid(this.$remoteId);
                ServiceClientcomm.CClientComm_GetClientInfo_Request cClientComm_GetClientInfo_RequestBuild = builderNewBuilder.build();
                ClientComm clientComm = SteamClientCommunication.this.getClientComm();
                Intrinsics.checkNotNull(cClientComm_GetClientInfo_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetClientInfo_Response.Builder>> clientInfo = clientComm.getClientInfo(cClientComm_GetClientInfo_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cClientComm_GetClientInfo_RequestBuild);
                this.label = 1;
                obj = clientInfo.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceClientcomm.CClientComm_GetClientInfo_Response cClientComm_GetClientInfo_ResponseBuild = ((ServiceClientcomm.CClientComm_GetClientInfo_Response.Builder) ((ServiceMethodResponse) obj).getBody()).build();
            int packageVersion = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getPackageVersion();
            String os = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getOs();
            Intrinsics.checkNotNullExpressionValue(os, "getOs(...)");
            String machineName = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getMachineName();
            Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
            String ipPublic = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getIpPublic();
            Intrinsics.checkNotNullExpressionValue(ipPublic, "getIpPublic(...)");
            String ipPrivate = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getIpPrivate();
            Intrinsics.checkNotNullExpressionValue(ipPrivate, "getIpPrivate(...)");
            long bytesAvailable = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getBytesAvailable();
            List<ServiceClientcomm.CClientComm_ClientData_RunningGames> runningGamesList = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getRunningGamesList();
            Intrinsics.checkNotNullExpressionValue(runningGamesList, "getRunningGamesList(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(runningGamesList, 10));
            for (ServiceClientcomm.CClientComm_ClientData_RunningGames cClientComm_ClientData_RunningGames : runningGamesList) {
                int appid = cClientComm_ClientData_RunningGames.getAppid();
                String extraInfo = cClientComm_ClientData_RunningGames.getExtraInfo();
                Intrinsics.checkNotNullExpressionValue(extraInfo, "getExtraInfo(...)");
                arrayList.add(new RunningGames(appid, extraInfo, cClientComm_ClientData_RunningGames.getTimeRunningSec()));
            }
            int protocolVersion = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getProtocolVersion();
            int clientcommVersion = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getClientcommVersion();
            List<Integer> localUsersList = cClientComm_GetClientInfo_ResponseBuild.getClientInfo().getLocalUsersList();
            Intrinsics.checkNotNullExpressionValue(localUsersList, "getLocalUsersList(...)");
            return new ClientInfo(packageVersion, os, machineName, ipPublic, ipPrivate, bytesAvailable, arrayList, protocolVersion, clientcommVersion, localUsersList);
        }
    }

    public final Deferred<ClientInfo> getClientInfo(long j) {
        return BuildersKt__Builders_commonKt.async$default(getClient().getDefaultScope$javasteam(), null, null, new C00151(j, null), 3, null);
    }
}
