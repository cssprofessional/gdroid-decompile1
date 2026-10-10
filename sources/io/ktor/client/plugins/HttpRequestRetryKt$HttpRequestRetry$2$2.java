package io.ktor.client.plugins;

import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.plugins.api.Send;
import io.ktor.client.request.HttpRequest;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpResponse;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpRequestRetry.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpRequestRetryKt$HttpRequestRetry$2$2", f = "HttpRequestRetry.kt", l = {357, 360, 376}, m = "invokeSuspend", v = 1)
public final class HttpRequestRetryKt$HttpRequestRetry$2$2 extends SuspendLambda implements Function3<Send.Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object> {
    public final /* synthetic */ Function2<Long, Continuation<? super Unit>, Object> $delay;
    public final /* synthetic */ Function2<HttpRetryDelayContext, Integer, Long> $delayMillis;
    public final /* synthetic */ int $maxRetries;
    public final /* synthetic */ Function2<HttpRetryModifyRequestContext, HttpRequestBuilder, Unit> $modifyRequest;
    public final /* synthetic */ Function3<HttpRetryShouldRetryContext, HttpRequest, HttpResponse, Boolean> $shouldRetry;
    public final /* synthetic */ Function3<HttpRetryShouldRetryContext, HttpRequestBuilder, Throwable, Boolean> $shouldRetryOnException;
    public final /* synthetic */ ClientPluginBuilder<HttpRequestRetryConfig> $this_createClientPlugin;
    public int I$0;
    public int I$1;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public Object L$10;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public Object L$9;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HttpRequestRetryKt$HttpRequestRetry$2$2(Function3<? super HttpRetryShouldRetryContext, ? super HttpRequest, ? super HttpResponse, Boolean> function3, Function3<? super HttpRetryShouldRetryContext, ? super HttpRequestBuilder, ? super Throwable, Boolean> function32, int i, Function2<? super HttpRetryDelayContext, ? super Integer, Long> function2, Function2<? super HttpRetryModifyRequestContext, ? super HttpRequestBuilder, Unit> function22, ClientPluginBuilder<HttpRequestRetryConfig> clientPluginBuilder, Function2<? super Long, ? super Continuation<? super Unit>, ? extends Object> function23, Continuation<? super HttpRequestRetryKt$HttpRequestRetry$2$2> continuation) {
        super(3, continuation);
        this.$shouldRetry = function3;
        this.$shouldRetryOnException = function32;
        this.$maxRetries = i;
        this.$delayMillis = function2;
        this.$modifyRequest = function22;
        this.$this_createClientPlugin = clientPluginBuilder;
        this.$delay = function23;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Send.Sender sender, HttpRequestBuilder httpRequestBuilder, Continuation<? super HttpClientCall> continuation) {
        HttpRequestRetryKt$HttpRequestRetry$2$2 httpRequestRetryKt$HttpRequestRetry$2$2 = new HttpRequestRetryKt$HttpRequestRetry$2$2(this.$shouldRetry, this.$shouldRetryOnException, this.$maxRetries, this.$delayMillis, this.$modifyRequest, this.$this_createClientPlugin, this.$delay, continuation);
        httpRequestRetryKt$HttpRequestRetry$2$2.L$0 = sender;
        httpRequestRetryKt$HttpRequestRetry$2$2.L$1 = httpRequestBuilder;
        return httpRequestRetryKt$HttpRequestRetry$2$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:7|8|77|38|(5:79|40|41|87|42)(1:48)|49|50|(1:52)|85|53|89|54|(4:56|57|58|(1:60)(2:61|62))(17:81|67|68|74|(1:76)|8|77|38|(0)(0)|49|50|(0)|85|53|89|54|(0)(0))|63|64) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:79|40|41|87|42) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x014b, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01bc, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01bd, code lost:
    
        r12 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01db, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0185 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018e A[Catch: all -> 0x01bc, TRY_LEAVE, TryCatch #5 {all -> 0x01bc, blocks: (B:54:0x0188, B:56:0x018e), top: B:89:0x0188 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x025b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0259 -> B:8:0x004a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 646
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpRequestRetryKt$HttpRequestRetry$2$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
