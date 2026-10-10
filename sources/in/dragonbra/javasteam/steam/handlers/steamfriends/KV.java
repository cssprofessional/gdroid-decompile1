package in.dragonbra.javasteam.steam.handlers.steamfriends;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KV.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class KV {
    private final String key;
    private final String value;

    public static /* synthetic */ KV copy$default(KV kv, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = kv.key;
        }
        if ((i & 2) != 0) {
            str2 = kv.value;
        }
        return kv.copy(str, str2);
    }

    public final String component1() {
        return this.key;
    }

    public final String component2() {
        return this.value;
    }

    public final KV copy(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return new KV(key, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KV)) {
            return false;
        }
        KV kv = (KV) obj;
        return Intrinsics.areEqual(this.key, kv.key) && Intrinsics.areEqual(this.value, kv.value);
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "KV(key=" + this.key + ", value=" + this.value + ")";
    }

    public KV(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.key = key;
        this.value = value;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        return this.value;
    }
}
