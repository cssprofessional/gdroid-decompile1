package io.ktor.client.engine.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.client.engine.HttpClientEngineBase;
import io.ktor.client.engine.HttpClientEngineCapability;
import io.ktor.client.engine.ProxyConfigJvmKt;
import io.ktor.client.engine.ProxyType;
import io.ktor.client.plugins.HttpTimeoutCapability;
import io.ktor.client.plugins.sse.SSECapability;
import io.ktor.client.plugins.websocket.WebSocketCapability;
import io.ktor.client.plugins.websocket.WebSocketExtensionsCapability;
import io.ktor.client.request.UnixSocketCapability;
import io.ktor.client.request.UnixSocketSettings;
import io.ktor.http.URLProtocol;
import io.ktor.http.URLProtocolKt;
import io.ktor.http.Url;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.selector.SelectorManagerKt;
import io.ktor.util.CoroutinesUtilsKt;
import io.ktor.util.collections.ConcurrentMap;
import io.ktor.util.network.NetworkAddressJvmKt;
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: CIOEngine.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOEngine extends HttpClientEngineBase {
    public final CIOEngineConfig config;
    public final ConnectionFactory connectionFactory;
    public final CoroutineContext coroutineContext;
    public final ConcurrentMap<String, Endpoint> endpoints;
    public final Proxy proxy;
    public final CoroutineContext requestsJob;
    public final SelectorManager selectorManager;
    public final Set<HttpClientEngineCapability<? extends Object>> supportedCapabilities;

    /* JADX INFO: compiled from: CIOEngine.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ProxyType.values().length];
            try {
                iArr[ProxyType.SOCKS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProxyType.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.CIOEngine$execute$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CIOEngine.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.CIOEngine", f = "CIOEngine.kt", l = {SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.PLAYER_NAME_PENDING_REVIEW_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.OTP_VALUE_FIELD_NUMBER}, m = "execute", v = 1)
    public static final class C00331 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public C00331(Continuation<? super C00331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return CIOEngine.this.execute(null, this);
        }
    }

    @Override // io.ktor.client.engine.HttpClientEngine
    public CIOEngineConfig getConfig() {
        return this.config;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CIOEngine(CIOEngineConfig config) {
        Proxy proxy;
        super("ktor-cio");
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        this.supportedCapabilities = SetsKt__SetsKt.setOf((Object[]) new HttpClientEngineCapability[]{HttpTimeoutCapability.INSTANCE, WebSocketCapability.INSTANCE, WebSocketExtensionsCapability.INSTANCE, SSECapability.INSTANCE, UnixSocketCapability.INSTANCE});
        this.endpoints = new ConcurrentMap<>(0, 1, null);
        SelectorManager SelectorManager = SelectorManagerKt.SelectorManager(getDispatcher());
        this.selectorManager = SelectorManager;
        this.connectionFactory = new ConnectionFactory(SelectorManager, getConfig().getMaxConnectionsCount(), getConfig().getEndpoint().getMaxConnectionsPerRoute());
        Proxy proxy2 = getConfig().getProxy();
        ProxyType type = proxy2 != null ? ProxyConfigJvmKt.getType(proxy2) : null;
        int i = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == -1 || i == 1) {
            proxy = null;
        } else if (i == 2) {
            proxy = getConfig().getProxy();
        } else {
            throw new IllegalStateException("CIO engine does not currently support " + type + " proxies.");
        }
        this.proxy = proxy;
        CoroutineContext coroutineContext = super.getCoroutineContext();
        Job.Key key = Job.Key;
        CoroutineContext.Element element = coroutineContext.get(key);
        Intrinsics.checkNotNull(element);
        CoroutineContext coroutineContextSilentSupervisor = CoroutinesUtilsKt.SilentSupervisor((Job) element);
        this.requestsJob = coroutineContextSilentSupervisor;
        this.coroutineContext = coroutineContext.plus(coroutineContextSilentSupervisor);
        CoroutineContext.Element element2 = coroutineContextSilentSupervisor.get(key);
        Intrinsics.checkNotNull(element2);
        BuildersKt.launch(GlobalScope.INSTANCE, coroutineContext, CoroutineStart.ATOMIC, new AnonymousClass1((Job) element2, SelectorManager, null));
    }

    @Override // io.ktor.client.engine.HttpClientEngineBase, io.ktor.client.engine.HttpClientEngine
    public Set<HttpClientEngineCapability<? extends Object>> getSupportedCapabilities() {
        return this.supportedCapabilities;
    }

    @Override // io.ktor.client.engine.HttpClientEngineBase, kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.CIOEngine$1, reason: invalid class name */
    /* JADX INFO: compiled from: CIOEngine.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.CIOEngine$1", f = "CIOEngine.kt", l = {71}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Job $requestJob;
        public final /* synthetic */ SelectorManager $selector;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Job job, SelectorManager selectorManager, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$requestJob = job;
            this.$selector = selectorManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$requestJob, this.$selector, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, kotlin.Unit] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Job job = this.$requestJob;
                    this.label = 1;
                    if (job.join(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$selector.close();
                this = Unit.INSTANCE;
                return this;
            } catch (Throwable th) {
                this.$selector.close();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:37:0x00a8
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // io.ktor.client.engine.HttpClientEngine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object execute(io.ktor.client.request.HttpRequestData r9, kotlin.coroutines.Continuation<? super io.ktor.client.request.HttpResponseData> r10) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.CIOEngine.execute(io.ktor.client.request.HttpRequestData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.client.engine.HttpClientEngineBase, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        Iterator<Map.Entry<String, Endpoint>> it = this.endpoints.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().close();
        }
        CoroutineContext.Element element = this.requestsJob.get(Job.Key);
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob");
        ((CompletableJob) element).complete();
    }

    public final Endpoint selectEndpoint(Url url, Proxy proxy, final UnixSocketSettings unixSocketSettings) {
        String host;
        int port;
        Url urlRebuildIfNeeded = CIOEngineKt.rebuildIfNeeded(url);
        final URLProtocol protocol = urlRebuildIfNeeded.getProtocol();
        if (proxy == null) {
            proxy = Proxy_jvmKt.lookupGlobalProxy(urlRebuildIfNeeded);
        }
        final Proxy proxy2 = proxy;
        if (proxy2 != null) {
            SocketAddress socketAddressResolveAddress = ProxyConfigJvmKt.resolveAddress(proxy2);
            host = NetworkAddressJvmKt.getHostname(socketAddressResolveAddress);
            port = NetworkAddressJvmKt.getPort(socketAddressResolveAddress);
        } else {
            host = urlRebuildIfNeeded.getHost();
            port = urlRebuildIfNeeded.getPort();
        }
        final int i = port;
        final String str = host;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(':');
        sb.append(i);
        sb.append(':');
        sb.append(protocol);
        sb.append(':');
        sb.append(unixSocketSettings != null ? unixSocketSettings.getPath() : null);
        final String string = sb.toString();
        return this.endpoints.computeIfAbsent(string, new Function0() { // from class: io.ktor.client.engine.cio.CIOEngine$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CIOEngine.selectEndpoint$lambda$0(protocol, str, i, proxy2, this, unixSocketSettings, string);
            }
        });
    }

    public static final Endpoint selectEndpoint$lambda$0(URLProtocol uRLProtocol, String str, int i, Proxy proxy, final CIOEngine cIOEngine, UnixSocketSettings unixSocketSettings, final String str2) {
        return new Endpoint(str, i, proxy, URLProtocolKt.isSecure(uRLProtocol), cIOEngine.getConfig(), cIOEngine.connectionFactory, cIOEngine.getCoroutineContext(), new Function0() { // from class: io.ktor.client.engine.cio.CIOEngine$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CIOEngine.selectEndpoint$lambda$0$0(this.f$0, str2);
            }
        }, unixSocketSettings);
    }

    public static final Unit selectEndpoint$lambda$0$0(CIOEngine cIOEngine, String str) {
        cIOEngine.endpoints.remove(str);
        return Unit.INSTANCE;
    }
}
