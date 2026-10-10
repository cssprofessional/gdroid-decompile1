package org.libsdl.app;

/* JADX INFO: loaded from: classes3.dex */
public final class SurfaceSizePolicy {
    static final double SQUARE_ASPECT = 1.2d;

    public static boolean isLandscape(int i) {
        return i == 0 || i == 6 || i == 8 || i == 11;
    }

    public static boolean isPortrait(int i) {
        return i == 1 || i == 7 || i == 9 || i == 12;
    }

    private SurfaceSizePolicy() {
    }

    public static boolean isTransient(int i, int i2, int i3, boolean z) {
        if (i2 <= 0 || i3 <= 0) {
            return true;
        }
        if (!isLandscape(i) ? !(!isPortrait(i) || i2 <= i3) : i2 < i3) {
            if (!z) {
                return ((double) Math.max(i2, i3)) / ((double) Math.min(i2, i3)) >= SQUARE_ASPECT;
            }
        }
        return false;
    }
}
