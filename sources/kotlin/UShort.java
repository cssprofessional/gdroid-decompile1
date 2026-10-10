package kotlin;

import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: compiled from: UShort.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UShort implements Comparable<UShort> {
    public static final Companion Companion = new Companion(null);
    public final short data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UShort m8205boximpl(short s) {
        return new UShort(s);
    }

    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static short m8206constructorimpl(short s) {
        return s;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8207equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).m8210unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8208hashCodeimpl(short s) {
        return Short.hashCode(s);
    }

    public boolean equals(Object obj) {
        return m8207equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m8208hashCodeimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ short m8210unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(m8210unboximpl() & HPKE.aead_EXPORT_ONLY, uShort.m8210unboximpl() & HPKE.aead_EXPORT_ONLY);
    }

    @IntrinsicConstEvaluation
    public /* synthetic */ UShort(short s) {
        this.data = s;
    }

    /* JADX INFO: compiled from: UShort.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8209toStringimpl(short s) {
        return String.valueOf(s & HPKE.aead_EXPORT_ONLY);
    }

    public String toString() {
        return m8209toStringimpl(this.data);
    }
}
