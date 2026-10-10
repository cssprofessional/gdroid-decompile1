package io.ktor.http.cio;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;

/* JADX INFO: compiled from: HttpHeadersMap.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HeadersData {
    public List<int[]> arrays = new ArrayList();

    public final int arraysCount() {
        return this.arrays.size();
    }

    public final void prepare(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.arrays.add((int[]) HttpHeadersMapKt.IntArrayPool.borrow());
        }
    }

    public final int at(int i) {
        return this.arrays.get(i / 768)[i % 768];
    }

    public final void set(int i, int i2) {
        this.arrays.get(i / 768)[i % 768] = i2;
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.HeadersData$headersStarts$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpHeadersMap.kt */
    @DebugMetadata(c = "io.ktor.http.cio.HeadersData$headersStarts$1", f = "HttpHeadersMap.kt", l = {264}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Integer>, Continuation<? super Unit>, Object> {
        public int I$0;
        public int I$1;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = HeadersData.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Integer> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003c -> B:12:0x0045). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004f -> B:21:0x006a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0068 -> B:20:0x0069). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                r9 = this;
                java.lang.Object r0 = r9.L$0
                kotlin.sequences.SequenceScope r0 = (kotlin.sequences.SequenceScope) r0
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r9.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L28
                if (r2 != r4) goto L20
                int r2 = r9.I$1
                int r5 = r9.I$0
                java.lang.Object r6 = r9.L$2
                int[] r6 = (int[]) r6
                java.lang.Object r7 = r9.L$1
                java.util.Iterator r7 = (java.util.Iterator) r7
                kotlin.ResultKt.throwOnFailure(r10)
                goto L69
            L20:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L28:
                kotlin.ResultKt.throwOnFailure(r10)
                io.ktor.http.cio.HeadersData r10 = io.ktor.http.cio.HeadersData.this
                java.util.List r10 = io.ktor.http.cio.HeadersData.access$getArrays$p(r10)
                java.util.Iterator r10 = r10.iterator()
                r2 = r3
            L36:
                boolean r5 = r10.hasNext()
                if (r5 == 0) goto L71
                java.lang.Object r5 = r10.next()
                int[] r5 = (int[]) r5
                r6 = r5
                r5 = r2
                r2 = r3
            L45:
                int r7 = r6.length
                if (r2 >= r7) goto L6f
                io.ktor.http.cio.HeadersData r7 = io.ktor.http.cio.HeadersData.this
                int r7 = r7.at(r5)
                r8 = -1
                if (r7 == r8) goto L6a
                java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
                r9.L$0 = r0
                r9.L$1 = r10
                r9.L$2 = r6
                r9.I$0 = r5
                r9.I$1 = r2
                r9.label = r4
                java.lang.Object r7 = r0.yield(r7, r9)
                if (r7 != r1) goto L68
                return r1
            L68:
                r7 = r10
            L69:
                r10 = r7
            L6a:
                int r2 = r2 + 6
                int r5 = r5 + 6
                goto L45
            L6f:
                r2 = r5
                goto L36
            L71:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.HeadersData.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Sequence<Integer> headersStarts() {
        return SequencesKt__SequenceBuilderKt.sequence(new AnonymousClass1(null));
    }

    public final void release() {
        Iterator<int[]> it = this.arrays.iterator();
        while (it.hasNext()) {
            HttpHeadersMapKt.IntArrayPool.recycle(it.next());
        }
        this.arrays.clear();
    }
}
