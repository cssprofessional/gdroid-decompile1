package io.ktor.http.cio;

import io.ktor.http.Headers;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: CIOHeaders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOHeaders implements Headers {
    public final HttpHeadersMap headers;
    public final Lazy names$delegate;

    @Override // io.ktor.util.StringValues
    public boolean getCaseInsensitiveName() {
        return true;
    }

    public CIOHeaders(HttpHeadersMap headers) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.headers = headers;
        this.names$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CIOHeaders.names_delegate$lambda$0(this.f$0);
            }
        });
    }

    @Override // io.ktor.util.StringValues
    public /* bridge */ boolean contains(String str) {
        return super.contains(str);
    }

    @Override // io.ktor.util.StringValues
    public /* bridge */ void forEach(Function2<? super String, ? super List<String>, Unit> function2) {
        super.forEach(function2);
    }

    public final Set<String> getNames() {
        return (Set) this.names$delegate.getValue();
    }

    public static final LinkedHashSet names_delegate$lambda$0(CIOHeaders cIOHeaders) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(cIOHeaders.headers.getSize());
        Iterator<Integer> it = cIOHeaders.headers.offsets().iterator();
        while (it.hasNext()) {
            linkedHashSet.add(cIOHeaders.headers.nameAtOffset(it.next().intValue()).toString());
        }
        return linkedHashSet;
    }

    @Override // io.ktor.util.StringValues
    public Set<String> names() {
        return getNames();
    }

    @Override // io.ktor.util.StringValues
    public String get(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        CharSequence charSequence = this.headers.get(name);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public static final String getAll$lambda$0(CharSequence it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.toString();
    }

    @Override // io.ktor.util.StringValues
    public List<String> getAll(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        List<String> list = SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.map(this.headers.getAll(name), new Function1() { // from class: io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CIOHeaders.getAll$lambda$0((CharSequence) obj);
            }
        }));
        if (list.isEmpty()) {
            return null;
        }
        return list;
    }

    public static final Entry entries$lambda$0(CIOHeaders cIOHeaders, int i) {
        return cIOHeaders.new Entry(i);
    }

    @Override // io.ktor.util.StringValues
    public Set<Map.Entry<String, List<String>>> entries() {
        return SequencesKt___SequencesKt.toSet(SequencesKt___SequencesKt.map(this.headers.offsets(), new Function1() { // from class: io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CIOHeaders.entries$lambda$0(this.f$0, ((Integer) obj).intValue());
            }
        }));
    }

    /* JADX INFO: compiled from: CIOHeaders.kt */
    public final class Entry implements Map.Entry<String, List<? extends String>>, KMappedMarker {
        public final int offset;

        @Override // java.util.Map.Entry
        public /* bridge */ /* synthetic */ List<? extends String> setValue(List<? extends String> list) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public Entry(int i) {
            this.offset = i;
        }

        @Override // java.util.Map.Entry
        public String getKey() {
            return CIOHeaders.this.headers.nameAtOffset(this.offset).toString();
        }

        @Override // java.util.Map.Entry
        public List<? extends String> getValue() {
            return CollectionsKt__CollectionsJVMKt.listOf(CIOHeaders.this.headers.valueAtOffset(this.offset).toString());
        }
    }
}
