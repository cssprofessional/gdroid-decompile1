package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.UIntArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UIntArraySerializer extends PrimitiveArraySerializer<UInt, UIntArray, Object> implements KSerializer<UIntArray> {
    public static final UIntArraySerializer INSTANCE = new UIntArraySerializer();

    public UIntArraySerializer() {
        super(BuiltinSerializersKt.serializer(UInt.Companion));
    }
}
