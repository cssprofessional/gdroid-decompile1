package io.ktor.network.tls;

import javax.net.ssl.SSLException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CipherSuites.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSException extends SSLException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TLSException(String message, Throwable th) {
        super(message, th);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    public /* synthetic */ TLSException(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : th);
    }
}
