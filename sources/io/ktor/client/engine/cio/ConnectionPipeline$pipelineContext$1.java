package io.ktor.client.engine.cio;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: compiled from: ConnectionPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.ConnectionPipeline$pipelineContext$1", f = "ConnectionPipeline.kt", l = {44, SteammessagesPublishedfileSteamclient.PublishedFileDetails.NUM_CHILDREN_FIELD_NUMBER, 50, 56, 57}, m = "invokeSuspend", v = 1)
public final class ConnectionPipeline$pipelineContext$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ long $keepAliveTime;
    public final /* synthetic */ boolean $overProxy;
    public final /* synthetic */ Channel<RequestTask> $tasks;
    public Object L$0;
    public int label;
    public final /* synthetic */ ConnectionPipeline this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPipeline$pipelineContext$1(long j, ConnectionPipeline connectionPipeline, boolean z, Channel<RequestTask> channel, Continuation<? super ConnectionPipeline$pipelineContext$1> continuation) {
        super(2, continuation);
        this.$keepAliveTime = j;
        this.this$0 = connectionPipeline;
        this.$overProxy = z;
        this.$tasks = channel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConnectionPipeline$pipelineContext$1(this.$keepAliveTime, this.this$0, this.$overProxy, this.$tasks, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ConnectionPipeline$pipelineContext$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0071 A[Catch: all -> 0x003c, TRY_ENTER, TryCatch #2 {all -> 0x003c, blocks: (B:36:0x0071, B:39:0x0082, B:20:0x0038, B:25:0x0043), top: B:55:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d1 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [io.ktor.client.engine.cio.RequestTask, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00cf -> B:30:0x004e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.ConnectionPipeline$pipelineContext$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
