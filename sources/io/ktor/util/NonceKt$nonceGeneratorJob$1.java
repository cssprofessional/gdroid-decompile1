package io.ktor.util;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Nonce.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.util.NonceKt$nonceGeneratorJob$1", f = "Nonce.kt", l = {SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.WATCHING_BROADCAST_VIEWERS_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
public final class NonceKt$nonceGeneratorJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int I$0;
    public int I$1;
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

    public NonceKt$nonceGeneratorJob$1(Continuation<? super NonceKt$nonceGeneratorJob$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NonceKt$nonceGeneratorJob$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NonceKt$nonceGeneratorJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0084 A[Catch: all -> 0x0046, LOOP:1: B:14:0x0082->B:15:0x0084, LOOP_END, TryCatch #1 {all -> 0x0046, blocks: (B:6:0x0031, B:13:0x0079, B:15:0x0084, B:16:0x008d, B:18:0x0099, B:20:0x00aa, B:19:0x00a7), top: B:43:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099 A[Catch: all -> 0x0046, TryCatch #1 {all -> 0x0046, blocks: (B:6:0x0031, B:13:0x0079, B:15:0x0084, B:16:0x008d, B:18:0x0099, B:20:0x00aa, B:19:0x00a7), top: B:43:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a7 A[Catch: all -> 0x0046, TryCatch #1 {all -> 0x0046, blocks: (B:6:0x0031, B:13:0x0079, B:15:0x0084, B:16:0x008d, B:18:0x0099, B:20:0x00aa, B:19:0x00a7), top: B:43:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d9 A[Catch: all -> 0x0104, TRY_ENTER, TryCatch #0 {all -> 0x0104, blocks: (B:26:0x00ff, B:23:0x00d9, B:29:0x0107, B:31:0x0116), top: B:41:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0107 A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:26:0x00ff, B:23:0x00d9, B:29:0x0107, B:31:0x0116), top: B:41:0x00ff }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00c5 -> B:22:0x00d7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00fc -> B:41:0x00ff). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.util.NonceKt$nonceGeneratorJob$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
