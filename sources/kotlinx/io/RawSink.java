package kotlinx.io;

import java.io.Flushable;

/* JADX INFO: compiled from: RawSink.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface RawSink extends AutoCloseable, Flushable {
    void close();

    void write(Buffer buffer, long j);
}
