package io.ktor.client.engine.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.client.request.HttpRequestData;
import io.ktor.client.request.HttpRequestKt;
import io.ktor.client.request.HttpResponseData;
import io.ktor.client.request.ResponseAdapter;
import io.ktor.http.Headers;
import io.ktor.http.HeadersImpl;
import io.ktor.http.HttpHeaders;
import io.ktor.http.HttpMethod;
import io.ktor.http.HttpProtocolVersion;
import io.ktor.http.HttpStatusCode;
import io.ktor.http.cio.ChunkedTransferEncodingKt;
import io.ktor.http.cio.ConnectionOptions;
import io.ktor.http.cio.HttpHeadersMap;
import io.ktor.http.cio.HttpParserKt;
import io.ktor.http.cio.RequestResponseBuilder;
import io.ktor.http.cio.Response;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.date.GMTDate;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.ByteWriteChannelKt;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import io.ktor.utils.io.ClosedReadChannelException;
import io.ktor.utils.io.ReaderJob;
import io.ktor.utils.io.ReaderScope;
import io.ktor.websocket.RawWebSocketJvmKt;
import java.io.EOFException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.JobKt;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UtilsKt {

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.UtilsKt$startTunnel$1, reason: invalid class name */
    /* JADX INFO: compiled from: utils.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt", f = "utils.kt", l = {240, 241, 243, 250}, m = "startTunnel", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public Object L$8;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return UtilsKt.startTunnel(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.UtilsKt$writeHeaders$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: utils.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt", f = "utils.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_SERVICE_ID_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.CREATE_NEW_PSN_LINKED_ACCOUNT_IF_NEEDED_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.STEAMGUARD_DONT_REMEMBER_COMPUTER_FIELD_NUMBER}, m = "writeHeaders", v = 1)
    public static final class C00401 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$10;
        public Object L$11;
        public Object L$12;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public Object L$8;
        public Object L$9;
        public boolean Z$0;
        public boolean Z$1;
        public boolean Z$2;
        public int label;
        public /* synthetic */ Object result;

        public C00401(Continuation<? super C00401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return UtilsKt.writeHeaders(null, null, false, false, this);
        }
    }

    public static /* synthetic */ Object writeRequest$default(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z, boolean z2, Continuation continuation, int i, Object obj) {
        if ((i & 16) != 0) {
            z2 = true;
        }
        return writeRequest(httpRequestData, byteWriteChannel, coroutineContext, z, z2, continuation);
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.UtilsKt$writeRequest$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: utils.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt$writeRequest$2", f = "utils.kt", l = {30, 31}, m = "invokeSuspend", v = 1)
    public static final class C00412 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ CoroutineContext $callContext;
        public final /* synthetic */ boolean $closeChannel;
        public final /* synthetic */ ByteWriteChannel $output;
        public final /* synthetic */ boolean $overProxy;
        public final /* synthetic */ HttpRequestData $request;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00412(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, boolean z, boolean z2, CoroutineContext coroutineContext, Continuation<? super C00412> continuation) {
            super(2, continuation);
            this.$request = httpRequestData;
            this.$output = byteWriteChannel;
            this.$overProxy = z;
            this.$closeChannel = z2;
            this.$callContext = coroutineContext;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C00412(this.$request, this.$output, this.$overProxy, this.$closeChannel, this.$callContext, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00412) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HttpRequestData httpRequestData = this.$request;
                ByteWriteChannel byteWriteChannel = this.$output;
                boolean z = this.$overProxy;
                boolean z2 = this.$closeChannel;
                this.label = 1;
                if (UtilsKt.writeHeaders(httpRequestData, byteWriteChannel, z, z2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            HttpRequestData httpRequestData2 = this.$request;
            ByteWriteChannel byteWriteChannel2 = this.$output;
            CoroutineContext coroutineContext = this.$callContext;
            this.label = 2;
            if (UtilsKt.writeBody$default(httpRequestData2, byteWriteChannel2, coroutineContext, false, this, 8, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public static final Object writeRequest(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z, boolean z2, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(coroutineContext, new C00412(httpRequestData, byteWriteChannel, z, z2, coroutineContext, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:30|(5:(2:32|(1:34)(21:36|37|122|38|(5:132|40|41|128|42)(1:48)|(1:50)(2:136|52)|53|(4:126|55|(1:57)(1:60)|61)(1:63)|64|65|(1:70)|71|(1:79)(1:77)|80|(1:82)|83|84|134|85|86|(1:88)(5:89|130|90|91|(0)(0))))|134|85|86|(0)(0))|35|37|122|38|(0)(0)|(0)(0)|53|(0)(0)|64|65|(2:67|70)|71|(0)|79|80|(0)|83|84) */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0352, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0353, code lost:
    
        r2 = r4;
        r4 = r24;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0359 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0194 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c0 A[Catch: all -> 0x01a5, TRY_LEAVE, TryCatch #5 {all -> 0x01a5, blocks: (B:42:0x019a, B:50:0x01c0), top: B:128:0x019a }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x024b A[Catch: all -> 0x01f5, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x01f5, blocks: (B:55:0x01e0, B:57:0x01f0, B:61:0x0206, B:67:0x0216, B:70:0x021e, B:75:0x0233, B:77:0x0237, B:82:0x024b, B:60:0x0202), top: B:126:0x01e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x032d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x032e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object writeHeaders(io.ktor.client.request.HttpRequestData r21, io.ktor.utils.io.ByteWriteChannel r22, boolean r23, boolean r24, kotlin.coroutines.Continuation<? super kotlin.Unit> r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 953
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.UtilsKt.writeHeaders(io.ktor.client.request.HttpRequestData, io.ktor.utils.io.ByteWriteChannel, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object writeHeaders$default(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, boolean z, boolean z2, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        return writeHeaders(httpRequestData, byteWriteChannel, z, z2, continuation);
    }

    public static final Unit writeHeaders$lambda$1(RequestResponseBuilder requestResponseBuilder, String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
        if (Intrinsics.areEqual(key, httpHeaders.getContentLength()) || Intrinsics.areEqual(key, httpHeaders.getExpect())) {
            return Unit.INSTANCE;
        }
        requestResponseBuilder.headerLine(key, value);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Object writeBody$default(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        return writeBody(httpRequestData, byteWriteChannel, coroutineContext, z, continuation);
    }

    public static final Object writeBody(HttpRequestData httpRequestData, ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z, Continuation<? super Unit> continuation) {
        ByteWriteChannel channel;
        OutgoingContent unwrapped = getUnwrapped(httpRequestData.getBody());
        if (unwrapped instanceof OutgoingContent.NoContent) {
            if (z) {
                ByteWriteChannelKt.close(byteWriteChannel);
            }
            return Unit.INSTANCE;
        }
        Headers headers = httpRequestData.getHeaders();
        HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
        String strValueOf = headers.get(httpHeaders.getContentLength());
        if (strValueOf == null) {
            Long contentLength = unwrapped.getContentLength();
            strValueOf = contentLength != null ? String.valueOf(contentLength.longValue()) : null;
        }
        ReaderJob readerJobEncodeChunked = isChunked(strValueOf, unwrapped.getHeaders().get(httpHeaders.getTransferEncoding()), httpRequestData.getHeaders().get(httpHeaders.getTransferEncoding())) ? ChunkedTransferEncodingKt.encodeChunked(byteWriteChannel, coroutineContext) : null;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContext.plus(new CoroutineName("cio-client-body-writer"))), null, null, new C00392(httpRequestData, unwrapped, (readerJobEncodeChunked == null || (channel = readerJobEncodeChunked.getChannel()) == null) ? byteWriteChannel : channel, readerJobEncodeChunked, byteWriteChannel, z, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.UtilsKt$writeBody$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: utils.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt$writeBody$2", f = "utils.kt", l = {130, 135, 137, 135, 137}, m = "invokeSuspend", v = 1)
    public static final class C00392 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ OutgoingContent $body;
        public final /* synthetic */ ByteWriteChannel $channel;
        public final /* synthetic */ ReaderJob $chunkedJob;
        public final /* synthetic */ boolean $closeChannel;
        public final /* synthetic */ ByteWriteChannel $output;
        public final /* synthetic */ HttpRequestData $request;
        public Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00392(HttpRequestData httpRequestData, OutgoingContent outgoingContent, ByteWriteChannel byteWriteChannel, ReaderJob readerJob, ByteWriteChannel byteWriteChannel2, boolean z, Continuation<? super C00392> continuation) {
            super(2, continuation);
            this.$request = httpRequestData;
            this.$body = outgoingContent;
            this.$channel = byteWriteChannel;
            this.$chunkedJob = readerJob;
            this.$output = byteWriteChannel2;
            this.$closeChannel = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C00392(this.$request, this.$body, this.$channel, this.$chunkedJob, this.$output, this.$closeChannel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00392) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x00e8  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 238
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.UtilsKt.C00392.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final OutgoingContent getUnwrapped(OutgoingContent outgoingContent) {
        return outgoingContent instanceof OutgoingContent.ContentWrapper ? getUnwrapped(((OutgoingContent.ContentWrapper) outgoingContent).delegate()) : outgoingContent;
    }

    public static final Object processOutgoingContent(HttpRequestData httpRequestData, OutgoingContent outgoingContent, ByteWriteChannel byteWriteChannel, Continuation<? super Unit> continuation) throws Throwable {
        if (outgoingContent instanceof OutgoingContent.ByteArrayContent) {
            Object objWriteFully$default = ByteWriteChannelOperationsKt.writeFully$default(byteWriteChannel, ((OutgoingContent.ByteArrayContent) outgoingContent).bytes(), 0, 0, continuation, 6, null);
            return objWriteFully$default == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteFully$default : Unit.INSTANCE;
        }
        if (outgoingContent instanceof OutgoingContent.ReadChannelContent) {
            Object objCopyAndClose = ByteReadChannelOperationsKt.copyAndClose(((OutgoingContent.ReadChannelContent) outgoingContent).readFrom(), byteWriteChannel, continuation);
            return objCopyAndClose == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCopyAndClose : Unit.INSTANCE;
        }
        if (outgoingContent instanceof OutgoingContent.WriteChannelContent) {
            Object objWriteTo = ((OutgoingContent.WriteChannelContent) outgoingContent).writeTo(byteWriteChannel, continuation);
            return objWriteTo == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteTo : Unit.INSTANCE;
        }
        if (outgoingContent instanceof OutgoingContent.ContentWrapper) {
            Object objProcessOutgoingContent = processOutgoingContent(httpRequestData, ((OutgoingContent.ContentWrapper) outgoingContent).delegate(), byteWriteChannel, continuation);
            return objProcessOutgoingContent == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessOutgoingContent : Unit.INSTANCE;
        }
        if (outgoingContent instanceof OutgoingContent.NoContent) {
            throw new IllegalStateException("unreachable code");
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.UtilsKt$readResponse$2, reason: invalid class name */
    /* JADX INFO: compiled from: utils.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt$readResponse$2", f = "utils.kt", l = {173}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpResponseData>, Object> {
        public final /* synthetic */ CoroutineContext $callContext;
        public final /* synthetic */ ByteReadChannel $input;
        public final /* synthetic */ ByteWriteChannel $output;
        public final /* synthetic */ HttpRequestData $request;
        public final /* synthetic */ GMTDate $requestTime;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, GMTDate gMTDate, HttpRequestData httpRequestData, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$input = byteReadChannel;
            this.$output = byteWriteChannel;
            this.$callContext = coroutineContext;
            this.$requestTime = gMTDate;
            this.$request = httpRequestData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$input, this.$output, this.$callContext, this.$requestTime, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpResponseData> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object response;
            Throwable th;
            ByteReadChannel empty;
            HeadersImpl headersImpl;
            Throwable th2;
            GMTDate gMTDate;
            Object obj2;
            String string;
            Long longOrNull;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ByteReadChannel byteReadChannel = this.$input;
                this.label = 1;
                response = HttpParserKt.parseResponse(byteReadChannel, this);
                if (response == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                response = obj;
            }
            Response response2 = (Response) response;
            if (response2 == null) {
                throw new ClosedReadChannelException(new EOFException("Failed to parse HTTP response: the server prematurely closed the connection"));
            }
            ByteReadChannel byteReadChannel2 = this.$input;
            ByteWriteChannel byteWriteChannel = this.$output;
            CoroutineContext coroutineContext = this.$callContext;
            GMTDate gMTDate2 = this.$requestTime;
            HttpRequestData httpRequestData = this.$request;
            try {
                HttpStatusCode httpStatusCode = new HttpStatusCode(response2.getStatus(), response2.getStatusText().toString());
                HttpHeadersMap headers = response2.getHeaders();
                HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
                CharSequence charSequence = headers.get(httpHeaders.getContentLength());
                long jLongValue = (charSequence == null || (string = charSequence.toString()) == null || (longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(string)) == null) ? -1L : longOrNull.longValue();
                CharSequence charSequence2 = response2.getHeaders().get(httpHeaders.getTransferEncoding());
                String string2 = charSequence2 != null ? charSequence2.toString() : null;
                ConnectionOptions connectionOptions = ConnectionOptions.Companion.parse(response2.getHeaders().get(httpHeaders.getConnection()));
                HeadersImpl headersImpl2 = new HeadersImpl(UtilsKt.toMap(response2.getHeaders()));
                HttpProtocolVersion httpProtocolVersion = HttpProtocolVersion.Companion.parse(response2.getVersion());
                HttpStatusCode.Companion companion = HttpStatusCode.Companion;
                if (Intrinsics.areEqual(httpStatusCode, companion.getSwitchingProtocols())) {
                    HttpResponseData httpResponseData = new HttpResponseData(httpStatusCode, gMTDate2, headersImpl2, httpProtocolVersion, RawWebSocketJvmKt.RawWebSocket$default(byteReadChannel2, byteWriteChannel, 0L, true, coroutineContext, 4, null), coroutineContext);
                    CloseableKt.closeFinally(response2, null);
                    return httpResponseData;
                }
                if (Intrinsics.areEqual(httpRequestData.getMethod(), HttpMethod.Companion.getHead()) || CollectionsKt__CollectionsKt.listOf((Object[]) new HttpStatusCode[]{companion.getNotModified(), companion.getNoContent()}).contains(httpStatusCode) || UtilsKt.isInformational(httpStatusCode)) {
                    th = null;
                    empty = ByteReadChannel.Companion.getEmpty();
                } else {
                    th = null;
                    empty = ByteWriteChannelOperationsKt.writer$default(CoroutineScopeKt.CoroutineScope(coroutineContext.plus(new CoroutineName("cio-client-body-reader"))), null, true, new UtilsKt$readResponse$2$1$body$httpBodyParser$1(httpProtocolVersion, jLongValue, string2, connectionOptions, byteReadChannel2, null), 1, null).getChannel();
                }
                ResponseAdapter responseAdapter = (ResponseAdapter) httpRequestData.getAttributes().getOrNull(HttpRequestKt.getResponseAdapterAttributeKey());
                if (responseAdapter != null) {
                    headersImpl = headersImpl2;
                    th2 = th;
                    gMTDate = gMTDate2;
                    Object objAdapt = responseAdapter.adapt(httpRequestData, httpStatusCode, headersImpl2, empty, httpRequestData.getBody(), coroutineContext);
                    if (objAdapt != null) {
                        obj2 = objAdapt;
                    }
                    HttpResponseData httpResponseData2 = new HttpResponseData(httpStatusCode, gMTDate, headersImpl, httpProtocolVersion, obj2, coroutineContext);
                    CloseableKt.closeFinally(response2, th2);
                    return httpResponseData2;
                }
                headersImpl = headersImpl2;
                th2 = th;
                gMTDate = gMTDate2;
                obj2 = empty;
                HttpResponseData httpResponseData22 = new HttpResponseData(httpStatusCode, gMTDate, headersImpl, httpProtocolVersion, obj2, coroutineContext);
                CloseableKt.closeFinally(response2, th2);
                return httpResponseData22;
            } finally {
            }
        }
    }

    public static final Object readResponse(GMTDate gMTDate, HttpRequestData httpRequestData, ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, Continuation<? super HttpResponseData> continuation) {
        return BuildersKt.withContext(coroutineContext, new AnonymousClass2(byteReadChannel, byteWriteChannel, coroutineContext, gMTDate, httpRequestData, null), continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x018f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x021a A[Catch: all -> 0x007b, TryCatch #2 {all -> 0x007b, blocks: (B:70:0x0203, B:77:0x0216, B:78:0x0219, B:22:0x0076, B:55:0x0191, B:79:0x021a, B:80:0x0226, B:27:0x0092, B:51:0x0171, B:30:0x00ab, B:75:0x0214), top: B:87:0x0024, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0195 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v25, types: [io.ktor.http.cio.RequestResponseBuilder] */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object startTunnel(io.ktor.client.request.HttpRequestData r11, io.ktor.utils.io.ByteWriteChannel r12, io.ktor.utils.io.ByteReadChannel r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 555
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.UtilsKt.startTunnel(io.ktor.client.request.HttpRequestData, io.ktor.utils.io.ByteWriteChannel, io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Map<String, List<String>> toMap(HttpHeadersMap httpHeadersMap) {
        Intrinsics.checkNotNullParameter(httpHeadersMap, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Integer> it = httpHeadersMap.offsets().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            String string = httpHeadersMap.nameAtOffset(iIntValue).toString();
            String string2 = httpHeadersMap.valueAtOffset(iIntValue).toString();
            List list = (List) linkedHashMap.get(string);
            if ((list != null ? Boolean.valueOf(list.add(string2)) : null) == null) {
                linkedHashMap.put(string, CollectionsKt__CollectionsKt.mutableListOf(string2));
            }
        }
        return linkedHashMap;
    }

    public static final boolean isInformational(HttpStatusCode httpStatusCode) {
        Intrinsics.checkNotNullParameter(httpStatusCode, "<this>");
        return httpStatusCode.getValue() / 100 == 1;
    }

    public static /* synthetic */ ByteWriteChannel withoutClosePropagation$default(ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return withoutClosePropagation(byteWriteChannel, coroutineContext, z);
    }

    public static final ByteWriteChannel withoutClosePropagation(final ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z) {
        Intrinsics.checkNotNullParameter(byteWriteChannel, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        if (z) {
            JobKt.getJob(coroutineContext).invokeOnCompletion(new Function1() { // from class: io.ktor.client.engine.cio.UtilsKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UtilsKt.withoutClosePropagation$lambda$0(byteWriteChannel, (Throwable) obj);
                }
            });
        }
        return ByteReadChannelOperationsKt.reader((CoroutineScope) GlobalScope.INSTANCE, coroutineContext, true, (Function2<? super ReaderScope, ? super Continuation<? super Unit>, ? extends Object>) new C00382(byteWriteChannel, null)).getChannel();
    }

    public static final Unit withoutClosePropagation$lambda$0(ByteWriteChannel byteWriteChannel, Throwable th) {
        ByteWriteChannelOperationsKt.close(byteWriteChannel, th);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.UtilsKt$withoutClosePropagation$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: utils.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.UtilsKt$withoutClosePropagation$2", f = "utils.kt", l = {292, 293}, m = "invokeSuspend", v = 1)
    public static final class C00382 extends SuspendLambda implements Function2<ReaderScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteWriteChannel $this_withoutClosePropagation;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00382(ByteWriteChannel byteWriteChannel, Continuation<? super C00382> continuation) {
            super(2, continuation);
            this.$this_withoutClosePropagation = byteWriteChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00382 c00382 = new C00382(this.$this_withoutClosePropagation, continuation);
            c00382.L$0 = obj;
            return c00382;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ReaderScope readerScope, Continuation<? super Unit> continuation) {
            return ((C00382) create(readerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReaderScope readerScope = (ReaderScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ByteReadChannel channel = readerScope.getChannel();
                ByteWriteChannel byteWriteChannel = this.$this_withoutClosePropagation;
                this.L$0 = SpillingKt.nullOutSpilledVariable(readerScope);
                this.label = 1;
                if (ByteReadChannelOperationsKt.copyTo(channel, byteWriteChannel, Util.VLI_MAX, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            ByteWriteChannel byteWriteChannel2 = this.$this_withoutClosePropagation;
            this.L$0 = SpillingKt.nullOutSpilledVariable(readerScope);
            this.label = 2;
            if (byteWriteChannel2.flush(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public static final ByteWriteChannel handleHalfClosed(ByteWriteChannel byteWriteChannel, CoroutineContext coroutineContext, boolean z) {
        Intrinsics.checkNotNullParameter(byteWriteChannel, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        return z ? byteWriteChannel : withoutClosePropagation$default(byteWriteChannel, coroutineContext, false, 2, null);
    }

    public static final boolean isChunked(String str, String str2, String str3) {
        return str == null || Intrinsics.areEqual(str2, "chunked") || Intrinsics.areEqual(str3, "chunked");
    }

    public static final boolean expectContinue(String str, OutgoingContent body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return (str == null || (body instanceof OutgoingContent.NoContent)) ? false : true;
    }
}
