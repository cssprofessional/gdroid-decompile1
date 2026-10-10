package io.ktor.websocket;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.pool.ObjectPool;
import java.nio.ByteBuffer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: WebSocketWriter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketWriter implements CoroutineScope {
    public final CoroutineContext coroutineContext;
    public boolean masking;
    public final ObjectPool<ByteBuffer> pool;
    public final Channel<Object> queue;
    public final Serializer serializer;
    public final ByteWriteChannel writeChannel;
    public final Job writeLoopJob;

    /* JADX INFO: renamed from: io.ktor.websocket.WebSocketWriter$drainQueueAndSerialize$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebSocketWriter.kt */
    @DebugMetadata(c = "io.ktor.websocket.WebSocketWriter", f = "WebSocketWriter.kt", l = {125, 129, 143}, m = "drainQueueAndSerialize", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return WebSocketWriter.this.drainQueueAndSerialize(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.websocket.WebSocketWriter$flush$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebSocketWriter.kt */
    @DebugMetadata(c = "io.ktor.websocket.WebSocketWriter", f = "WebSocketWriter.kt", l = {163, 166, 171}, m = "flush", v = 1)
    public static final class C00861 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public C00861(Continuation<? super C00861> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return WebSocketWriter.this.flush(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.websocket.WebSocketWriter$writeLoop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebSocketWriter.kt */
    @DebugMetadata(c = "io.ktor.websocket.WebSocketWriter", f = "WebSocketWriter.kt", l = {50, 52, SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_CHANGE_NUMBER_FIELD_NUMBER, SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_CHANGE_NUMBER_FIELD_NUMBER, SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_CHANGE_NUMBER_FIELD_NUMBER, SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_CHANGE_NUMBER_FIELD_NUMBER}, m = "writeLoop", v = 1)
    public static final class C00871 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public C00871(Continuation<? super C00871> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return WebSocketWriter.this.writeLoop(null, this);
        }
    }

    public WebSocketWriter(ByteWriteChannel writeChannel, CoroutineContext coroutineContext, boolean z, ObjectPool<ByteBuffer> pool) {
        Intrinsics.checkNotNullParameter(writeChannel, "writeChannel");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.writeChannel = writeChannel;
        this.coroutineContext = coroutineContext;
        this.masking = z;
        this.pool = pool;
        this.queue = ChannelKt.Channel$default(8, null, null, 6, null);
        this.serializer = new Serializer();
        this.writeLoopJob = BuildersKt.launch(this, new CoroutineName("ws-writer"), CoroutineStart.ATOMIC, new WebSocketWriter$writeLoopJob$1(this, null));
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    public final void setMasking(boolean z) {
        this.masking = z;
    }

    public final ObjectPool<ByteBuffer> getPool() {
        return this.pool;
    }

    public final SendChannel<Frame> getOutgoing() {
        return this.queue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092 A[Catch: all -> 0x00bd, ChannelWriteException -> 0x00c2, TryCatch #6 {ChannelWriteException -> 0x00c2, all -> 0x00bd, blocks: (B:38:0x00b1, B:31:0x008a, B:33:0x0092, B:35:0x009a, B:48:0x00c7, B:50:0x00cb, B:51:0x00d5, B:52:0x00eb), top: B:80:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0132 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ae -> B:80:0x00b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00cb -> B:41:0x00ba). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object writeLoop(java.nio.ByteBuffer r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.WebSocketWriter.writeLoop(java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
    
        throw new java.lang.IllegalArgumentException("unknown message " + r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drainQueueAndDiscard() {
        /*
            r3 = this;
            kotlinx.coroutines.channels.Channel<java.lang.Object> r0 = r3.queue
            r1 = 0
            r2 = 1
            kotlinx.coroutines.channels.SendChannel.DefaultImpls.close$default(r0, r1, r2, r1)
        L7:
            kotlinx.coroutines.channels.Channel<java.lang.Object> r0 = r3.queue     // Catch: java.util.concurrent.CancellationException -> L4b
            java.lang.Object r0 = r0.mo8261tryReceivePtdJZtk()     // Catch: java.util.concurrent.CancellationException -> L4b
            java.lang.Object r0 = kotlinx.coroutines.channels.ChannelResult.m8269getOrNullimpl(r0)     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r0 != 0) goto L14
            goto L4b
        L14:
            boolean r1 = r0 instanceof io.ktor.websocket.Frame.Close     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r1 != 0) goto L7
            boolean r1 = r0 instanceof io.ktor.websocket.Frame.Ping     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r1 != 0) goto L7
            boolean r1 = r0 instanceof io.ktor.websocket.Frame.Pong     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r1 == 0) goto L21
            goto L7
        L21:
            boolean r1 = r0 instanceof io.ktor.websocket.WebSocketWriter.FlushRequest     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r1 == 0) goto L2b
            io.ktor.websocket.WebSocketWriter$FlushRequest r0 = (io.ktor.websocket.WebSocketWriter.FlushRequest) r0     // Catch: java.util.concurrent.CancellationException -> L4b
            r0.complete()     // Catch: java.util.concurrent.CancellationException -> L4b
            goto L7
        L2b:
            boolean r1 = r0 instanceof io.ktor.websocket.Frame.Text     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r1 != 0) goto L7
            boolean r1 = r0 instanceof io.ktor.websocket.Frame.Binary     // Catch: java.util.concurrent.CancellationException -> L4b
            if (r1 == 0) goto L34
            goto L7
        L34:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.util.concurrent.CancellationException -> L4b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.util.concurrent.CancellationException -> L4b
            r1.<init>()     // Catch: java.util.concurrent.CancellationException -> L4b
            java.lang.String r2 = "unknown message "
            r1.append(r2)     // Catch: java.util.concurrent.CancellationException -> L4b
            r1.append(r0)     // Catch: java.util.concurrent.CancellationException -> L4b
            java.lang.String r0 = r1.toString()     // Catch: java.util.concurrent.CancellationException -> L4b
            r3.<init>(r0)     // Catch: java.util.concurrent.CancellationException -> L4b
            throw r3     // Catch: java.util.concurrent.CancellationException -> L4b
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.WebSocketWriter.drainQueueAndDiscard():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:73:0x0188, B:74:0x018a], limit reached: 89 */
    /* JADX WARN: Path cross not found for [B:74:0x018a, B:73:0x0188], limit reached: 89 */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0188 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v15, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0152 -> B:71:0x0180). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0158 -> B:71:0x0180). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x015e -> B:71:0x0180). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0178 -> B:70:0x017b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:20:0x0086
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object drainQueueAndSerialize(io.ktor.websocket.Frame r12, java.nio.ByteBuffer r13, kotlin.coroutines.Continuation<? super java.lang.Boolean> r14) {
        /*
            Method dump skipped, instruction units count: 405
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.WebSocketWriter.drainQueueAndSerialize(io.ktor.websocket.Frame, java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object flush(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r9 instanceof io.ktor.websocket.WebSocketWriter.C00861
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.websocket.WebSocketWriter$flush$1 r0 = (io.ktor.websocket.WebSocketWriter.C00861) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.websocket.WebSocketWriter$flush$1 r0 = new io.ktor.websocket.WebSocketWriter$flush$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L5f
            if (r2 == r5) goto L49
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lc1
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            java.lang.Object r8 = r0.L$2
            kotlinx.coroutines.channels.ClosedSendChannelException r8 = (kotlinx.coroutines.channels.ClosedSendChannelException) r8
            java.lang.Object r8 = r0.L$1
            io.ktor.websocket.WebSocketWriter$FlushRequest r8 = (io.ktor.websocket.WebSocketWriter.FlushRequest) r8
            java.lang.Object r8 = r0.L$0
            io.ktor.websocket.WebSocketWriter$FlushRequest r8 = (io.ktor.websocket.WebSocketWriter.FlushRequest) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lb0
        L49:
            int r2 = r0.I$0
            java.lang.Object r5 = r0.L$1
            io.ktor.websocket.WebSocketWriter$FlushRequest r5 = (io.ktor.websocket.WebSocketWriter.FlushRequest) r5
            java.lang.Object r6 = r0.L$0
            io.ktor.websocket.WebSocketWriter$FlushRequest r6 = (io.ktor.websocket.WebSocketWriter.FlushRequest) r6
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L57 kotlinx.coroutines.channels.ClosedSendChannelException -> L59
            goto Lb1
        L57:
            r8 = move-exception
            goto L8d
        L59:
            r9 = move-exception
            r7 = r5
            r5 = r9
            r9 = r6
            r6 = r7
            goto L91
        L5f:
            kotlin.ResultKt.throwOnFailure(r9)
            io.ktor.websocket.WebSocketWriter$FlushRequest r9 = new io.ktor.websocket.WebSocketWriter$FlushRequest
            kotlin.coroutines.CoroutineContext r2 = r8.getCoroutineContext()
            kotlinx.coroutines.Job$Key r6 = kotlinx.coroutines.Job.Key
            kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r6)
            kotlinx.coroutines.Job r2 = (kotlinx.coroutines.Job) r2
            r9.<init>(r2)
            r2 = 0
            kotlinx.coroutines.channels.Channel<java.lang.Object> r6 = r8.queue     // Catch: java.lang.Throwable -> L87 kotlinx.coroutines.channels.ClosedSendChannelException -> L8a
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L87 kotlinx.coroutines.channels.ClosedSendChannelException -> L8a
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L87 kotlinx.coroutines.channels.ClosedSendChannelException -> L8a
            r0.I$0 = r2     // Catch: java.lang.Throwable -> L87 kotlinx.coroutines.channels.ClosedSendChannelException -> L8a
            r0.label = r5     // Catch: java.lang.Throwable -> L87 kotlinx.coroutines.channels.ClosedSendChannelException -> L8a
            java.lang.Object r8 = r6.send(r9, r0)     // Catch: java.lang.Throwable -> L87 kotlinx.coroutines.channels.ClosedSendChannelException -> L8a
            if (r8 != r1) goto L85
            return r1
        L85:
            r6 = r9
            goto Lb1
        L87:
            r8 = move-exception
            r5 = r9
            goto L8d
        L8a:
            r5 = move-exception
            r6 = r9
            goto L91
        L8d:
            r5.complete()
            throw r8
        L91:
            r6.complete()
            kotlinx.coroutines.Job r8 = r8.writeLoopJob
            r0.L$0 = r9
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$1 = r6
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r5)
            r0.L$2 = r5
            r0.I$0 = r2
            r0.label = r4
            java.lang.Object r8 = r8.join(r0)
            if (r8 != r1) goto Laf
            return r1
        Laf:
            r8 = r9
        Lb0:
            r6 = r8
        Lb1:
            r8 = 0
            r0.L$0 = r8
            r0.L$1 = r8
            r0.L$2 = r8
            r0.label = r3
            java.lang.Object r8 = r6.await(r0)
            if (r8 != r1) goto Lc1
            return r1
        Lc1:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.WebSocketWriter.flush(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: WebSocketWriter.kt */
    public static final class FlushRequest {
        public final CompletableJob done;

        public FlushRequest(Job job) {
            this.done = JobKt.Job(job);
        }

        public final boolean complete() {
            return this.done.complete();
        }

        public final Object await(Continuation<? super Unit> continuation) {
            Object objJoin = this.done.join(continuation);
            return objJoin == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : Unit.INSTANCE;
        }
    }
}
