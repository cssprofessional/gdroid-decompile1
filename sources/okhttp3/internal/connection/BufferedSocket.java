package okhttp3.internal.connection;

import okio.BufferedSink;
import okio.BufferedSource;
import okio.Socket;

/* JADX INFO: compiled from: BufferedSocket.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface BufferedSocket extends Socket {
    @Override // okio.Socket
    BufferedSink getSink();

    @Override // okio.Socket
    BufferedSource getSource();
}
