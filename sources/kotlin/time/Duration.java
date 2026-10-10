package kotlin.time;

import com.google.protobuf.DescriptorProtos;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Duration implements Comparable<Duration> {
    public final long rawValue;
    public static final Companion Companion = new Companion(null);
    public static final long ZERO = m8231constructorimpl(0);
    public static final long INFINITE = DurationKt.durationOfMillis(4611686018427387903L);
    public static final long NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8232equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m8255unboximpl();
    }

    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    public static final long m8244getValueimpl(long j) {
        return j >> 1;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8245hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isInMillis-impl, reason: not valid java name */
    public static final boolean m8247isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* JADX INFO: renamed from: isInNanos-impl, reason: not valid java name */
    public static final boolean m8248isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* JADX INFO: renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m8250isNegativeimpl(long j) {
        return j < 0;
    }

    public boolean equals(Object obj) {
        return m8232equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m8245hashCodeimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m8255unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m8254compareToLRDsOJo(duration.m8255unboximpl());
    }

    /* JADX INFO: renamed from: getStorageUnit-impl, reason: not valid java name */
    public static final DurationUnit m8243getStorageUnitimpl(long j) {
        return m8248isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m8231constructorimpl(long j) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m8248isInNanosimpl(j)) {
                long jM8244getValueimpl = m8244getValueimpl(j);
                if (-4611686018426999999L > jM8244getValueimpl || jM8244getValueimpl >= 4611686018427000000L) {
                    throw new AssertionError(m8244getValueimpl(j) + " ns is out of nanoseconds range");
                }
            } else {
                long jM8244getValueimpl2 = m8244getValueimpl(j);
                if (-4611686018427387903L > jM8244getValueimpl2 || jM8244getValueimpl2 >= 4611686018427387904L) {
                    throw new AssertionError(m8244getValueimpl(j) + " ms is out of milliseconds range");
                }
                long jM8244getValueimpl3 = m8244getValueimpl(j);
                if (-4611686018426L <= jM8244getValueimpl3 && jM8244getValueimpl3 < 4611686018427L) {
                    throw new AssertionError(m8244getValueimpl(j) + " ms is denormalized");
                }
            }
        }
        return j;
    }

    /* JADX INFO: compiled from: Duration.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX INFO: renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m8253unaryMinusUwyO8pc(long j) {
        return DurationKt.durationOf(-m8244getValueimpl(j), ((int) j) & 1);
    }

    /* JADX INFO: renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m8249isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* JADX INFO: renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m8246isFiniteimpl(long j) {
        return !m8249isInfiniteimpl(j);
    }

    /* JADX INFO: renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m8233getAbsoluteValueUwyO8pc(long j) {
        return m8250isNegativeimpl(j) ? m8253unaryMinusUwyO8pc(j) : j;
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m8254compareToLRDsOJo(long j) {
        return m8230compareToLRDsOJo(this.rawValue, j);
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m8230compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m8250isNegativeimpl(j) ? -i : i;
    }

    /* JADX INFO: renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m8234getHoursComponentimpl(long j) {
        if (m8249isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m8236getInWholeHoursimpl(j) % ((long) 24));
    }

    /* JADX INFO: renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m8240getMinutesComponentimpl(long j) {
        if (m8249isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m8238getInWholeMinutesimpl(j) % ((long) 60));
    }

    /* JADX INFO: renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m8242getSecondsComponentimpl(long j) {
        if (m8249isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m8239getInWholeSecondsimpl(j) % ((long) 60));
    }

    /* JADX INFO: renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m8241getNanosecondsComponentimpl(long j) {
        long jM8244getValueimpl;
        if (m8249isInfiniteimpl(j)) {
            return 0;
        }
        if (m8247isInMillisimpl(j)) {
            jM8244getValueimpl = DurationKt.millisToNanos(m8244getValueimpl(j) % ((long) DescriptorProtos.Edition.EDITION_2023_VALUE));
        } else {
            jM8244getValueimpl = m8244getValueimpl(j) % ((long) 1000000000);
        }
        return (int) jM8244getValueimpl;
    }

    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    public static final long m8251toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Util.VLI_MAX;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m8244getValueimpl(j), m8243getStorageUnitimpl(j), unit);
    }

    /* JADX INFO: renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m8235getInWholeDaysimpl(long j) {
        return m8251toLongimpl(j, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m8236getInWholeHoursimpl(long j) {
        return m8251toLongimpl(j, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m8238getInWholeMinutesimpl(long j) {
        return m8251toLongimpl(j, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m8239getInWholeSecondsimpl(long j) {
        return m8251toLongimpl(j, DurationUnit.SECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m8237getInWholeMillisecondsimpl(long j) {
        return (m8247isInMillisimpl(j) && m8246isFiniteimpl(j)) ? m8244getValueimpl(j) : m8251toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    public String toString() {
        return m8252toStringimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8252toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM8250isNegativeimpl = m8250isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM8250isNegativeimpl) {
            sb.append('-');
        }
        long jM8233getAbsoluteValueUwyO8pc = m8233getAbsoluteValueUwyO8pc(j);
        long jM8235getInWholeDaysimpl = m8235getInWholeDaysimpl(jM8233getAbsoluteValueUwyO8pc);
        int iM8234getHoursComponentimpl = m8234getHoursComponentimpl(jM8233getAbsoluteValueUwyO8pc);
        int iM8240getMinutesComponentimpl = m8240getMinutesComponentimpl(jM8233getAbsoluteValueUwyO8pc);
        int iM8242getSecondsComponentimpl = m8242getSecondsComponentimpl(jM8233getAbsoluteValueUwyO8pc);
        int iM8241getNanosecondsComponentimpl = m8241getNanosecondsComponentimpl(jM8233getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM8235getInWholeDaysimpl != 0;
        boolean z2 = iM8234getHoursComponentimpl != 0;
        boolean z3 = iM8240getMinutesComponentimpl != 0;
        boolean z4 = (iM8242getSecondsComponentimpl == 0 && iM8241getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM8235getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM8234getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM8240getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iM8242getSecondsComponentimpl != 0 || z || z2 || z3) {
                m8229appendFractionalimpl(j, sb, iM8242getSecondsComponentimpl, iM8241getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM8241getNanosecondsComponentimpl >= 1000000) {
                m8229appendFractionalimpl(j, sb, iM8241getNanosecondsComponentimpl / 1000000, iM8241getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (iM8241getNanosecondsComponentimpl >= 1000) {
                m8229appendFractionalimpl(j, sb, iM8241getNanosecondsComponentimpl / DescriptorProtos.Edition.EDITION_2023_VALUE, iM8241getNanosecondsComponentimpl % DescriptorProtos.Edition.EDITION_2023_VALUE, 3, "us", false);
            } else {
                sb.append(iM8241getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (zM8250isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: appendFractional-impl, reason: not valid java name */
    public static final void m8229appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strPadStart = StringsKt__StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strPadStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strPadStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) strPadStart, 0, i6);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) strPadStart, 0, ((i4 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }
}
