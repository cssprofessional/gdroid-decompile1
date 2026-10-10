package kotlin;

import in.dragonbra.javasteam.types.SteamID;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: UInt.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    public final int data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UInt m8171boximpl(int i) {
        return new UInt(i);
    }

    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8172constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8173equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m8176unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8174hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m8173equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m8174hashCodeimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8176unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(m8176unboximpl(), uInt.m8176unboximpl());
    }

    @IntrinsicConstEvaluation
    public /* synthetic */ UInt(int i) {
        this.data = i;
    }

    /* JADX INFO: compiled from: UInt.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8175toStringimpl(int i) {
        return String.valueOf(((long) i) & SteamID.ACCOUNT_ID_MASK);
    }

    public String toString() {
        return m8175toStringimpl(this.data);
    }
}
