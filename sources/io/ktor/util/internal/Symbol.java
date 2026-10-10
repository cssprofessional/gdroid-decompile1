package io.ktor.util.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Symbol {
    public final String symbol;

    public Symbol(String symbol) {
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        this.symbol = symbol;
    }

    public String toString() {
        return this.symbol;
    }
}
