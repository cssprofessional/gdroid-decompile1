package io.ktor.client.statement;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.client.request.HttpRequest;
import java.nio.charset.Charset;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: HttpResponse.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpResponseKt {

    /* JADX INFO: renamed from: io.ktor.client.statement.HttpResponseKt$bodyAsText$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpResponse.kt */
    @DebugMetadata(c = "io.ktor.client.statement.HttpResponseKt", f = "HttpResponse.kt", l = {147}, m = "bodyAsText", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpResponseKt.bodyAsText(null, null, this);
        }
    }

    public static final HttpRequest getRequest(HttpResponse httpResponse) {
        Intrinsics.checkNotNullParameter(httpResponse, "<this>");
        return httpResponse.getCall().getRequest();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object bodyAsText(io.ktor.client.statement.HttpResponse r10, java.nio.charset.Charset r11, kotlin.coroutines.Continuation<? super java.lang.String> r12) throws java.lang.Throwable {
        /*
            boolean r0 = r12 instanceof io.ktor.client.statement.HttpResponseKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r12
            io.ktor.client.statement.HttpResponseKt$bodyAsText$1 r0 = (io.ktor.client.statement.HttpResponseKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpResponseKt$bodyAsText$1 r0 = new io.ktor.client.statement.HttpResponseKt$bodyAsText$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 != r5) goto L3f
            java.lang.Object r10 = r0.L$4
            io.ktor.client.statement.HttpResponse r10 = (io.ktor.client.statement.HttpResponse) r10
            java.lang.Object r10 = r0.L$3
            java.nio.charset.CharsetDecoder r10 = (java.nio.charset.CharsetDecoder) r10
            java.lang.Object r11 = r0.L$2
            java.nio.charset.Charset r11 = (java.nio.charset.Charset) r11
            java.lang.Object r11 = r0.L$1
            java.nio.charset.Charset r11 = (java.nio.charset.Charset) r11
            java.lang.Object r11 = r0.L$0
            io.ktor.client.statement.HttpResponse r11 = (io.ktor.client.statement.HttpResponse) r11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L90
        L3f:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L47:
            kotlin.ResultKt.throwOnFailure(r12)
            java.nio.charset.Charset r12 = io.ktor.http.HttpMessagePropertiesKt.charset(r10)
            if (r12 != 0) goto L51
            r12 = r11
        L51:
            java.nio.charset.CharsetDecoder r2 = r12.newDecoder()
            io.ktor.client.call.HttpClientCall r6 = r10.getCall()
            java.lang.Class<kotlinx.io.Source> r7 = kotlinx.io.Source.class
            kotlin.reflect.KClass r8 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r7)
            kotlin.reflect.KType r7 = kotlin.jvm.internal.Reflection.typeOf(r7)     // Catch: java.lang.Throwable -> L64
            goto L65
        L64:
            r7 = r3
        L65:
            io.ktor.util.reflect.TypeInfo r9 = new io.ktor.util.reflect.TypeInfo
            r9.<init>(r8, r7)
            java.lang.Object r7 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r10)
            r0.L$0 = r7
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r11)
            r0.L$1 = r11
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)
            r0.L$2 = r11
            r0.L$3 = r2
            java.lang.Object r10 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r10)
            r0.L$4 = r10
            r0.I$0 = r4
            r0.label = r5
            java.lang.Object r12 = r6.bodyNullable(r9, r0)
            if (r12 != r1) goto L8f
            return r1
        L8f:
            r10 = r2
        L90:
            if (r12 == 0) goto L9d
            kotlinx.io.Source r12 = (kotlinx.io.Source) r12
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            r11 = 2
            java.lang.String r10 = io.ktor.utils.io.charsets.EncodingKt.decode$default(r10, r12, r4, r11, r3)
            return r10
        L9d:
            java.lang.NullPointerException r10 = new java.lang.NullPointerException
            java.lang.String r11 = "null cannot be cast to non-null type kotlinx.io.Source"
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpResponseKt.bodyAsText(io.ktor.client.statement.HttpResponse, java.nio.charset.Charset, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object bodyAsText$default(HttpResponse httpResponse, Charset charset, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return bodyAsText(httpResponse, charset, continuation);
    }
}
