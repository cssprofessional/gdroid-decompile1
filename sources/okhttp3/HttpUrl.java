package okhttp3;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: compiled from: HttpUrl.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class HttpUrl {
    public static final Companion Companion = new Companion(null);
    public final String fragment;
    public final String host;
    public final String password;
    public final List<String> pathSegments;
    public final int port;
    public final List<String> queryNamesAndValues;
    public final String scheme;
    public final String url;
    public final String username;

    public /* synthetic */ HttpUrl(String str, String str2, String str3, String str4, int i, List list, List list2, String str5, String str6, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, i, list, list2, str5, str6);
    }

    public static final HttpUrl get(String str) {
        return Companion.get(str);
    }

    public static final HttpUrl parse(String str) {
        return Companion.parse(str);
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i, List<String> list, List<String> list2, String str5, String str6) {
        this.scheme = str;
        this.username = str2;
        this.password = str3;
        this.host = str4;
        this.port = i;
        this.pathSegments = list;
        this.queryNamesAndValues = list2;
        this.fragment = str5;
        this.url = str6;
    }

    public final String scheme() {
        return this.scheme;
    }

    public final String username() {
        return this.username;
    }

    public final String password() {
        return this.password;
    }

    public final String host() {
        return this.host;
    }

    public final int port() {
        return this.port;
    }

    public final boolean isHttps() {
        return Intrinsics.areEqual(this.scheme, "https");
    }

    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public final URI uri() {
        String string = newBuilder().reencodeForUri$okhttp().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                URI uriCreate = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(string, ""));
                Intrinsics.checkNotNull(uriCreate);
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        String strSubstring = this.url.substring(length, _UtilCommonKt.delimiterOffset(str, ":@", length, str.length()));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        String strSubstring = this.url.substring(StringsKt__StringsKt.indexOf$default((CharSequence) this.url, ':', this.scheme.length() + 3, false, 4, (Object) null) + 1, StringsKt__StringsKt.indexOf$default((CharSequence) this.url, '@', 0, false, 6, (Object) null));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String encodedPath() {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) this.url, '/', this.scheme.length() + 3, false, 4, (Object) null);
        String str = this.url;
        String strSubstring = this.url.substring(iIndexOf$default, _UtilCommonKt.delimiterOffset(str, "?#", iIndexOf$default, str.length()));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final List<String> encodedPathSegments() {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) this.url, '/', this.scheme.length() + 3, false, 4, (Object) null);
        String str = this.url;
        int iDelimiterOffset = _UtilCommonKt.delimiterOffset(str, "?#", iIndexOf$default, str.length());
        ArrayList arrayList = new ArrayList();
        while (iIndexOf$default < iDelimiterOffset) {
            int i = iIndexOf$default + 1;
            int iDelimiterOffset2 = _UtilCommonKt.delimiterOffset(this.url, '/', i, iDelimiterOffset);
            String strSubstring = this.url.substring(i, iDelimiterOffset2);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            arrayList.add(strSubstring);
            iIndexOf$default = iDelimiterOffset2;
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) this.url, '?', 0, false, 6, (Object) null) + 1;
        String str = this.url;
        String strSubstring = this.url.substring(iIndexOf$default, _UtilCommonKt.delimiterOffset(str, '#', iIndexOf$default, str.length()));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        String strSubstring = this.url.substring(StringsKt__StringsKt.indexOf$default((CharSequence) this.url, '#', 0, false, 6, (Object) null) + 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String redact() {
        Builder builderNewBuilder = newBuilder("/...");
        Intrinsics.checkNotNull(builderNewBuilder);
        return builderNewBuilder.username("").password("").build().toString();
    }

    public final HttpUrl resolve(String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        Builder builderNewBuilder = newBuilder(link);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    public final Builder newBuilder(String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        try {
            return new Builder().parse$okhttp(this, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && Intrinsics.areEqual(((HttpUrl) obj).url, this.url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return this.url;
    }

    /* JADX INFO: compiled from: HttpUrl.kt */
    public static final class Builder {
        public String encodedFragment;
        public List<String> encodedQueryNamesAndValues;
        public String host;
        public String scheme;
        public String encodedUsername = "";
        public String encodedPassword = "";
        public int port = -1;
        public final List<String> encodedPathSegments = CollectionsKt__CollectionsKt.mutableListOf("");

        public final void setScheme$okhttp(String str) {
            this.scheme = str;
        }

        public final void setEncodedUsername$okhttp(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setEncodedPassword$okhttp(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.encodedPassword = str;
        }

        public final void setHost$okhttp(String str) {
            this.host = str;
        }

        public final void setPort$okhttp(int i) {
            this.port = i;
        }

        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        public final void setEncodedFragment$okhttp(String str) {
            this.encodedFragment = str;
        }

        public final Builder scheme(String scheme) {
            Intrinsics.checkNotNullParameter(scheme, "scheme");
            if (StringsKt__StringsJVMKt.equals(scheme, "http", true)) {
                this.scheme = "http";
            } else if (StringsKt__StringsJVMKt.equals(scheme, "https", true)) {
                this.scheme = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + scheme);
            }
            return this;
        }

        public final Builder username(String username) {
            Intrinsics.checkNotNullParameter(username, "username");
            this.encodedUsername = _UrlKt.canonicalize(username, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? username.length() : 0, " \"':;<=>@[]^`{}|/\\?#", (83 & 8) != 0 ? false : false, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false);
            return this;
        }

        public final Builder password(String password) {
            Intrinsics.checkNotNullParameter(password, "password");
            this.encodedPassword = _UrlKt.canonicalize(password, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? password.length() : 0, " \"':;<=>@[]^`{}|/\\?#", (83 & 8) != 0 ? false : false, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false);
            return this;
        }

        public final Builder host(String host) {
            Intrinsics.checkNotNullParameter(host, "host");
            String canonicalHost = _HostnamesCommonKt.toCanonicalHost(_UrlKt.percentDecode$default(host, 0, 0, false, 7, null));
            if (canonicalHost == null) {
                throw new IllegalArgumentException("unexpected host: " + host);
            }
            this.host = canonicalHost;
            return this;
        }

        public final Builder port(int i) {
            if (1 > i || i >= 65536) {
                throw new IllegalArgumentException(("unexpected port: " + i).toString());
            }
            this.port = i;
            return this;
        }

        public final Builder addPathSegment(String pathSegment) {
            Intrinsics.checkNotNullParameter(pathSegment, "pathSegment");
            push(pathSegment, 0, pathSegment.length(), false, false);
            return this;
        }

        public final Builder addPathSegments(String pathSegments) {
            Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
            return addPathSegments(pathSegments, false);
        }

        public final Builder addPathSegments(String str, boolean z) {
            int i = 0;
            do {
                int iDelimiterOffset = _UtilCommonKt.delimiterOffset(str, "/\\", i, str.length());
                push(str, i, iDelimiterOffset, iDelimiterOffset < str.length(), z);
                i = iDelimiterOffset + 1;
            } while (i <= str.length());
            return this;
        }

        public final Builder encodedQuery(String str) {
            String strCanonicalize;
            this.encodedQueryNamesAndValues = (str == null || (strCanonicalize = _UrlKt.canonicalize(str, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? str.length() : 0, " \"'<>#", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false)) == null) ? null : toQueryNamesAndValues(strCanonicalize);
            return this;
        }

        public final Builder addQueryParameter(String name, String str) {
            String strCanonicalize;
            Intrinsics.checkNotNullParameter(name, "name");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            Intrinsics.checkNotNull(list);
            list.add(_UrlKt.canonicalize(name, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? name.length() : 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", (83 & 8) != 0 ? false : false, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false));
            List<String> list2 = this.encodedQueryNamesAndValues;
            Intrinsics.checkNotNull(list2);
            if (str != null) {
                strCanonicalize = _UrlKt.canonicalize(str, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? str.length() : 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", (83 & 8) != 0 ? false : false, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false);
            } else {
                strCanonicalize = null;
            }
            list2.add(strCanonicalize);
            return this;
        }

        public final Builder addEncodedQueryParameter(String encodedName, String str) {
            String strCanonicalize;
            Intrinsics.checkNotNullParameter(encodedName, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            Intrinsics.checkNotNull(list);
            list.add(_UrlKt.canonicalize(encodedName, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? encodedName.length() : 0, " \"'<>#&=", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false));
            List<String> list2 = this.encodedQueryNamesAndValues;
            Intrinsics.checkNotNull(list2);
            if (str != null) {
                strCanonicalize = _UrlKt.canonicalize(str, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? str.length() : 0, " \"'<>#&=", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false);
            } else {
                strCanonicalize = null;
            }
            list2.add(strCanonicalize);
            return this;
        }

        public final Builder reencodeForUri$okhttp() {
            String strCanonicalize;
            String str = this.host;
            String strCanonicalize2 = null;
            this.host = str != null ? new Regex("[\"<>^`{|}]").replace(str, "") : null;
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                List<String> list = this.encodedPathSegments;
                String str2 = list.get(i);
                list.set(i, _UrlKt.canonicalize(str2, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? str2.length() : 0, "[]", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : true, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str3 = list2.get(i2);
                    if (str3 != null) {
                        strCanonicalize = _UrlKt.canonicalize(str3, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? str3.length() : 0, "\\^`{|}", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : true, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false);
                    } else {
                        strCanonicalize = null;
                    }
                    list2.set(i2, strCanonicalize);
                }
            }
            String str4 = this.encodedFragment;
            if (str4 != null) {
                strCanonicalize2 = _UrlKt.canonicalize(str4, (83 & 1) != 0 ? 0 : 0, (83 & 2) != 0 ? str4.length() : 0, " \"#<>\\^`{|}", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : true, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : true);
            }
            this.encodedFragment = strCanonicalize2;
            return this;
        }

        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            String strPercentDecode$default = _UrlKt.percentDecode$default(this.encodedUsername, 0, 0, false, 7, null);
            String strPercentDecode$default2 = _UrlKt.percentDecode$default(this.encodedPassword, 0, 0, false, 7, null);
            String str2 = this.host;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iEffectivePort = effectivePort();
            List<String> list = this.encodedPathSegments;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(_UrlKt.percentDecode$default((String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                for (String str3 : list2) {
                    arrayList.add(str3 != null ? _UrlKt.percentDecode$default(str3, 0, 0, true, 3, null) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, strPercentDecode$default, strPercentDecode$default2, str2, iEffectivePort, arrayList2, arrayList, str4 != null ? _UrlKt.percentDecode$default(str4, 0, 0, false, 7, null) : null, toString(), null);
        }

        public final int effectivePort() {
            int i = this.port;
            if (i != -1) {
                return i;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            Intrinsics.checkNotNull(str);
            return companion.defaultPort(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.String toString() {
            /*
                r6 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = r6.scheme
                if (r1 == 0) goto L12
                r0.append(r1)
                java.lang.String r1 = "://"
                r0.append(r1)
                goto L17
            L12:
                java.lang.String r1 = "//"
                r0.append(r1)
            L17:
                java.lang.String r1 = r6.encodedUsername
                int r1 = r1.length()
                r2 = 58
                if (r1 <= 0) goto L22
                goto L2a
            L22:
                java.lang.String r1 = r6.encodedPassword
                int r1 = r1.length()
                if (r1 <= 0) goto L44
            L2a:
                java.lang.String r1 = r6.encodedUsername
                r0.append(r1)
                java.lang.String r1 = r6.encodedPassword
                int r1 = r1.length()
                if (r1 <= 0) goto L3f
                r0.append(r2)
                java.lang.String r1 = r6.encodedPassword
                r0.append(r1)
            L3f:
                r1 = 64
                r0.append(r1)
            L44:
                java.lang.String r1 = r6.host
                if (r1 == 0) goto L69
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                r3 = 2
                r4 = 0
                r5 = 0
                boolean r1 = kotlin.text.StringsKt__StringsKt.contains$default(r1, r2, r5, r3, r4)
                if (r1 == 0) goto L64
                r1 = 91
                r0.append(r1)
                java.lang.String r1 = r6.host
                r0.append(r1)
                r1 = 93
                r0.append(r1)
                goto L69
            L64:
                java.lang.String r1 = r6.host
                r0.append(r1)
            L69:
                int r1 = r6.port
                r3 = -1
                if (r1 != r3) goto L72
                java.lang.String r1 = r6.scheme
                if (r1 == 0) goto L8b
            L72:
                int r1 = r6.effectivePort()
                java.lang.String r3 = r6.scheme
                if (r3 == 0) goto L85
                okhttp3.HttpUrl$Companion r4 = okhttp3.HttpUrl.Companion
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                int r3 = r4.defaultPort(r3)
                if (r1 == r3) goto L8b
            L85:
                r0.append(r2)
                r0.append(r1)
            L8b:
                java.util.List<java.lang.String> r1 = r6.encodedPathSegments
                r6.toPathString(r1, r0)
                java.util.List<java.lang.String> r1 = r6.encodedQueryNamesAndValues
                if (r1 == 0) goto La3
                r1 = 63
                r0.append(r1)
                okhttp3.HttpUrl$Companion r1 = okhttp3.HttpUrl.Companion
                java.util.List<java.lang.String> r2 = r6.encodedQueryNamesAndValues
                kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
                okhttp3.HttpUrl.Companion.access$toQueryString(r1, r2, r0)
            La3:
                java.lang.String r1 = r6.encodedFragment
                if (r1 == 0) goto Lb1
                r1 = 35
                r0.append(r1)
                java.lang.String r6 = r6.encodedFragment
                r0.append(r6)
            Lb1:
                java.lang.String r6 = r0.toString()
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        public final void toPathString(List<String> list, StringBuilder sb) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append('/');
                sb.append(list.get(i));
            }
        }

        public final Builder parse$okhttp(HttpUrl httpUrl, String input) {
            String str;
            int iDelimiterOffset;
            int i;
            int i2;
            int i3;
            char c;
            Intrinsics.checkNotNullParameter(input, "input");
            int iIndexOfFirstNonAsciiWhitespace$default = _UtilCommonKt.indexOfFirstNonAsciiWhitespace$default(input, 0, 0, 3, null);
            int iIndexOfLastNonAsciiWhitespace$default = _UtilCommonKt.indexOfLastNonAsciiWhitespace$default(input, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            int iSchemeDelimiterOffset = schemeDelimiterOffset(input, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            byte b = -1;
            if (iSchemeDelimiterOffset != -1) {
                if (StringsKt__StringsJVMKt.startsWith(input, "https:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = "https";
                    iIndexOfFirstNonAsciiWhitespace$default += 6;
                } else if (StringsKt__StringsJVMKt.startsWith(input, "http:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = "http";
                    iIndexOfFirstNonAsciiWhitespace$default += 5;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Expected URL scheme 'http' or 'https' but was '");
                    String strSubstring = input.substring(0, iSchemeDelimiterOffset);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    sb.append(strSubstring);
                    sb.append('\'');
                    throw new IllegalArgumentException(sb.toString());
                }
            } else if (httpUrl != null) {
                this.scheme = httpUrl.scheme();
            } else {
                if (input.length() > 6) {
                    str = StringsKt___StringsKt.take(input, 6) + "...";
                } else {
                    str = input;
                }
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no scheme was found for " + str);
            }
            int iSlashCount = slashCount(input, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            byte b2 = 63;
            byte b3 = 35;
            if (iSlashCount >= 2 || httpUrl == null || !Intrinsics.areEqual(httpUrl.scheme(), this.scheme)) {
                boolean z = false;
                boolean z2 = false;
                int i4 = iIndexOfFirstNonAsciiWhitespace$default + iSlashCount;
                while (true) {
                    iDelimiterOffset = _UtilCommonKt.delimiterOffset(input, "@/\\?#", i4, iIndexOfLastNonAsciiWhitespace$default);
                    byte bCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? input.charAt(iDelimiterOffset) : b;
                    if (bCharAt == b || bCharAt == b3 || bCharAt == 47 || bCharAt == 92 || bCharAt == b2) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z) {
                            int iDelimiterOffset2 = _UtilCommonKt.delimiterOffset(input, ':', i4, iDelimiterOffset);
                            String strCanonicalize = _UrlKt.canonicalize(input, (83 & 1) != 0 ? 0 : i4, (83 & 2) != 0 ? input.length() : iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false);
                            if (z2) {
                                strCanonicalize = this.encodedUsername + "%40" + strCanonicalize;
                            }
                            this.encodedUsername = strCanonicalize;
                            if (iDelimiterOffset2 != iDelimiterOffset) {
                                this.encodedPassword = _UrlKt.canonicalize(input, (83 & 1) != 0 ? 0 : iDelimiterOffset2 + 1, (83 & 2) != 0 ? input.length() : iDelimiterOffset, " \"':;<=>@[]^`{}|/\\?#", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false);
                                z = true;
                            }
                            i3 = iIndexOfLastNonAsciiWhitespace$default;
                            i2 = iDelimiterOffset;
                            z2 = true;
                        } else {
                            i2 = iDelimiterOffset;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(this.encodedPassword);
                            sb2.append("%40");
                            i3 = iIndexOfLastNonAsciiWhitespace$default;
                            sb2.append(_UrlKt.canonicalize(input, (83 & 1) != 0 ? 0 : i4, (83 & 2) != 0 ? input.length() : i2, " \"':;<=>@[]^`{}|/\\?#", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false));
                            this.encodedPassword = sb2.toString();
                        }
                        i4 = i2 + 1;
                        iIndexOfLastNonAsciiWhitespace$default = i3;
                        b3 = 35;
                        b2 = 63;
                        b = -1;
                    }
                }
                i = iIndexOfLastNonAsciiWhitespace$default;
                int iPortColonOffset = portColonOffset(input, i4, iDelimiterOffset);
                int i5 = iPortColonOffset + 1;
                if (i5 < iDelimiterOffset) {
                    this.host = _HostnamesCommonKt.toCanonicalHost(_UrlKt.percentDecode$default(input, i4, iPortColonOffset, false, 4, null));
                    int port = parsePort(input, i5, iDelimiterOffset);
                    this.port = port;
                    if (port == -1) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Invalid URL port: \"");
                        String strSubstring2 = input.substring(i5, iDelimiterOffset);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        sb3.append(strSubstring2);
                        sb3.append('\"');
                        throw new IllegalArgumentException(sb3.toString().toString());
                    }
                } else {
                    this.host = _HostnamesCommonKt.toCanonicalHost(_UrlKt.percentDecode$default(input, i4, iPortColonOffset, false, 4, null));
                    Companion companion = HttpUrl.Companion;
                    String str2 = this.scheme;
                    Intrinsics.checkNotNull(str2);
                    this.port = companion.defaultPort(str2);
                }
                if (this.host == null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Invalid URL host: \"");
                    String strSubstring3 = input.substring(i4, iPortColonOffset);
                    Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                    sb4.append(strSubstring3);
                    sb4.append('\"');
                    throw new IllegalArgumentException(sb4.toString().toString());
                }
                iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || input.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                i = iIndexOfLastNonAsciiWhitespace$default;
            }
            int i6 = i;
            int iDelimiterOffset3 = _UtilCommonKt.delimiterOffset(input, "?#", iIndexOfFirstNonAsciiWhitespace$default, i6);
            resolvePath(input, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
            if (iDelimiterOffset3 >= i6 || input.charAt(iDelimiterOffset3) != '?') {
                c = '#';
            } else {
                c = '#';
                int iDelimiterOffset4 = _UtilCommonKt.delimiterOffset(input, '#', iDelimiterOffset3, i6);
                this.encodedQueryNamesAndValues = toQueryNamesAndValues(_UrlKt.canonicalize(input, (83 & 1) != 0 ? 0 : iDelimiterOffset3 + 1, (83 & 2) != 0 ? input.length() : iDelimiterOffset4, " \"'<>#", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : true, (83 & 64) != 0 ? false : false));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < i6 && input.charAt(iDelimiterOffset3) == c) {
                this.encodedFragment = _UrlKt.canonicalize(input, (83 & 1) != 0 ? 0 : 1 + iDelimiterOffset3, (83 & 2) != 0 ? input.length() : i6, "", (83 & 8) != 0 ? false : true, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : true);
            }
            return this;
        }

        public final void resolvePath(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                while (i3 < i2) {
                    i = _UtilCommonKt.delimiterOffset(str, "/\\", i3, i2);
                    boolean z = i < i2;
                    push(str, i3, i, z, true);
                    if (z) {
                        i3 = i + 1;
                    }
                }
                return;
            }
        }

        public final void push(String str, int i, int i2, boolean z, boolean z2) {
            String strCanonicalize = _UrlKt.canonicalize(str, (83 & 1) != 0 ? 0 : i, (83 & 2) != 0 ? str.length() : i2, " \"<>^`{}|/\\?#", (83 & 8) != 0 ? false : z2, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false);
            if (isDot(strCanonicalize)) {
                return;
            }
            if (isDotDot(strCanonicalize)) {
                pop();
                return;
            }
            if (this.encodedPathSegments.get(r12.size() - 1).length() == 0) {
                this.encodedPathSegments.set(r12.size() - 1, strCanonicalize);
            } else {
                this.encodedPathSegments.add(strCanonicalize);
            }
            if (z) {
                this.encodedPathSegments.add("");
            }
        }

        public final void pop() {
            if (this.encodedPathSegments.remove(r0.size() - 1).length() == 0 && !this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.set(r2.size() - 1, "");
            } else {
                this.encodedPathSegments.add("");
            }
        }

        public final boolean isDot(String str) {
            return Intrinsics.areEqual(str, ".") || StringsKt__StringsJVMKt.equals(str, "%2e", true);
        }

        public final boolean isDotDot(String str) {
            return Intrinsics.areEqual(str, "..") || StringsKt__StringsJVMKt.equals(str, "%2e.", true) || StringsKt__StringsJVMKt.equals(str, ".%2e", true) || StringsKt__StringsJVMKt.equals(str, "%2e%2e", true);
        }

        public final List<String> toQueryNamesAndValues(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '&', i, false, 4, (Object) null);
                if (iIndexOf$default == -1) {
                    iIndexOf$default = str.length();
                }
                int i2 = iIndexOf$default;
                int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, '=', i, false, 4, (Object) null);
                if (iIndexOf$default2 == -1 || iIndexOf$default2 > i2) {
                    String strSubstring = str.substring(i, i2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i, iIndexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iIndexOf$default2 + 1, i2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                    arrayList.add(strSubstring3);
                }
                i = i2 + 1;
            }
            return arrayList;
        }

        public final int schemeDelimiterOffset(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i);
            if ((Intrinsics.compare((int) cCharAt, 97) < 0 || Intrinsics.compare((int) cCharAt, 122) > 0) && (Intrinsics.compare((int) cCharAt, 65) < 0 || Intrinsics.compare((int) cCharAt, 90) > 0)) {
                return -1;
            }
            while (true) {
                i++;
                if (i >= i2) {
                    return -1;
                }
                char cCharAt2 = str.charAt(i);
                if ('a' > cCharAt2 || cCharAt2 >= '{') {
                    if ('A' > cCharAt2 || cCharAt2 >= '[') {
                        if ('0' > cCharAt2 || cCharAt2 >= ':') {
                            if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                if (cCharAt2 == ':') {
                                    return i;
                                }
                                return -1;
                            }
                        }
                    }
                }
            }
        }

        public final int slashCount(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '/' && cCharAt != '\\') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        public final int portColonOffset(String str, int i, int i2) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt == ':') {
                    return i;
                }
                if (cCharAt == '[') {
                    do {
                        i++;
                        if (i < i2) {
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        public final int parsePort(String str, int i, int i2) {
            try {
                int i3 = Integer.parseInt(_UrlKt.canonicalize(str, (83 & 1) != 0 ? 0 : i, (83 & 2) != 0 ? str.length() : i2, "", (83 & 8) != 0 ? false : false, (83 & 16) != 0 ? false : false, (83 & 32) != 0 ? false : false, (83 & 64) != 0 ? false : false));
                if (1 > i3 || i3 >= 65536) {
                    return -1;
                }
                return i3;
            } catch (NumberFormatException unused) {
                return -1;
            }
        }
    }

    /* JADX INFO: compiled from: HttpUrl.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final int defaultPort(String scheme) {
            Intrinsics.checkNotNullParameter(scheme, "scheme");
            if (Intrinsics.areEqual(scheme, "http")) {
                return 80;
            }
            return Intrinsics.areEqual(scheme, "https") ? 443 : -1;
        }

        public final void toQueryString(List<String> list, StringBuilder sb) {
            IntProgression intProgressionStep = RangesKt___RangesKt.step(RangesKt___RangesKt.until(0, list.size()), 2);
            int first = intProgressionStep.getFirst();
            int last = intProgressionStep.getLast();
            int step = intProgressionStep.getStep();
            if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                return;
            }
            while (true) {
                String str = list.get(first);
                String str2 = list.get(first + 1);
                if (first > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (first == last) {
                    return;
                } else {
                    first += step;
                }
            }
        }

        public final HttpUrl get(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return new Builder().parse$okhttp(null, str).build();
        }

        public final HttpUrl parse(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }
}
