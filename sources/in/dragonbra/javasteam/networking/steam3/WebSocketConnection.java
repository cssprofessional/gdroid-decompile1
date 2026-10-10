package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.networking.steam3.WebSocketConnection;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.HttpClientKt;
import io.ktor.client.engine.cio.CIO;
import io.ktor.client.plugins.websocket.BuildersKt;
import io.ktor.client.plugins.websocket.DefaultClientWebSocketSession;
import io.ktor.client.plugins.websocket.WebSockets;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.URLBuilder;
import io.ktor.http.URLBuilderKt;
import io.ktor.http.URLProtocol;
import io.ktor.websocket.Frame;
import io.ktor.websocket.WebSocketSession;
import io.ktor.websocket.WebSocketSessionKt;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: WebSocketConnection.kt */
/* JADX INFO: loaded from: classes.dex */
public final class WebSocketConnection extends Connection implements CoroutineScope {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(WebSocketConnection.class);
    private HttpClient client;
    private final CoroutineContext coroutineContext;
    private InetSocketAddress endpoint;
    private final Job job;
    private long lastFrameTime;
    private WebSocketSession session;

    public WebSocketConnection() {
        CompletableJob completableJobSupervisorJob$default = SupervisorKt.SupervisorJob$default(null, 1, null);
        this.job = completableJobSupervisorJob$default;
        this.lastFrameTime = System.currentTimeMillis();
        this.coroutineContext = Dispatchers.getIO().plus(completableJobSupervisorJob$default);
    }

