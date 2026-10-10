package io.ktor.client.engine.cio;

import io.ktor.http.HeadersBuilder;
import io.ktor.http.cio.CIOHeaders;
import io.ktor.http.cio.Response;
import io.ktor.network.sockets.Connection;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConnectionPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1", f = "ConnectionPipeline.kt", l = {72, 75, 125, 135, 140, 145, 145}, m = "invokeSuspend", v = 1)
public final class ConnectionPipeline$responseHandler$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Connection $connection;
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public long J$0;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$10;
    public Object L$11;
    public Object L$12;
    public Object L$13;
    public Object L$14;
    public Object L$15;
    public Object L$16;
    public Object L$17;
    public Object L$18;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public Object L$9;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ ConnectionPipeline this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPipeline$responseHandler$1(ConnectionPipeline connectionPipeline, Connection connection, Continuation<? super ConnectionPipeline$responseHandler$1> continuation) {
        super(2, continuation);
        this.this$0 = connectionPipeline;
        this.$connection = connection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ConnectionPipeline$responseHandler$1 connectionPipeline$responseHandler$1 = new ConnectionPipeline$responseHandler$1(this.this$0, this.$connection, continuation);
        connectionPipeline$responseHandler$1.L$0 = obj;
        return connectionPipeline$responseHandler$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ConnectionPipeline$responseHandler$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:38|39|(1:41)|26|226|42|(26:44|(24:241|46|(0)(1:50)|55|56|218|57|58|212|59|60|206|61|(2:204|63)|69|(1:71)(1:72)|73|(8:245|78|(7:214|80|(0)(1:84)|(5:243|89|90|233|91)(1:96)|(2:98|99)(1:100)|101|(18:224|103|210|104|105|208|106|107|202|108|109|247|110|111|237|112|113|(1:115)(6:116|231|117|118|119|(6:239|145|146|229|147|(1:149)(12:150|151|152|158|177|(4:179|(1:181)|222|182)|183|(3:188|32|(0)(0))|190|(1:192)|193|194))(10:157|158|177|(0)|183|(0)|190|(0)|193|194)))(3:143|119|(0)(0)))|87|(0)(0)|(0)(0)|101|(0)(0))|77|87|(0)(0)|(0)(0)|101|(0)(0))|54|55|56|218|57|58|212|59|60|206|61|(0)|69|(0)(0)|73|(0)|245|78|(1:77)(0)|87|(0)(0)|(0)(0)|101|(0)(0))(4:171|200|172|173)|163|164|142) */
    /* JADX WARN: Can't wrap try/catch for region: R(26:44|(24:241|46|(0)(1:50)|55|56|218|57|58|212|59|60|206|61|(2:204|63)|69|(1:71)(1:72)|73|(8:245|78|(7:214|80|(0)(1:84)|(5:243|89|90|233|91)(1:96)|(2:98|99)(1:100)|101|(18:224|103|210|104|105|208|106|107|202|108|109|247|110|111|237|112|113|(1:115)(6:116|231|117|118|119|(6:239|145|146|229|147|(1:149)(12:150|151|152|158|177|(4:179|(1:181)|222|182)|183|(3:188|32|(0)(0))|190|(1:192)|193|194))(10:157|158|177|(0)|183|(0)|190|(0)|193|194)))(3:143|119|(0)(0)))|87|(0)(0)|(0)(0)|101|(0)(0))|77|87|(0)(0)|(0)(0)|101|(0)(0))|54|55|56|218|57|58|212|59|60|206|61|(0)|69|(0)(0)|73|(0)|245|78|(1:77)(0)|87|(0)(0)|(0)(0)|101|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(1:243)|89|90|233|91) */
    /* JADX WARN: Can't wrap try/catch for region: R(6:(1:239)|145|146|229|147|(1:149)(12:150|151|152|158|177|(4:179|(1:181)|222|182)|183|(3:188|32|(0)(0))|190|(1:192)|193|194)) */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x050d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x050e, code lost:
    
        r3 = r13;
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x051d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x051e, code lost:
    
        r26 = r11;
        r21 = r12;
        r5 = r16;
        r28 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0528, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0529, code lost:
    
        r21 = r12;
        r5 = r16;
        r28 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0536, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0537, code lost:
    
        r21 = r12;
        r28 = r14;
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x053e, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x053f, code lost:
    
        r5 = r11;
        r21 = r12;
        r28 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0545, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0546, code lost:
    
        r5 = r11;
        r21 = r12;
        r28 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0265, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r14, r3.getHTTP_1_0()) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02d0, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02d1, code lost:
    
        r2 = r12;
        r3 = r13;
        r5 = r16;
        r4 = r14;
        r1 = r21;
     */
    /* JADX WARN: Path cross not found for [B:204:0x025d, B:69:0x0273], limit reached: 242 */
    /* JADX WARN: Path cross not found for [B:241:0x0202, B:54:0x021a], limit reached: 242 */
    /* JADX WARN: Path cross not found for [B:245:0x028c, B:77:0x0289], limit reached: 242 */
    /* JADX WARN: Path cross not found for [B:69:0x0273, B:204:0x025d], limit reached: 242 */
    /* JADX WARN: Path cross not found for [B:69:0x0273, B:71:0x027d], limit reached: 242 */
    /* JADX WARN: Path cross not found for [B:75:0x0286, B:245:0x028c], limit reached: 242 */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02f9 A[Catch: all -> 0x0444, TRY_ENTER, TryCatch #12 {all -> 0x0444, blocks: (B:101:0x0301, B:103:0x0339, B:100:0x02f9), top: B:224:0x0339 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x057c A[Catch: all -> 0x05bf, TryCatch #11 {all -> 0x05bf, blocks: (B:182:0x05b7, B:177:0x056e, B:179:0x057c, B:176:0x0564), top: B:222:0x05b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0602 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0649 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x025d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0298 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0339 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0492 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0194 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #8 {all -> 0x003a, blocks: (B:9:0x0034, B:32:0x0158, B:36:0x018c, B:38:0x0194, B:28:0x0142, B:31:0x014d), top: B:216:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c9 A[Catch: all -> 0x0545, TRY_LEAVE, TryCatch #13 {all -> 0x0545, blocks: (B:42:0x01c5, B:44:0x01c9, B:55:0x021c), top: B:226:0x01c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02ee A[Catch: all -> 0x02d0, TRY_LEAVE, TryCatch #17 {all -> 0x02d0, blocks: (B:91:0x02cb, B:98:0x02ee), top: B:233:0x02cb }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x057a -> B:183:0x05b9). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:180:0x05b4 -> B:222:0x05b7). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r36) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public static final Unit invokeSuspend$lambda$0(Response response, HeadersBuilder headersBuilder) {
        headersBuilder.appendAll(new CIOHeaders(response.getHeaders()));
        response.getHeaders().release();
        return Unit.INSTANCE;
    }

    public static final Unit invokeSuspend$lambda$1(ByteReadChannel byteReadChannel, Throwable th) {
        ByteReadChannelKt.cancel(byteReadChannel);
        return Unit.INSTANCE;
    }
}
