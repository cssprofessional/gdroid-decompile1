package kotlin.text;

import java.util.List;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: MatchResult.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface MatchResult {
    List<String> getGroupValues();

    MatchGroupCollection getGroups();

    IntRange getRange();
}
