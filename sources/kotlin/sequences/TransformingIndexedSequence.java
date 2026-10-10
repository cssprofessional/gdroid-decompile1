package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TransformingIndexedSequence<T, R> implements Sequence<R> {
    public final Sequence<T> sequence;
    public final Function2<Integer, T, R> transformer;

    /* JADX WARN: Multi-variable type inference failed */
    public TransformingIndexedSequence(Sequence<? extends T> sequence, Function2<? super Integer, ? super T, ? extends R> transformer) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        this.sequence = sequence;
        this.transformer = transformer;
    }

    /* JADX INFO: renamed from: kotlin.sequences.TransformingIndexedSequence$iterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: Sequences.kt */
    public static final class AnonymousClass1 implements Iterator<R>, KMappedMarker {
        public int index;
        public final Iterator<T> iterator;
        public final /* synthetic */ TransformingIndexedSequence<T, R> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public AnonymousClass1(TransformingIndexedSequence<T, R> transformingIndexedSequence) {
            this.this$0 = transformingIndexedSequence;
            this.iterator = transformingIndexedSequence.sequence.iterator();
        }

        @Override // java.util.Iterator
        public R next() {
            Function2 function2 = this.this$0.transformer;
            int i = this.index;
            this.index = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            return (R) function2.invoke(Integer.valueOf(i), this.iterator.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<R> iterator() {
        return new AnonymousClass1(this);
    }
}
