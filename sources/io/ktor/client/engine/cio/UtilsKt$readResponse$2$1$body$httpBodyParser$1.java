package io.ktor.client.engine.cio;

import io.ktor.http.HttpProtocolVersion;
import io.ktor.http.cio.ConnectionOptions;
import io.ktor.http.cio.HttpBodyKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.WriterScope;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt$readResponse$2$1$body$httpBodyParser$1", f = "utils.kt", l = {203}, m = "invokeSuspend", v = 1)
public final class UtilsKt$readResponse$2$1$body$httpBodyParser$1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ConnectionOptions $connectionType;
    public final /* synthetic */ long $contentLength;
    public final /* synthetic */ ByteReadChannel $input;
    public final /* synthetic */ String $transferEncoding;
    public final /* synthetic */ HttpProtocolVersion $version;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UtilsKt$readResponse$2$1$body$httpBodyParser$1(HttpProtocolVersion httpProtocolVersion, long j, String str, ConnectionOptions connectionOptions, ByteReadChannel byteReadChannel, Continuation<? super UtilsKt$readResponse$2$1$body$httpBodyParser$1> continuation) {
        super(2, continuation);
        this.$version = httpProtocolVersion;
        this.$contentLength = j;
        this.$transferEncoding = str;
        this.$connectionType = connectionOptions;
        this.$input = byteReadChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UtilsKt$readResponse$2$1$body$httpBodyParser$1 utilsKt$readResponse$2$1$body$httpBodyParser$1 = new UtilsKt$readResponse$2$1$body$httpBodyParser$1(this.$version, this.$contentLength, this.$transferEncoding, this.$connectionType, this.$input, continuation);
        utilsKt$readResponse$2$1$body$httpBodyParser$1.L$0 = obj;
        return utilsKt$readResponse$2$1$body$httpBodyParser$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
        return ((UtilsKt$readResponse$2$1$body$httpBodyParser$1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        WriterScope writerScope = (WriterScope) this.L$0;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HttpProtocolVersion httpProtocolVersion = this.$version;
            long j = this.$contentLength;
            String str = this.$transferEncoding;
            ConnectionOptions connectionOptions = this.$connectionType;
            ByteReadChannel byteReadChannel = this.$input;
            ByteWriteChannel channel = writerScope.getChannel();
            this.L$0 = SpillingKt.nullOutSpilledVariable(writerScope);
            this.label = 1;
            if (HttpBodyKt.parseHttpBody(httpProtocolVersion, j, str, connectionOptions, byteReadChannel, channel, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
