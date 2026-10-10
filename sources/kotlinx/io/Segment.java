package kotlinx.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Segment.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Segment {
    public static final Companion Companion = new Companion(null);
    public SegmentCopyTracker copyTracker;
    public final byte[] data;
    public int limit;
    public Segment next;
    public boolean owner;
    public int pos;
    public Segment prev;

    public /* synthetic */ Segment(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public /* synthetic */ Segment(byte[] bArr, int i, int i2, SegmentCopyTracker segmentCopyTracker, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr, i, i2, segmentCopyTracker, z);
    }

    public final /* synthetic */ void writeBackData(byte[] data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    public final /* synthetic */ int getPos() {
        return this.pos;
    }

    public final /* synthetic */ void setPos(int i) {
        this.pos = i;
    }

    public final /* synthetic */ int getLimit() {
        return this.limit;
    }

    public final /* synthetic */ void setLimit(int i) {
        this.limit = i;
    }

    public final boolean getShared$kotlinx_io_core() {
        SegmentCopyTracker segmentCopyTracker = this.copyTracker;
        if (segmentCopyTracker != null) {
            return segmentCopyTracker.getShared();
        }
        return false;
    }

    public final SegmentCopyTracker getCopyTracker$kotlinx_io_core() {
        return this.copyTracker;
    }

    public final /* synthetic */ Segment getNext() {
        return this.next;
    }

    public final /* synthetic */ void setNext(Segment segment) {
        this.next = segment;
    }

    public final /* synthetic */ Segment getPrev() {
        return this.prev;
    }

    public final /* synthetic */ void setPrev(Segment segment) {
        this.prev = segment;
    }

    public Segment() {
        this.data = new byte[Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE];
        this.owner = true;
        this.copyTracker = null;
    }

    public Segment(byte[] bArr, int i, int i2, SegmentCopyTracker segmentCopyTracker, boolean z) {
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.copyTracker = segmentCopyTracker;
        this.owner = z;
    }

    public final Segment sharedCopy$kotlinx_io_core() {
        SegmentCopyTracker segmentCopyTrackerTracker = this.copyTracker;
        if (segmentCopyTrackerTracker == null) {
            segmentCopyTrackerTracker = SegmentPool.tracker();
            this.copyTracker = segmentCopyTrackerTracker;
        }
        SegmentCopyTracker segmentCopyTracker = segmentCopyTrackerTracker;
        byte[] bArr = this.data;
        int i = this.pos;
        int i2 = this.limit;
        segmentCopyTracker.addCopy();
        Unit unit = Unit.INSTANCE;
        return new Segment(bArr, i, i2, segmentCopyTracker, false);
    }

    public final Segment pop$kotlinx_io_core() {
        Segment segment = this.next;
        Segment segment2 = this.prev;
        if (segment2 != null) {
            Intrinsics.checkNotNull(segment2);
            segment2.next = this.next;
        }
        Segment segment3 = this.next;
        if (segment3 != null) {
            Intrinsics.checkNotNull(segment3);
            segment3.prev = this.prev;
        }
        this.next = null;
        this.prev = null;
        return segment;
    }

    public final Segment push$kotlinx_io_core(Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        if (segment2 != null) {
            Intrinsics.checkNotNull(segment2);
            segment2.prev = segment;
        }
        this.next = segment;
        return segment;
    }

    public final Segment split$kotlinx_io_core(int i) {
        Segment segmentTake;
        if (i <= 0 || i > this.limit - this.pos) {
            throw new IllegalArgumentException("byteCount out of range");
        }
        if (i >= 1024) {
            segmentTake = sharedCopy$kotlinx_io_core();
        } else {
            segmentTake = SegmentPool.take();
            byte[] bArr = this.data;
            byte[] bArr2 = segmentTake.data;
            int i2 = this.pos;
            ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, i2, i2 + i, 2, (Object) null);
        }
        segmentTake.limit = segmentTake.pos + i;
        this.pos += i;
        Segment segment = this.prev;
        if (segment != null) {
            Intrinsics.checkNotNull(segment);
            segment.push$kotlinx_io_core(segmentTake);
        } else {
            segmentTake.next = this;
            this.prev = segmentTake;
        }
        return segmentTake;
    }

    public final Segment compact$kotlinx_io_core() {
        int i;
        Segment segment = this.prev;
        if (segment == null) {
            throw new IllegalStateException("cannot compact");
        }
        Intrinsics.checkNotNull(segment);
        if (!segment.owner) {
            return this;
        }
        int i2 = this.limit - this.pos;
        Segment segment2 = this.prev;
        Intrinsics.checkNotNull(segment2);
        int i3 = 8192 - segment2.limit;
        Segment segment3 = this.prev;
        Intrinsics.checkNotNull(segment3);
        if (segment3.getShared$kotlinx_io_core()) {
            i = 0;
        } else {
            Segment segment4 = this.prev;
            Intrinsics.checkNotNull(segment4);
            i = segment4.pos;
        }
        if (i2 > i3 + i) {
            return this;
        }
        Segment segment5 = this.prev;
        Intrinsics.checkNotNull(segment5);
        writeTo$kotlinx_io_core(segment5, i2);
        if (pop$kotlinx_io_core() != null) {
            throw new IllegalStateException("Check failed.");
        }
        SegmentPool.recycle(this);
        return segment5;
    }

    public final void writeByte$kotlinx_io_core(byte b) {
        byte[] bArr = this.data;
        int i = this.limit;
        this.limit = i + 1;
        bArr[i] = b;
    }

    public final void writeShort$kotlinx_io_core(short s) {
        byte[] bArr = this.data;
        int i = this.limit;
        bArr[i] = (byte) ((s >>> 8) & 255);
        bArr[i + 1] = (byte) (s & 255);
        this.limit = i + 2;
    }

    public final void writeInt$kotlinx_io_core(int i) {
        byte[] bArr = this.data;
        int i2 = this.limit;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        this.limit = i2 + 4;
    }

    public final void writeLong$kotlinx_io_core(long j) {
        byte[] bArr = this.data;
        int i = this.limit;
        bArr[i] = (byte) ((j >>> 56) & 255);
        bArr[i + 1] = (byte) ((j >>> 48) & 255);
        bArr[i + 2] = (byte) ((j >>> 40) & 255);
        bArr[i + 3] = (byte) ((j >>> 32) & 255);
        bArr[i + 4] = (byte) ((j >>> 24) & 255);
        bArr[i + 5] = (byte) ((j >>> 16) & 255);
        bArr[i + 6] = (byte) ((j >>> 8) & 255);
        bArr[i + 7] = (byte) (j & 255);
        this.limit = i + 8;
    }

    public final byte readByte$kotlinx_io_core() {
        byte[] bArr = this.data;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    public final short readShort$kotlinx_io_core() {
        byte[] bArr = this.data;
        int i = this.pos;
        int i2 = (bArr[i] & 255) << 8;
        short s = (short) ((bArr[i + 1] & 255) | i2);
        this.pos = i + 2;
        return s;
    }

    public final int readInt$kotlinx_io_core() {
        byte[] bArr = this.data;
        int i = this.pos;
        int i2 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24);
        int i3 = i2 | ((bArr[i + 2] & 255) << 8);
        int i4 = (bArr[i + 3] & 255) | i3;
        this.pos = i + 4;
        return i4;
    }

    public final long readLong$kotlinx_io_core() {
        byte[] bArr = this.data;
        int i = this.pos;
        long j = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
        long j2 = j | (((long) bArr[i + 7]) & 255);
        this.pos = i + 8;
        return j2;
    }

    public final void writeTo$kotlinx_io_core(Segment sink, int i) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!sink.owner) {
            throw new IllegalStateException("only owner can write");
        }
        if (sink.limit + i > 8192) {
            if (sink.getShared$kotlinx_io_core()) {
                throw new IllegalArgumentException();
            }
            int i2 = sink.limit;
            int i3 = sink.pos;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sink.data;
            ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr, 0, i3, i2, 2, (Object) null);
            sink.limit -= sink.pos;
            sink.pos = 0;
        }
        byte[] bArr2 = this.data;
        byte[] bArr3 = sink.data;
        int i4 = sink.limit;
        int i5 = this.pos;
        ArraysKt___ArraysJvmKt.copyInto(bArr2, bArr3, i4, i5, i5 + i);
        sink.limit += i;
        this.pos += i;
    }

    public final void readTo$kotlinx_io_core(byte[] dst, int i, int i2) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        int i3 = i2 - i;
        byte[] bArr = this.data;
        int i4 = this.pos;
        ArraysKt___ArraysJvmKt.copyInto(bArr, dst, i, i4, i4 + i3);
        this.pos += i3;
    }

    public final void write$kotlinx_io_core(byte[] src, int i, int i2) {
        Intrinsics.checkNotNullParameter(src, "src");
        ArraysKt___ArraysJvmKt.copyInto(src, this.data, this.limit, i, i2);
        this.limit += i2 - i;
    }

    public final int getSize() {
        return this.limit - this.pos;
    }

    public final int getRemainingCapacity() {
        return this.data.length - this.limit;
    }

    public final /* synthetic */ byte[] dataAsByteArray(boolean z) {
        return this.data;
    }

    public final byte getUnchecked$kotlinx_io_core(int i) {
        return this.data[this.pos + i];
    }

    public final void setUnchecked$kotlinx_io_core(int i, byte b) {
        this.data[this.limit + i] = b;
    }

    public final void setUnchecked$kotlinx_io_core(int i, byte b, byte b2) {
        byte[] bArr = this.data;
        int i2 = this.limit + i;
        bArr[i2] = b;
        bArr[i2 + 1] = b2;
    }

    public final void setUnchecked$kotlinx_io_core(int i, byte b, byte b2, byte b3) {
        byte[] bArr = this.data;
        int i2 = this.limit + i;
        bArr[i2] = b;
        bArr[i2 + 1] = b2;
        bArr[i2 + 2] = b3;
    }

    public final void setUnchecked$kotlinx_io_core(int i, byte b, byte b2, byte b3, byte b4) {
        byte[] bArr = this.data;
        int i2 = this.limit + i;
        bArr[i2] = b;
        bArr[i2 + 1] = b2;
        bArr[i2 + 2] = b3;
        bArr[i2 + 3] = b4;
    }

    /* JADX INFO: compiled from: Segment.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final /* synthetic */ Segment new$kotlinx_io_core() {
            return new Segment(null);
        }

        public final /* synthetic */ Segment new$kotlinx_io_core(byte[] data, int i, int i2, SegmentCopyTracker segmentCopyTracker, boolean z) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new Segment(data, i, i2, segmentCopyTracker, z, null);
        }
    }
}
