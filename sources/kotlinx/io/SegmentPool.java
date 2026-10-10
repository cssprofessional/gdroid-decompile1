package kotlinx.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.utils.io.pool.DefaultPool$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: compiled from: SegmentPool.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SegmentPool {
    public static final String DEFAULT_SECOND_LEVEL_POOL_TOTAL_SIZE;
    public static final int HASH_BUCKET_COUNT;
    public static final int HASH_BUCKET_COUNT_L2;
    public static final int SECOND_LEVEL_POOL_BUCKET_SIZE;
    public static final int SECOND_LEVEL_POOL_TOTAL_SIZE;
    public static final AtomicReferenceArray<Segment> hashBuckets;
    public static final AtomicReferenceArray<Segment> hashBucketsL2;
    public static final SegmentPool INSTANCE = new SegmentPool();
    public static final int MAX_SIZE = Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
    public static final Segment LOCK = Segment.Companion.new$kotlinx_io_core(new byte[0], 0, 0, null, false);

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        HASH_BUCKET_COUNT = iHighestOneBit;
        int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(iHighestOneBit / 2, 1);
        HASH_BUCKET_COUNT_L2 = iCoerceAtLeast;
        String str = Intrinsics.areEqual(System.getProperty("java.vm.name"), "Dalvik") ? "0" : "4194304";
        DEFAULT_SECOND_LEVEL_POOL_TOTAL_SIZE = str;
        String property = System.getProperty("kotlinx.io.pool.size.bytes", str);
        Intrinsics.checkNotNullExpressionValue(property, "getProperty(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(property);
        int iCoerceAtLeast2 = intOrNull != null ? RangesKt___RangesKt.coerceAtLeast(intOrNull.intValue(), 0) : 0;
        SECOND_LEVEL_POOL_TOTAL_SIZE = iCoerceAtLeast2;
        SECOND_LEVEL_POOL_BUCKET_SIZE = RangesKt___RangesKt.coerceAtLeast(iCoerceAtLeast2 / iCoerceAtLeast, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);
        hashBuckets = new AtomicReferenceArray<>(iHighestOneBit);
        hashBucketsL2 = new AtomicReferenceArray<>(iCoerceAtLeast);
    }

    public static final Segment take() {
        Segment segment;
        Segment andSet;
        AtomicReferenceArray<Segment> atomicReferenceArray = hashBuckets;
        int iL1BucketId = INSTANCE.l1BucketId();
        do {
            segment = LOCK;
            andSet = atomicReferenceArray.getAndSet(iL1BucketId, segment);
        } while (Intrinsics.areEqual(andSet, segment));
        if (andSet == null) {
            atomicReferenceArray.set(iL1BucketId, null);
            if (SECOND_LEVEL_POOL_TOTAL_SIZE > 0) {
                return takeL2();
            }
            return Segment.Companion.new$kotlinx_io_core();
        }
        atomicReferenceArray.set(iL1BucketId, andSet.getNext());
        andSet.setNext(null);
        andSet.setLimit(0);
        return andSet;
    }

    public static final Segment takeL2() {
        AtomicReferenceArray<Segment> atomicReferenceArray = hashBucketsL2;
        int iL2BucketId = INSTANCE.l2BucketId();
        int i = 0;
        while (true) {
            Segment segment = LOCK;
            Segment andSet = atomicReferenceArray.getAndSet(iL2BucketId, segment);
            if (!Intrinsics.areEqual(andSet, segment)) {
                if (andSet == null) {
                    atomicReferenceArray.set(iL2BucketId, null);
                    int i2 = HASH_BUCKET_COUNT_L2;
                    if (i >= i2) {
                        return Segment.Companion.new$kotlinx_io_core();
                    }
                    iL2BucketId = (iL2BucketId + 1) & (i2 - 1);
                    i++;
                } else {
                    atomicReferenceArray.set(iL2BucketId, andSet.getNext());
                    andSet.setNext(null);
                    andSet.setLimit(0);
                    return andSet;
                }
            }
        }
    }

    public static final void recycle(Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (segment.getNext() != null || segment.getPrev() != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        SegmentCopyTracker copyTracker$kotlinx_io_core = segment.getCopyTracker$kotlinx_io_core();
        if (copyTracker$kotlinx_io_core != null && copyTracker$kotlinx_io_core.removeCopy()) {
            return;
        }
        AtomicReferenceArray<Segment> atomicReferenceArray = hashBuckets;
        int iL1BucketId = INSTANCE.l1BucketId();
        segment.setPos(0);
        segment.owner = true;
        while (true) {
            Segment segment2 = atomicReferenceArray.get(iL1BucketId);
            if (segment2 != LOCK) {
                int limit = segment2 != null ? segment2.getLimit() : 0;
                if (limit >= MAX_SIZE) {
                    if (SECOND_LEVEL_POOL_TOTAL_SIZE > 0) {
                        recycleL2(segment);
                        return;
                    }
                    return;
                } else {
                    segment.setNext(segment2);
                    segment.setLimit(limit + Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);
                    if (DefaultPool$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceArray, iL1BucketId, segment2, segment)) {
                        return;
                    }
                }
            }
        }
    }

    public static final void recycleL2(Segment segment) {
        segment.setPos(0);
        segment.owner = true;
        int iL2BucketId = INSTANCE.l2BucketId();
        AtomicReferenceArray<Segment> atomicReferenceArray = hashBucketsL2;
        int i = 0;
        while (true) {
            Segment segment2 = atomicReferenceArray.get(iL2BucketId);
            if (segment2 != LOCK) {
                int limit = (segment2 != null ? segment2.getLimit() : 0) + Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                if (limit > SECOND_LEVEL_POOL_BUCKET_SIZE) {
                    int i2 = HASH_BUCKET_COUNT_L2;
                    if (i >= i2) {
                        return;
                    }
                    i++;
                    iL2BucketId = (iL2BucketId + 1) & (i2 - 1);
                } else {
                    segment.setNext(segment2);
                    segment.setLimit(limit);
                    if (DefaultPool$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceArray, iL2BucketId, segment2, segment)) {
                        return;
                    }
                }
            }
        }
    }

    public static final SegmentCopyTracker tracker() {
        return new RefCountingCopyTracker();
    }

    public final int l1BucketId() {
        return bucketId(((long) HASH_BUCKET_COUNT) - 1);
    }

    public final int l2BucketId() {
        return bucketId(((long) HASH_BUCKET_COUNT_L2) - 1);
    }

    public final int bucketId(long j) {
        return (int) (Thread.currentThread().getId() & j);
    }
}
