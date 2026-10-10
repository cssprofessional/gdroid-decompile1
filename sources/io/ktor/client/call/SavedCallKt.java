package io.ktor.client.call;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SavedCall.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SavedCallKt {

    /* JADX INFO: renamed from: io.ktor.client.call.SavedCallKt$save$1, reason: invalid class name */
    /* JADX INFO: compiled from: SavedCall.kt */
    @DebugMetadata(c = "io.ktor.client.call.SavedCallKt", f = "SavedCall.kt", l = {38}, m = "save", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return SavedCallKt.save(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object save(io.ktor.client.call.HttpClientCall r4, kotlin.coroutines.Continuation<? super io.ktor.client.call.HttpClientCall> r5) throws java.lang.Throwable {
        /*
            boolean r0 = r5 instanceof io.ktor.client.call.SavedCallKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            io.ktor.client.call.SavedCallKt$save$1 r0 = (io.ktor.client.call.SavedCallKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.call.SavedCallKt$save$1 r0 = new io.ktor.client.call.SavedCallKt$save$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            io.ktor.client.call.HttpClientCall r4 = (io.ktor.client.call.HttpClientCall) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L50
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            boolean r5 = r4 instanceof io.ktor.client.call.SavedHttpCall
            if (r5 == 0) goto L3d
            return r4
        L3d:
            io.ktor.client.statement.HttpResponse r5 = r4.getResponse()
            io.ktor.utils.io.ByteReadChannel r5 = r5.getRawContent()
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = io.ktor.utils.io.ByteReadChannelOperationsKt.readRemaining(r5, r0)
            if (r5 != r1) goto L50
            return r1
        L50:
            kotlinx.io.Source r5 = (kotlinx.io.Source) r5
            byte[] r5 = kotlinx.io.SourcesKt.readByteArray(r5)
            io.ktor.client.call.SavedHttpCall r0 = new io.ktor.client.call.SavedHttpCall
            io.ktor.client.HttpClient r1 = r4.getClient()
            io.ktor.client.request.HttpRequest r2 = r4.getRequest()
            io.ktor.client.statement.HttpResponse r4 = r4.getResponse()
            r0.<init>(r1, r2, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.call.SavedCallKt.save(io.ktor.client.call.HttpClientCall, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
