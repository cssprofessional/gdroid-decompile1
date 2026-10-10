package io.ktor.util;

import io.ktor.util.Platform;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlatformUtilsJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlatformUtilsJvmKt {
    public static final Platform getPlatform(PlatformUtils platformUtils) {
        Intrinsics.checkNotNullParameter(platformUtils, "<this>");
        return Platform.Jvm.INSTANCE;
    }

    public static final boolean isDevelopmentMode(PlatformUtils platformUtils) {
        Intrinsics.checkNotNullParameter(platformUtils, "<this>");
        String property = System.getProperty("io.ktor.development");
        return property != null && Boolean.parseBoolean(property);
    }
}
