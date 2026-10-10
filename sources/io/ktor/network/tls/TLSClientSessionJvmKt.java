package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: TLSClientSessionJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSClientSessionJvmKt {

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientSessionJvmKt$openTLSSession$1, reason: invalid class name */
    /* JADX INFO: compiled from: TLSClientSessionJvm.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientSessionJvmKt", f = "TLSClientSessionJvm.kt", l = {28, 31}, m = "openTLSSession", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
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
            return TLSClientSessionJvmKt.openTLSSession(null, null, null, null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0100 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object openTLSSession(io.ktor.network.sockets.Socket r19, io.ktor.utils.io.ByteReadChannel r20, io.ktor.utils.io.ByteWriteChannel r21, io.ktor.network.tls.TLSConfig r22, kotlin.coroutines.CoroutineContext r23, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientSessionJvmKt.openTLSSession(io.ktor.network.sockets.Socket, io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel, io.ktor.network.tls.TLSConfig, kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
