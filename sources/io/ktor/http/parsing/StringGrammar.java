package io.ktor.http.parsing;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ParserDsl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StringGrammar extends Grammar {
    public final String value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringGrammar(String value) {
        super(null);
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    public final String getValue() {
        return this.value;
    }
}
