package okhttp3.internal.connection;

import java.net.Socket;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: compiled from: BufferedSocket.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BufferedSocketKt {
    public static final BufferedSocket asBufferedSocket(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return asBufferedSocket(Okio.socket(socket));
    }

    public static final BufferedSocket asBufferedSocket(okio.Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return new BufferedSocket(socket) { // from class: okhttp3.internal.connection.BufferedSocketKt.asBufferedSocket.1
            public final okio.Socket delegate;
            public final BufferedSink sink;
            public final BufferedSource source;

            {
                this.delegate = socket;
                this.source = Okio.buffer(socket.getSource());
                this.sink = Okio.buffer(socket.getSink());
            }

            @Override // okio.Socket
            public BufferedSource getSource() {
                return this.source;
            }

            @Override // okio.Socket
            public BufferedSink getSink() {
                return this.sink;
            }

            @Override // okio.Socket
            public void cancel() {
                this.delegate.cancel();
            }
        };
    }
}
