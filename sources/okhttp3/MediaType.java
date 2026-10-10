package okhttp3;

import java.util.ArrayList;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: MediaType.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class MediaType {
    public final String mediaType;
    public final String[] parameterNamesAndValues;
    public final String subtype;
    public final String type;
    public static final Companion Companion = new Companion(null);
    public static final Regex TYPE_SUBTYPE = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final Regex PARAMETER = new Regex(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public MediaType(String mediaType, String type, String subtype, String[] parameterNamesAndValues) {
        Intrinsics.checkNotNullParameter(mediaType, "mediaType");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(subtype, "subtype");
        Intrinsics.checkNotNullParameter(parameterNamesAndValues, "parameterNamesAndValues");
        this.mediaType = mediaType;
        this.type = type;
        this.subtype = subtype;
        this.parameterNamesAndValues = parameterNamesAndValues;
    }

    public String toString() {
        return this.mediaType;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    /* JADX INFO: compiled from: MediaType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final MediaType get(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            MatchResult matchResultMatchAt = MediaType.TYPE_SUBTYPE.matchAt(str, 0);
            if (matchResultMatchAt == null) {
                throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
            }
            String str2 = matchResultMatchAt.getGroupValues().get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = matchResultMatchAt.getGroupValues().get(2).toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            ArrayList arrayList = new ArrayList();
            int last = matchResultMatchAt.getRange().getLast();
            while (true) {
                int i = last + 1;
                if (i < str.length()) {
                    MatchResult matchResultMatchAt2 = MediaType.PARAMETER.matchAt(str, i);
                    if (matchResultMatchAt2 == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Parameter is not formatted correctly: \"");
                        String strSubstring = str.substring(i);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        sb.append(strSubstring);
                        sb.append("\" for: \"");
                        sb.append(str);
                        sb.append('\"');
                        throw new IllegalArgumentException(sb.toString().toString());
                    }
                    MatchGroup matchGroup = matchResultMatchAt2.getGroups().get(1);
                    String value = matchGroup != null ? matchGroup.getValue() : null;
                    if (value == null) {
                        last = matchResultMatchAt2.getRange().getLast();
                    } else {
                        MatchGroup matchGroup2 = matchResultMatchAt2.getGroups().get(2);
                        String value2 = matchGroup2 != null ? matchGroup2.getValue() : null;
                        if (value2 == null) {
                            MatchGroup matchGroup3 = matchResultMatchAt2.getGroups().get(3);
                            Intrinsics.checkNotNull(matchGroup3);
                            value2 = matchGroup3.getValue();
                        } else if (StringsKt__StringsKt.startsWith$default((CharSequence) value2, '\'', false, 2, (Object) null) && StringsKt__StringsKt.endsWith$default((CharSequence) value2, '\'', false, 2, (Object) null) && value2.length() > 2) {
                            value2 = value2.substring(1, value2.length() - 1);
                            Intrinsics.checkNotNullExpressionValue(value2, "substring(...)");
                        }
                        arrayList.add(value);
                        arrayList.add(value2);
                        last = matchResultMatchAt2.getRange().getLast();
                    }
                } else {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                }
            }
        }

        public final MediaType parse(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }
}
