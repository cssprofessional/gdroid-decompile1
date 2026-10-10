package io.ktor.http.parsing.regex;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RegexParserGenerator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GrammarRegex {
    public final int groupsCount;
    public final String regex;

    public GrammarRegex(String regexRaw, int i, boolean z) {
        Intrinsics.checkNotNullParameter(regexRaw, "regexRaw");
        if (z) {
            regexRaw = '(' + regexRaw + ')';
        }
        this.regex = regexRaw;
        this.groupsCount = z ? i + 1 : i;
    }

    public /* synthetic */ GrammarRegex(String str, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? false : z);
    }

    public final String getRegex() {
        return this.regex;
    }

    public final int getGroupsCount() {
        return this.groupsCount;
    }
}
