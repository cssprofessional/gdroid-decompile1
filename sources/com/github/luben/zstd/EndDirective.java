package com.github.luben.zstd;

/* JADX INFO: loaded from: classes.dex */
public enum EndDirective {
    CONTINUE(0),
    FLUSH(1),
    END(2);

    private final int value;

    EndDirective(int i) {
        this.value = i;
    }

    public int value() {
        return this.value;
    }
}
