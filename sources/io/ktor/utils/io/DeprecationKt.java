package io.ktor.utils.io;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;
import kotlinx.io.Utf8Kt;

/* JADX INFO: compiled from: Deprecation.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DeprecationKt {
    public static final String readText(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return Utf8Kt.readString(source);
    }
}
