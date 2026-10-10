package io.ktor.network.sockets;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.network.selector.SelectInterest;
import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import io.ktor.utils.io.WriterJob;
import io.ktor.utils.io.WriterScope;
import io.ktor.utils.io.pool.ObjectPool;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: CIOReader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOReaderKt {

    /* JADX INFO: renamed from: io.ktor.network.sockets.CIOReaderKt$readFrom$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CIOReader.kt */
    @DebugMetadata(c = "io.ktor.network.sockets.CIOReaderKt", f = "CIOReader.kt", l = {133}, m = "readFrom", v = 1)
    public static final class C00531 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public C00531(Continuation<? super C00531> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return CIOReaderKt.readFrom(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.sockets.CIOReaderKt$attachForReadingImpl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CIOReader.kt */
    @DebugMetadata(c = "io.ktor.network.sockets.CIOReaderKt$attachForReadingImpl$1", f = "CIOReader.kt", l = {42, 44, 42, 44, 55}, m = "invokeSuspend", v = 1)
    public static final class C00521 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteBuffer $buffer;
        public final /* synthetic */ ByteChannel $channel;
        public final /* synthetic */ ReadableByteChannel $nioChannel;
        public final /* synthetic */ ObjectPool<ByteBuffer> $pool;
        public final /* synthetic */ Selectable $selectable;
        public final /* synthetic */ SelectorManager $selector;
        public final /* synthetic */ SocketOptions.TCPClientSocketOptions $socketOptions;
        public int I$0;
        public int I$1;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public Object L$8;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00521(SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, ByteChannel byteChannel, Selectable selectable, ByteBuffer byteBuffer, ObjectPool<ByteBuffer> objectPool, ReadableByteChannel readableByteChannel, SelectorManager selectorManager, Continuation<? super C00521> continuation) {
            super(2, continuation);
            this.$socketOptions = tCPClientSocketOptions;
            this.$channel = byteChannel;
            this.$selectable = selectable;
            this.$buffer = byteBuffer;
            this.$pool = objectPool;
            this.$nioChannel = readableByteChannel;
            this.$selector = selectorManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00521 c00521 = new C00521(this.$socketOptions, this.$channel, this.$selectable, this.$buffer, this.$pool, this.$nioChannel, this.$selector, continuation);
            c00521.L$0 = obj;
            return c00521;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
            return ((C00521) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0130  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x013b A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:10:0x0026, B:89:0x02bd, B:38:0x011f, B:41:0x0133, B:43:0x013b, B:47:0x0177, B:52:0x01ba, B:73:0x024f, B:75:0x0254, B:77:0x025b, B:86:0x0287, B:56:0x01c4, B:72:0x024c, B:92:0x02cd, B:93:0x02d0, B:25:0x00bd, B:28:0x00e6, B:31:0x00f0, B:33:0x00f4, B:36:0x0100, B:58:0x01ca, B:60:0x01d2, B:64:0x0208, B:69:0x0246, B:71:0x024a, B:17:0x0062, B:22:0x008f), top: B:103:0x0012, inners: #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01a2 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01be  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x01c1  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x01c4 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:10:0x0026, B:89:0x02bd, B:38:0x011f, B:41:0x0133, B:43:0x013b, B:47:0x0177, B:52:0x01ba, B:73:0x024f, B:75:0x0254, B:77:0x025b, B:86:0x0287, B:56:0x01c4, B:72:0x024c, B:92:0x02cd, B:93:0x02d0, B:25:0x00bd, B:28:0x00e6, B:31:0x00f0, B:33:0x00f4, B:36:0x0100, B:58:0x01ca, B:60:0x01d2, B:64:0x0208, B:69:0x0246, B:71:0x024a, B:17:0x0062, B:22:0x008f), top: B:103:0x0012, inners: #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01d2 A[Catch: all -> 0x0068, TryCatch #2 {all -> 0x0068, blocks: (B:58:0x01ca, B:60:0x01d2, B:64:0x0208, B:69:0x0246, B:71:0x024a, B:17:0x0062, B:22:0x008f), top: B:103:0x0012, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0231 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0245  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x024a A[Catch: all -> 0x0068, TRY_LEAVE, TryCatch #2 {all -> 0x0068, blocks: (B:58:0x01ca, B:60:0x01d2, B:64:0x0208, B:69:0x0246, B:71:0x024a, B:17:0x0062, B:22:0x008f), top: B:103:0x0012, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0254 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:10:0x0026, B:89:0x02bd, B:38:0x011f, B:41:0x0133, B:43:0x013b, B:47:0x0177, B:52:0x01ba, B:73:0x024f, B:75:0x0254, B:77:0x025b, B:86:0x0287, B:56:0x01c4, B:72:0x024c, B:92:0x02cd, B:93:0x02d0, B:25:0x00bd, B:28:0x00e6, B:31:0x00f0, B:33:0x00f4, B:36:0x0100, B:58:0x01ca, B:60:0x01d2, B:64:0x0208, B:69:0x0246, B:71:0x024a, B:17:0x0062, B:22:0x008f), top: B:103:0x0012, inners: #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0287 A[Catch: all -> 0x0033, TRY_ENTER, TryCatch #0 {all -> 0x0033, blocks: (B:10:0x0026, B:89:0x02bd, B:38:0x011f, B:41:0x0133, B:43:0x013b, B:47:0x0177, B:52:0x01ba, B:73:0x024f, B:75:0x0254, B:77:0x025b, B:86:0x0287, B:56:0x01c4, B:72:0x024c, B:92:0x02cd, B:93:0x02d0, B:25:0x00bd, B:28:0x00e6, B:31:0x00f0, B:33:0x00f4, B:36:0x0100, B:58:0x01ca, B:60:0x01d2, B:64:0x0208, B:69:0x0246, B:71:0x024a, B:17:0x0062, B:22:0x008f), top: B:103:0x0012, inners: #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x02c7  */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v13 */
        /* JADX WARN: Type inference failed for: r11v23 */
        /* JADX WARN: Type inference failed for: r11v26 */
        /* JADX WARN: Type inference failed for: r11v27 */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x01c1 -> B:41:0x0133). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x02ba -> B:89:0x02bd). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x02c7 -> B:58:0x01ca). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r23) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 760
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOReaderKt.C00521.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final WriterJob attachForReadingImpl(CoroutineScope coroutineScope, ByteChannel channel, ReadableByteChannel nioChannel, Selectable selectable, SelectorManager selector, ObjectPool<ByteBuffer> pool, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(nioChannel, "nioChannel");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(pool, "pool");
        return ByteWriteChannelOperationsKt.writer(coroutineScope, Dispatchers.getIO().plus(new CoroutineName("cio-from-nio-reader")), channel, new C00521(tCPClientSocketOptions, channel, selectable, pool.borrow(), pool, nioChannel, selector, null));
    }

    /* JADX INFO: renamed from: io.ktor.network.sockets.CIOReaderKt$attachForReadingDirectImpl$1, reason: invalid class name */
    /* JADX INFO: compiled from: CIOReader.kt */
    @DebugMetadata(c = "io.ktor.network.sockets.CIOReaderKt$attachForReadingDirectImpl$1", f = "CIOReader.kt", l = {96, SteammessagesClientserverLogin.CMsgClientLogon.EMBEDDED_CLIENT_SECRET_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.ACCESS_TOKEN_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.IS_CHROME_OS_FIELD_NUMBER, 96, SteammessagesClientserverLogin.CMsgClientLogon.EMBEDDED_CLIENT_SECRET_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.ACCESS_TOKEN_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.IS_CHROME_OS_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteChannel $channel;
        public final /* synthetic */ ReadableByteChannel $nioChannel;
        public final /* synthetic */ Selectable $selectable;
        public final /* synthetic */ SelectorManager $selector;
        public final /* synthetic */ SocketOptions.TCPClientSocketOptions $socketOptions;
        public int I$0;
        public int I$1;
        public int I$2;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Selectable selectable, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, ByteChannel byteChannel, ReadableByteChannel readableByteChannel, SelectorManager selectorManager, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$selectable = selectable;
            this.$socketOptions = tCPClientSocketOptions;
            this.$channel = byteChannel;
            this.$nioChannel = readableByteChannel;
            this.$selector = selectorManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$selectable, this.$socketOptions, this.$channel, this.$nioChannel, this.$selector, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:59:0x020c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0232 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x023b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x01ba -> B:88:0x02ea). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x01bf -> B:88:0x02ea). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0239 -> B:57:0x01e7). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x023b -> B:88:0x02ea). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0270 -> B:86:0x02e5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0274 -> B:86:0x02e5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x02da -> B:84:0x02dd). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                Method dump skipped, instruction units count: 860
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOReaderKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final WriterJob attachForReadingDirectImpl(CoroutineScope coroutineScope, ByteChannel channel, ReadableByteChannel nioChannel, Selectable selectable, SelectorManager selector, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(nioChannel, "nioChannel");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selector, "selector");
        return ByteWriteChannelOperationsKt.writer(coroutineScope, Dispatchers.getIO().plus(new CoroutineName("cio-from-nio-reader")), channel, new AnonymousClass1(selectable, tCPClientSocketOptions, channel, nioChannel, selector, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object readFrom(io.ktor.utils.io.ByteWriteChannel r7, final java.nio.channels.ReadableByteChannel r8, kotlin.coroutines.Continuation<? super java.lang.Integer> r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof io.ktor.network.sockets.CIOReaderKt.C00531
            if (r0 == 0) goto L14
            r0 = r9
            io.ktor.network.sockets.CIOReaderKt$readFrom$1 r0 = (io.ktor.network.sockets.CIOReaderKt.C00531) r0
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
            io.ktor.network.sockets.CIOReaderKt$readFrom$1 r0 = new io.ktor.network.sockets.CIOReaderKt$readFrom$1
            r0.<init>(r9)
            goto L12
        L1a:
            java.lang.Object r9 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L3f
            if (r1 != r2) goto L37
            java.lang.Object r7 = r4.L$2
            kotlin.jvm.internal.Ref$IntRef r7 = (kotlin.jvm.internal.Ref$IntRef) r7
            java.lang.Object r8 = r4.L$1
            java.nio.channels.ReadableByteChannel r8 = (java.nio.channels.ReadableByteChannel) r8
            java.lang.Object r8 = r4.L$0
            io.ktor.utils.io.ByteWriteChannel r8 = (io.ktor.utils.io.ByteWriteChannel) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L68
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3f:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$IntRef r9 = new kotlin.jvm.internal.Ref$IntRef
            r9.<init>()
            io.ktor.network.sockets.CIOReaderKt$$ExternalSyntheticLambda0 r3 = new io.ktor.network.sockets.CIOReaderKt$$ExternalSyntheticLambda0
            r3.<init>()
            java.lang.Object r1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r4.L$0 = r1
            java.lang.Object r8 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)
            r4.L$1 = r8
            r4.L$2 = r9
            r4.label = r2
            r2 = 0
            r5 = 1
            r6 = 0
            r1 = r7
            java.lang.Object r7 = io.ktor.utils.io.ByteWriteChannelOperations_jvmKt.write$default(r1, r2, r3, r4, r5, r6)
            if (r7 != r0) goto L67
            return r0
        L67:
            r7 = r9
        L68:
            int r7 = r7.element
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOReaderKt.readFrom(io.ktor.utils.io.ByteWriteChannel, java.nio.channels.ReadableByteChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Unit readFrom$lambda$0(Ref$IntRef ref$IntRef, ReadableByteChannel readableByteChannel, ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        ref$IntRef.element = readableByteChannel.read(buffer);
        return Unit.INSTANCE;
    }

    public static final Object selectForRead(Selectable selectable, SelectorManager selectorManager, Continuation<? super Unit> continuation) {
        SelectInterest selectInterest = SelectInterest.READ;
        selectable.interestOp(selectInterest, true);
        Object objSelect = selectorManager.select(selectable, selectInterest, continuation);
        return objSelect == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSelect : Unit.INSTANCE;
    }
}
