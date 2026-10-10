package kotlinx.io;

/* JADX INFO: compiled from: RawSource.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface RawSource extends AutoCloseable {
    @Override // java.lang.AutoCloseable, kotlinx.io.RawSink
    void close();

    long readAtMostTo(Buffer buffer, long j);
}
