package io.ktor.http;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;

/* JADX INFO: compiled from: HttpHeaderValueParser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HeaderValue {
    public final List<HeaderValueParam> params;
    public final double quality;
    public final String value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderValue)) {
            return false;
        }
        HeaderValue headerValue = (HeaderValue) obj;
        return Intrinsics.areEqual(this.value, headerValue.value) && Intrinsics.areEqual(this.params, headerValue.params);
    }

    public int hashCode() {
        return (this.value.hashCode() * 31) + this.params.hashCode();
    }

    public String toString() {
        return "HeaderValue(value=" + this.value + ", params=" + this.params + ')';
    }

    public HeaderValue(String value, List<HeaderValueParam> params) {
        Double d;
        Object next;
        String value2;
        Double doubleOrNull;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(params, "params");
        this.value = value;
        this.params = params;
        Iterator<T> it = params.iterator();
        while (true) {
            d = null;
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(((HeaderValueParam) next).getName(), "q")) {
                    break;
                }
            }
        }
        HeaderValueParam headerValueParam = (HeaderValueParam) next;
        double dDoubleValue = 1.0d;
        if (headerValueParam != null && (value2 = headerValueParam.getValue()) != null && (doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(value2)) != null) {
            double dDoubleValue2 = doubleOrNull.doubleValue();
            if (0.0d <= dDoubleValue2 && dDoubleValue2 <= 1.0d) {
                d = doubleOrNull;
            }
            if (d != null) {
                dDoubleValue = d.doubleValue();
            }
        }
        this.quality = dDoubleValue;
    }

    public final List<HeaderValueParam> getParams() {
        return this.params;
    }

    public final String getValue() {
        return this.value;
    }
}
