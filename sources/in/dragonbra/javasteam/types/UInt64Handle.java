package in.dragonbra.javasteam.types;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PubFile.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class UInt64Handle {
    private long value;

    public /* synthetic */ UInt64Handle(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    /* JADX INFO: renamed from: getValue-s-VKNKU, reason: not valid java name */
    public long m8079getValuesVKNKU() {
        return this.value;
    }

    /* JADX INFO: renamed from: setValue-VKZWuLQ, reason: not valid java name */
    public void m8080setValueVKZWuLQ(long j) {
        this.value = j;
    }

    public UInt64Handle() {
    }

    private UInt64Handle(long j) {
        m8080setValueVKZWuLQ(j);
    }

    public int hashCode() {
        return ULong.m8191hashCodeimpl(m8079getValuesVKNKU());
    }

    public boolean equals(Object obj) {
        return (obj instanceof UInt64Handle) && ((UInt64Handle) obj).m8079getValuesVKNKU() == m8079getValuesVKNKU();
    }

    public String toString() {
        return Long.toUnsignedString(m8079getValuesVKNKU());
    }

    public final long toLong() {
        return m8079getValuesVKNKU();
    }

    public final boolean equals(UInt64Handle uInt64Handle) {
        return uInt64Handle != null && m8079getValuesVKNKU() == uInt64Handle.m8079getValuesVKNKU();
    }
}
