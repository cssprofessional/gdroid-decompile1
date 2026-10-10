package io.ktor.client.engine.cio;

import io.ktor.network.sockets.Connection;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;

/* JADX INFO: compiled from: ConnectionPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionPipeline implements CoroutineScope {
    public final CoroutineContext coroutineContext;
    public final ByteReadChannel networkInput;
    public final ByteWriteChannel networkOutput;
    public final Job pipelineContext;
    public final Semaphore requestLimit;
    public final Channel<ConnectionResponseTask> responseChannel;
    public final Job responseHandler;

    public ConnectionPipeline(long j, int i, Connection connection, boolean z, Channel<RequestTask> tasks, CoroutineContext parentContext) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        Intrinsics.checkNotNullParameter(parentContext, "parentContext");
        this.coroutineContext = parentContext.plus(JobKt__JobKt.Job$default(null, 1, null));
        this.networkInput = connection.getInput();
        this.networkOutput = connection.getOutput();
        this.requestLimit = SemaphoreKt.Semaphore$default(i, 0, 2, null);
        this.responseChannel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        CoroutineStart coroutineStart = CoroutineStart.LAZY;
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this, null, coroutineStart, new ConnectionPipeline$pipelineContext$1(j, this, z, tasks, null), 1, null);
        this.pipelineContext = jobLaunch$default;
        Job jobLaunch$default2 = BuildersKt__Builders_commonKt.launch$default(this, null, coroutineStart, new ConnectionPipeline$responseHandler$1(this, connection, null), 1, null);
        this.responseHandler = jobLaunch$default2;
        jobLaunch$default.start();
        jobLaunch$default2.start();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    public final Job getPipelineContext() {
        return this.pipelineContext;
    }
}
