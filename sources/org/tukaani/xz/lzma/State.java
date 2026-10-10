package org.tukaani.xz.lzma;

/* JADX INFO: loaded from: classes3.dex */
final class State {
    private static final int LIT_LIT = 0;
    private static final int LIT_LONGREP = 8;
    private static final int LIT_MATCH = 7;
    private static final int LIT_SHORTREP = 9;
    private static final int LIT_STATES = 7;
    private static final int MATCH_LIT = 4;
    private static final int MATCH_LIT_LIT = 1;
    private static final int NONLIT_MATCH = 10;
    private static final int NONLIT_REP = 11;
    private static final int REP_LIT = 5;
    private static final int REP_LIT_LIT = 2;
    private static final int SHORTREP_LIT = 6;
    private static final int SHORTREP_LIT_LIT = 3;
    static final int STATES = 12;
    private int state;

    public State() {
    }

    public State(State state) {
        this.state = state.state;
    }

    public void reset() {
        this.state = 0;
    }

    public int get() {
        return this.state;
    }

    public void set(State state) {
        this.state = state.state;
    }

    public void updateLiteral() {
        int i = this.state;
        if (i <= 3) {
            this.state = 0;
        } else if (i <= 9) {
            this.state = i - 3;
        } else {
            this.state = i - 6;
        }
    }

    public void updateMatch() {
        this.state = this.state >= 7 ? 10 : 7;
    }

    public void updateLongRep() {
        this.state = this.state < 7 ? 8 : 11;
    }

    public void updateShortRep() {
        this.state = this.state < 7 ? 9 : 11;
    }

    public boolean isLiteral() {
        return this.state < 7;
    }
}
