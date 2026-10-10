package io.ktor.http;

import io.ktor.http.HeaderValueWithParameters;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.i18n.TextBundle;

/* JADX INFO: compiled from: ContentTypes.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ContentType extends HeaderValueWithParameters {
    public final String contentSubtype;
    public final String contentType;
    public static final Companion Companion = new Companion(null);
    public static final ContentType Any = new ContentType("*", "*", null, 4, null);

    public ContentType(String str, String str2, String str3, List<HeaderValueParam> list) {
        super(str3, list);
        this.contentType = str;
        this.contentSubtype = str2;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public /* synthetic */ ContentType(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContentType(String contentType, String contentSubtype, List<HeaderValueParam> parameters) {
        this(contentType, contentSubtype, contentType + '/' + contentSubtype, parameters);
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(contentSubtype, "contentSubtype");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
    }

    public final ContentType withParameter(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        return hasParameter(name, value) ? this : new ContentType(this.contentType, this.contentSubtype, getContent(), CollectionsKt___CollectionsKt.plus(getParameters(), new HeaderValueParam(name, value)));
    }

    public final boolean hasParameter(String str, String str2) {
        int size = getParameters().size();
        if (size == 0) {
            return false;
        }
        if (size == 1) {
            HeaderValueParam headerValueParam = getParameters().get(0);
            if (!StringsKt__StringsJVMKt.equals(headerValueParam.getName(), str, true) || !StringsKt__StringsJVMKt.equals(headerValueParam.getValue(), str2, true)) {
                return false;
            }
        } else {
            List<HeaderValueParam> parameters = getParameters();
            if (parameters != null && parameters.isEmpty()) {
                return false;
            }
            for (HeaderValueParam headerValueParam2 : parameters) {
                if (!StringsKt__StringsJVMKt.equals(headerValueParam2.getName(), str, true) || !StringsKt__StringsJVMKt.equals(headerValueParam2.getValue(), str2, true)) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean match(ContentType pattern) {
        boolean zEquals;
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        if (!Intrinsics.areEqual(pattern.contentType, "*") && !StringsKt__StringsJVMKt.equals(pattern.contentType, this.contentType, true)) {
            return false;
        }
        if (!Intrinsics.areEqual(pattern.contentSubtype, "*") && !StringsKt__StringsJVMKt.equals(pattern.contentSubtype, this.contentSubtype, true)) {
            return false;
        }
        for (HeaderValueParam headerValueParam : pattern.getParameters()) {
            String strComponent1 = headerValueParam.component1();
            String strComponent2 = headerValueParam.component2();
            if (Intrinsics.areEqual(strComponent1, "*")) {
                if (!Intrinsics.areEqual(strComponent2, "*")) {
                    List<HeaderValueParam> parameters = getParameters();
                    if (parameters == null || !parameters.isEmpty()) {
                        Iterator<T> it = parameters.iterator();
                        while (it.hasNext()) {
                            if (StringsKt__StringsJVMKt.equals(((HeaderValueParam) it.next()).getValue(), strComponent2, true)) {
                            }
                        }
                    }
                    zEquals = false;
                }
                zEquals = true;
                break;
            }
            String strParameter = parameter(strComponent1);
            if (!Intrinsics.areEqual(strComponent2, "*")) {
                zEquals = StringsKt__StringsJVMKt.equals(strParameter, strComponent2, true);
            } else {
                if (strParameter != null) {
                    zEquals = true;
                    break;
                    break;
                }
                zEquals = false;
            }
            if (!zEquals) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ContentType) {
            ContentType contentType = (ContentType) obj;
            if (StringsKt__StringsJVMKt.equals(this.contentType, contentType.contentType, true) && StringsKt__StringsJVMKt.equals(this.contentSubtype, contentType.contentSubtype, true) && Intrinsics.areEqual(getParameters(), contentType.getParameters())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.contentType;
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        int iHashCode = lowerCase.hashCode();
        String lowerCase2 = this.contentSubtype.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        return iHashCode + (iHashCode * 31) + lowerCase2.hashCode() + (getParameters().hashCode() * 31);
    }

    /* JADX INFO: compiled from: ContentTypes.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final ContentType parse(String value) throws BadContentTypeFormatException {
            Intrinsics.checkNotNullParameter(value, "value");
            if (StringsKt__StringsKt.isBlank(value)) {
                return getAny();
            }
            HeaderValueWithParameters.Companion companion = HeaderValueWithParameters.Companion;
            HeaderValue headerValue = (HeaderValue) CollectionsKt___CollectionsKt.last((List) HttpHeaderValueParserKt.parseHeaderValue(value));
            String value2 = headerValue.getValue();
            List<HeaderValueParam> params = headerValue.getParams();
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) value2, '/', 0, false, 6, (Object) null);
            if (iIndexOf$default == -1) {
                if (Intrinsics.areEqual(StringsKt__StringsKt.trim(value2).toString(), "*")) {
                    return ContentType.Companion.getAny();
                }
                throw new BadContentTypeFormatException(value);
            }
            String strSubstring = value2.substring(0, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            String string = StringsKt__StringsKt.trim(strSubstring).toString();
            if (string.length() == 0) {
                throw new BadContentTypeFormatException(value);
            }
            String strSubstring2 = value2.substring(iIndexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            String string2 = StringsKt__StringsKt.trim(strSubstring2).toString();
            if (StringsKt__StringsKt.contains$default((CharSequence) string, ' ', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) string2, ' ', false, 2, (Object) null)) {
                throw new BadContentTypeFormatException(value);
            }
            if (string2.length() == 0 || StringsKt__StringsKt.contains$default((CharSequence) string2, '/', false, 2, (Object) null)) {
                throw new BadContentTypeFormatException(value);
            }
            return new ContentType(string, string2, params);
        }

        public final ContentType getAny() {
            return ContentType.Any;
        }
    }

    /* JADX INFO: compiled from: ContentTypes.kt */
    public static final class Application {
        public static final ContentType Any;
        public static final ContentType Atom;
        public static final ContentType Cbor;
        public static final ContentType Docx;
        public static final ContentType FormUrlEncoded;
        public static final ContentType GZip;
        public static final ContentType HalJson;
        public static final Application INSTANCE = new Application();
        public static final ContentType JavaScript;
        public static final ContentType Json;
        public static final ContentType OctetStream;
        public static final ContentType Pdf;
        public static final ContentType Pptx;
        public static final ContentType ProblemJson;
        public static final ContentType ProblemXml;
        public static final ContentType ProtoBuf;
        public static final ContentType Rss;
        public static final ContentType Soap;
        public static final ContentType Wasm;
        public static final ContentType Xlsx;
        public static final ContentType Xml;
        public static final ContentType Xml_Dtd;
        public static final ContentType Yaml;
        public static final ContentType Zip;

        static {
            int i = 4;
            DefaultConstructorMarker defaultConstructorMarker = null;
            List list = null;
            Any = new ContentType("application", "*", list, i, defaultConstructorMarker);
            int i2 = 4;
            DefaultConstructorMarker defaultConstructorMarker2 = null;
            List list2 = null;
            Atom = new ContentType("application", "atom+xml", list2, i2, defaultConstructorMarker2);
            Cbor = new ContentType("application", "cbor", list, i, defaultConstructorMarker);
            Json = new ContentType("application", "json", list2, i2, defaultConstructorMarker2);
            HalJson = new ContentType("application", "hal+json", list, i, defaultConstructorMarker);
            JavaScript = new ContentType("application", "javascript", list2, i2, defaultConstructorMarker2);
            OctetStream = new ContentType("application", "octet-stream", list, i, defaultConstructorMarker);
            Rss = new ContentType("application", "rss+xml", list2, i2, defaultConstructorMarker2);
            Soap = new ContentType("application", "soap+xml", list, i, defaultConstructorMarker);
            Xml = new ContentType("application", "xml", list2, i2, defaultConstructorMarker2);
            Xml_Dtd = new ContentType("application", "xml-dtd", list, i, defaultConstructorMarker);
            Yaml = new ContentType("application", "yaml", list2, i2, defaultConstructorMarker2);
            Zip = new ContentType("application", "zip", list, i, defaultConstructorMarker);
            GZip = new ContentType("application", "gzip", list2, i2, defaultConstructorMarker2);
            FormUrlEncoded = new ContentType("application", "x-www-form-urlencoded", list, i, defaultConstructorMarker);
            Pdf = new ContentType("application", "pdf", list2, i2, defaultConstructorMarker2);
            Xlsx = new ContentType("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet", list, i, defaultConstructorMarker);
            Docx = new ContentType("application", "vnd.openxmlformats-officedocument.wordprocessingml.document", list2, i2, defaultConstructorMarker2);
            Pptx = new ContentType("application", "vnd.openxmlformats-officedocument.presentationml.presentation", list, i, defaultConstructorMarker);
            ProtoBuf = new ContentType("application", "protobuf", list2, i2, defaultConstructorMarker2);
            Wasm = new ContentType("application", "wasm", list, i, defaultConstructorMarker);
            ProblemJson = new ContentType("application", "problem+json", list2, i2, defaultConstructorMarker2);
            ProblemXml = new ContentType("application", "problem+xml", list, i, defaultConstructorMarker);
        }

        public final ContentType getOctetStream() {
            return OctetStream;
        }
    }

    /* JADX INFO: compiled from: ContentTypes.kt */
    public static final class MultiPart {
        public static final ContentType Alternative;
        public static final ContentType Any;
        public static final ContentType ByteRanges;
        public static final ContentType Encrypted;
        public static final ContentType FormData;
        public static final MultiPart INSTANCE = new MultiPart();
        public static final ContentType Mixed;
        public static final ContentType Related;
        public static final ContentType Signed;

        static {
            int i = 4;
            DefaultConstructorMarker defaultConstructorMarker = null;
            List list = null;
            Any = new ContentType("multipart", "*", list, i, defaultConstructorMarker);
            int i2 = 4;
            DefaultConstructorMarker defaultConstructorMarker2 = null;
            List list2 = null;
            Mixed = new ContentType("multipart", "mixed", list2, i2, defaultConstructorMarker2);
            Alternative = new ContentType("multipart", "alternative", list, i, defaultConstructorMarker);
            Related = new ContentType("multipart", "related", list2, i2, defaultConstructorMarker2);
            FormData = new ContentType("multipart", "form-data", list, i, defaultConstructorMarker);
            Signed = new ContentType("multipart", "signed", list2, i2, defaultConstructorMarker2);
            Encrypted = new ContentType("multipart", "encrypted", list, i, defaultConstructorMarker);
            ByteRanges = new ContentType("multipart", "byteranges", list2, i2, defaultConstructorMarker2);
        }

        public final ContentType getFormData() {
            return FormData;
        }

        public final boolean contains(CharSequence contentType) {
            Intrinsics.checkNotNullParameter(contentType, "contentType");
            return StringsKt__StringsKt.startsWith(contentType, (CharSequence) "multipart/", true);
        }
    }

    /* JADX INFO: compiled from: ContentTypes.kt */
    public static final class Text {
        public static final ContentType Any;
        public static final ContentType CSS;
        public static final ContentType CSV;
        public static final ContentType EventStream;
        public static final ContentType Html;
        public static final Text INSTANCE = new Text();
        public static final ContentType JavaScript;
        public static final ContentType Plain;
        public static final ContentType VCard;
        public static final ContentType Xml;

        static {
            int i = 4;
            DefaultConstructorMarker defaultConstructorMarker = null;
            List list = null;
            Any = new ContentType(TextBundle.TEXT_ENTRY, "*", list, i, defaultConstructorMarker);
            int i2 = 4;
            DefaultConstructorMarker defaultConstructorMarker2 = null;
            List list2 = null;
            Plain = new ContentType(TextBundle.TEXT_ENTRY, "plain", list2, i2, defaultConstructorMarker2);
            CSS = new ContentType(TextBundle.TEXT_ENTRY, "css", list, i, defaultConstructorMarker);
            CSV = new ContentType(TextBundle.TEXT_ENTRY, "csv", list2, i2, defaultConstructorMarker2);
            Html = new ContentType(TextBundle.TEXT_ENTRY, "html", list, i, defaultConstructorMarker);
            JavaScript = new ContentType(TextBundle.TEXT_ENTRY, "javascript", list2, i2, defaultConstructorMarker2);
            VCard = new ContentType(TextBundle.TEXT_ENTRY, "vcard", list, i, defaultConstructorMarker);
            Xml = new ContentType(TextBundle.TEXT_ENTRY, "xml", list2, i2, defaultConstructorMarker2);
            EventStream = new ContentType(TextBundle.TEXT_ENTRY, "event-stream", list, i, defaultConstructorMarker);
        }

        public final ContentType getPlain() {
            return Plain;
        }
    }
}
