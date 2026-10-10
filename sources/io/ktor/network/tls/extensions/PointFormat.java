package io.ktor.network.tls.extensions;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PointFormat.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PointFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PointFormat[] $VALUES;
    private final byte code;
    public static final PointFormat UNCOMPRESSED = new PointFormat("UNCOMPRESSED", 0, (byte) 0);
    public static final PointFormat ANSIX962_COMPRESSED_PRIME = new PointFormat("ANSIX962_COMPRESSED_PRIME", 1, (byte) 1);
    public static final PointFormat ANSIX962_COMPRESSED_CHAR2 = new PointFormat("ANSIX962_COMPRESSED_CHAR2", 2, (byte) 2);

    private static final /* synthetic */ PointFormat[] $values() {
        return new PointFormat[]{UNCOMPRESSED, ANSIX962_COMPRESSED_PRIME, ANSIX962_COMPRESSED_CHAR2};
    }

    public static EnumEntries<PointFormat> getEntries() {
        return $ENTRIES;
    }

    public static PointFormat valueOf(String str) {
        return (PointFormat) Enum.valueOf(PointFormat.class, str);
    }

    public static PointFormat[] values() {
        return (PointFormat[]) $VALUES.clone();
    }

    private PointFormat(String str, int i, byte b) {
        this.code = b;
    }

    public final byte getCode() {
        return this.code;
    }

    static {
        PointFormat[] pointFormatArr$values = $values();
        $VALUES = pointFormatArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pointFormatArr$values);
    }
}
