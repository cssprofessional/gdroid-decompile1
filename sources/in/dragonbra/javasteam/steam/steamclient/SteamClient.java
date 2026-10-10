package in.dragonbra.javasteam.steam.steamclient;

import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.steam.CMClient;
import in.dragonbra.javasteam.steam.authentication.SteamAuthentication;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps;
import in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket;
import in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud;
import in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent;
import in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends;
import in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.SteamGameCoordinator;
import in.dragonbra.javasteam.steam.handlers.steamgameserver.SteamGameServer;
import in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking;
import in.dragonbra.javasteam.steam.handlers.steamnetworking.SteamNetworking;
import in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications;
import in.dragonbra.javasteam.steam.handlers.steamscreenshots.SteamScreenshots;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.SteamUserStats;
import in.dragonbra.javasteam.steam.handlers.steamworkshop.SteamWorkshop;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.steam.steamclient.callbacks.ConnectedCallback;
import in.dragonbra.javasteam.steam.steamclient.callbacks.DisconnectedCallback;
import in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration;
import in.dragonbra.javasteam.types.AsyncJob;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: SteamClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamClient extends CMClient {
    private static final int HANDLERS_COUNT = 16;
    private final Lazy authentication$delegate;
    private final Channel<CallbackMsg> callbackQueue;
    private final AtomicLong currentJobId;
    private final CoroutineScope defaultScope;
    private final HashMap<Class<? extends ClientMsgHandler>, ClientMsgHandler> handlers;
    private final AsyncJobManager jobManager;
    private final Date processStartTime;
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(SteamClient.class);

    /* JADX INFO: compiled from: SteamClient.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EMsg.values().length];
            try {
                iArr[EMsg.JobHeartbeat.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EMsg.DestJobFailed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SteamClient() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SteamClient(SteamConfiguration steamConfiguration) {
        this(steamConfiguration, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SteamClient(SteamConfiguration steamConfiguration, CoroutineScope defaultScope) {
        super(steamConfiguration);
        Intrinsics.checkNotNullParameter(defaultScope, "defaultScope");
        this.defaultScope = defaultScope;
        HashMap<Class<? extends ClientMsgHandler>, ClientMsgHandler> map = new HashMap<>(16);
        this.handlers = map;
        this.currentJobId = new AtomicLong(0L);
        this.callbackQueue = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.authentication$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: in.dragonbra.javasteam.steam.steamclient.SteamClient$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SteamClient.authentication_delegate$lambda$0(this.f$0);
            }
        });
        addHandlerCore(new SteamFriends());
        addHandlerCore(new SteamUser());
        addHandlerCore(new SteamApps());
        addHandlerCore(new SteamGameCoordinator());
        addHandlerCore(new SteamGameServer());
        addHandlerCore(new SteamUserStats());
        addHandlerCore(new SteamMasterServer());
        addHandlerCore(new SteamCloud());
        addHandlerCore(new SteamWorkshop());
        addHandlerCore(new SteamUnifiedMessages());
        addHandlerCore(new SteamScreenshots());
        addHandlerCore(new SteamMatchmaking());
        addHandlerCore(new SteamNetworking());
        addHandlerCore(new SteamContent());
        addHandlerCore(new SteamAuthTicket());
        addHandlerCore(new SteamNotifications());
        if (map.size() != 16) {
            Logger.error$default(logger, "Handlers size didnt match handlers count (" + map.size() + ") when initializing", null, 2, null);
        }
        this.processStartTime = new Date();
        this.jobManager = new AsyncJobManager();
    }

    public /* synthetic */ SteamClient(SteamConfiguration steamConfiguration, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SteamConfiguration.Companion.createDefault() : steamConfiguration, (i & 2) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null))) : coroutineScope);
    }

    public final CoroutineScope getDefaultScope$javasteam() {
        return this.defaultScope;
    }

    public final AsyncJobManager getJobManager$javasteam() {
        return this.jobManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SteamAuthentication authentication_delegate$lambda$0(SteamClient steamClient) {
        return new SteamAuthentication(steamClient);
    }

    public final SteamAuthentication getAuthentication() {
        return (SteamAuthentication) this.authentication$delegate.getValue();
    }

    public final void addHandler(ClientMsgHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (this.handlers.containsKey(handler.getClass())) {
            throw new IllegalArgumentException(("A handler of type " + handler.getClass() + " is already registered.").toString());
        }
        addHandlerCore(handler);
    }

    public final /* synthetic */ <T extends ClientMsgHandler> void addHandler() {
        Intrinsics.reifiedOperationMarker(4, "T");
        ClientMsgHandler clientMsgHandler = (ClientMsgHandler) ClientMsgHandler.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        Intrinsics.checkNotNull(clientMsgHandler);
        addHandler(clientMsgHandler);
    }

    private final void addHandlerCore(ClientMsgHandler clientMsgHandler) {
        clientMsgHandler.setup(this);
        this.handlers.put((Class<? extends ClientMsgHandler>) clientMsgHandler.getClass(), clientMsgHandler);
    }

    public final void removeHandler(Class<? extends ClientMsgHandler> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handlers.remove(handler);
    }

    public final /* synthetic */ <T extends ClientMsgHandler> void removeHandler() {
        Intrinsics.reifiedOperationMarker(4, "T");
        removeHandler(ClientMsgHandler.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void removeHandler(ClientMsgHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        removeHandler((Class<? extends ClientMsgHandler>) handler.getClass());
    }

    public final <T extends ClientMsgHandler> T getHandler(Class<T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) this.handlers.get(type);
    }

    public final void clearHandlerCaches() {
        SteamMatchmaking steamMatchmaking = (SteamMatchmaking) getHandler(SteamMatchmaking.class);
        if (steamMatchmaking != null) {
            steamMatchmaking.clearLobbyCache$javasteam();
        }
    }

    public final /* synthetic */ <T extends ClientMsgHandler> T getHandler() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) getHandler(ClientMsgHandler.class);
    }

    public final CallbackMsg getCallback() {
        return (CallbackMsg) ChannelResult.m8269getOrNullimpl(this.callbackQueue.mo8261tryReceivePtdJZtk());
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamClient.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$1", f = "SteamClient.kt", l = {186}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CallbackMsg>, Object> {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamClient.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CallbackMsg> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Channel channel = SteamClient.this.callbackQueue;
                this.label = 1;
                obj = channel.receive(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final CallbackMsg waitForCallback() {
        return (CallbackMsg) BuildersKt.runBlocking(Dispatchers.getDefault(), new AnonymousClass1(null));
    }

    public final Object waitForCallbackAsync(Continuation<? super CallbackMsg> continuation) {
        return this.callbackQueue.receive(continuation);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2, reason: invalid class name */
    /* JADX INFO: compiled from: SteamClient.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2", f = "SteamClient.kt", l = {201}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CallbackMsg>, Object> {
        final /* synthetic */ long $timeout;
        int label;
        final /* synthetic */ SteamClient this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(long j, SteamClient steamClient, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$timeout = j;
            this.this$0 = steamClient;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$timeout, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CallbackMsg> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: SteamClient.kt */
        @DebugMetadata(c = "in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2$1", f = "SteamClient.kt", l = {202}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CallbackMsg>, Object> {
            int label;
            final /* synthetic */ SteamClient this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SteamClient steamClient, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = steamClient;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CallbackMsg> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Channel channel = this.this$0.callbackQueue;
                    this.label = 1;
                    obj = channel.receive(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.$timeout;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
                this.label = 1;
                obj = TimeoutKt.withTimeoutOrNull(j, anonymousClass1, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final CallbackMsg waitForCallback(long j) {
        return (CallbackMsg) BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass2(j, this, null), 1, null);
    }

    public final void postCallback(CallbackMsg callbackMsg) {
        if (callbackMsg == null) {
            return;
        }
        this.callbackQueue.mo8262trySendJP2dKIU(callbackMsg);
        this.jobManager.tryCompleteJob(callbackMsg.getJobID(), callbackMsg);
    }

    public final JobID getNextJobID() {
        JobID jobID = new JobID();
        jobID.setBoxID(0L);
        jobID.setProcessID(0L);
        jobID.setSequentialCount(this.currentJobId.incrementAndGet());
        jobID.setStartTime(this.processStartTime);
        return jobID;
    }

    public final void startJob(AsyncJob job) {
        Intrinsics.checkNotNullParameter(job, "job");
        if (!isConnected()) {
            job.setFailed(true);
        } else {
            this.jobManager.startJob(job);
        }
    }

    @Override // in.dragonbra.javasteam.steam.CMClient
    public boolean onClientMsgReceived(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (!super.onClientMsgReceived(packetMsg)) {
            return false;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[packetMsg.getMsgType().ordinal()];
        if (i == 1) {
            handleJobHeartbeat(packetMsg);
        } else if (i == 2) {
            handleJobFailed(packetMsg);
        }
        for (Map.Entry<Class<? extends ClientMsgHandler>, ClientMsgHandler> entry : this.handlers.entrySet()) {
            Class<? extends ClientMsgHandler> key = entry.getKey();
            try {
                entry.getValue().handleMsg(packetMsg);
            } catch (Exception e) {
                logger.debug("Unhandled exception from " + key.getName() + " handlers", e);
                disconnect();
                return false;
            }
        }
        return true;
    }

    @Override // in.dragonbra.javasteam.steam.CMClient
    public void onClientConnected() {
        super.onClientConnected();
        this.jobManager.setTimeoutsEnabled(true);
        postCallback(new ConnectedCallback());
    }

    @Override // in.dragonbra.javasteam.steam.CMClient
    public void onClientDisconnected(boolean z) {
        super.onClientDisconnected(z);
        postCallback(new DisconnectedCallback(z));
        this.jobManager.cancelPendingJobs();
        this.jobManager.setTimeoutsEnabled(false);
        clearHandlerCaches();
    }

    private final void handleJobHeartbeat(IPacketMsg iPacketMsg) {
        this.jobManager.heartbeatJob(new JobID(iPacketMsg.getTargetJobID()));
    }

    private final void handleJobFailed(IPacketMsg iPacketMsg) {
        this.jobManager.failJob(new JobID(iPacketMsg.getTargetJobID()));
    }

    /* JADX INFO: compiled from: SteamClient.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
