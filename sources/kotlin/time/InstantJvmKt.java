package kotlin.time;

import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstantJvm.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class InstantJvmKt {
    public static final Clock systemClock = PlatformImplementationsKt.IMPLEMENTATIONS.getSystemClock();

    public static final Object serializedInstant(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "instant");
        return new InstantSerialized(instant.getEpochSeconds(), instant.getNanosecondsOfSecond());
    }
}
