package okhttp3.internal.http2;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Settings.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Settings {
    public static final Companion Companion = new Companion(null);
    public int set;
    public final int[] values = new int[10];

    public final int getHeaderTableSize() {
        if ((this.set & 2) != 0) {
            return this.values[1];
        }
        return -1;
    }

    public final int getInitialWindowSize() {
        if ((this.set & 16) != 0) {
            return this.values[4];
        }
        return 65535;
    }

    public final Settings set(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.values;
            if (i < iArr.length) {
                this.set = (1 << i) | this.set;
                iArr[i] = i2;
            }
        }
        return this;
    }

    public final boolean isSet(int i) {
        return (this.set & (1 << i)) != 0;
    }

    public final int get(int i) {
        return this.values[i];
    }

    public final int size() {
        return Integer.bitCount(this.set);
    }

    public final int getMaxConcurrentStreams() {
        if ((this.set & 8) != 0) {
            return this.values[3];
        }
        return Integer.MAX_VALUE;
    }

    public final int getMaxFrameSize(int i) {
        return (this.set & 32) != 0 ? this.values[5] : i;
    }

    public final void merge(Settings other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i = 0; i < 10; i++) {
            if (other.isSet(i)) {
                set(i, other.get(i));
            }
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
