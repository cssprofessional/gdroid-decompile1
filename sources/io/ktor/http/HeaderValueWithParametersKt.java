package io.ktor.http;

import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: HeaderValueWithParameters.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HeaderValueWithParametersKt {
    public static final Set<Character> HeaderFieldValueSeparators = SetsKt__SetsKt.setOf((Object[]) new Character[]{'(', ')', '<', '>', '@', ',', ';', ':', '\\', '\"', '/', '[', ']', '?', '=', '{', '}', ' ', '\t', '\n', '\r'});

    public static final boolean needQuotes(String str) {
        if (str.length() == 0) {
            return true;
        }
        if (isQuoted(str)) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (HeaderFieldValueSeparators.contains(Character.valueOf(str.charAt(i)))) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isQuoted(String str) {
        if (str.length() < 2 || StringsKt___StringsKt.first(str) != '\"' || StringsKt___StringsKt.last(str) != '\"') {
            return false;
        }
        int i = 1;
        do {
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '\"', i, false, 4, (Object) null);
            if (iIndexOf$default == StringsKt__StringsKt.getLastIndex(str)) {
                break;
            }
            int i2 = 0;
            for (int i3 = iIndexOf$default - 1; str.charAt(i3) == '\\'; i3--) {
                i2++;
            }
            if (i2 % 2 == 0) {
                return false;
            }
            i = iIndexOf$default + 1;
        } while (i < str.length());
        return true;
    }

    public static final String quote(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringBuilder sb = new StringBuilder();
        quoteTo(str, sb);
        return sb.toString();
    }

    public static final void quoteTo(String str, StringBuilder sb) {
        sb.append("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt == '\\') {
                sb.append("\\\\");
            } else {
                sb.append(cCharAt);
            }
        }
        sb.append("\"");
    }
}
