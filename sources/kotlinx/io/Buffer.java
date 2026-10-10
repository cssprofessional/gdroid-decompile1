package kotlinx.io;

import in.dragonbra.javasteam.types.SteamID;
import java.io.EOFException;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.unsafe.SegmentReadContext;
import kotlinx.io.unsafe.UnsafeBufferOperations;
import kotlinx.io.unsafe.UnsafeBufferOperationsKt;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: compiled from: Buffer.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Buffer implements Source, Sink {
    public Segment head;
    public long sizeMut;
    public Segment tail;

    @Override // kotlinx.io.RawSource, java.lang.AutoCloseable, kotlinx.io.RawSink
    public void close() {
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    @Override // kotlinx.io.Source, kotlinx.io.Sink
    public Buffer getBuffer() {
        return this;
    }

    @Override // kotlinx.io.Sink
    public void hintEmit() {
    }

    public final /* synthetic */ Segment getHead() {
        return this.head;
    }

    public final /* synthetic */ void setHead(Segment segment) {
        this.head = segment;
    }

    public final /* synthetic */ Segment getTail() {
        return this.tail;
    }

    public final /* synthetic */ void setTail(Segment segment) {
        this.tail = segment;
    }

    public final long getSize() {
        return this.sizeMut;
    }

    public final /* synthetic */ long getSizeMut() {
        return this.sizeMut;
    }

    public final /* synthetic */ void setSizeMut(long j) {
        this.sizeMut = j;
    }

    @Override // kotlinx.io.Source
    public boolean exhausted() {
        return getSize() == 0;
    }

    @Override // kotlinx.io.Source
    public void require(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        }
        if (getSize() >= j) {
            return;
        }
        throw new EOFException("Buffer doesn't contain required number of bytes (size: " + getSize() + ", required: " + j + ')');
    }

    @Override // kotlinx.io.Source
    public boolean request(long j) {
        if (j >= 0) {
            return getSize() >= j;
        }
        throw new IllegalArgumentException(("byteCount: " + j + " < 0").toString());
    }

    @Override // kotlinx.io.Source
    public byte readByte() throws EOFException {
        Segment segment = this.head;
        if (segment == null) {
            throwEof(1L);
            throw new KotlinNothingValueException();
        }
        int size = segment.getSize();
        if (size == 0) {
            recycleHead$kotlinx_io_core();
            return readByte();
        }
        byte byte$kotlinx_io_core = segment.readByte$kotlinx_io_core();
        this.sizeMut--;
        if (size == 1) {
            recycleHead$kotlinx_io_core();
        }
        return byte$kotlinx_io_core;
    }

    @Override // kotlinx.io.Source
    public short readShort() throws EOFException {
        Segment segment = this.head;
        if (segment == null) {
            throwEof(2L);
            throw new KotlinNothingValueException();
        }
        int size = segment.getSize();
        if (size < 2) {
            require(2L);
            if (size == 0) {
                recycleHead$kotlinx_io_core();
                return readShort();
            }
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        short short$kotlinx_io_core = segment.readShort$kotlinx_io_core();
        this.sizeMut -= 2;
        if (size == 2) {
            recycleHead$kotlinx_io_core();
        }
        return short$kotlinx_io_core;
    }

    @Override // kotlinx.io.Source
    public int readInt() throws EOFException {
        Segment segment = this.head;
        if (segment == null) {
            throwEof(4L);
            throw new KotlinNothingValueException();
        }
        int size = segment.getSize();
        if (size < 4) {
            require(4L);
            if (size == 0) {
                recycleHead$kotlinx_io_core();
                return readInt();
            }
            return (readShort() & HPKE.aead_EXPORT_ONLY) | (readShort() << 16);
        }
        int int$kotlinx_io_core = segment.readInt$kotlinx_io_core();
        this.sizeMut -= 4;
        if (size == 4) {
            recycleHead$kotlinx_io_core();
        }
        return int$kotlinx_io_core;
    }

    @Override // kotlinx.io.Source
    public long readLong() throws EOFException {
        Segment segment = this.head;
        if (segment == null) {
            throwEof(8L);
            throw new KotlinNothingValueException();
        }
        int size = segment.getSize();
        if (size < 8) {
            require(8L);
            if (size == 0) {
                recycleHead$kotlinx_io_core();
                return readLong();
            }
            return (((long) readInt()) << 32) | (((long) readInt()) & SteamID.ACCOUNT_ID_MASK);
        }
        long long$kotlinx_io_core = segment.readLong$kotlinx_io_core();
        this.sizeMut -= 8;
        if (size == 8) {
            recycleHead$kotlinx_io_core();
        }
        return long$kotlinx_io_core;
    }

    public final Void throwEof(long j) throws EOFException {
        throw new EOFException("Buffer doesn't contain required number of bytes (size: " + getSize() + ", required: " + j + ')');
    }

    public final void copyTo(Buffer out, long j, long j2) {
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkBounds(getSize(), j, j2);
        if (j == j2) {
            return;
        }
        long limit = j2 - j;
        out.sizeMut += limit;
        Segment next = this.head;
        while (true) {
            Intrinsics.checkNotNull(next);
            if (j < next.getLimit() - next.getPos()) {
                break;
            }
            j -= (long) (next.getLimit() - next.getPos());
            next = next.getNext();
        }
        while (limit > 0) {
            Intrinsics.checkNotNull(next);
            Segment segmentSharedCopy$kotlinx_io_core = next.sharedCopy$kotlinx_io_core();
            segmentSharedCopy$kotlinx_io_core.setPos(segmentSharedCopy$kotlinx_io_core.getPos() + ((int) j));
            segmentSharedCopy$kotlinx_io_core.setLimit(Math.min(segmentSharedCopy$kotlinx_io_core.getPos() + ((int) limit), segmentSharedCopy$kotlinx_io_core.getLimit()));
            if (out.getHead() == null) {
                out.setHead(segmentSharedCopy$kotlinx_io_core);
                out.setTail(segmentSharedCopy$kotlinx_io_core);
            } else {
                Segment tail = out.getTail();
                Intrinsics.checkNotNull(tail);
                out.setTail(tail.push$kotlinx_io_core(segmentSharedCopy$kotlinx_io_core));
            }
            limit -= (long) (segmentSharedCopy$kotlinx_io_core.getLimit() - segmentSharedCopy$kotlinx_io_core.getPos());
            next = next.getNext();
            j = 0;
        }
    }

    public final long completeSegmentByteCount$kotlinx_io_core() {
        long size = getSize();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.tail;
        Intrinsics.checkNotNull(segment);
        return (segment.getLimit() >= 8192 || !segment.owner) ? size : size - ((long) (segment.getLimit() - segment.getPos()));
    }

    public final byte get(long j) {
        long j2 = 0;
        if (j < 0 || j >= getSize()) {
            throw new IndexOutOfBoundsException("position (" + j + ") is not within the range [0..size(" + getSize() + "))");
        }
        if (j == 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            return segment.getUnchecked$kotlinx_io_core(0);
        }
        if (getHead() == null) {
            Intrinsics.checkNotNull(null);
            throw null;
        }
        if (getSize() - j < j) {
            Segment tail = getTail();
            long size = getSize();
            while (tail != null && size > j) {
                size -= (long) (tail.getLimit() - tail.getPos());
                if (size <= j) {
                    break;
                }
                tail = tail.getPrev();
            }
            Intrinsics.checkNotNull(tail);
            return tail.getUnchecked$kotlinx_io_core((int) (j - size));
        }
        Segment head = getHead();
        while (head != null) {
            long limit = ((long) (head.getLimit() - head.getPos())) + j2;
            if (limit > j) {
                break;
            }
            head = head.getNext();
            j2 = limit;
        }
        Intrinsics.checkNotNull(head);
        return head.getUnchecked$kotlinx_io_core((int) (j - j2));
    }

    public final void clear() throws EOFException {
        skip(getSize());
    }

    public void skip(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount (" + j + ") < 0").toString());
        }
        long j2 = j;
        while (j2 > 0) {
            Segment segment = this.head;
            if (segment != null) {
                int iMin = (int) Math.min(j2, segment.getLimit() - segment.getPos());
                long j3 = iMin;
                this.sizeMut -= j3;
                j2 -= j3;
                segment.setPos(segment.getPos() + iMin);
                if (segment.getPos() == segment.getLimit()) {
                    recycleHead$kotlinx_io_core();
                }
            } else {
                throw new EOFException("Buffer exhausted before skipping " + j + " bytes.");
            }
        }
    }

    @Override // kotlinx.io.Source
    public int readAtMostTo(byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkBounds(sink.length, i, i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i2 - i, segment.getSize());
        segment.readTo$kotlinx_io_core(sink, i, i + iMin);
        this.sizeMut -= (long) iMin;
        if (SegmentKt.isEmpty(segment)) {
            recycleHead$kotlinx_io_core();
        }
        return iMin;
    }

    @Override // kotlinx.io.RawSource
    public long readAtMostTo(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount (" + j + ") < 0").toString());
        }
        if (getSize() == 0) {
            return -1L;
        }
        if (j > getSize()) {
            j = getSize();
        }
        sink.write(this, j);
        return j;
    }

    @Override // kotlinx.io.Source
    public void readTo(RawSink sink, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount (" + j + ") < 0").toString());
        }
        if (getSize() < j) {
            sink.write(this, getSize());
            throw new EOFException("Buffer exhausted before writing " + j + " bytes. Only " + getSize() + " bytes were written.");
        }
        sink.write(this, j);
    }

    @Override // kotlinx.io.Source
    public long transferTo(RawSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = getSize();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @Override // kotlinx.io.Source
    public Source peek() {
        return CoreKt.buffered(new PeekSource(this));
    }

    public final /* synthetic */ Segment writableSegment(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException(("unexpected capacity (" + i + "), should be in range [1, 8192]").toString());
        }
        Segment segment = this.tail;
        if (segment == null) {
            Segment segmentTake = SegmentPool.take();
            this.head = segmentTake;
            this.tail = segmentTake;
            return segmentTake;
        }
        Intrinsics.checkNotNull(segment);
        if (segment.getLimit() + i <= 8192 && segment.owner) {
            return segment;
        }
        Segment segmentPush$kotlinx_io_core = segment.push$kotlinx_io_core(SegmentPool.take());
        this.tail = segmentPush$kotlinx_io_core;
        return segmentPush$kotlinx_io_core;
    }

    @Override // kotlinx.io.Sink
    public void write(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        _UtilKt.checkBounds(source.length, i, i2);
        int i3 = i;
        while (i3 < i2) {
            Segment segmentWritableSegment = writableSegment(1);
            int iMin = Math.min(i2 - i3, segmentWritableSegment.getRemainingCapacity()) + i3;
            segmentWritableSegment.write$kotlinx_io_core(source, i3, iMin);
            i3 = iMin;
        }
        this.sizeMut += (long) (i2 - i);
    }

    @Override // kotlinx.io.Sink
    public void write(RawSource source, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount (" + j + ") < 0").toString());
        }
        long j2 = j;
        while (j2 > 0) {
            long atMostTo = source.readAtMostTo(this, j2);
            if (atMostTo == -1) {
                throw new EOFException("Source exhausted before reading " + j + " bytes. Only " + (j - j2) + " were read.");
            }
            j2 -= atMostTo;
        }
    }

    @Override // kotlinx.io.RawSink
    public void write(Buffer source, long j) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (source == this) {
            throw new IllegalArgumentException("source == this");
        }
        _UtilKt.checkOffsetAndCount(source.sizeMut, 0L, j);
        while (j > 0) {
            Intrinsics.checkNotNull(source.head);
            if (j < r0.getSize()) {
                Segment segment = this.tail;
                if (segment != null && segment.owner) {
                    if ((((long) segment.getLimit()) + j) - ((long) (segment.getShared$kotlinx_io_core() ? 0 : segment.getPos())) <= 8192) {
                        Segment segment2 = source.head;
                        Intrinsics.checkNotNull(segment2);
                        segment2.writeTo$kotlinx_io_core(segment, (int) j);
                        source.sizeMut -= j;
                        this.sizeMut += j;
                        return;
                    }
                }
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                source.head = segment3.split$kotlinx_io_core((int) j);
            }
            Segment segment4 = source.head;
            Intrinsics.checkNotNull(segment4);
            long size = segment4.getSize();
            Segment segmentPop$kotlinx_io_core = segment4.pop$kotlinx_io_core();
            source.head = segmentPop$kotlinx_io_core;
            if (segmentPop$kotlinx_io_core == null) {
                source.tail = null;
            }
            if (getHead() == null) {
                setHead(segment4);
                setTail(segment4);
            } else {
                Segment tail = getTail();
                Intrinsics.checkNotNull(tail);
                setTail(tail.push$kotlinx_io_core(segment4).compact$kotlinx_io_core());
                Segment tail2 = getTail();
                Intrinsics.checkNotNull(tail2);
                if (tail2.getPrev() == null) {
                    setHead(getTail());
                }
            }
            source.sizeMut -= size;
            this.sizeMut += size;
            j -= size;
        }
    }

    @Override // kotlinx.io.Sink
    public long transferFrom(RawSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long atMostTo = source.readAtMostTo(this, 8192L);
            if (atMostTo == -1) {
                return j;
            }
            j += atMostTo;
        }
    }

    @Override // kotlinx.io.Sink
    public void writeByte(byte b) {
        writableSegment(1).writeByte$kotlinx_io_core(b);
        this.sizeMut++;
    }

    @Override // kotlinx.io.Sink
    public void writeShort(short s) {
        writableSegment(2).writeShort$kotlinx_io_core(s);
        this.sizeMut += 2;
    }

    @Override // kotlinx.io.Sink
    public void writeInt(int i) {
        writableSegment(4).writeInt$kotlinx_io_core(i);
        this.sizeMut += 4;
    }

    @Override // kotlinx.io.Sink
    public void writeLong(long j) {
        writableSegment(8).writeLong$kotlinx_io_core(j);
        this.sizeMut += 8;
    }

    public String toString() {
        if (getSize() == 0) {
            return "Buffer(size=0)";
        }
        long j = 64;
        int iMin = (int) Math.min(j, getSize());
        StringBuilder sb = new StringBuilder((iMin * 2) + (getSize() > j ? 1 : 0));
        UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
        int i = 0;
        for (Segment head = getHead(); head != null; head = head.getNext()) {
            SegmentReadContext segmentReadContext = UnsafeBufferOperationsKt.SegmentReadContextImpl;
            int i2 = 0;
            while (i < iMin && i2 < head.getSize()) {
                int i3 = i2 + 1;
                byte unchecked = segmentReadContext.getUnchecked(head, i2);
                i++;
                sb.append(_UtilKt.getHEX_DIGIT_CHARS()[(unchecked >> 4) & 15]);
                sb.append(_UtilKt.getHEX_DIGIT_CHARS()[unchecked & 15]);
                i2 = i3;
            }
        }
        if (getSize() > j) {
            sb.append((char) 8230);
        }
        return "Buffer(size=" + getSize() + " hex=" + ((Object) sb) + ')';
    }

    public final void recycleHead$kotlinx_io_core() {
        Segment segment = this.head;
        Intrinsics.checkNotNull(segment);
        Segment next = segment.getNext();
        this.head = next;
        if (next == null) {
            this.tail = null;
        } else {
            next.setPrev(null);
        }
        segment.setNext(null);
        SegmentPool.recycle(segment);
    }

    public final /* synthetic */ void recycleTail() {
        Segment segment = this.tail;
        Intrinsics.checkNotNull(segment);
        Segment prev = segment.getPrev();
        this.tail = prev;
        if (prev == null) {
            this.head = null;
        } else {
            prev.setNext(null);
        }
        segment.setPrev(null);
        SegmentPool.recycle(segment);
    }
}
