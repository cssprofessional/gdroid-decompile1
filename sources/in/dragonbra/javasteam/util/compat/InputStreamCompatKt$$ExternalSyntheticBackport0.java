package in.dragonbra.javasteam.util.compat;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class InputStreamCompatKt$$ExternalSyntheticBackport0 {
    public static /* synthetic */ int m(int i, int i2, int i3) {
        if (i >= 0 && i2 >= 0 && i3 >= 0 && i <= i3 - i2) {
            return i;
        }
        throw new IndexOutOfBoundsException("Range [" + i + ", " + i + " + " + i2 + ") out of bounds for length " + i3);
    }
}