    /* JADX INFO: compiled from: WebSocketConnection.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebSocketConnection.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1", f = "WebSocketConnection.kt", l = {65}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InetSocketAddress $endPoint;
        final /* synthetic */ int $timeout;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ WebSocketConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(InetSocketAddress inetSocketAddress, WebSocketConnection webSocketConnection, int i, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$endPoint = inetSocketAddress;
            this.this$0 = webSocketConnection;
            this.$timeout = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$endPoint, this.this$0, this.$timeout, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            DefaultClientWebSocketSession defaultClientWebSocketSession;
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                WebSocketConnection.logger.error("An error occurred setting up the web socket client", e);
                this.this$0.disconnect(false);
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Logger.debug$default(WebSocketConnection.logger, "Trying connection to " + this.$endPoint.getHostName() + ":" + this.$endPoint.getPort(), null, 2, null);
                this.this$0.endpoint = this.$endPoint;
                WebSocketConnection webSocketConnection = this.this$0;
                CIO cio = CIO.INSTANCE;
                final int i2 = this.$timeout;
                webSocketConnection.client = HttpClientKt.HttpClient(cio, new Function1() { // from class: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return WebSocketConnection.AnonymousClass1.invokeSuspend$lambda$0(i2, (HttpClientConfig) obj2);
                    }
                });
                HttpClient httpClient = this.this$0.client;
                if (httpClient == null) {
                    defaultClientWebSocketSession = null;
                    this.this$0.session = defaultClientWebSocketSession;
                    this.this$0.startConnectionMonitoring();
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass2(defaultClientWebSocketSession, this.this$0, null), 3, null);
                    Logger.debug$default(WebSocketConnection.logger, "Connected to " + this.$endPoint.getHostName() + ":" + this.$endPoint.getPort(), null, 2, null);
                    this.this$0.onConnected();
                    return Unit.INSTANCE;
                }
                final InetSocketAddress inetSocketAddress = this.$endPoint;
                Function1 function1 = new Function1() { // from class: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return WebSocketConnection.AnonymousClass1.invokeSuspend$lambda$1(inetSocketAddress, (HttpRequestBuilder) obj2);
                    }
                };
                this.L$0 = coroutineScope;
                this.label = 1;
                obj = BuildersKt.webSocketSession(httpClient, function1, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            defaultClientWebSocketSession = (DefaultClientWebSocketSession) obj;
            this.this$0.session = defaultClientWebSocketSession;
            this.this$0.startConnectionMonitoring();
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass2(defaultClientWebSocketSession, this.this$0, null), 3, null);
            Logger.debug$default(WebSocketConnection.logger, "Connected to " + this.$endPoint.getHostName() + ":" + this.$endPoint.getPort(), null, 2, null);
            this.this$0.onConnected();
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(final int i, HttpClientConfig httpClientConfig) {
            httpClientConfig.install(WebSockets.Plugin, new Function1() { // from class: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebSocketConnection.AnonymousClass1.invokeSuspend$lambda$0$0(i, (WebSockets.Config) obj);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$0(int i, WebSockets.Config config) {
            config.setPingIntervalMillis(Duration.m8237getInWholeMillisecondsimpl(DurationKt.toDuration(i, DurationUnit.SECONDS)));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$1(final InetSocketAddress inetSocketAddress, HttpRequestBuilder httpRequestBuilder) {
            httpRequestBuilder.url(new Function2() { // from class: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WebSocketConnection.AnonymousClass1.invokeSuspend$lambda$1$0(inetSocketAddress, (URLBuilder) obj, (URLBuilder) obj2);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$1$0(InetSocketAddress inetSocketAddress, URLBuilder uRLBuilder, URLBuilder uRLBuilder2) {
            String hostName = inetSocketAddress.getHostName();
            Intrinsics.checkNotNullExpressionValue(hostName, "getHostName(...)");
            uRLBuilder.setHost(hostName);
            uRLBuilder.setPort(inetSocketAddress.getPort());
            uRLBuilder.setProtocol(URLProtocol.Companion.getWSS());
            URLBuilderKt.path(uRLBuilder, "cmsocket/");
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: WebSocketConnection.kt */
        @DebugMetadata(c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$2", f = "WebSocketConnection.kt", l = {190}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ DefaultClientWebSocketSession $session;
            int I$0;
            int I$1;
            int I$2;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            int label;
            final /* synthetic */ WebSocketConnection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(DefaultClientWebSocketSession defaultClientWebSocketSession, WebSocketConnection webSocketConnection, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$session = defaultClientWebSocketSession;
                this.this$0 = webSocketConnection;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$session, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Not initialized variable reg: 11, insn: 0x00fd: INVOKE (r11 I:kotlinx.coroutines.channels.ReceiveChannel), (r2 I:java.lang.Throwable) STATIC call: kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Throwable):void A[Catch: Exception -> 0x00f6, CancellationException -> 0x00f8, MD:(kotlinx.coroutines.channels.ReceiveChannel<?>, java.lang.Throwable):void (m), TRY_ENTER] (LINE:101), block:B:53:0x00fd */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0075 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x007e A[Catch: all -> 0x002f, TryCatch #3 {all -> 0x002f, blocks: (B:6:0x0029, B:22:0x0076, B:24:0x007e, B:26:0x0088, B:19:0x0055, B:27:0x00a0, B:29:0x00a4, B:30:0x00a8, B:33:0x00ae, B:34:0x00b7, B:36:0x00bb, B:37:0x00c4, B:39:0x00c8, B:41:0x00ea, B:42:0x00ef, B:43:0x00f0, B:18:0x004a), top: B:61:0x000b }] */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00f0 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #3 {all -> 0x002f, blocks: (B:6:0x0029, B:22:0x0076, B:24:0x007e, B:26:0x0088, B:19:0x0055, B:27:0x00a0, B:29:0x00a4, B:30:0x00a8, B:33:0x00ae, B:34:0x00b7, B:36:0x00bb, B:37:0x00c4, B:39:0x00c8, B:41:0x00ea, B:42:0x00ef, B:43:0x00f0, B:18:0x004a), top: B:61:0x000b }] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0073 -> B:22:0x0076). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 304
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.networking.steam3.WebSocketConnection.AnonymousClass1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void connect(InetSocketAddress endPoint, int i) {
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass1(endPoint, this, i, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$disconnect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebSocketConnection.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$disconnect$1", f = "WebSocketConnection.kt", l = {121}, m = "invokeSuspend", v = 1)
    public static final class C00031 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $userInitiated;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00031(boolean z, Continuation<? super C00031> continuation) {
            super(2, continuation);
            this.$userInitiated = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebSocketConnection.this.new C00031(this.$userInitiated, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00031) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    WebSocketSession webSocketSession = WebSocketConnection.this.session;
                    if (webSocketSession != null) {
                        this.label = 1;
                        if (WebSocketSessionKt.close$default(webSocketSession, null, this, 1, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                HttpClient httpClient = WebSocketConnection.this.client;
                if (httpClient != null) {
                    httpClient.close();
                }
                WebSocketConnection.this.session = null;
                WebSocketConnection.this.client = null;
                JobKt__JobKt.cancelChildren$default(WebSocketConnection.this.job, null, 1, null);
                WebSocketConnection.this.onDisconnected(this.$userInitiated);
                return Unit.INSTANCE;
            } catch (Throwable th) {
                WebSocketConnection.this.session = null;
                WebSocketConnection.this.client = null;
                JobKt__JobKt.cancelChildren$default(WebSocketConnection.this.job, null, 1, null);
                throw th;
            }
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void disconnect(boolean z) {
        Logger.debug$default(logger, "Disconnect called: " + z, null, 2, null);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C00031(z, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$send$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebSocketConnection.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$send$1", f = "WebSocketConnection.kt", l = {138}, m = "invokeSuspend", v = 1)
    public static final class C00041 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ byte[] $data;
        Object L$0;
        int label;
        final /* synthetic */ WebSocketConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00041(byte[] bArr, WebSocketConnection webSocketConnection, Continuation<? super C00041> continuation) {
            super(2, continuation);
            this.$data = bArr;
            this.this$0 = webSocketConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C00041(this.$data, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00041) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v7 */
        /* JADX WARN: Type inference failed for: r4v9 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Frame.Binary binary = new Frame.Binary(true, this.$data);
                    WebSocketSession webSocketSession = this.this$0.session;
                    this = this;
                    if (webSocketSession != null) {
                        this.L$0 = SpillingKt.nullOutSpilledVariable(binary);
                        this.label = 1;
                        Object objSend = webSocketSession.send(binary, this);
                        this = objSend;
                        if (objSend == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    this = this;
                }
            } catch (Exception e) {
                WebSocketConnection.logger.error("An error occurred while sending data", e);
                this.this$0.disconnect(false);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void send(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C00041(data, this, null), 3, null);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetAddress getLocalIP() throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        Intrinsics.checkNotNullExpressionValue(localHost, "getLocalHost(...)");
        return localHost;
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetSocketAddress getCurrentEndPoint() {
        return this.endpoint;
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public ProtocolTypes getProtocolTypes() {
        return ProtocolTypes.WEB_SOCKET;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.WebSocketConnection$startConnectionMonitoring$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebSocketConnection.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$startConnectionMonitoring$1", f = "WebSocketConnection.kt", l = {180}, m = "invokeSuspend", v = 1)
    public static final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        long J$0;
        private /* synthetic */ Object L$0;
        int label;

        public C00051(Continuation<? super C00051> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00051 c00051 = WebSocketConnection.this.new C00051(continuation);
            c00051.L$0 = obj;
            return c00051;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            WebSocketSession webSocketSession;
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0 && i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            do {
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    HttpClient httpClient = WebSocketConnection.this.client;
                    if ((httpClient != null && !CoroutineScopeKt.isActive(httpClient)) || ((webSocketSession = WebSocketConnection.this.session) != null && !CoroutineScopeKt.isActive(webSocketSession))) {
                        Logger.error$default(WebSocketConnection.logger, "Client or Session is no longer active", null, 2, null);
                        WebSocketConnection.this.disconnect(false);
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis() - WebSocketConnection.this.lastFrameTime;
                    if (jCurrentTimeMillis > 30000) {
                        Logger.error$default(WebSocketConnection.logger, "Watchdog: No response for 30 seconds. Disconnecting from steam", null, 2, null);
                        WebSocketConnection.this.disconnect(false);
                    } else {
                        if (jCurrentTimeMillis > 25000) {
                            Logger.debug$default(WebSocketConnection.logger, "Watchdog: No response for 25 seconds", null, 2, null);
                        } else if (jCurrentTimeMillis > 20000) {
                            Logger.debug$default(WebSocketConnection.logger, "Watchdog: No response for 20 seconds", null, 2, null);
                        } else if (jCurrentTimeMillis > 15000) {
                            Logger.debug$default(WebSocketConnection.logger, "Watchdog: No response for 15 seconds", null, 2, null);
                        }
                        this.L$0 = coroutineScope;
                        this.J$0 = jCurrentTimeMillis;
                        this.label = 1;
                    }
                }
                return Unit.INSTANCE;
            } while (DelayKt.delay(5000L, this) != coroutine_suspended);
            return coroutine_suspended;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startConnectionMonitoring() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C00051(null), 3, null);
    }
}
