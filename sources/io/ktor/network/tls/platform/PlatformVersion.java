package io.ktor.network.tls.platform;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: PlatformVersion.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlatformVersion {
    public static final Companion Companion = new Companion(null);
    public static final PlatformVersion MINIMAL_SUPPORTED = new PlatformVersion("1.6.0", 0);
    public final String major;
    public final int minor;

    public PlatformVersion(String major, int i) {
        Intrinsics.checkNotNullParameter(major, "major");
        this.major = major;
        this.minor = i;
    }

    public final String getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    /* JADX INFO: compiled from: PlatformVersion.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final PlatformVersion invoke(String rawVersion) {
            Intrinsics.checkNotNullParameter(rawVersion, "rawVersion");
            try {
                List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) rawVersion, new char[]{'-', '_'}, false, 0, 6, (Object) null);
                if (listSplit$default.size() == 2) {
                    return new PlatformVersion((String) listSplit$default.get(0), Integer.parseInt((String) listSplit$default.get(1)));
                }
                return new PlatformVersion(rawVersion, -1);
            } catch (Throwable unused) {
                return PlatformVersion.MINIMAL_SUPPORTED;
            }
        }
    }
}
