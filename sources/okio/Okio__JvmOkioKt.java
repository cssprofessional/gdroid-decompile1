package okio;

import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.DefaultSocket;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class Okio__JvmOkioKt {
    public static final Source source(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new InputStreamSource(inputStream, new Timeout());
    }

    public static final Socket socket(java.net.Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return new DefaultSocket(socket);
    }
}
