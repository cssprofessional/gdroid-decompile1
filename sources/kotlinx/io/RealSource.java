package kotlinx.io;

import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RealSource.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class RealSource implements Source {
    public final Buffer bufferField;
    public boolean closed;
    public final RawSource source;

    public RealSource(RawSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
        this.bufferField = new Buffer();
    }

    @Override // kotlinx.io.Source, kotlinx.io.Sink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // kotlinx.io.Source
    public void require(long j) throws EOFException {
        if (request(j)) {
            return;
        }
        throw new EOFException("Source doesn't contain required number of bytes (" + j + ").");
    }

    @Override // kotlinx.io.Source
    public byte readByte() throws EOFException {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // kotlinx.io.Source
    public int readAtMostTo(byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkBounds(sink.length, i, i2);
        if (this.bufferField.getSize() == 0 && this.source.readAtMostTo(this.bufferField, 8192L) == -1) {
            return -1;
        }
        return this.bufferField.readAtMostTo(sink, i, ((int) Math.min(i2 - i, this.bufferField.getSize())) + i);
    }

    @Override // kotlinx.io.Source
    public void readTo(RawSink sink, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(j);
            this.bufferField.readTo(sink, j);
        } catch (EOFException e) {
            sink.write(this.bufferField, this.bufferField.getSize());
            throw e;
        }
    }

    @Override // kotlinx.io.Source
    public long transferTo(RawSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = 0;
        while (this.source.readAtMostTo(this.bufferField, 8192L) != -1) {
            long jCompleteSegmentByteCount$kotlinx_io_core = this.bufferField.completeSegmentByteCount$kotlinx_io_core();
            if (jCompleteSegmentByteCount$kotlinx_io_core > 0) {
                j += jCompleteSegmentByteCount$kotlinx_io_core;
                sink.write(this.bufferField, jCompleteSegmentByteCount$kotlinx_io_core);
            }
        }
        if (this.bufferField.getSize() <= 0) {
            return j;
        }
        long size = j + this.bufferField.getSize();
        Buffer buffer = this.bufferField;
        sink.write(buffer, buffer.getSize());
        return size;
    }

    @Override // kotlinx.io.Source
    public short readShort() throws EOFException {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // kotlinx.io.Source
    public int readInt() throws EOFException {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // kotlinx.io.Source
    public long readLong() throws EOFException {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // kotlinx.io.RawSource, java.lang.AutoCloseable, kotlinx.io.RawSink
    public void close() throws EOFException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    public String toString() {
        return "buffered(" + this.source + ')';
    }

    @Override // kotlinx.io.Source
    public boolean exhausted() {
        if (this.closed) {
            throw new IllegalStateException("Source is closed.");
        }
        return this.bufferField.exhausted() && this.source.readAtMostTo(this.bufferField, 8192L) == -1;
    }

    @Override // kotlinx.io.Source
    public Source peek() {
        if (!this.closed) {
            return CoreKt.buffered(new PeekSource(this));
        }
        throw new IllegalStateException("Source is closed.");
    }

    @Override // kotlinx.io.RawSource
    public long readAtMostTo(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.closed) {
            throw new IllegalStateException("Source is closed.");
        }
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        }
        if (this.bufferField.getSize() == 0 && this.source.readAtMostTo(this.bufferField, 8192L) == -1) {
            return -1L;
        }
        return this.bufferField.readAtMostTo(sink, Math.min(j, this.bufferField.getSize()));
    }

    @Override // kotlinx.io.Source
    public boolean request(long j) {
        if (this.closed) {
            throw new IllegalStateException("Source is closed.");
        }
        if (j >= 0) {
            while (this.bufferField.getSize() < j) {
                if (this.source.readAtMostTo(this.bufferField, 8192L) == -1) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException(("byteCount: " + j).toString());
    }
}
