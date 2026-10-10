package okhttp3.internal.idn;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;

/* JADX INFO: compiled from: IdnaMappingTable.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class IdnaMappingTable {
    public final String mappings;
    public final String ranges;
    public final String sections;

    public IdnaMappingTable(String sections, String ranges, String mappings) {
        Intrinsics.checkNotNullParameter(sections, "sections");
        Intrinsics.checkNotNullParameter(ranges, "ranges");
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        this.sections = sections;
        this.ranges = ranges;
        this.mappings = mappings;
    }

    public final boolean map(int i, BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int iFindSectionsIndex = findSectionsIndex(i);
        int iFindRangesOffset = findRangesOffset(i, IdnaMappingTableKt.read14BitInt(this.sections, iFindSectionsIndex + 2), iFindSectionsIndex + 4 < this.sections.length() ? IdnaMappingTableKt.read14BitInt(this.sections, iFindSectionsIndex + 6) : this.ranges.length() / 4);
        char cCharAt = this.ranges.charAt(iFindRangesOffset + 1);
        if (cCharAt >= 0 && cCharAt < '@') {
            int i2 = IdnaMappingTableKt.read14BitInt(this.ranges, iFindRangesOffset + 2);
            sink.writeUtf8(this.mappings, i2, cCharAt + i2);
        } else if ('@' <= cCharAt && cCharAt < 'P') {
            sink.writeUtf8CodePoint(i - (this.ranges.charAt(iFindRangesOffset + 3) | (((cCharAt & 15) << 14) | (this.ranges.charAt(iFindRangesOffset + 2) << 7))));
        } else if ('P' <= cCharAt && cCharAt < '`') {
            sink.writeUtf8CodePoint(i + (this.ranges.charAt(iFindRangesOffset + 3) | ((cCharAt & 15) << 14) | (this.ranges.charAt(iFindRangesOffset + 2) << 7)));
        } else if (cCharAt == 'w') {
            Unit unit = Unit.INSTANCE;
        } else if (cCharAt == 'x') {
            sink.writeUtf8CodePoint(i);
        } else {
            if (cCharAt == 'y') {
                sink.writeUtf8CodePoint(i);
                return false;
            }
            if (cCharAt == 'z') {
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2));
            } else if (cCharAt == '{') {
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2) | 128);
            } else if (cCharAt == '|') {
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2));
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3));
            } else if (cCharAt == '}') {
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2) | 128);
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3));
            } else if (cCharAt == '~') {
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2));
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3) | 128);
            } else if (cCharAt == 127) {
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2) | 128);
                sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3) | 128);
            } else {
                throw new IllegalStateException(("unexpected rangesIndex for " + i).toString());
            }
        }
        return true;
    }

    public final int findSectionsIndex(int i) {
        int i2;
        int i3 = (i & 2097024) >> 7;
        int length = (this.sections.length() / 4) - 1;
        int i4 = 0;
        while (true) {
            if (i4 > length) {
                i2 = (-i4) - 1;
                break;
            }
            i2 = (i4 + length) / 2;
            int iCompare = Intrinsics.compare(i3, IdnaMappingTableKt.read14BitInt(this.sections, i2 * 4));
            if (iCompare >= 0) {
                if (iCompare <= 0) {
                    break;
                }
                i4 = i2 + 1;
            } else {
                length = i2 - 1;
            }
        }
        return i2 >= 0 ? i2 * 4 : ((-i2) - 2) * 4;
    }

    public final int findRangesOffset(int i, int i2, int i3) {
        int i4;
        int i5 = i & 127;
        int i6 = i3 - 1;
        while (true) {
            if (i2 > i6) {
                i4 = (-i2) - 1;
                break;
            }
            i4 = (i2 + i6) / 2;
            int iCompare = Intrinsics.compare(i5, (int) this.ranges.charAt(i4 * 4));
            if (iCompare >= 0) {
                if (iCompare <= 0) {
                    break;
                }
                i2 = i4 + 1;
            } else {
                i6 = i4 - 1;
            }
        }
        return i4 >= 0 ? i4 * 4 : ((-i4) - 2) * 4;
    }
}
