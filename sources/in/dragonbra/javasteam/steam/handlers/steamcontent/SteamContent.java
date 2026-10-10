package in.dragonbra.javasteam.steam.handlers.steamcontent;

import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient;
import in.dragonbra.javasteam.rpc.service.ContentServerDirectory;
import in.dragonbra.javasteam.steam.cdn.Server;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.steam.webapi.ContentServerDirectoryService;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: SteamContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamContent extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(SteamContent.class);
    private final Lazy contentService$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SteamContent.contentService_delegate$lambda$0(this.f$0);
        }
    });

    public final Deferred<DepotPatchInfo> getDepotPatchInfo(int i, int i2, long j, long j2) {
        return getDepotPatchInfo$default(this, i, i2, j, j2, null, 16, null);
    }

    public final Deferred<GetPeerContentInfo> getPeerContentInfo(long j, long j2, long j3) {
        return getPeerContentInfo$default(this, j, j2, j3, null, 8, null);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    public final Deferred<RequestPeerContentServer> requestPeerContentServer(long j, long j2, long j3, int i) {
        return requestPeerContentServer$default(this, j, j2, j3, i, 0, null, 48, null);
    }

    public final Deferred<RequestPeerContentServer> requestPeerContentServer(long j, long j2, long j3, int i, int i2) {
        return requestPeerContentServer$default(this, j, j2, j3, i, i2, null, 32, null);
    }

    /* JADX INFO: compiled from: SteamContent.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ContentServerDirectory getContentService() {
        return (ContentServerDirectory) this.contentService$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ContentServerDirectory contentService_delegate$lambda$0(SteamContent steamContent) {
        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) steamContent.getClient().getHandler(SteamUnifiedMessages.class);
        if (steamUnifiedMessages != null) {
            return (ContentServerDirectory) steamUnifiedMessages.createService(ContentServerDirectory.class);
        }
        throw new NullPointerException("Unable to get SteamUnifiedMessages handler");
    }

    public static /* synthetic */ Deferred getServersForSteamPipe$default(SteamContent steamContent, Integer num, Integer num2, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        return steamContent.getServersForSteamPipe(num, num2, coroutineScope);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getServersForSteamPipe$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamContent.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getServersForSteamPipe$1", f = "SteamContent.kt", l = {57}, m = "invokeSuspend", v = 1)
    public static final class C00301 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Server>>, Object> {
        final /* synthetic */ Integer $cellId;
        final /* synthetic */ Integer $maxNumServers;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00301(Integer num, Integer num2, Continuation<? super C00301> continuation) {
            super(2, continuation);
            this.$cellId = num;
            this.$maxNumServers = num2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamContent.this.new C00301(this.$cellId, this.$maxNumServers, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends Server>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<Server>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<Server>> continuation) {
            return ((C00301) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Request.Builder builderNewBuilder = SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Request.newBuilder();
                Integer cellID = this.$cellId;
                SteamContent steamContent = SteamContent.this;
                Integer num = this.$maxNumServers;
                builderNewBuilder.setCellId((cellID == null && (cellID = steamContent.getClient().getCellID()) == null) ? 0 : cellID.intValue());
                if (num != null) {
                    builderNewBuilder.setMaxServers(num.intValue());
                }
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Request cContentServerDirectory_GetServersForSteamPipe_RequestBuild = builderNewBuilder.build();
                ContentServerDirectory contentService = SteamContent.this.getContentService();
                Intrinsics.checkNotNull(cContentServerDirectory_GetServersForSteamPipe_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.Builder>> serversForSteamPipe = contentService.getServersForSteamPipe(cContentServerDirectory_GetServersForSteamPipe_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cContentServerDirectory_GetServersForSteamPipe_RequestBuild);
                this.label = 1;
                obj = serversForSteamPipe.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response cContentServerDirectory_GetServersForSteamPipe_ResponseBuild = ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.Builder) ((ServiceMethodResponse) obj).getBody()).build();
            Intrinsics.checkNotNull(cContentServerDirectory_GetServersForSteamPipe_ResponseBuild);
            return ContentServerDirectoryService.convertServerList$javasteam(cContentServerDirectory_GetServersForSteamPipe_ResponseBuild);
        }
    }

    public final Deferred<List<Server>> getServersForSteamPipe(Integer num, Integer num2, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return BuildersKt__Builders_commonKt.async$default(parentScope, null, null, new C00301(num, num2, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getDepotPatchInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamContent.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getDepotPatchInfo$1", f = "SteamContent.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class C00271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DepotPatchInfo>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ int $depotId;
        final /* synthetic */ long $sourceManifestId;
        final /* synthetic */ long $targetManifestId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00271(int i, int i2, long j, long j2, Continuation<? super C00271> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$depotId = i2;
            this.$sourceManifestId = j;
            this.$targetManifestId = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamContent.this.new C00271(this.$appId, this.$depotId, this.$sourceManifestId, this.$targetManifestId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DepotPatchInfo> continuation) {
            return ((C00271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Request.Builder builderNewBuilder = SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Request.newBuilder();
                int i2 = this.$appId;
                int i3 = this.$depotId;
                long j = this.$sourceManifestId;
                long j2 = this.$targetManifestId;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setDepotid(i3);
                builderNewBuilder.setSourceManifestid(j);
                builderNewBuilder.setTargetManifestid(j2);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Request cContentServerDirectory_GetDepotPatchInfo_RequestBuild = builderNewBuilder.build();
                ContentServerDirectory contentService = SteamContent.this.getContentService();
                Intrinsics.checkNotNull(cContentServerDirectory_GetDepotPatchInfo_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response.Builder>> depotPatchInfo = contentService.getDepotPatchInfo(cContentServerDirectory_GetDepotPatchInfo_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cContentServerDirectory_GetDepotPatchInfo_RequestBuild);
                this.label = 1;
                obj = depotPatchInfo.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) obj;
            SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response cContentServerDirectory_GetDepotPatchInfo_ResponseBuild = ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response.Builder) serviceMethodResponse.getBody()).build();
            if (serviceMethodResponse.getResult() != EResult.OK) {
                Logger.error$default(SteamContent.logger, "getDepotPatchInfo got " + serviceMethodResponse.getResult(), null, 2, null);
            }
            return new DepotPatchInfo(cContentServerDirectory_GetDepotPatchInfo_ResponseBuild.getIsAvailable(), cContentServerDirectory_GetDepotPatchInfo_ResponseBuild.getPatchSize(), cContentServerDirectory_GetDepotPatchInfo_ResponseBuild.getPatchedChunksSize());
        }
    }

    public static /* synthetic */ Deferred getDepotPatchInfo$default(SteamContent steamContent, int i, int i2, long j, long j2, CoroutineScope coroutineScope, int i3, Object obj) {
        return steamContent.getDepotPatchInfo(i, i2, j, j2, (i3 & 16) != 0 ? steamContent.getClient().getDefaultScope$javasteam() : coroutineScope);
    }

    public final Deferred<DepotPatchInfo> getDepotPatchInfo(int i, int i2, long j, long j2, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return BuildersKt__Builders_commonKt.async$default(parentScope, null, null, new C00271(i, i2, j, j2, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getManifestRequestCode$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamContent.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getManifestRequestCode$1", f = "SteamContent.kt", l = {142}, m = "invokeSuspend", v = 1)
    public static final class C00281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ String $branch;
        final /* synthetic */ String $branchPasswordHash;
        final /* synthetic */ int $depotId;
        final /* synthetic */ long $manifestId;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ SteamContent this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00281(String str, String str2, SteamContent steamContent, int i, int i2, long j, Continuation<? super C00281> continuation) {
            super(2, continuation);
            this.$branch = str;
            this.$branchPasswordHash = str2;
            this.this$0 = steamContent;
            this.$appId = i;
            this.$depotId = i2;
            this.$manifestId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C00281(this.$branch, this.$branchPasswordHash, this.this$0, this.$appId, this.$depotId, this.$manifestId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
            return ((C00281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v0, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.element = this.$branch;
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                ref$ObjectRef2.element = this.$branchPasswordHash;
                if (StringsKt__StringsJVMKt.equals((String) ref$ObjectRef.element, "public", true)) {
                    ref$ObjectRef.element = null;
                    ref$ObjectRef2.element = null;
                }
                if (ref$ObjectRef2.element != 0 && ref$ObjectRef.element == 0) {
                    throw new IllegalArgumentException("Branch name may not be null if password is provided.");
                }
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Request.Builder builderNewBuilder = SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Request.newBuilder();
                int i2 = this.$appId;
                int i3 = this.$depotId;
                long j = this.$manifestId;
                builderNewBuilder.setAppId(i2);
                builderNewBuilder.setDepotId(i3);
                builderNewBuilder.setManifestId(j);
                String str = (String) ref$ObjectRef.element;
                if (str != null) {
                    builderNewBuilder.setAppBranch(str);
                }
                String str2 = (String) ref$ObjectRef2.element;
                if (str2 != null) {
                    builderNewBuilder.setBranchPasswordHash(str2);
                }
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Request cContentServerDirectory_GetManifestRequestCode_RequestBuild = builderNewBuilder.build();
                ContentServerDirectory contentService = this.this$0.getContentService();
                Intrinsics.checkNotNull(cContentServerDirectory_GetManifestRequestCode_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.Builder>> manifestRequestCode = contentService.getManifestRequestCode(cContentServerDirectory_GetManifestRequestCode_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(ref$ObjectRef);
                this.L$1 = SpillingKt.nullOutSpilledVariable(ref$ObjectRef2);
                this.L$2 = SpillingKt.nullOutSpilledVariable(cContentServerDirectory_GetManifestRequestCode_RequestBuild);
                this.label = 1;
                obj = manifestRequestCode.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxLong(((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.Builder) ((ServiceMethodResponse) obj).getBody()).build().getManifestRequestCode());
        }
    }

    public final Deferred<Long> getManifestRequestCode(int i, int i2, long j, String str, String str2, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return BuildersKt__Builders_commonKt.async$default(parentScope, null, null, new C00281(str, str2, this, i2, i, j, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getCDNAuthToken$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamContent.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getCDNAuthToken$1", f = "SteamContent.kt", l = {169}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CDNAuthToken>, Object> {
        final /* synthetic */ int $app;
        final /* synthetic */ int $depot;
        final /* synthetic */ String $hostName;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, int i2, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$app = i;
            this.$depot = i2;
            this.$hostName = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamContent.this.new AnonymousClass1(this.$app, this.$depot, this.$hostName, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CDNAuthToken> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Request.Builder builderNewBuilder = SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Request.newBuilder();
                int i2 = this.$app;
                int i3 = this.$depot;
                String str = this.$hostName;
                builderNewBuilder.setAppId(i2);
                builderNewBuilder.setDepotId(i3);
                builderNewBuilder.setHostName(str);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Request cContentServerDirectory_GetCDNAuthToken_RequestBuild = builderNewBuilder.build();
                ContentServerDirectory contentService = SteamContent.this.getContentService();
                Intrinsics.checkNotNull(cContentServerDirectory_GetCDNAuthToken_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.Builder>> cDNAuthToken = contentService.getCDNAuthToken(cContentServerDirectory_GetCDNAuthToken_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cContentServerDirectory_GetCDNAuthToken_RequestBuild);
                this.label = 1;
                obj = cDNAuthToken.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return new CDNAuthToken((ServiceMethodResponse) obj);
        }
    }

    public final Deferred<CDNAuthToken> getCDNAuthToken(int i, int i2, String hostName, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(hostName, "hostName");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return BuildersKt__Builders_commonKt.async$default(parentScope, null, null, new AnonymousClass1(i, i2, hostName, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$requestPeerContentServer$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamContent.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$requestPeerContentServer$1", f = "SteamContent.kt", l = {201}, m = "invokeSuspend", v = 1)
    public static final class C00311 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RequestPeerContentServer>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ int $currentBuildId;
        final /* synthetic */ long $remoteClientId;
        final /* synthetic */ long $serverRemoteClientId;
        final /* synthetic */ long $steamId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00311(long j, long j2, long j3, int i, int i2, Continuation<? super C00311> continuation) {
            super(2, continuation);
            this.$remoteClientId = j;
            this.$steamId = j2;
            this.$serverRemoteClientId = j3;
            this.$appId = i;
            this.$currentBuildId = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamContent.this.new C00311(this.$remoteClientId, this.$steamId, this.$serverRemoteClientId, this.$appId, this.$currentBuildId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RequestPeerContentServer> continuation) {
            return ((C00311) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Request.Builder builderNewBuilder = SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Request.newBuilder();
                long j = this.$remoteClientId;
                long j2 = this.$steamId;
                long j3 = this.$serverRemoteClientId;
                int i2 = this.$appId;
                int i3 = this.$currentBuildId;
                builderNewBuilder.setRemoteClientId(j);
                builderNewBuilder.setSteamid(j2);
                builderNewBuilder.setServerRemoteClientId(j3);
                builderNewBuilder.setAppId(i2);
                builderNewBuilder.setCurrentBuildId(i3);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Request cContentServerDirectory_RequestPeerContentServer_RequestBuild = builderNewBuilder.build();
                ContentServerDirectory contentService = SteamContent.this.getContentService();
                Intrinsics.checkNotNull(cContentServerDirectory_RequestPeerContentServer_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response.Builder>> asyncJobSingleRequestPeerContentServer = contentService.requestPeerContentServer(cContentServerDirectory_RequestPeerContentServer_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cContentServerDirectory_RequestPeerContentServer_RequestBuild);
                this.label = 1;
                obj = asyncJobSingleRequestPeerContentServer.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) obj;
            SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response cContentServerDirectory_RequestPeerContentServer_ResponseBuild = ((SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response.Builder) serviceMethodResponse.getBody()).build();
            if (serviceMethodResponse.getResult() != EResult.OK) {
                Logger.error$default(SteamContent.logger, "requestPeerContentServer got " + serviceMethodResponse.getResult(), null, 2, null);
            }
            int serverPort = cContentServerDirectory_RequestPeerContentServer_ResponseBuild.getServerPort();
            List<Integer> installedDepotsList = cContentServerDirectory_RequestPeerContentServer_ResponseBuild.getInstalledDepotsList();
            Intrinsics.checkNotNullExpressionValue(installedDepotsList, "getInstalledDepotsList(...)");
            return new RequestPeerContentServer(serverPort, installedDepotsList, cContentServerDirectory_RequestPeerContentServer_ResponseBuild.getAccessToken());
        }
    }

    public static /* synthetic */ Deferred requestPeerContentServer$default(SteamContent steamContent, long j, long j2, long j3, int i, int i2, CoroutineScope coroutineScope, int i3, Object obj) {
        return steamContent.requestPeerContentServer(j, j2, j3, i, (i3 & 16) != 0 ? 0 : i2, (i3 & 32) != 0 ? steamContent.getClient().getDefaultScope$javasteam() : coroutineScope);
    }

    public final Deferred<RequestPeerContentServer> requestPeerContentServer(long j, long j2, long j3, int i, int i2, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return BuildersKt__Builders_commonKt.async$default(parentScope, null, null, new C00311(j, j2, j3, i, i2, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getPeerContentInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamContent.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getPeerContentInfo$1", f = "SteamContent.kt", l = {236}, m = "invokeSuspend", v = 1)
    public static final class C00291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super GetPeerContentInfo>, Object> {
        final /* synthetic */ long $remoteClientId;
        final /* synthetic */ long $serverRemoteClientId;
        final /* synthetic */ long $steamId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00291(long j, long j2, long j3, Continuation<? super C00291> continuation) {
            super(2, continuation);
            this.$remoteClientId = j;
            this.$steamId = j2;
            this.$serverRemoteClientId = j3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamContent.this.new C00291(this.$remoteClientId, this.$steamId, this.$serverRemoteClientId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super GetPeerContentInfo> continuation) {
            return ((C00291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Request.Builder builderNewBuilder = SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Request.newBuilder();
                long j = this.$remoteClientId;
                long j2 = this.$steamId;
                long j3 = this.$serverRemoteClientId;
                builderNewBuilder.setRemoteClientId(j);
                builderNewBuilder.setSteamid(j2);
                builderNewBuilder.setServerRemoteClientId(j3);
                SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Request cContentServerDirectory_GetPeerContentInfo_RequestBuild = builderNewBuilder.build();
                ContentServerDirectory contentService = SteamContent.this.getContentService();
                Intrinsics.checkNotNull(cContentServerDirectory_GetPeerContentInfo_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response.Builder>> peerContentInfo = contentService.getPeerContentInfo(cContentServerDirectory_GetPeerContentInfo_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cContentServerDirectory_GetPeerContentInfo_RequestBuild);
                this.label = 1;
                obj = peerContentInfo.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) obj;
            SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response cContentServerDirectory_GetPeerContentInfo_ResponseBuild = ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response.Builder) serviceMethodResponse.getBody()).build();
            if (serviceMethodResponse.getResult() != EResult.OK) {
                Logger.error$default(SteamContent.logger, "getPeerContentInfo got " + serviceMethodResponse.getResult(), null, 2, null);
            }
            List<Integer> appidsList = cContentServerDirectory_GetPeerContentInfo_ResponseBuild.getAppidsList();
            Intrinsics.checkNotNullExpressionValue(appidsList, "getAppidsList(...)");
            String ipPublic = cContentServerDirectory_GetPeerContentInfo_ResponseBuild.getIpPublic();
            Intrinsics.checkNotNullExpressionValue(ipPublic, "getIpPublic(...)");
            return new GetPeerContentInfo(appidsList, ipPublic);
        }
    }

    public static /* synthetic */ Deferred getPeerContentInfo$default(SteamContent steamContent, long j, long j2, long j3, CoroutineScope coroutineScope, int i, Object obj) {
        return steamContent.getPeerContentInfo(j, j2, j3, (i & 8) != 0 ? steamContent.getClient().getDefaultScope$javasteam() : coroutineScope);
    }

    public final Deferred<GetPeerContentInfo> getPeerContentInfo(long j, long j2, long j3, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return BuildersKt__Builders_commonKt.async$default(parentScope, null, null, new C00291(j, j2, j3, null), 3, null);
    }
}
