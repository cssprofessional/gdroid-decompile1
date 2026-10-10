package org.tukaani.xz.delta;

/* JADX INFO: loaded from: classes3.dex */
abstract class DeltaCoder {
    static final int DISTANCE_MAX = 256;
    static final int DISTANCE_MIN = 1;
    final int distance;
    final byte[] history;

    public DeltaCoder(int i) {
        if (i < 1 || i > 256) {
            throw new IllegalArgumentException("Invalid distance: " + i);
        }
        this.distance = i;
        this.history = new byte[i];
    }
}
