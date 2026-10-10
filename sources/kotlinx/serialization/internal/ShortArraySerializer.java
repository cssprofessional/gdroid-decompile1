package kotlinx.serialization.internal;

import kotlin.jvm.internal.ShortCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ShortArraySerializer extends PrimitiveArraySerializer<Short, short[], Object> implements KSerializer<short[]> {
    public static final ShortArraySerializer INSTANCE = new ShortArraySerializer();

    public ShortArraySerializer() {
        super(BuiltinSerializersKt.serializer(ShortCompanionObject.INSTANCE));
    }
}
