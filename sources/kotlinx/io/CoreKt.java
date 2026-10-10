package kotlinx.io;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Core.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class CoreKt {
    public static final Source buffered(RawSource rawSource) {
        Intrinsics.checkNotNullParameter(rawSource, "<this>");
        return new RealSource(rawSource);
    }
}
