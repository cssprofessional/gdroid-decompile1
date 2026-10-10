package io.ktor.http.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.http.ContentType;
import io.ktor.http.cio.internals.UnsupportedMediaTypeExceptionCIO;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.core.StringsKt;
import java.io.IOException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.CharsKt__CharJVMKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.io.bytestring.ByteString;
import kotlinx.io.bytestring.ByteStringKt;
import org.bouncycastle.math.Primes;

/* JADX INFO: compiled from: Multipart.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MultipartKt {
    public static final ByteString CrLf = new ByteString(StringsKt.toByteArray$default("\r\n", null, 1, null), 0, 0, 6, null);
    public static final ByteString PrefixString = ByteStringKt.ByteString(45, 45);

    /* JADX INFO: renamed from: io.ktor.http.cio.MultipartKt$parsePartBodyImpl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Multipart.kt */
    @DebugMetadata(c = "io.ktor.http.cio.MultipartKt", f = "Multipart.kt", l = {132, 133, 133, 136}, m = "parsePartBodyImpl", v = 1)
    public static final class C00461 extends ContinuationImpl {
        public long J$0;
        public long J$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public /* synthetic */ Object result;

        public C00461(Continuation<? super C00461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return MultipartKt.parsePartBodyImpl(null, null, null, null, 0L, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.MultipartKt$parsePartHeadersImpl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Multipart.kt */
    @DebugMetadata(c = "io.ktor.http.cio.MultipartKt", f = "Multipart.kt", l = {113}, m = "parsePartHeadersImpl", v = 1)
    public static final class C00471 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00471(Continuation<? super C00471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return MultipartKt.parsePartHeadersImpl(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.MultipartKt$skipIfFoundReadCount$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Multipart.kt */
    @DebugMetadata(c = "io.ktor.http.cio.MultipartKt", f = "Multipart.kt", l = {143}, m = "skipIfFoundReadCount", v = 1)
    public static final class C00481 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00481(Continuation<? super C00481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return MultipartKt.skipIfFoundReadCount(null, null, this);
        }
    }

    public static final Object parsePreambleImpl(ByteString byteString, ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, long j, Continuation<? super Long> continuation) {
        return ByteReadChannelOperationsKt.readUntil(byteReadChannel, byteString, byteWriteChannel, j, true, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object parsePartHeadersImpl(io.ktor.utils.io.ByteReadChannel r8, kotlin.coroutines.Continuation<? super io.ktor.http.cio.HttpHeadersMap> r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof io.ktor.http.cio.MultipartKt.C00471
            if (r0 == 0) goto L14
            r0 = r9
            io.ktor.http.cio.MultipartKt$parsePartHeadersImpl$1 r0 = (io.ktor.http.cio.MultipartKt.C00471) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r4 = r0
            goto L1a
        L14:
            io.ktor.http.cio.MultipartKt$parsePartHeadersImpl$1 r0 = new io.ktor.http.cio.MultipartKt$parsePartHeadersImpl$1
            r0.<init>(r9)
            goto L12
        L1a:
            java.lang.Object r9 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L3d
            if (r1 != r2) goto L35
            java.lang.Object r8 = r4.L$1
            io.ktor.http.cio.internals.CharArrayBuilder r8 = (io.ktor.http.cio.internals.CharArrayBuilder) r8
            java.lang.Object r0 = r4.L$0
            io.ktor.utils.io.ByteReadChannel r0 = (io.ktor.utils.io.ByteReadChannel) r0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L33
            goto L5f
        L33:
            r9 = move-exception
            goto L70
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3d:
            kotlin.ResultKt.throwOnFailure(r9)
            io.ktor.http.cio.internals.CharArrayBuilder r9 = new io.ktor.http.cio.internals.CharArrayBuilder
            r1 = 0
            r9.<init>(r1, r2, r1)
            java.lang.Object r1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)     // Catch: java.lang.Throwable -> L6c
            r4.L$0 = r1     // Catch: java.lang.Throwable -> L6c
            r4.L$1 = r9     // Catch: java.lang.Throwable -> L6c
            r4.label = r2     // Catch: java.lang.Throwable -> L6c
            r3 = 0
            r5 = 4
            r6 = 0
            r1 = r8
            r2 = r9
            java.lang.Object r8 = io.ktor.http.cio.HttpParserKt.parseHeaders$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L6c
            if (r8 != r0) goto L5c
            return r0
        L5c:
            r7 = r9
            r9 = r8
            r8 = r7
        L5f:
            io.ktor.http.cio.HttpHeadersMap r9 = (io.ktor.http.cio.HttpHeadersMap) r9     // Catch: java.lang.Throwable -> L33
            if (r9 == 0) goto L64
            return r9
        L64:
            java.io.EOFException r9 = new java.io.EOFException     // Catch: java.lang.Throwable -> L33
            java.lang.String r0 = "Failed to parse multipart headers: unexpected end of stream"
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L33
            throw r9     // Catch: java.lang.Throwable -> L33
        L6c:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        L70:
            r8.release()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.MultipartKt.parsePartHeadersImpl(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0164 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object parsePartBodyImpl(kotlinx.io.bytestring.ByteString r18, io.ktor.utils.io.ByteReadChannel r19, io.ktor.utils.io.ByteWriteChannel r20, io.ktor.http.cio.HttpHeadersMap r21, long r22, kotlin.coroutines.Continuation<? super java.lang.Long> r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 431
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.MultipartKt.parsePartBodyImpl(kotlinx.io.bytestring.ByteString, io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel, io.ktor.http.cio.HttpHeadersMap, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object skipIfFoundReadCount(io.ktor.utils.io.ByteReadChannel r4, kotlinx.io.bytestring.ByteString r5, kotlin.coroutines.Continuation<? super java.lang.Long> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof io.ktor.http.cio.MultipartKt.C00481
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.http.cio.MultipartKt$skipIfFoundReadCount$1 r0 = (io.ktor.http.cio.MultipartKt.C00481) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.http.cio.MultipartKt$skipIfFoundReadCount$1 r0 = new io.ktor.http.cio.MultipartKt$skipIfFoundReadCount$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r4 = r0.L$1
            r5 = r4
            kotlinx.io.bytestring.ByteString r5 = (kotlinx.io.bytestring.ByteString) r5
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteReadChannel r4 = (io.ktor.utils.io.ByteReadChannel) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4e
        L32:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r4)
            r0.L$0 = r6
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = io.ktor.utils.io.ByteReadChannelOperationsKt.skipIfFound(r4, r5, r0)
            if (r6 != r1) goto L4e
            return r1
        L4e:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r4 = r6.booleanValue()
            if (r4 == 0) goto L5c
            int r4 = r5.getSize()
            long r4 = (long) r4
            goto L5e
        L5c:
            r4 = 0
        L5e:
            java.lang.Long r4 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.MultipartKt.skipIfFoundReadCount(io.ktor.utils.io.ByteReadChannel, kotlinx.io.bytestring.ByteString, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final ReceiveChannel<MultipartEvent> parseMultipart(CoroutineScope coroutineScope, ByteReadChannel input, CharSequence contentType, Long l, long j) throws UnsupportedMediaTypeExceptionCIO {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        if (!ContentType.MultiPart.INSTANCE.contains(contentType)) {
            throw new UnsupportedMediaTypeExceptionCIO("Failed to parse multipart: Content-Type should be multipart/* but it is " + ((Object) contentType));
        }
        return parseMultipart(coroutineScope, new ByteString(parseBoundaryInternal(contentType), 0, 0, 6, null), input, l, j);
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.MultipartKt$parseMultipart$1, reason: invalid class name */
    /* JADX INFO: compiled from: Multipart.kt */
    @DebugMetadata(c = "io.ktor.http.cio.MultipartKt$parseMultipart$1", f = "Multipart.kt", l = {208, Primes.SMALL_FACTOR_LIMIT, 214, 215, 218, 225, 229, 236, 248, 249, 256, 256, 259, 261}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<ProducerScope<? super MultipartEvent>, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteString $boundaryPrefixed;
        public final /* synthetic */ ByteReadChannel $input;
        public final /* synthetic */ long $maxPartSize;
        public final /* synthetic */ Long $totalLength;
        public long J$0;
        public long J$1;
        public long J$2;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ByteReadChannel byteReadChannel, ByteString byteString, long j, Long l, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$input = byteReadChannel;
            this.$boundaryPrefixed = byteString;
            this.$maxPartSize = j;
            this.$totalLength = l;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$input, this.$boundaryPrefixed, this.$maxPartSize, this.$totalLength, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super MultipartEvent> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:100:0x038f  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0410 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0419  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0442  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x01f6  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0222  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0256 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0260  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x02bf A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x02c0  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x02cf A[Catch: all -> 0x0319, TRY_LEAVE, TryCatch #1 {all -> 0x0319, blocks: (B:67:0x02c9, B:69:0x02cf, B:79:0x031e, B:80:0x0328), top: B:125:0x02c9 }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x031e A[Catch: all -> 0x0319, TRY_ENTER, TryCatch #1 {all -> 0x0319, blocks: (B:67:0x02c9, B:69:0x02cf, B:79:0x031e, B:80:0x0328), top: B:125:0x02c9 }] */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0336 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0369 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x038a A[RETURN] */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v12 */
        /* JADX WARN: Type inference failed for: r14v13 */
        /* JADX WARN: Type inference failed for: r14v14 */
        /* JADX WARN: Type inference failed for: r14v15 */
        /* JADX WARN: Type inference failed for: r14v17 */
        /* JADX WARN: Type inference failed for: r14v18 */
        /* JADX WARN: Type inference failed for: r14v19 */
        /* JADX WARN: Type inference failed for: r14v20 */
        /* JADX WARN: Type inference failed for: r14v4, types: [java.lang.Object, kotlin.jvm.internal.DefaultConstructorMarker, kotlinx.coroutines.Job] */
        /* JADX WARN: Type inference failed for: r14v5 */
        /* JADX WARN: Type inference failed for: r14v6 */
        /* JADX WARN: Type inference failed for: r14v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r14v9 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x025d -> B:41:0x01f0). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0303 -> B:123:0x030c). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r26) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 1176
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.MultipartKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final ReceiveChannel<MultipartEvent> parseMultipart(CoroutineScope coroutineScope, ByteString byteString, ByteReadChannel byteReadChannel, Long l, long j) {
        return ProduceKt.produce$default(coroutineScope, null, 0, new AnonymousClass1(byteReadChannel, byteString, j, l, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int findBoundary(java.lang.CharSequence r12) {
        /*
            int r0 = r12.length()
            r1 = 0
            r2 = r1
            r3 = r2
            r4 = r3
        L8:
            if (r2 >= r0) goto L5f
            char r5 = r12.charAt(r2)
            r6 = 59
            r7 = 1
            if (r3 == 0) goto L59
            r8 = 44
            r9 = 2
            if (r3 == r7) goto L3a
            r10 = 34
            r11 = 3
            if (r3 == r9) goto L31
            r6 = 4
            if (r3 == r11) goto L25
            if (r3 == r6) goto L23
            goto L5c
        L23:
            r3 = r11
            goto L5c
        L25:
            if (r5 == r10) goto L2e
            r7 = 92
            if (r5 == r7) goto L2c
            goto L5c
        L2c:
            r3 = r6
            goto L5c
        L2e:
            r4 = r1
            r3 = r7
            goto L5c
        L31:
            if (r5 == r10) goto L23
            if (r5 == r8) goto L38
            if (r5 == r6) goto L2e
            goto L5c
        L38:
            r3 = r1
            goto L5c
        L3a:
            r10 = 61
            if (r5 != r10) goto L40
            r3 = r9
            goto L5c
        L40:
            if (r5 != r6) goto L44
            r4 = r1
            goto L5c
        L44:
            if (r5 != r8) goto L47
            goto L38
        L47:
            r6 = 32
            if (r5 == r6) goto L5c
            if (r4 != 0) goto L56
            java.lang.String r5 = "boundary="
            boolean r5 = kotlin.text.StringsKt__StringsKt.startsWith(r12, r5, r2, r7)
            if (r5 == 0) goto L56
            return r2
        L56:
            int r4 = r4 + 1
            goto L5c
        L59:
            if (r5 != r6) goto L5c
            goto L2e
        L5c:
            int r2 = r2 + 1
            goto L8
        L5f:
            r12 = -1
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.MultipartKt.findBoundary(java.lang.CharSequence):int");
    }

    public static final byte[] parseBoundaryInternal(CharSequence contentType) throws IOException {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        int iFindBoundary = findBoundary(contentType);
        if (iFindBoundary == -1) {
            throw new IOException("Failed to parse multipart: Content-Type's boundary parameter is missing");
        }
        byte[] bArr = new byte[74];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        parseBoundaryInternal$put(ref$IntRef, bArr, (byte) 13);
        parseBoundaryInternal$put(ref$IntRef, bArr, (byte) 10);
        parseBoundaryInternal$put(ref$IntRef, bArr, (byte) 45);
        parseBoundaryInternal$put(ref$IntRef, bArr, (byte) 45);
        int length = contentType.length();
        char c = 0;
        for (int i = iFindBoundary + 9; i < length; i++) {
            char cCharAt = contentType.charAt(i);
            int i2 = cCharAt & 65535;
            if ((65535 & cCharAt) > 127) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to parse multipart: wrong boundary byte 0x");
                String string = Integer.toString(i2, CharsKt__CharJVMKt.checkRadix(16));
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                sb.append(string);
                sb.append(" - should be 7bit character");
                throw new IOException(sb.toString());
            }
            if (c != 0) {
                if (c == 1) {
                    if (cCharAt == ' ' || cCharAt == ',' || cCharAt == ';') {
                        break;
                    }
                    parseBoundaryInternal$put(ref$IntRef, bArr, (byte) i2);
                } else if (c == 2) {
                    if (cCharAt == '\"') {
                        break;
                    }
                    if (cCharAt != '\\') {
                        parseBoundaryInternal$put(ref$IntRef, bArr, (byte) i2);
                    } else {
                        c = 3;
                    }
                } else if (c == 3) {
                    parseBoundaryInternal$put(ref$IntRef, bArr, (byte) i2);
                    c = 2;
                }
            } else if (cCharAt == ' ') {
                continue;
            } else if (cCharAt == '\"') {
                c = 2;
            } else {
                if (cCharAt == ',' || cCharAt == ';') {
                    break;
                }
                parseBoundaryInternal$put(ref$IntRef, bArr, (byte) i2);
                c = 1;
            }
        }
        int i3 = ref$IntRef.element;
        if (i3 == 4) {
            throw new IOException("Empty multipart boundary is not allowed");
        }
        return ArraysKt___ArraysJvmKt.copyOfRange(bArr, 0, i3);
    }

    public static final void parseBoundaryInternal$put(Ref$IntRef ref$IntRef, byte[] bArr, byte b) throws IOException {
        int i = ref$IntRef.element;
        if (i >= bArr.length) {
            throw new IOException("Failed to parse multipart: boundary shouldn't be longer than 70 characters");
        }
        ref$IntRef.element = i + 1;
        bArr[i] = b;
    }

    public static final Void throwLimitExceeded(long j, long j2) throws IOException {
        throw new IOException("Multipart content length exceeds limit " + j + " > " + j2 + "; limit is defined using 'formFieldLimit' argument");
    }
}
