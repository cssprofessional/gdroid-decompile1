package io.ktor.client.engine.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import io.ktor.client.plugins.HttpTimeoutCapability;
import io.ktor.client.plugins.HttpTimeoutConfig;
import io.ktor.client.plugins.HttpTimeoutKt;
import io.ktor.client.request.HttpRequestData;
import io.ktor.client.request.HttpResponseData;
import io.ktor.client.request.UnixSocketSettings;
import io.ktor.client.utils.ExceptionUtilsJvmKt;
import io.ktor.network.sockets.Connection;
import io.ktor.network.sockets.InetSocketAddress;
import io.ktor.network.sockets.SocketAddress;
import io.ktor.network.tls.TLSConfigBuilder;
import io.ktor.network.tls.TLSConfigBuilderKt;
import io.ktor.util.date.DateJvmKt;
import io.ktor.util.date.GMTDate;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import java.io.Closeable;
import java.net.Proxy;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: compiled from: Endpoint.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Endpoint implements CoroutineScope, Closeable {
    public static final Companion Companion = new Companion(null);
    public static final /* synthetic */ AtomicIntegerFieldUpdater connections$FU = AtomicIntegerFieldUpdater.newUpdater(Endpoint.class, "connections");
    public final CIOEngineConfig config;
    public final ConnectionFactory connectionFactory;
    private volatile /* synthetic */ int connections;
    public final CoroutineContext coroutineContext;
    public final Channel<RequestTask> deliveryPoint;
    public final String host;
    volatile /* synthetic */ long lastActivity;
    public final long maxEndpointIdleTime;
    public final Function0<Unit> onDone;
    public final int port;
    public final Proxy proxy;
    public final boolean secure;
    public final Job timeout;
    public final UnixSocketSettings unixSocket;

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.Endpoint$connect$1, reason: invalid class name */
    /* JADX INFO: compiled from: Endpoint.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint", f = "Endpoint.kt", l = {221, 223, 237, 251}, m = "connect", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public int I$3;
        public long J$0;
        public long J$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return Endpoint.this.connect(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.Endpoint$createPipeline$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Endpoint.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint", f = "Endpoint.kt", l = {184}, m = "createPipeline", v = 1)
    public static final class C00341 extends ContinuationImpl {
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public C00341(Continuation<? super C00341> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return Endpoint.this.createPipeline(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.Endpoint$execute$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Endpoint.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint", f = "Endpoint.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_CHANGE_NUMBER_FIELD_NUMBER, 73, 74}, m = "execute", v = 1)
    public static final class C00351 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public C00351(Continuation<? super C00351> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return Endpoint.this.execute(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.Endpoint$makeDedicatedRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Endpoint.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint", f = "Endpoint.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER, 131, 133, 134}, m = "makeDedicatedRequest", v = 1)
    public static final class C00361 extends ContinuationImpl {
        public int I$0;
        public long J$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public int label;
        public /* synthetic */ Object result;

        public C00361(Continuation<? super C00361> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return Endpoint.this.makeDedicatedRequest(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.Endpoint$makePipelineRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Endpoint.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint", f = "Endpoint.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.OTP_IDENTIFIER_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.GAME_SERVER_APP_ID_FIELD_NUMBER}, m = "makePipelineRequest", v = 1)
    public static final class C00371 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public C00371(Continuation<? super C00371> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return Endpoint.this.makePipelineRequest(null, this);
        }
    }

    public Endpoint(String host, int i, Proxy proxy, boolean z, CIOEngineConfig config, ConnectionFactory connectionFactory, CoroutineContext coroutineContext, Function0<Unit> onDone, UnixSocketSettings unixSocketSettings) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(onDone, "onDone");
        this.host = host;
        this.port = i;
        this.proxy = proxy;
        this.secure = z;
        this.config = config;
        this.connectionFactory = connectionFactory;
        this.coroutineContext = coroutineContext;
        this.onDone = onDone;
        this.unixSocket = unixSocketSettings;
        this.lastActivity = DateJvmKt.getTimeMillis();
        this.connections = 0;
        this.deliveryPoint = ChannelKt.Channel$default(0, null, null, 7, null);
        this.maxEndpointIdleTime = ((long) 2) * config.getEndpoint().getConnectTimeout();
        this.timeout = BuildersKt__Builders_commonKt.launch$default(this, getCoroutineContext().plus(new CoroutineName("cio-endpoint-timeout")), null, new Endpoint$timeout$1(this, null), 2, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r8v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object execute(io.ktor.client.request.HttpRequestData r9, kotlin.coroutines.CoroutineContext r10, kotlin.coroutines.Continuation<? super io.ktor.client.request.HttpResponseData> r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.Endpoint.execute(io.ktor.client.request.HttpRequestData, kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object makePipelineRequest(io.ktor.client.engine.cio.RequestTask r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.client.engine.cio.Endpoint.C00371
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.client.engine.cio.Endpoint$makePipelineRequest$1 r0 = (io.ktor.client.engine.cio.Endpoint.C00371) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.engine.cio.Endpoint$makePipelineRequest$1 r0 = new io.ktor.client.engine.cio.Endpoint$makePipelineRequest$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r5 = r0.L$0
            io.ktor.client.engine.cio.RequestTask r5 = (io.ktor.client.engine.cio.RequestTask) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L94
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            int r6 = r0.I$0
            java.lang.Object r2 = r0.L$0
            io.ktor.client.engine.cio.RequestTask r2 = (io.ktor.client.engine.cio.RequestTask) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L44
            r7 = r6
            r6 = r2
            goto L81
        L44:
            r5 = move-exception
            r6 = r2
            goto L79
        L47:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.Channel<io.ktor.client.engine.cio.RequestTask> r7 = r5.deliveryPoint
            java.lang.Object r7 = r7.mo8262trySendJP2dKIU(r6)
            boolean r7 = kotlinx.coroutines.channels.ChannelResult.m8272isSuccessimpl(r7)
            if (r7 == 0) goto L59
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L59:
            int r7 = r5.connections
            io.ktor.client.engine.cio.CIOEngineConfig r2 = r5.config
            io.ktor.client.engine.cio.EndpointConfig r2 = r2.getEndpoint()
            int r2 = r2.getMaxConnectionsPerRoute()
            if (r7 >= r2) goto L81
            io.ktor.client.request.HttpRequestData r2 = r6.getRequest()     // Catch: java.lang.Throwable -> L78
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L78
            r0.I$0 = r7     // Catch: java.lang.Throwable -> L78
            r0.label = r4     // Catch: java.lang.Throwable -> L78
            java.lang.Object r2 = r5.createPipeline(r2, r0)     // Catch: java.lang.Throwable -> L78
            if (r2 != r1) goto L81
            return r1
        L78:
            r5 = move-exception
        L79:
            kotlinx.coroutines.CompletableDeferred r6 = r6.getResponse()
            r6.completeExceptionally(r5)
            throw r5
        L81:
            kotlinx.coroutines.channels.Channel<io.ktor.client.engine.cio.RequestTask> r5 = r5.deliveryPoint
            java.lang.Object r2 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$0 = r2
            r0.I$0 = r7
            r0.label = r3
            java.lang.Object r5 = r5.send(r6, r0)
            if (r5 != r1) goto L94
            return r1
        L94:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.Endpoint.makePipelineRequest(io.ktor.client.engine.cio.RequestTask, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(2:4|(1:6)(1:8))(0)|7|9|(1:68)|(3:(1:(1:(1:(5:15|16|17|59|60)(2:20|21))(8:22|65|23|24|56|(1:58)|59|60))(5:27|28|29|49|69))(4:30|63|31|32)|61|62)(3:35|36|(1:38)(1:39))|67|40|(1:42)(1:43)|44|(4:46|(1:48)|49|69)(2:52|(1:54)(5:55|56|(0)|59|60))) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01ad, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0236 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object makeDedicatedRequest(io.ktor.client.request.HttpRequestData r24, kotlin.coroutines.CoroutineContext r25, kotlin.coroutines.Continuation<? super io.ktor.client.request.HttpResponseData> r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 575
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.Endpoint.makeDedicatedRequest(io.ktor.client.request.HttpRequestData, kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Unit makeDedicatedRequest$lambda$0(ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, Connection connection, Endpoint endpoint, SocketAddress socketAddress, Throwable th) {
        Throwable thUnwrapCancellationException = th != null ? ExceptionUtilsJvmKt.unwrapCancellationException(th) : null;
        try {
            byteReadChannel.cancel(thUnwrapCancellationException);
            ByteWriteChannelOperationsKt.close(byteWriteChannel, thUnwrapCancellationException);
            connection.getSocket().close();
        } finally {
            try {
            } finally {
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.Endpoint$processExpectContinue$2, reason: invalid class name */
    /* JADX INFO: compiled from: Endpoint.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint$processExpectContinue$2", f = "Endpoint.kt", l = {150, 152, 157, 164, 168, 172, 177, 180}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpResponseData>, Object> {
        public final /* synthetic */ CoroutineContext $callContext;
        public final /* synthetic */ ByteReadChannel $input;
        public final /* synthetic */ ByteWriteChannel $originOutput;
        public final /* synthetic */ ByteWriteChannel $output;
        public final /* synthetic */ boolean $overProxy;
        public final /* synthetic */ HttpRequestData $request;
        public final /* synthetic */ GMTDate $requestTime;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, boolean z, GMTDate gMTDate, ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel2, CoroutineContext coroutineContext, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = httpRequestData;
            this.$output = byteWriteChannel;
            this.$overProxy = z;
            this.$requestTime = gMTDate;
            this.$input = byteReadChannel;
            this.$originOutput = byteWriteChannel2;
            this.$callContext = coroutineContext;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$request, this.$output, this.$overProxy, this.$requestTime, this.$input, this.$originOutput, this.$callContext, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpResponseData> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0073 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0163 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0164 A[PHI: r15
          0x0164: PHI (r15v24 java.lang.Object) = (r15v23 java.lang.Object), (r15v0 java.lang.Object) binds: [B:44:0x0161, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE], RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 380
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.Endpoint.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object processExpectContinue(HttpRequestData httpRequestData, ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, ByteWriteChannel byteWriteChannel2, CoroutineContext coroutineContext, GMTDate gMTDate, boolean z, Continuation<? super HttpResponseData> continuation) {
        return BuildersKt.withContext(coroutineContext, new AnonymousClass2(httpRequestData, byteWriteChannel, z, gMTDate, byteReadChannel, byteWriteChannel2, coroutineContext, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object createPipeline(io.ktor.client.request.HttpRequestData r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.Exception {
        /*
            r12 = this;
            boolean r0 = r14 instanceof io.ktor.client.engine.cio.Endpoint.C00341
            if (r0 == 0) goto L13
            r0 = r14
            io.ktor.client.engine.cio.Endpoint$createPipeline$1 r0 = (io.ktor.client.engine.cio.Endpoint.C00341) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.engine.cio.Endpoint$createPipeline$1 r0 = new io.ktor.client.engine.cio.Endpoint$createPipeline$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r13 = r0.L$0
            io.ktor.client.request.HttpRequestData r13 = (io.ktor.client.request.HttpRequestData) r13
            kotlin.ResultKt.throwOnFailure(r14)
            goto L47
        L2d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L35:
            kotlin.ResultKt.throwOnFailure(r14)
            java.lang.Object r14 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r13)
            r0.L$0 = r14
            r0.label = r3
            java.lang.Object r14 = r12.connect(r13, r0)
            if (r14 != r1) goto L47
            return r1
        L47:
            kotlin.Pair r14 = (kotlin.Pair) r14
            java.lang.Object r13 = r14.component1()
            io.ktor.network.sockets.SocketAddress r13 = (io.ktor.network.sockets.SocketAddress) r13
            java.lang.Object r14 = r14.component2()
            r8 = r14
            io.ktor.network.sockets.Connection r8 = (io.ktor.network.sockets.Connection) r8
            io.ktor.client.engine.cio.ConnectionPipeline r14 = new io.ktor.client.engine.cio.ConnectionPipeline
            io.ktor.client.engine.cio.CIOEngineConfig r0 = r12.config
            io.ktor.client.engine.cio.EndpointConfig r0 = r0.getEndpoint()
            long r5 = r0.getKeepAliveTime()
            io.ktor.client.engine.cio.CIOEngineConfig r0 = r12.config
            io.ktor.client.engine.cio.EndpointConfig r0 = r0.getEndpoint()
            int r7 = r0.getPipelineMaxSize()
            java.net.Proxy r0 = r12.proxy
            if (r0 == 0) goto L72
        L70:
            r9 = r3
            goto L74
        L72:
            r3 = 0
            goto L70
        L74:
            kotlinx.coroutines.channels.Channel<io.ktor.client.engine.cio.RequestTask> r10 = r12.deliveryPoint
            kotlin.coroutines.CoroutineContext r11 = r12.getCoroutineContext()
            r4 = r14
            r4.<init>(r5, r7, r8, r9, r10, r11)
            kotlinx.coroutines.Job r14 = r14.getPipelineContext()
            io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda0 r0 = new io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda0
            r0.<init>()
            r14.invokeOnCompletion(r0)
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.Endpoint.createPipeline(io.ktor.client.request.HttpRequestData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Unit createPipeline$lambda$0(Endpoint endpoint, SocketAddress socketAddress, Throwable th) {
        endpoint.releaseConnection(socketAddress);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0302 A[Catch: all -> 0x021e, TryCatch #7 {all -> 0x021e, blocks: (B:103:0x02f7, B:87:0x0279, B:89:0x027d, B:91:0x0281, B:93:0x0285, B:100:0x02b2, B:97:0x0291, B:98:0x0298, B:99:0x0299, B:105:0x0302, B:106:0x0309, B:65:0x020f, B:67:0x0219, B:71:0x0221, B:73:0x0225), top: B:128:0x020f }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012e A[Catch: all -> 0x00c8, TRY_ENTER, TryCatch #4 {all -> 0x00c8, blocks: (B:27:0x00b9, B:36:0x012e, B:38:0x0132, B:41:0x0149, B:40:0x013f, B:32:0x00e6), top: B:123:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f0 A[Catch: all -> 0x01ae, TRY_LEAVE, TryCatch #6 {all -> 0x01ae, blocks: (B:108:0x030d, B:109:0x0312, B:60:0x01ec, B:62:0x01f0, B:47:0x0189, B:51:0x019d, B:56:0x01b6), top: B:126:0x01ec }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0219 A[Catch: all -> 0x021e, TryCatch #7 {all -> 0x021e, blocks: (B:103:0x02f7, B:87:0x0279, B:89:0x027d, B:91:0x0281, B:93:0x0285, B:100:0x02b2, B:97:0x0291, B:98:0x0298, B:99:0x0299, B:105:0x0302, B:106:0x0309, B:65:0x020f, B:67:0x0219, B:71:0x0221, B:73:0x0225), top: B:128:0x020f }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0221 A[Catch: all -> 0x021e, TryCatch #7 {all -> 0x021e, blocks: (B:103:0x02f7, B:87:0x0279, B:89:0x027d, B:91:0x0281, B:93:0x0285, B:100:0x02b2, B:97:0x0291, B:98:0x0298, B:99:0x0299, B:105:0x0302, B:106:0x0309, B:65:0x020f, B:67:0x0219, B:71:0x0221, B:73:0x0225), top: B:128:0x020f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x027d A[Catch: all -> 0x021e, TryCatch #7 {all -> 0x021e, blocks: (B:103:0x02f7, B:87:0x0279, B:89:0x027d, B:91:0x0281, B:93:0x0285, B:100:0x02b2, B:97:0x0291, B:98:0x0298, B:99:0x0299, B:105:0x0302, B:106:0x0309, B:65:0x020f, B:67:0x0219, B:71:0x0221, B:73:0x0225), top: B:128:0x020f }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x01e0 -> B:126:0x01ec). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object connect(io.ktor.client.request.HttpRequestData r26, kotlin.coroutines.Continuation<? super kotlin.Pair<? extends io.ktor.network.sockets.SocketAddress, io.ktor.network.sockets.Connection>> r27) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 807
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.Endpoint.connect(io.ktor.client.request.HttpRequestData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Unit connect$lambda$0$0(Endpoint endpoint, InetSocketAddress inetSocketAddress, TLSConfigBuilder tls) {
        Intrinsics.checkNotNullParameter(tls, "$this$tls");
        TLSConfigBuilderKt.takeFrom(tls, endpoint.config.getHttps());
        String serverName = tls.getServerName();
        if (serverName == null) {
            serverName = inetSocketAddress.getHostname();
        }
        tls.setServerName(serverName);
        return Unit.INSTANCE;
    }

    public final Exception getTimeoutException(int i, int i2, HttpRequestData httpRequestData) {
        if (i2 == i) {
            return HttpTimeoutKt.ConnectTimeoutException$default(httpRequestData, null, 2, null);
        }
        return new FailToConnectException();
    }

    public final Pair<Long, Long> retrieveTimeouts(HttpRequestData httpRequestData) {
        Pair<Long, Long> pair = TuplesKt.to(Long.valueOf(this.config.getEndpoint().getConnectTimeout()), Long.valueOf(this.config.getEndpoint().getSocketTimeout()));
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) httpRequestData.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE);
        if (httpTimeoutConfig == null) {
            return pair;
        }
        Long socketTimeoutMillis = httpTimeoutConfig.getSocketTimeoutMillis();
        long jLongValue = socketTimeoutMillis != null ? socketTimeoutMillis.longValue() : this.config.getEndpoint().getSocketTimeout();
        Long connectTimeoutMillis = httpTimeoutConfig.getConnectTimeoutMillis();
        return TuplesKt.to(Long.valueOf(connectTimeoutMillis != null ? connectTimeoutMillis.longValue() : this.config.getEndpoint().getConnectTimeout()), Long.valueOf(jLongValue));
    }

    public final void releaseConnection(SocketAddress socketAddress) {
        this.connectionFactory.release(socketAddress);
        connections$FU.decrementAndGet(this);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Job.DefaultImpls.cancel$default(this.timeout, null, 1, null);
    }

    /* JADX INFO: compiled from: Endpoint.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
