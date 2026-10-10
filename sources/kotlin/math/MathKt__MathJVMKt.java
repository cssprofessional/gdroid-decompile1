package kotlin.math;

/* JADX INFO: compiled from: MathJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class MathKt__MathJVMKt extends MathKt__MathHKt {
    public static int roundToInt(float f) {
        if (Float.isNaN(f)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f);
    }
}
