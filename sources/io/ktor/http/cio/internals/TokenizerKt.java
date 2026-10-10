package io.ktor.http.cio.internals;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;

/* JADX INFO: compiled from: Tokenizer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TokenizerKt {
    public static final CharSequence nextToken(CharSequence text, MutableRange range) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(range, "range");
        int iFindSpaceOrEnd = findSpaceOrEnd(text, range);
        CharSequence charSequenceSubSequence = text.subSequence(range.getStart(), iFindSpaceOrEnd);
        range.setStart(iFindSpaceOrEnd);
        return charSequenceSubSequence;
    }

    public static final int skipSpacesAndHorizontalTabs(CharArrayBuilder text, int i, int i2) {
        Intrinsics.checkNotNullParameter(text, "text");
        while (i < i2) {
            char cCharAt = text.charAt(i);
            if (!CharsKt__CharJVMKt.isWhitespace(cCharAt) && cCharAt != '\t') {
                break;
            }
            i++;
        }
        return i;
    }

    public static final void skipSpaces(CharSequence text, MutableRange range) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(range, "range");
        int start = range.getStart();
        int end = range.getEnd();
        if (start >= end || !CharsKt__CharJVMKt.isWhitespace(text.charAt(start))) {
            return;
        }
        do {
            start++;
            if (start >= end) {
                break;
            }
        } while (CharsKt__CharJVMKt.isWhitespace(text.charAt(start)));
        range.setStart(start);
    }

    public static final int findSpaceOrEnd(CharSequence text, MutableRange range) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(range, "range");
        int start = range.getStart();
        int end = range.getEnd();
        if (start < end && !CharsKt__CharJVMKt.isWhitespace(text.charAt(start))) {
            do {
                start++;
                if (start >= end) {
                    break;
                }
            } while (!CharsKt__CharJVMKt.isWhitespace(text.charAt(start)));
        }
        return start;
    }
}
