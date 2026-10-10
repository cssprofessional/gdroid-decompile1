package io.ktor.http.cio;

import io.ktor.utils.io.pool.DefaultPool;
import java.io.IOException;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpHeadersMap.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeadersMapKt {
    public static final DefaultPool<int[]> IntArrayPool = new DefaultPool<int[]>() { // from class: io.ktor.http.cio.HttpHeadersMapKt$IntArrayPool$1
        @Override // io.ktor.utils.io.pool.DefaultPool
        public int[] produceInstance() {
            int[] iArr = new int[768];
            for (int i = 0; i < 768; i++) {
                iArr[i] = -1;
            }
            return iArr;
        }

        @Override // io.ktor.utils.io.pool.DefaultPool
        public int[] clearInstance(int[] instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            ArraysKt___ArraysJvmKt.fill$default(instance, -1, 0, 0, 6, (Object) null);
            return (int[]) super.clearInstance(instance);
        }
    };
    public static final DefaultPool<HeadersData> HeadersDataPool = new DefaultPool<HeadersData>() { // from class: io.ktor.http.cio.HttpHeadersMapKt$HeadersDataPool$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.ktor.utils.io.pool.DefaultPool
        public HeadersData produceInstance() {
            return new HeadersData();
        }

        @Override // io.ktor.utils.io.pool.DefaultPool
        public HeadersData clearInstance(HeadersData instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            instance.release();
            return (HeadersData) super.clearInstance(instance);
        }
    };

    public static final void dumpTo(HttpHeadersMap httpHeadersMap, String indent, Appendable out) throws IOException {
        Intrinsics.checkNotNullParameter(httpHeadersMap, "<this>");
        Intrinsics.checkNotNullParameter(indent, "indent");
        Intrinsics.checkNotNullParameter(out, "out");
        Iterator<Integer> it = httpHeadersMap.offsets().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            out.append(indent);
            out.append(httpHeadersMap.nameAtOffset(iIntValue));
            out.append(" => ");
            out.append(httpHeadersMap.valueAtOffset(iIntValue));
            out.append("\n");
        }
    }
}
