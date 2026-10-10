package kotlinx.serialization.internal;

import kotlin.jvm.internal.LongCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class LongArraySerializer extends PrimitiveArraySerializer<Long, long[], Object> implements KSerializer<long[]> {
    public static final LongArraySerializer INSTANCE = new LongArraySerializer();

    public LongArraySerializer() {
        super(BuiltinSerializersKt.serializer(LongCompanionObject.INSTANCE));
    }
}
