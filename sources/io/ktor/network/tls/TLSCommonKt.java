package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.sockets.Connection;
import io.ktor.network.sockets.Socket;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: TLSCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSCommonKt {

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSCommonKt$tls$3, reason: invalid class name */
    /* JADX INFO: compiled from: TLSCommon.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSCommonKt", f = "TLSCommon.kt", l = {47}, m = "tls", v = 1)
    public static final class AnonymousClass3 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSCommonKt.tls((Connection) null, (CoroutineContext) null, (TLSConfig) null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object tls(io.ktor.network.sockets.Connection r7, kotlin.coroutines.CoroutineContext r8, io.ktor.network.tls.TLSConfig r9, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10 instanceof io.ktor.network.tls.TLSCommonKt.AnonymousClass3
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.network.tls.TLSCommonKt$tls$3 r0 = (io.ktor.network.tls.TLSCommonKt.AnonymousClass3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            io.ktor.network.tls.TLSCommonKt$tls$3 r0 = new io.ktor.network.tls.TLSCommonKt$tls$3
            r0.<init>(r10)
            goto L12
        L1a:
            java.lang.Object r10 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L41
            if (r1 != r2) goto L39
            java.lang.Object r7 = r6.L$2
            io.ktor.network.tls.TLSConfig r7 = (io.ktor.network.tls.TLSConfig) r7
            java.lang.Object r7 = r6.L$1
            kotlin.coroutines.CoroutineContext r7 = (kotlin.coroutines.CoroutineContext) r7
            java.lang.Object r7 = r6.L$0
            io.ktor.network.sockets.Connection r7 = (io.ktor.network.sockets.Connection) r7
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L37
            goto L6a
        L37:
            r8 = move-exception
            goto L6d
        L39:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            io.ktor.network.sockets.Socket r1 = r7.getSocket()     // Catch: java.lang.Throwable -> L37
            io.ktor.utils.io.ByteReadChannel r10 = r7.getInput()     // Catch: java.lang.Throwable -> L37
            io.ktor.utils.io.ByteWriteChannel r3 = r7.getOutput()     // Catch: java.lang.Throwable -> L37
            r6.L$0 = r7     // Catch: java.lang.Throwable -> L37
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)     // Catch: java.lang.Throwable -> L37
            r6.L$1 = r4     // Catch: java.lang.Throwable -> L37
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r9)     // Catch: java.lang.Throwable -> L37
            r6.L$2 = r4     // Catch: java.lang.Throwable -> L37
            r6.label = r2     // Catch: java.lang.Throwable -> L37
            r2 = r10
            r4 = r9
            r5 = r8
            java.lang.Object r10 = io.ktor.network.tls.TLSClientSessionJvmKt.openTLSSession(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L37
            if (r10 != r0) goto L6a
            return r0
        L6a:
            io.ktor.network.sockets.Socket r10 = (io.ktor.network.sockets.Socket) r10     // Catch: java.lang.Throwable -> L37
            return r10
        L6d:
            io.ktor.utils.io.ByteReadChannel r9 = r7.getInput()
            r9.cancel(r8)
            io.ktor.utils.io.ByteWriteChannel r9 = r7.getOutput()
            io.ktor.utils.io.ByteWriteChannelOperationsKt.close(r9, r8)
            io.ktor.network.sockets.Socket r7 = r7.getSocket()
            r7.close()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSCommonKt.tls(io.ktor.network.sockets.Connection, kotlin.coroutines.CoroutineContext, io.ktor.network.tls.TLSConfig, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Object tls(Connection connection, CoroutineContext coroutineContext, Function1<? super TLSConfigBuilder, Unit> function1, Continuation<? super Socket> continuation) {
        TLSConfigBuilder tLSConfigBuilder = new TLSConfigBuilder();
        function1.invoke(tLSConfigBuilder);
        return tls(connection, coroutineContext, tLSConfigBuilder.build(), continuation);
    }
}
