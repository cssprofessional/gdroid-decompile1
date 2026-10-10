package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.ULongArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ULongArraySerializer extends PrimitiveArraySerializer<ULong, ULongArray, Object> implements KSerializer<ULongArray> {
    public static final ULongArraySerializer INSTANCE = new ULongArraySerializer();

    public ULongArraySerializer() {
        super(BuiltinSerializersKt.serializer(ULong.Companion));
    }
}
