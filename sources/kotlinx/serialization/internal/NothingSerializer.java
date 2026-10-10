package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: compiled from: BuiltInSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class NothingSerializer implements KSerializer {
    public static final NothingSerializer INSTANCE = new NothingSerializer();
    public static final SerialDescriptor descriptor = NothingSerialDescriptor.INSTANCE;

    @Override // kotlinx.serialization.KSerializer
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }
}
