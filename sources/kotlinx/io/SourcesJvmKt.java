package kotlinx.io;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SourcesJvm.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SourcesJvmKt {
    public static final int readAtMostTo(Source source, ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (source.getBuffer().getSize() == 0) {
            source.request(8192L);
            if (source.getBuffer().getSize() == 0) {
                return -1;
            }
        }
        return BuffersJvmKt.readAtMostTo(source.getBuffer(), sink);
    }
}
