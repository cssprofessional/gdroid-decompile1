package io.ktor.http;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: compiled from: Url.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UrlSerializer implements KSerializer<Url> {
    public static final UrlSerializer INSTANCE = new UrlSerializer();
    public static final SerialDescriptor descriptor = SerialDescriptorsKt.PrimitiveSerialDescriptor("io.ktor.http.Url", PrimitiveKind.STRING.INSTANCE);

    @Override // kotlinx.serialization.KSerializer
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }
}
