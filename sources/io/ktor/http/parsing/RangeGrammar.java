package io.ktor.http.parsing;

/* JADX INFO: compiled from: ParserDsl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RangeGrammar extends Grammar {
    public final char from;
    public final char to;

    public RangeGrammar(char c, char c2) {
        super(null);
        this.from = c;
        this.to = c2;
    }

    public final char getFrom() {
        return this.from;
    }

    public final char getTo() {
        return this.to;
    }
}
