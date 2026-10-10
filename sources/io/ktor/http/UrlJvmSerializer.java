package io.ktor.http;

import io.ktor.utils.io.JvmSerializer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: Url.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UrlJvmSerializer implements JvmSerializer<Url> {
    public static final UrlJvmSerializer INSTANCE = new UrlJvmSerializer();

    @Override // io.ktor.utils.io.JvmSerializer
    public byte[] jvmSerialize(Url value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return StringsKt__StringsJVMKt.encodeToByteArray(value.toString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.ktor.utils.io.JvmSerializer
    public Url jvmDeserialize(byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return URLUtilsKt.Url(StringsKt__StringsJVMKt.decodeToString(value));
    }
}
