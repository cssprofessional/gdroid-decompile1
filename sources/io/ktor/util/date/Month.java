package io.ktor.util.date;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Date.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Month {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Month[] $VALUES;
    public static final Companion Companion;
    private final String value;
    public static final Month JANUARY = new Month("JANUARY", 0, "Jan");
    public static final Month FEBRUARY = new Month("FEBRUARY", 1, "Feb");
    public static final Month MARCH = new Month("MARCH", 2, "Mar");
    public static final Month APRIL = new Month("APRIL", 3, "Apr");
    public static final Month MAY = new Month("MAY", 4, "May");
    public static final Month JUNE = new Month("JUNE", 5, "Jun");
    public static final Month JULY = new Month("JULY", 6, "Jul");
    public static final Month AUGUST = new Month("AUGUST", 7, "Aug");
    public static final Month SEPTEMBER = new Month("SEPTEMBER", 8, "Sep");
    public static final Month OCTOBER = new Month("OCTOBER", 9, "Oct");
    public static final Month NOVEMBER = new Month("NOVEMBER", 10, "Nov");
    public static final Month DECEMBER = new Month("DECEMBER", 11, "Dec");

    private static final /* synthetic */ Month[] $values() {
        return new Month[]{JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER};
    }

    public static EnumEntries<Month> getEntries() {
        return $ENTRIES;
    }

    public static Month valueOf(String str) {
        return (Month) Enum.valueOf(Month.class, str);
    }

    public static Month[] values() {
        return (Month[]) $VALUES.clone();
    }

    private Month(String str, int i, String str2) {
        this.value = str2;
    }

    public final String getValue() {
        return this.value;
    }

    static {
        Month[] monthArr$values = $values();
        $VALUES = monthArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(monthArr$values);
        Companion = new Companion(null);
    }

    /* JADX INFO: compiled from: Date.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final Month from(int i) {
            return Month.getEntries().get(i);
        }
    }
}
