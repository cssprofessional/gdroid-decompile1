package io.ktor.network.util;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Timeout {
    public final Function0<Long> clock;
    volatile /* synthetic */ int isStarted;
    volatile /* synthetic */ long lastActivityTime;
    public final String name;
    public final Function1<Continuation<? super Unit>, Object> onTimeout;
    public final CoroutineScope scope;
    public final long timeoutMs;
    public Job workerJob;

    /* JADX WARN: Multi-variable type inference failed */
    public Timeout(String name, long j, Function0<Long> clock, CoroutineScope scope, Function1<? super Continuation<? super Unit>, ? extends Object> onTimeout) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onTimeout, "onTimeout");
        this.name = name;
        this.timeoutMs = j;
        this.clock = clock;
        this.scope = scope;
        this.onTimeout = onTimeout;
        this.lastActivityTime = 0L;
        this.isStarted = 0;
        this.workerJob = initTimeoutJob();
    }

    public final void start() {
        this.lastActivityTime = this.clock.invoke().longValue();
        this.isStarted = 1;
    }

    public final void stop() {
        this.isStarted = 0;
    }

    public final void finish() {
        Job job = this.workerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.util.Timeout$initTimeoutJob$1, reason: invalid class name */
    /* JADX INFO: compiled from: Utils.kt */
    @DebugMetadata(c = "io.ktor.network.util.Timeout$initTimeoutJob$1", f = "Utils.kt", l = {55, 57, SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public long J$0;
        public int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Timeout.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0080 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L26
                if (r1 == r4) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L8c
                goto L8c
            L16:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L1e:
                kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L8c
                goto L72
            L22:
                kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L8c
                goto L29
            L26:
                kotlin.ResultKt.throwOnFailure(r10)
            L29:
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                int r10 = r10.isStarted     // Catch: java.lang.Throwable -> L8c
                if (r10 != 0) goto L41
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                kotlin.jvm.functions.Function0 r1 = io.ktor.network.util.Timeout.access$getClock$p(r10)     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r1 = r1.invoke()     // Catch: java.lang.Throwable -> L8c
                java.lang.Number r1 = (java.lang.Number) r1     // Catch: java.lang.Throwable -> L8c
                long r5 = r1.longValue()     // Catch: java.lang.Throwable -> L8c
                r10.lastActivityTime = r5     // Catch: java.lang.Throwable -> L8c
            L41:
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                long r5 = r10.lastActivityTime     // Catch: java.lang.Throwable -> L8c
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                long r7 = io.ktor.network.util.Timeout.access$getTimeoutMs$p(r10)     // Catch: java.lang.Throwable -> L8c
                long r5 = r5 + r7
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                kotlin.jvm.functions.Function0 r10 = io.ktor.network.util.Timeout.access$getClock$p(r10)     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r10 = r10.invoke()     // Catch: java.lang.Throwable -> L8c
                java.lang.Number r10 = (java.lang.Number) r10     // Catch: java.lang.Throwable -> L8c
                long r7 = r10.longValue()     // Catch: java.lang.Throwable -> L8c
                long r5 = r5 - r7
                r7 = 0
                int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r10 > 0) goto L81
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                int r10 = r10.isStarted     // Catch: java.lang.Throwable -> L8c
                if (r10 == 0) goto L81
                r9.label = r3     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r10 = kotlinx.coroutines.YieldKt.yield(r9)     // Catch: java.lang.Throwable -> L8c
                if (r10 != r0) goto L72
                return r0
            L72:
                io.ktor.network.util.Timeout r10 = io.ktor.network.util.Timeout.this     // Catch: java.lang.Throwable -> L8c
                kotlin.jvm.functions.Function1 r10 = io.ktor.network.util.Timeout.access$getOnTimeout$p(r10)     // Catch: java.lang.Throwable -> L8c
                r9.label = r2     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r9 = r10.invoke(r9)     // Catch: java.lang.Throwable -> L8c
                if (r9 != r0) goto L8c
                return r0
            L81:
                r9.J$0 = r5     // Catch: java.lang.Throwable -> L8c
                r9.label = r4     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r10 = kotlinx.coroutines.DelayKt.delay(r5, r9)     // Catch: java.lang.Throwable -> L8c
                if (r10 != r0) goto L29
                return r0
            L8c:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.util.Timeout.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Job initTimeoutJob() {
        if (this.timeoutMs == Util.VLI_MAX) {
            return null;
        }
        CoroutineScope coroutineScope = this.scope;
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, coroutineScope.getCoroutineContext().plus(new CoroutineName("Timeout " + this.name)), null, new AnonymousClass1(null), 2, null);
    }
}
