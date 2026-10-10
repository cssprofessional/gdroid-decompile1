package io.ktor.http;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: HttpProtocolVersion.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpProtocolVersion {
    public final int major;
    public final int minor;
    public final String name;
    public static final Companion Companion = new Companion(null);
    public static final HttpProtocolVersion HTTP_3_0 = new HttpProtocolVersion("HTTP", 3, 0);
    public static final HttpProtocolVersion HTTP_2_0 = new HttpProtocolVersion("HTTP", 2, 0);
    public static final HttpProtocolVersion HTTP_1_1 = new HttpProtocolVersion("HTTP", 1, 1);
    public static final HttpProtocolVersion HTTP_1_0 = new HttpProtocolVersion("HTTP", 1, 0);
    public static final HttpProtocolVersion SPDY_3 = new HttpProtocolVersion("SPDY", 3, 0);
    public static final HttpProtocolVersion QUIC = new HttpProtocolVersion("QUIC", 1, 0);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpProtocolVersion)) {
            return false;
        }
        HttpProtocolVersion httpProtocolVersion = (HttpProtocolVersion) obj;
        return Intrinsics.areEqual(this.name, httpProtocolVersion.name) && this.major == httpProtocolVersion.major && this.minor == httpProtocolVersion.minor;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + Integer.hashCode(this.major)) * 31) + Integer.hashCode(this.minor);
    }

    /* JADX INFO: compiled from: HttpProtocolVersion.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final HttpProtocolVersion getHTTP_3_0() {
            return HttpProtocolVersion.HTTP_3_0;
        }

        public final HttpProtocolVersion getHTTP_2_0() {
            return HttpProtocolVersion.HTTP_2_0;
        }

        public final HttpProtocolVersion getHTTP_1_1() {
            return HttpProtocolVersion.HTTP_1_1;
        }

        public final HttpProtocolVersion getHTTP_1_0() {
            return HttpProtocolVersion.HTTP_1_0;
        }

        public final HttpProtocolVersion fromValue(String name, int i, int i2) {
            Intrinsics.checkNotNullParameter(name, "name");
            return (Intrinsics.areEqual(name, "HTTP") && i == 1 && i2 == 0) ? getHTTP_1_0() : (Intrinsics.areEqual(name, "HTTP") && i == 1 && i2 == 1) ? getHTTP_1_1() : (Intrinsics.areEqual(name, "HTTP") && i == 2 && i2 == 0) ? getHTTP_2_0() : (Intrinsics.areEqual(name, "HTTP") && i == 3 && i2 == 0) ? getHTTP_3_0() : new HttpProtocolVersion(name, i, i2);
        }

        public final HttpProtocolVersion parse(CharSequence value) {
            Intrinsics.checkNotNullParameter(value, "value");
            List listSplit$default = StringsKt__StringsKt.split$default(value, new String[]{"/", "."}, false, 0, 6, (Object) null);
            if (listSplit$default.size() == 3) {
                return fromValue((String) listSplit$default.get(0), Integer.parseInt((String) listSplit$default.get(1)), Integer.parseInt((String) listSplit$default.get(2)));
            }
            throw new IllegalStateException(("Failed to parse HttpProtocolVersion. Expected format: protocol/major.minor, but actual: " + ((Object) value)).toString());
        }
    }

    public HttpProtocolVersion(String name, int i, int i2) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.major = i;
        this.minor = i2;
    }

    public String toString() {
        return this.name + '/' + this.major + '.' + this.minor;
    }
}
