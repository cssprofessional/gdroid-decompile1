package io.ktor.network.tls.platform;

import io.ktor.network.tls.platform.PlatformVersion;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlatformVersion.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlatformVersionKt {
    public static final Lazy platformVersion$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.network.tls.platform.PlatformVersionKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PlatformVersionKt.platformVersion_delegate$lambda$0();
        }
    });

    public static final PlatformVersion getPlatformVersion() {
        return (PlatformVersion) platformVersion$delegate.getValue();
    }

    public static final PlatformVersion platformVersion_delegate$lambda$0() {
        PlatformVersion.Companion companion = PlatformVersion.Companion;
        String property = System.getProperty("java.version");
        Intrinsics.checkNotNullExpressionValue(property, "getProperty(...)");
        return companion.invoke(property);
    }
}
