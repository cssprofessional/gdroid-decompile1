package io.ktor.util.date;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.EnumsKt;

/* JADX INFO: compiled from: Date.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GMTDate implements Comparable<GMTDate> {
    public static final Lazy<KSerializer<Object>>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    public static final GMTDate START;
    public final int dayOfMonth;
    public final WeekDay dayOfWeek;
    public final int dayOfYear;
    public final int hours;
    public final int minutes;
    public final Month month;
    public final int seconds;
    public final long timestamp;
    public final int year;

    public static final /* synthetic */ KSerializer _childSerializers$_anonymous_() {
        return EnumsKt.createSimpleEnumSerializer("io.ktor.util.date.WeekDay", WeekDay.values());
    }

    public static final /* synthetic */ KSerializer _childSerializers$_anonymous_$0() {
        return EnumsKt.createSimpleEnumSerializer("io.ktor.util.date.Month", Month.values());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GMTDate)) {
            return false;
        }
        GMTDate gMTDate = (GMTDate) obj;
        return this.seconds == gMTDate.seconds && this.minutes == gMTDate.minutes && this.hours == gMTDate.hours && this.dayOfWeek == gMTDate.dayOfWeek && this.dayOfMonth == gMTDate.dayOfMonth && this.dayOfYear == gMTDate.dayOfYear && this.month == gMTDate.month && this.year == gMTDate.year && this.timestamp == gMTDate.timestamp;
    }

    public int hashCode() {
        return (((((((((((((((Integer.hashCode(this.seconds) * 31) + Integer.hashCode(this.minutes)) * 31) + Integer.hashCode(this.hours)) * 31) + this.dayOfWeek.hashCode()) * 31) + Integer.hashCode(this.dayOfMonth)) * 31) + Integer.hashCode(this.dayOfYear)) * 31) + this.month.hashCode()) * 31) + Integer.hashCode(this.year)) * 31) + Long.hashCode(this.timestamp);
    }

    public String toString() {
        return "GMTDate(seconds=" + this.seconds + ", minutes=" + this.minutes + ", hours=" + this.hours + ", dayOfWeek=" + this.dayOfWeek + ", dayOfMonth=" + this.dayOfMonth + ", dayOfYear=" + this.dayOfYear + ", month=" + this.month + ", year=" + this.year + ", timestamp=" + this.timestamp + ')';
    }

    public GMTDate(int i, int i2, int i3, WeekDay dayOfWeek, int i4, int i5, Month month, int i6, long j) {
        Intrinsics.checkNotNullParameter(dayOfWeek, "dayOfWeek");
        Intrinsics.checkNotNullParameter(month, "month");
        this.seconds = i;
        this.minutes = i2;
        this.hours = i3;
        this.dayOfWeek = dayOfWeek;
        this.dayOfMonth = i4;
        this.dayOfYear = i5;
        this.month = month;
        this.year = i6;
        this.timestamp = j;
    }

    @Override // java.lang.Comparable
    public int compareTo(GMTDate other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(this.timestamp, other.timestamp);
    }

    /* JADX INFO: compiled from: Date.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final KSerializer<GMTDate> serializer() {
            return GMTDate$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, null, LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: io.ktor.util.date.GMTDate$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GMTDate._childSerializers$_anonymous_();
            }
        }), null, null, LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: io.ktor.util.date.GMTDate$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GMTDate._childSerializers$_anonymous_$0();
            }
        }), null, null};
        START = DateJvmKt.GMTDate(0L);
    }
}
