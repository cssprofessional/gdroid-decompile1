package io.ktor.http.cio;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.http.cio.internals.CharArrayBuilder;
import io.ktor.http.cio.internals.CharsKt;
import java.io.IOException;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;

/* JADX INFO: compiled from: HttpHeadersMap.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeadersMap {
    public final CharArrayBuilder builder;
    public int headerCapacity;
    public HeadersData headersData;
    public int size;

    public HttpHeadersMap(CharArrayBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.builder = builder;
        this.headersData = (HeadersData) HttpHeadersMapKt.HeadersDataPool.borrow();
    }

    public final int getSize() {
        return this.size;
    }

    public final boolean thresholdReached() {
        return ((double) this.size) >= ((double) this.headerCapacity) * 0.75d;
    }

    public final CharSequence get(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (this.size == 0) {
            return null;
        }
        int iAbs = Math.abs(CharsKt.hashCodeLowerCase$default(name, 0, 0, 3, null));
        int i = this.headerCapacity;
        while (true) {
            int i2 = iAbs % i;
            int i3 = i2 * 6;
            if (this.headersData.at(i3) == -1) {
                return null;
            }
            if (headerHasName(name, i3)) {
                return valueAtOffset(i3);
            }
            iAbs = i2 + 1;
            i = this.headerCapacity;
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.HttpHeadersMap$getAll$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpHeadersMap.kt */
    @DebugMetadata(c = "io.ktor.http.cio.HttpHeadersMap$getAll$1", f = "HttpHeadersMap.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super CharSequence>, Continuation<? super Unit>, Object> {
        public final /* synthetic */ String $name;
        public int I$0;
        public int I$1;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$name = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = HttpHeadersMap.this.new AnonymousClass1(this.$name, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super CharSequence> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        
            r9 = r8.this$0.valueAtOffset(r6);
            r8.L$0 = r0;
            r8.I$0 = r5;
            r8.I$1 = r2;
            r8.label = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        
            if (r0.yield(r9, r8) != r1) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
        
            return r1;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008c A[EDGE_INSN: B:27:0x008c->B:24:0x008c BREAK  A[LOOP:0: B:13:0x0044->B:23:0x0082], SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x006e -> B:20:0x0071). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
            /*
                r8 = this;
                java.lang.Object r0 = r8.L$0
                kotlin.sequences.SequenceScope r0 = (kotlin.sequences.SequenceScope) r0
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r8.label
                r3 = -1
                r4 = 1
                if (r2 == 0) goto L20
                if (r2 != r4) goto L18
                int r2 = r8.I$1
                int r5 = r8.I$0
                kotlin.ResultKt.throwOnFailure(r9)
                goto L71
            L18:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L20:
                kotlin.ResultKt.throwOnFailure(r9)
                io.ktor.http.cio.HttpHeadersMap r9 = io.ktor.http.cio.HttpHeadersMap.this
                int r9 = r9.getSize()
                if (r9 != 0) goto L2e
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L2e:
                java.lang.String r9 = r8.$name
                r2 = 3
                r5 = 0
                r6 = 0
                int r9 = io.ktor.http.cio.internals.CharsKt.hashCodeLowerCase$default(r9, r6, r6, r2, r5)
                int r9 = java.lang.Math.abs(r9)
                io.ktor.http.cio.HttpHeadersMap r2 = io.ktor.http.cio.HttpHeadersMap.this
                int r2 = io.ktor.http.cio.HttpHeadersMap.access$getHeaderCapacity$p(r2)
                int r2 = r9 % r2
                r5 = r9
            L44:
                io.ktor.http.cio.HttpHeadersMap r9 = io.ktor.http.cio.HttpHeadersMap.this
                io.ktor.http.cio.HeadersData r9 = io.ktor.http.cio.HttpHeadersMap.access$getHeadersData$p(r9)
                int r6 = r2 * 6
                int r9 = r9.at(r6)
                if (r9 == r3) goto L8c
                io.ktor.http.cio.HttpHeadersMap r9 = io.ktor.http.cio.HttpHeadersMap.this
                java.lang.String r7 = r8.$name
                boolean r9 = io.ktor.http.cio.HttpHeadersMap.access$headerHasName(r9, r7, r6)
                if (r9 == 0) goto L82
                io.ktor.http.cio.HttpHeadersMap r9 = io.ktor.http.cio.HttpHeadersMap.this
                java.lang.CharSequence r9 = r9.valueAtOffset(r6)
                r8.L$0 = r0
                r8.I$0 = r5
                r8.I$1 = r2
                r8.label = r4
                java.lang.Object r9 = r0.yield(r9, r8)
                if (r9 != r1) goto L71
                return r1
            L71:
                io.ktor.http.cio.HttpHeadersMap r9 = io.ktor.http.cio.HttpHeadersMap.this
                io.ktor.http.cio.HeadersData r9 = io.ktor.http.cio.HttpHeadersMap.access$getHeadersData$p(r9)
                int r2 = r2 * 6
                int r2 = r2 + 5
                int r2 = r9.at(r2)
                if (r2 == r3) goto L8c
                goto L44
            L82:
                int r2 = r2 + 1
                io.ktor.http.cio.HttpHeadersMap r9 = io.ktor.http.cio.HttpHeadersMap.this
                int r9 = io.ktor.http.cio.HttpHeadersMap.access$getHeaderCapacity$p(r9)
                int r2 = r2 % r9
                goto L44
            L8c:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.HttpHeadersMap.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Sequence<CharSequence> getAll(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return SequencesKt__SequenceBuilderKt.sequence(new AnonymousClass1(name, null));
    }

    public final Sequence<Integer> offsets() {
        return this.headersData.headersStarts();
    }

    public final void put(int i, int i2, int i3, int i4) {
        int i5;
        if (thresholdReached()) {
            resize();
        }
        int iAbs = Math.abs(CharsKt.hashCodeLowerCase(this.builder, i, i2));
        CharSequence charSequenceSubSequence = this.builder.subSequence(i, i2);
        int i6 = iAbs % this.headerCapacity;
        int i7 = -1;
        while (true) {
            i5 = i6 * 6;
            if (this.headersData.at(i5) == -1) {
                break;
            }
            if (headerHasName(charSequenceSubSequence, i5)) {
                i7 = i6;
            }
            i6 = (i6 + 1) % this.headerCapacity;
        }
        this.headersData.set(i5, iAbs);
        this.headersData.set(i5 + 1, i);
        this.headersData.set(i5 + 2, i2);
        this.headersData.set(i5 + 3, i3);
        this.headersData.set(i5 + 4, i4);
        this.headersData.set(i5 + 5, -1);
        if (i7 != -1) {
            this.headersData.set((i7 * 6) + 5, i6);
        }
        this.size++;
    }

    public final void resize() {
        int i = this.size;
        HeadersData headersData = this.headersData;
        this.size = 0;
        this.headerCapacity = (this.headerCapacity * 2) | 128;
        HeadersData headersData2 = (HeadersData) HttpHeadersMapKt.HeadersDataPool.borrow();
        headersData2.prepare((headersData.arraysCount() * 2) | 1);
        this.headersData = headersData2;
        Iterator<Integer> it = headersData.headersStarts().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            put(headersData.at(iIntValue + 1), headersData.at(iIntValue + 2), headersData.at(iIntValue + 3), headersData.at(iIntValue + 4));
        }
        HttpHeadersMapKt.HeadersDataPool.recycle(headersData);
        if (i != this.size) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean headerHasName(CharSequence charSequence, int i) {
        return CharsKt.equalsLowerCase(this.builder, this.headersData.at(i + 1), this.headersData.at(i + 2), charSequence);
    }

    public final CharSequence nameAtOffset(int i) {
        return this.builder.subSequence(this.headersData.at(i + 1), this.headersData.at(i + 2));
    }

    public final CharSequence valueAtOffset(int i) {
        return this.builder.subSequence(this.headersData.at(i + 3), this.headersData.at(i + 4));
    }

    public final void release() {
        this.size = 0;
        this.headerCapacity = 0;
        HttpHeadersMapKt.HeadersDataPool.recycle(this.headersData);
        this.headersData = (HeadersData) HttpHeadersMapKt.HeadersDataPool.borrow();
    }

    public String toString() throws IOException {
        StringBuilder sb = new StringBuilder();
        HttpHeadersMapKt.dumpTo(this, "", sb);
        return sb.toString();
    }
}
