package in.dragonbra.javasteam.steam.handlers.steamcloud;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpHeaders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeaders {
    private final String name;
    private final String value;

    public static /* synthetic */ HttpHeaders copy$default(HttpHeaders httpHeaders, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = httpHeaders.name;
        }
        if ((i & 2) != 0) {
            str2 = httpHeaders.value;
        }
        return httpHeaders.copy(str, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.value;
    }

    public final HttpHeaders copy(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        return new HttpHeaders(name, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpHeaders)) {
            return false;
        }
        HttpHeaders httpHeaders = (HttpHeaders) obj;
        return Intrinsics.areEqual(this.name, httpHeaders.name) && Intrinsics.areEqual(this.value, httpHeaders.value);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "HttpHeaders(name=" + this.name + ", value=" + this.value + ")";
    }

    public HttpHeaders(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.name = name;
        this.value = value;
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }
}
