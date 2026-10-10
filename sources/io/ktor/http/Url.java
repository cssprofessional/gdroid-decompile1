package io.ktor.http;

import io.ktor.utils.io.JvmSerializable_jvmKt;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.KSerializer;

/* JADX INFO: compiled from: Url.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Url implements Serializable {
    public static final Companion Companion = new Companion(null);
    public final Lazy encodedFragment$delegate;
    public final Lazy encodedPassword$delegate;
    public final Lazy encodedPath$delegate;
    public final Lazy encodedPathAndQuery$delegate;
    public final Lazy encodedQuery$delegate;
    public final Lazy encodedUser$delegate;
    public final String fragment;
    public final String host;
    public final Parameters parameters;
    public final String password;
    public final List<String> pathSegments;
    public final URLProtocol protocol;
    public final URLProtocol protocolOrNull;
    public final List<String> rawSegments;
    public final Lazy segments$delegate;
    public final int specifiedPort;
    public final boolean trailingQuery;
    public final String urlString;
    public final String user;

    public Url(URLProtocol uRLProtocol, String host, int i, final List<String> pathSegments, Parameters parameters, String fragment, String str, String str2, boolean z, String urlString) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        this.host = host;
        this.specifiedPort = i;
        this.parameters = parameters;
        this.fragment = fragment;
        this.user = str;
        this.password = str2;
        this.trailingQuery = z;
        this.urlString = urlString;
        if (i < 0 || i >= 65536) {
            throw new IllegalArgumentException(("Port must be between 0 and 65535, or 0 if not set. Provided: " + i).toString());
        }
        this.pathSegments = pathSegments;
        this.rawSegments = pathSegments;
        this.segments$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.segments_delegate$lambda$0(pathSegments);
            }
        });
        this.protocolOrNull = uRLProtocol;
        this.protocol = uRLProtocol == null ? URLProtocol.Companion.getHTTP() : uRLProtocol;
        this.encodedPath$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.encodedPath_delegate$lambda$0(pathSegments, this);
            }
        });
        this.encodedQuery$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.encodedQuery_delegate$lambda$0(this.f$0);
            }
        });
        this.encodedPathAndQuery$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.encodedPathAndQuery_delegate$lambda$0(this.f$0);
            }
        });
        this.encodedUser$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.encodedUser_delegate$lambda$0(this.f$0);
            }
        });
        this.encodedPassword$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.encodedPassword_delegate$lambda$0(this.f$0);
            }
        });
        this.encodedFragment$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.http.Url$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Url.encodedFragment_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final String getHost() {
        return this.host;
    }

    public final int getSpecifiedPort() {
        return this.specifiedPort;
    }

    public final boolean getTrailingQuery() {
        return this.trailingQuery;
    }

    public final List<String> getRawSegments() {
        return this.rawSegments;
    }

    public static final List segments_delegate$lambda$0(List list) {
        if (list.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return list.subList((((CharSequence) CollectionsKt___CollectionsKt.first(list)).length() != 0 || list.size() <= 1) ? 0 : 1, ((CharSequence) CollectionsKt___CollectionsKt.last(list)).length() == 0 ? CollectionsKt__CollectionsKt.getLastIndex(list) : 1 + CollectionsKt__CollectionsKt.getLastIndex(list));
    }

    public final URLProtocol getProtocolOrNull() {
        return this.protocolOrNull;
    }

    public final URLProtocol getProtocol() {
        return this.protocol;
    }

    public final int getPort() {
        Integer numValueOf = Integer.valueOf(this.specifiedPort);
        if (numValueOf.intValue() == 0) {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : this.protocol.getDefaultPort();
    }

    public final String getEncodedPath() {
        return (String) this.encodedPath$delegate.getValue();
    }

    public static final String encodedPath_delegate$lambda$0(List list, Url url) {
        int iIndexOf$default;
        if (list.isEmpty() || (iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '/', url.protocol.getName().length() + 3, false, 4, (Object) null)) == -1) {
            return "";
        }
        int iIndexOfAny$default = StringsKt__StringsKt.indexOfAny$default(url.urlString, new char[]{'?', '#'}, iIndexOf$default, false, 4, null);
        if (iIndexOfAny$default == -1) {
            String strSubstring = url.urlString.substring(iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            return strSubstring;
        }
        String strSubstring2 = url.urlString.substring(iIndexOf$default, iIndexOfAny$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return strSubstring2;
    }

    public final String getEncodedQuery() {
        return (String) this.encodedQuery$delegate.getValue();
    }

    public static final String encodedQuery_delegate$lambda$0(Url url) {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '?', 0, false, 6, (Object) null) + 1;
        if (iIndexOf$default == 0) {
            return "";
        }
        int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '#', iIndexOf$default, false, 4, (Object) null);
        if (iIndexOf$default2 == -1) {
            String strSubstring = url.urlString.substring(iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            return strSubstring;
        }
        String strSubstring2 = url.urlString.substring(iIndexOf$default, iIndexOf$default2);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return strSubstring2;
    }

    public static final String encodedPathAndQuery_delegate$lambda$0(Url url) {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '/', url.protocol.getName().length() + 3, false, 4, (Object) null);
        if (iIndexOf$default == -1) {
            return "";
        }
        int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '#', iIndexOf$default, false, 4, (Object) null);
        if (iIndexOf$default2 == -1) {
            String strSubstring = url.urlString.substring(iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            return strSubstring;
        }
        String strSubstring2 = url.urlString.substring(iIndexOf$default, iIndexOf$default2);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return strSubstring2;
    }

    public final String getEncodedUser() {
        return (String) this.encodedUser$delegate.getValue();
    }

    public static final String encodedUser_delegate$lambda$0(Url url) {
        String str = url.user;
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "";
        }
        int length = url.protocol.getName().length() + 3;
        String strSubstring = url.urlString.substring(length, StringsKt__StringsKt.indexOfAny$default(url.urlString, new char[]{':', '@'}, length, false, 4, null));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String getEncodedPassword() {
        return (String) this.encodedPassword$delegate.getValue();
    }

    public static final String encodedPassword_delegate$lambda$0(Url url) {
        String str = url.password;
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "";
        }
        String strSubstring = url.urlString.substring(StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, ':', url.protocol.getName().length() + 3, false, 4, (Object) null) + 1, StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '@', 0, false, 6, (Object) null));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String getEncodedFragment() {
        return (String) this.encodedFragment$delegate.getValue();
    }

    public static final String encodedFragment_delegate$lambda$0(Url url) {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) url.urlString, '#', 0, false, 6, (Object) null) + 1;
        if (iIndexOf$default == 0) {
            return "";
        }
        String strSubstring = url.urlString.substring(iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public String toString() {
        return this.urlString;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Url.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.urlString, ((Url) obj).urlString);
    }

    public int hashCode() {
        return this.urlString.hashCode();
    }

    private final Object writeReplace() {
        return JvmSerializable_jvmKt.JvmSerializerReplacement(UrlJvmSerializer.INSTANCE, this);
    }

    /* JADX INFO: compiled from: Url.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final KSerializer<Url> serializer() {
            return UrlSerializer.INSTANCE;
        }
    }
}
