package io.ktor.utils.io.core;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Input.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InputKt {
    public static final int readAvailable(Source source, byte[] buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int atMostTo = source.readAtMostTo(buffer, i, i2 + i);
        if (atMostTo == -1) {
            return 0;
        }
        return atMostTo;
    }
}
