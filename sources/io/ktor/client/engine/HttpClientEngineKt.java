package io.ktor.client.engine;

import io.ktor.client.HttpClientConfig;
import io.ktor.client.request.HttpRequestData;
import io.ktor.http.HttpHeaders;
import io.ktor.http.UnsafeHeaderException;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: compiled from: HttpClientEngine.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpClientEngineKt {
    public static final CoroutineName CALL_COROUTINE = new CoroutineName("call-context");
    public static final AttributeKey<HttpClientConfig<?>> CLIENT_CONFIG;

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HttpClientConfig.class);
        try {
            kTypeTypeOf = Reflection.typeOf(HttpClientConfig.class, KTypeProjection.Companion.getSTAR());
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        CLIENT_CONFIG = new AttributeKey<>("client-config", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }

    public static final AttributeKey<HttpClientConfig<?>> getCLIENT_CONFIG() {
        return CLIENT_CONFIG;
    }

    public static final Object createCallContext(HttpClientEngine httpClientEngine, Job job, Continuation<? super CoroutineContext> continuation) {
        final CompletableJob completableJobJob = JobKt.Job(job);
        CoroutineContext coroutineContextPlus = httpClientEngine.getCoroutineContext().plus(completableJobJob).plus(CALL_COROUTINE);
        Job job2 = (Job) continuation.getContext().get(Job.Key);
        if (job2 != null) {
            final DisposableHandle disposableHandleInvokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job2, true, false, new Function1<Throwable, Unit>() { // from class: io.ktor.client.engine.UtilsKt$attachToUserJob$cleanupHandler$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    if (th == null) {
                        return;
                    }
                    completableJobJob.cancel(new CancellationException(th.getMessage()));
                }
            }, 2, null);
            completableJobJob.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.engine.UtilsKt$attachToUserJob$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    disposableHandleInvokeOnCompletion$default.dispose();
                }
            });
        }
        return coroutineContextPlus;
    }

    public static final void validateHeaders(HttpRequestData httpRequestData) {
        Set<String> setNames = httpRequestData.getHeaders().names();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setNames) {
            if (HttpHeaders.INSTANCE.getUnsafeHeadersList().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new UnsafeHeaderException(arrayList.toString());
        }
    }
}
