package okhttp3.internal;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;

/* JADX INFO: compiled from: internal.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Internal {
    public static final String[] effectiveCipherSuites(ConnectionSpec connectionSpec, String[] socketEnabledCipherSuites) {
        Intrinsics.checkNotNullParameter(connectionSpec, "<this>");
        Intrinsics.checkNotNullParameter(socketEnabledCipherSuites, "socketEnabledCipherSuites");
        return connectionSpec.getCipherSuitesAsString$okhttp() != null ? _UtilCommonKt.intersect(connectionSpec.getCipherSuitesAsString$okhttp(), socketEnabledCipherSuites, CipherSuite.Companion.getORDER_BY_NAME$okhttp()) : socketEnabledCipherSuites;
    }
}
