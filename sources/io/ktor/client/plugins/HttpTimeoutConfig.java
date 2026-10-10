package io.ktor.client.plugins;

import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: HttpTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpTimeoutConfig {
    public static final Companion Companion = new Companion(0 == true ? 1 : 0);
    public static final AttributeKey<HttpTimeoutConfig> key;
    public Long _connectTimeoutMillis;
    public Long _requestTimeoutMillis;
    public Long _socketTimeoutMillis;

    public /* synthetic */ HttpTimeoutConfig(Long l, Long l2, Long l3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : l2, (i & 4) != 0 ? null : l3);
    }

    public HttpTimeoutConfig(Long l, Long l2, Long l3) {
        this._requestTimeoutMillis = 0L;
        this._connectTimeoutMillis = 0L;
        this._socketTimeoutMillis = 0L;
        setRequestTimeoutMillis(l);
        setConnectTimeoutMillis(l2);
        setSocketTimeoutMillis(l3);
    }

    public final Long getRequestTimeoutMillis() {
        return this._requestTimeoutMillis;
    }

    public final void setRequestTimeoutMillis(Long l) {
        this._requestTimeoutMillis = checkTimeoutValue(l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        KType kTypeTypeOf = null;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HttpTimeoutConfig.class);
        try {
            kTypeTypeOf = Reflection.typeOf(HttpTimeoutConfig.class);
        } catch (Throwable unused) {
        }
        key = new AttributeKey<>("TimeoutConfiguration", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }

    public final Long getConnectTimeoutMillis() {
        return this._connectTimeoutMillis;
    }

    public final void setConnectTimeoutMillis(Long l) {
        this._connectTimeoutMillis = checkTimeoutValue(l);
    }

    public final Long getSocketTimeoutMillis() {
        return this._socketTimeoutMillis;
    }

    public final void setSocketTimeoutMillis(Long l) {
        this._socketTimeoutMillis = checkTimeoutValue(l);
    }

    public final Long checkTimeoutValue(Long l) {
        if (l == null || l.longValue() > 0) {
            return l;
        }
        throw new IllegalArgumentException("Only positive timeout values are allowed, for infinite timeout use HttpTimeoutConfig.INFINITE_TIMEOUT_MS");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || HttpTimeoutConfig.class != obj.getClass()) {
            return false;
        }
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) obj;
        return Intrinsics.areEqual(this._requestTimeoutMillis, httpTimeoutConfig._requestTimeoutMillis) && Intrinsics.areEqual(this._connectTimeoutMillis, httpTimeoutConfig._connectTimeoutMillis) && Intrinsics.areEqual(this._socketTimeoutMillis, httpTimeoutConfig._socketTimeoutMillis);
    }

    public int hashCode() {
        Long l = this._requestTimeoutMillis;
        int iHashCode = (l != null ? Long.hashCode(l.longValue()) : 0) * 31;
        Long l2 = this._connectTimeoutMillis;
        int iHashCode2 = (iHashCode + (l2 != null ? Long.hashCode(l2.longValue()) : 0)) * 31;
        Long l3 = this._socketTimeoutMillis;
        return iHashCode2 + (l3 != null ? Long.hashCode(l3.longValue()) : 0);
    }

    /* JADX INFO: compiled from: HttpTimeout.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
