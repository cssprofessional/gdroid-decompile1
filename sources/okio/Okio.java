package okio;

import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class Okio {
    public static final BufferedSink buffer(Sink sink) {
        return Okio__OkioKt.buffer(sink);
    }

    public static final BufferedSource buffer(Source source) {
        return Okio__OkioKt.buffer(source);
    }

    public static final Socket socket(java.net.Socket socket) {
        return Okio__JvmOkioKt.socket(socket);
    }

    public static final Source source(InputStream inputStream) {
        return Okio__JvmOkioKt.source(inputStream);
    }
}
