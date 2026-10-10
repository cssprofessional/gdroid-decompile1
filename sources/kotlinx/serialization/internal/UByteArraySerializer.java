package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.UByteArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UByteArraySerializer extends PrimitiveArraySerializer<UByte, UByteArray, Object> implements KSerializer<UByteArray> {
    public static final UByteArraySerializer INSTANCE = new UByteArraySerializer();

    public UByteArraySerializer() {
        super(BuiltinSerializersKt.serializer(UByte.Companion));
    }
}
