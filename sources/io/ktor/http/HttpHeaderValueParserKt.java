package io.ktor.http;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: HttpHeaderValueParser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeaderValueParserKt {
    public static final List<HeaderValue> parseHeaderValue(String str) {
        return parseHeaderValue(str, false);
    }

    public static final List<HeaderValue> parseHeaderValue(String str, boolean z) {
        if (str == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: io.ktor.http.HttpHeaderValueParserKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HttpHeaderValueParserKt.parseHeaderValue$lambda$0();
            }
        });
        int headerValueItem = 0;
        while (headerValueItem <= StringsKt__StringsKt.getLastIndex(str)) {
            headerValueItem = parseHeaderValueItem(str, headerValueItem, lazy, z);
        }
        return valueOrEmpty(lazy);
    }

    public static final ArrayList parseHeaderValue$lambda$0() {
        return new ArrayList();
    }

    public static final <T> List<T> valueOrEmpty(Lazy<? extends List<? extends T>> lazy) {
        return lazy.isInitialized() ? lazy.getValue() : CollectionsKt__CollectionsKt.emptyList();
    }

    public static final String subtrim(String str, int i, int i2) {
        String strSubstring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return StringsKt__StringsKt.trim(strSubstring).toString();
    }

    public static final int parseHeaderValueItem(String str, int i, Lazy<? extends ArrayList<HeaderValue>> lazy, boolean z) {
        Lazy lazy2 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: io.ktor.http.HttpHeaderValueParserKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HttpHeaderValueParserKt.parseHeaderValueItem$lambda$0();
            }
        });
        Integer numValueOf = z ? Integer.valueOf(i) : null;
        int headerValueParameter = i;
        while (headerValueParameter <= StringsKt__StringsKt.getLastIndex(str)) {
            char cCharAt = str.charAt(headerValueParameter);
            if (cCharAt == ',') {
                lazy.getValue().add(new HeaderValue(subtrim(str, i, numValueOf != null ? numValueOf.intValue() : headerValueParameter), valueOrEmpty(lazy2)));
                return headerValueParameter + 1;
            }
            if (cCharAt == ';') {
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(headerValueParameter);
                }
                headerValueParameter = parseHeaderValueParameter(str, headerValueParameter + 1, lazy2);
            } else {
                headerValueParameter = z ? parseHeaderValueParameter(str, headerValueParameter, lazy2) : headerValueParameter + 1;
            }
        }
        lazy.getValue().add(new HeaderValue(subtrim(str, i, numValueOf != null ? numValueOf.intValue() : headerValueParameter), valueOrEmpty(lazy2)));
        return headerValueParameter;
    }

    public static final ArrayList parseHeaderValueItem$lambda$0() {
        return new ArrayList();
    }

    public static final void parseHeaderValueParameter$addParam(Lazy<? extends ArrayList<HeaderValueParam>> lazy, String str, int i, int i2, String str2) {
        String strSubtrim = subtrim(str, i, i2);
        if (strSubtrim.length() == 0) {
            return;
        }
        lazy.getValue().add(new HeaderValueParam(strSubtrim, str2));
    }

    public static final int parseHeaderValueParameter(String str, int i, Lazy<? extends ArrayList<HeaderValueParam>> lazy) {
        int i2 = i;
        while (i2 <= StringsKt__StringsKt.getLastIndex(str)) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == ',' || cCharAt == ';') {
                parseHeaderValueParameter$addParam(lazy, str, i, i2, "");
                return i2;
            }
            if (cCharAt == '=') {
                Pair<Integer, String> headerValueParameterValue = parseHeaderValueParameterValue(str, i2 + 1);
                int iIntValue = headerValueParameterValue.component1().intValue();
                parseHeaderValueParameter$addParam(lazy, str, i, i2, headerValueParameterValue.component2());
                return iIntValue;
            }
            i2++;
        }
        parseHeaderValueParameter$addParam(lazy, str, i, i2, "");
        return i2;
    }

    public static final Pair<Integer, String> parseHeaderValueParameterValue(String str, int i) {
        if (str.length() == i) {
            return TuplesKt.to(Integer.valueOf(i), "");
        }
        if (str.charAt(i) == '\"') {
            return parseHeaderValueParameterValueQuoted(str, i + 1);
        }
        int i2 = i;
        while (i2 <= StringsKt__StringsKt.getLastIndex(str)) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == ',' || cCharAt == ';') {
                return TuplesKt.to(Integer.valueOf(i2), subtrim(str, i, i2));
            }
            i2++;
        }
        return TuplesKt.to(Integer.valueOf(i2), subtrim(str, i, i2));
    }

    public static final Pair<Integer, String> parseHeaderValueParameterValueQuoted(String str, int i) {
        StringBuilder sb = new StringBuilder();
        while (i <= StringsKt__StringsKt.getLastIndex(str)) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' && nextIsDelimiterOrEnd(str, i)) {
                return TuplesKt.to(Integer.valueOf(i + 1), sb.toString());
            }
            if (cCharAt == '\\' && i < StringsKt__StringsKt.getLastIndex(str) - 2) {
                sb.append(str.charAt(i + 1));
                i += 2;
            } else {
                sb.append(cCharAt);
                i++;
            }
        }
        Integer numValueOf = Integer.valueOf(i);
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return TuplesKt.to(numValueOf, '\"' + string);
    }

    public static final boolean nextIsDelimiterOrEnd(String str, int i) {
        int i2 = i + 1;
        while (i2 < str.length() && str.charAt(i2) == ' ') {
            i2++;
        }
        return i2 == str.length() || str.charAt(i2) == ';' || str.charAt(i2) == ',';
    }
}
