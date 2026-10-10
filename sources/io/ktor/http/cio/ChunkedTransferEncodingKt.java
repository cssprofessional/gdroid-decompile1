package io.ktor.http.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.ReaderJob;
import io.ktor.utils.io.ReaderScope;
import io.ktor.utils.io.core.StringsKt;
import io.ktor.utils.io.pool.DefaultPool;
import io.ktor.utils.io.pool.ObjectPool;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringBuilderJVMKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: ChunkedTransferEncoding.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChunkedTransferEncodingKt {
    public static final ObjectPool<StringBuilder> ChunkSizeBufferPool = new DefaultPool<StringBuilder>() { // from class: io.ktor.http.cio.ChunkedTransferEncodingKt$ChunkSizeBufferPool$1
        @Override // io.ktor.utils.io.pool.DefaultPool
        public StringBuilder produceInstance() {
            return new StringBuilder(128);
        }

        @Override // io.ktor.utils.io.pool.DefaultPool
        public StringBuilder clearInstance(StringBuilder instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            StringsKt__StringBuilderJVMKt.clear(instance);
            return instance;
        }
    };
    public static final byte[] CrLf = StringsKt.toByteArray$default("\r\n", null, 1, null);
    public static final byte[] LastChunkBytes = StringsKt.toByteArray$default("0\r\n\r\n", null, 1, null);

    /* JADX INFO: renamed from: io.ktor.http.cio.ChunkedTransferEncodingKt$decodeChunked$2, reason: invalid class name */
    /* JADX INFO: compiled from: ChunkedTransferEncoding.kt */
    @DebugMetadata(c = "io.ktor.http.cio.ChunkedTransferEncodingKt", f = "ChunkedTransferEncoding.kt", l = {72, 81, 82, SteammessagesClientserverLogin.CMsgClientLogon.OTP_IDENTIFIER_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.TWO_FACTOR_CODE_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.TWO_FACTOR_CODE_FIELD_NUMBER}, m = "decodeChunked", v = 1)
    public static final class AnonymousClass2 extends ContinuationImpl {
        public long J$0;
        public long J$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ChunkedTransferEncodingKt.decodeChunked(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.ChunkedTransferEncodingKt$encodeChunked$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChunkedTransferEncoding.kt */
    @DebugMetadata(c = "io.ktor.http.cio.ChunkedTransferEncodingKt", f = "ChunkedTransferEncoding.kt", l = {175, 135, 140, 146, 146}, m = "encodeChunked", v = 1)
    public static final class C00442 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public int I$3;
        public int I$4;
        public int I$5;
        public int I$6;
        public int I$7;
        public Object L$0;
        public Object L$1;
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
        public /* synthetic */ Object result;

        public C00442(Continuation<? super C00442> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ChunkedTransferEncodingKt.encodeChunked(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.ChunkedTransferEncodingKt$writeChunk$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChunkedTransferEncoding.kt */
    @DebugMetadata(c = "io.ktor.http.cio.ChunkedTransferEncodingKt", f = "ChunkedTransferEncoding.kt", l = {164, 165, 167, 168, 169}, m = "writeChunk", v = 1)
    public static final class C00451 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00451(Continuation<? super C00451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ChunkedTransferEncodingKt.writeChunk(null, null, 0, 0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00da A[Catch: all -> 0x006a, TryCatch #1 {all -> 0x006a, blocks: (B:15:0x0065, B:55:0x013c, B:57:0x0144, B:33:0x00d2, B:35:0x00da, B:37:0x00e0, B:39:0x00e6, B:45:0x00f9, B:48:0x010c, B:51:0x0120, B:52:0x0121, B:42:0x00f1, B:67:0x0177, B:68:0x017e, B:63:0x0153, B:64:0x015a, B:65:0x015b, B:66:0x0176, B:20:0x007d, B:23:0x0092, B:26:0x00a8), top: B:85:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0144 A[Catch: all -> 0x006a, TryCatch #1 {all -> 0x006a, blocks: (B:15:0x0065, B:55:0x013c, B:57:0x0144, B:33:0x00d2, B:35:0x00da, B:37:0x00e0, B:39:0x00e6, B:45:0x00f9, B:48:0x010c, B:51:0x0120, B:52:0x0121, B:42:0x00f1, B:67:0x0177, B:68:0x017e, B:63:0x0153, B:64:0x015a, B:65:0x015b, B:66:0x0176, B:20:0x007d, B:23:0x0092, B:26:0x00a8), top: B:85:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015b A[Catch: all -> 0x006a, TryCatch #1 {all -> 0x006a, blocks: (B:15:0x0065, B:55:0x013c, B:57:0x0144, B:33:0x00d2, B:35:0x00da, B:37:0x00e0, B:39:0x00e6, B:45:0x00f9, B:48:0x010c, B:51:0x0120, B:52:0x0121, B:42:0x00f1, B:67:0x0177, B:68:0x017e, B:63:0x0153, B:64:0x015a, B:65:0x015b, B:66:0x0176, B:20:0x007d, B:23:0x0092, B:26:0x00a8), top: B:85:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.CharSequence, java.lang.Object, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.lang.Appendable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Appendable, java.lang.Object, java.lang.StringBuilder] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0139 -> B:55:0x013c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object decodeChunked(io.ktor.utils.io.ByteReadChannel r12, io.ktor.utils.io.ByteWriteChannel r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.ChunkedTransferEncodingKt.decodeChunked(io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.ChunkedTransferEncodingKt$encodeChunked$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChunkedTransferEncoding.kt */
    @DebugMetadata(c = "io.ktor.http.cio.ChunkedTransferEncodingKt$encodeChunked$1", f = "ChunkedTransferEncoding.kt", l = {122}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<ReaderScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteWriteChannel $output;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ByteWriteChannel byteWriteChannel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$output = byteWriteChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$output, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ReaderScope readerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(readerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReaderScope readerScope = (ReaderScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ByteWriteChannel byteWriteChannel = this.$output;
                ByteReadChannel channel = readerScope.getChannel();
                this.L$0 = SpillingKt.nullOutSpilledVariable(readerScope);
                this.label = 1;
                if (ChunkedTransferEncodingKt.encodeChunked(byteWriteChannel, channel, this) == coroutine_suspended) {
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

    public static final ReaderJob encodeChunked(ByteWriteChannel output, CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        return ByteReadChannelOperationsKt.reader((CoroutineScope) GlobalScope.INSTANCE, coroutineContext, false, (Function2<? super ReaderScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass1(output, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c6 A[Catch: all -> 0x0101, TryCatch #0 {all -> 0x0101, blocks: (B:63:0x0195, B:66:0x01a3, B:68:0x01a9, B:69:0x01ae, B:70:0x01b5, B:71:0x01b6, B:72:0x01bd, B:35:0x00c0, B:37:0x00c6, B:39:0x00cc, B:41:0x00d6, B:77:0x01cf), top: B:94:0x0195 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010e A[Catch: all -> 0x013f, TryCatch #5 {all -> 0x013f, blocks: (B:49:0x0108, B:51:0x010e, B:53:0x0123, B:55:0x0138, B:58:0x0145, B:74:0x01c4, B:75:0x01cb), top: B:103:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01fe A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0216 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0138 -> B:94:0x0195). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0188 -> B:62:0x018e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x01cc -> B:35:0x00c0). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object encodeChunked(io.ktor.utils.io.ByteWriteChannel r21, io.ktor.utils.io.ByteReadChannel r22, kotlin.coroutines.Continuation<? super kotlin.Unit> r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 588
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.ChunkedTransferEncodingKt.encodeChunked(io.ktor.utils.io.ByteWriteChannel, io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void rethrowCloseCause(ByteReadChannel byteReadChannel) throws Throwable {
        Throwable closedCause = byteReadChannel instanceof ByteChannel ? ((ByteChannel) byteReadChannel).getClosedCause() : null;
        if (closedCause != null) {
            throw closedCause;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00dd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object writeChunk(io.ktor.utils.io.ByteWriteChannel r11, byte[] r12, int r13, int r14, kotlin.coroutines.Continuation<? super java.lang.Integer> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.ChunkedTransferEncodingKt.writeChunk(io.ktor.utils.io.ByteWriteChannel, byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
