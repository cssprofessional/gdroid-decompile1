package kotlinx.serialization.internal;

import kotlin.jvm.internal.FloatCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class FloatArraySerializer extends PrimitiveArraySerializer<Float, float[], Object> implements KSerializer<float[]> {
    public static final FloatArraySerializer INSTANCE = new FloatArraySerializer();

    public FloatArraySerializer() {
        super(BuiltinSerializersKt.serializer(FloatCompanionObject.INSTANCE));
    }
}
