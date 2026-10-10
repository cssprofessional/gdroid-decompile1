package io.ktor.http.cio.internals;

/* JADX INFO: compiled from: MutableRange.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MutableRange {
    public int end;
    public int start;

    public MutableRange(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getStart() {
        return this.start;
    }

    public final void setEnd(int i) {
        this.end = i;
    }

    public final void setStart(int i) {
        this.start = i;
    }

    public String toString() {
        return "MutableRange(start=" + this.start + ", end=" + this.end + ')';
    }
}
