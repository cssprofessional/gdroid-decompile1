package kotlinx.io;

/* JADX INFO: compiled from: Source.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface Source extends RawSource {
    boolean exhausted();

    Buffer getBuffer();

    Source peek();

    int readAtMostTo(byte[] bArr, int i, int i2);

    byte readByte();

    int readInt();

    long readLong();

    short readShort();

    void readTo(RawSink rawSink, long j);

    boolean request(long j);

    void require(long j);

    long transferTo(RawSink rawSink);
}
