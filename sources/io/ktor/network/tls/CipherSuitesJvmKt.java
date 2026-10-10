package io.ktor.network.tls;

import io.ktor.network.tls.platform.PlatformVersionKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CipherSuitesJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CipherSuitesJvmKt {
    public static final boolean isSupported(CipherSuite cipherSuite) {
        Intrinsics.checkNotNullParameter(cipherSuite, "<this>");
        String major = PlatformVersionKt.getPlatformVersion().getMajor();
        int iHashCode = major.hashCode();
        if (iHashCode != 46676283) {
            if (iHashCode == 46677244) {
                if (major.equals("1.7.0") && PlatformVersionKt.getPlatformVersion().getMinor() < 171 && cipherSuite.getKeyStrength() > 128) {
                    return false;
                }
            } else if (iHashCode == 46678205 && major.equals("1.8.0") && PlatformVersionKt.getPlatformVersion().getMinor() < 161 && cipherSuite.getKeyStrength() > 128) {
                return false;
            }
        } else if (major.equals("1.6.0") && PlatformVersionKt.getPlatformVersion().getMinor() < 181 && cipherSuite.getKeyStrength() > 128) {
            return false;
        }
        return true;
    }
}
