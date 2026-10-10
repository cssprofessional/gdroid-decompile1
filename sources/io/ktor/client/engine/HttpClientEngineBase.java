package io.ktor.client.engine;

import io.ktor.client.HttpClient;
import io.ktor.util.CoroutinesUtilsKt;
import io.ktor.utils.io.IODispatcher_jvmKt;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: HttpClientEngineBase.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class HttpClientEngineBase implements HttpClientEngine {
    public static final /* synthetic */ AtomicIntegerFieldUpdater closed$FU = AtomicIntegerFieldUpdater.newUpdater(HttpClientEngineBase.class, "closed");
    private volatile /* synthetic */ int closed;
    public final Lazy coroutineContext$delegate;
    public final Lazy dispatcher$delegate;
    public final String engineName;

    public HttpClientEngineBase(String engineName) {
        Intrinsics.checkNotNullParameter(engineName, "engineName");
        this.engineName = engineName;
        this.closed = 0;
        this.dispatcher$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.client.engine.HttpClientEngineBase$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HttpClientEngineBase.dispatcher_delegate$lambda$0(this.f$0);
            }
        });
        this.coroutineContext$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.client.engine.HttpClientEngineBase$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HttpClientEngineBase.coroutineContext_delegate$lambda$0(this.f$0);
            }
        });
    }

    @Override // io.ktor.client.engine.HttpClientEngine
    public /* bridge */ Set<HttpClientEngineCapability<?>> getSupportedCapabilities() {
        return super.getSupportedCapabilities();
    }

    @Override // io.ktor.client.engine.HttpClientEngine
    public /* bridge */ void install(HttpClient httpClient) {
        super.install(httpClient);
    }

    public static final CoroutineDispatcher dispatcher_delegate$lambda$0(HttpClientEngineBase httpClientEngineBase) {
        CoroutineDispatcher dispatcher = httpClientEngineBase.getConfig().getDispatcher();
        return dispatcher == null ? IODispatcher_jvmKt.ioDispatcher() : dispatcher;
    }

    public CoroutineDispatcher getDispatcher() {
        return (CoroutineDispatcher) this.dispatcher$delegate.getValue();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return (CoroutineContext) this.coroutineContext$delegate.getValue();
    }

    public static final CoroutineContext coroutineContext_delegate$lambda$0(HttpClientEngineBase httpClientEngineBase) {
        return CoroutinesUtilsKt.SilentSupervisor$default(null, 1, null).plus(httpClientEngineBase.getDispatcher()).plus(new CoroutineName(httpClientEngineBase.engineName + "-context"));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (closed$FU.compareAndSet(this, 0, 1)) {
            CoroutineContext.Element element = getCoroutineContext().get(Job.Key);
            CompletableJob completableJob = element instanceof CompletableJob ? (CompletableJob) element : null;
            if (completableJob == null) {
                return;
            }
            completableJob.complete();
        }
    }
}
