package kotlin.time.jdk8;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Instant;

/* JADX INFO: compiled from: InstantConversions.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class InstantConversionsJDK8Kt {
    public static final Instant toKotlinInstant(java.time.Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return Instant.Companion.fromEpochSeconds(instant.getEpochSecond(), instant.getNano());
    }
}
