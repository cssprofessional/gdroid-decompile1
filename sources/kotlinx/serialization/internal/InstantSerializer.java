package kotlinx.serialization.internal;

import kotlin.time.Instant;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: compiled from: BuiltInSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class InstantSerializer implements KSerializer<Instant> {
    public static final InstantSerializer INSTANCE = new InstantSerializer();
    public static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Instant", PrimitiveKind.STRING.INSTANCE);

    @Override // kotlinx.serialization.KSerializer
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }
}
