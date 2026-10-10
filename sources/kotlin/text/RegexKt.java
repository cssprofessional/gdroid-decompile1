package kotlin.text;

import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RegexKt {
    public static final IntRange range(java.util.regex.MatchResult matchResult) {
        return RangesKt___RangesKt.until(matchResult.start(), matchResult.end());
    }

    public static final IntRange range(java.util.regex.MatchResult matchResult, int i) {
        return RangesKt___RangesKt.until(matchResult.start(i), matchResult.end(i));
    }
}
