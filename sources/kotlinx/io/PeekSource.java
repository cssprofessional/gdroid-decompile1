package kotlinx.io;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PeekSource.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class PeekSource implements RawSource {
    public final Buffer buffer;
    public boolean closed;
    public int expectedPos;
    public Segment expectedSegment;
    public long pos;
    public final Source upstream;

    public PeekSource(Source upstream) {
        Intrinsics.checkNotNullParameter(upstream, "upstream");
        this.upstream = upstream;
        Buffer buffer = upstream.getBuffer();
        this.buffer = buffer;
        this.expectedSegment = buffer.getHead();
        Segment head = buffer.getHead();
        this.expectedPos = head != null ? head.getPos() : -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
    
        if (r3 == r4.getPos()) goto L15;
     */
    @Override // kotlinx.io.RawSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long readAtMostTo(kotlinx.io.Buffer r7, long r8) {
        /*
            r6 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            boolean r0 = r6.closed
            if (r0 != 0) goto La8
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 < 0) goto L88
            kotlinx.io.Segment r3 = r6.expectedSegment
            if (r3 == 0) goto L35
            kotlinx.io.Buffer r4 = r6.buffer
            kotlinx.io.Segment r4 = r4.getHead()
            if (r3 != r4) goto L2d
            int r3 = r6.expectedPos
            kotlinx.io.Buffer r4 = r6.buffer
            kotlinx.io.Segment r4 = r4.getHead()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            int r4 = r4.getPos()
            if (r3 != r4) goto L2d
            goto L35
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Peek source is invalid because upstream source was used"
            r6.<init>(r7)
            throw r6
        L35:
            if (r2 != 0) goto L38
            return r0
        L38:
            kotlinx.io.Source r0 = r6.upstream
            long r1 = r6.pos
            r3 = 1
            long r1 = r1 + r3
            boolean r0 = r0.request(r1)
            if (r0 != 0) goto L48
            r6 = -1
            return r6
        L48:
            kotlinx.io.Segment r0 = r6.expectedSegment
            if (r0 != 0) goto L6b
            kotlinx.io.Buffer r0 = r6.buffer
            kotlinx.io.Segment r0 = r0.getHead()
            if (r0 == 0) goto L6b
            kotlinx.io.Buffer r0 = r6.buffer
            kotlinx.io.Segment r0 = r0.getHead()
            r6.expectedSegment = r0
            kotlinx.io.Buffer r0 = r6.buffer
            kotlinx.io.Segment r0 = r0.getHead()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r0 = r0.getPos()
            r6.expectedPos = r0
        L6b:
            kotlinx.io.Buffer r0 = r6.buffer
            long r0 = r0.getSize()
            long r2 = r6.pos
            long r0 = r0 - r2
            long r8 = java.lang.Math.min(r8, r0)
            kotlinx.io.Buffer r0 = r6.buffer
            long r2 = r6.pos
            long r4 = r2 + r8
            r1 = r7
            r0.copyTo(r1, r2, r4)
            long r0 = r6.pos
            long r0 = r0 + r8
            r6.pos = r0
            return r8
        L88:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "byteCount ("
            r6.append(r7)
            r6.append(r8)
            java.lang.String r7 = ") < 0"
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r6 = r6.toString()
            r7.<init>(r6)
            throw r7
        La8:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Source is closed."
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.io.PeekSource.readAtMostTo(kotlinx.io.Buffer, long):long");
    }

    @Override // kotlinx.io.RawSource, java.lang.AutoCloseable, kotlinx.io.RawSink
    public void close() {
        this.closed = true;
    }
}
