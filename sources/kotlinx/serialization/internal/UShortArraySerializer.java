package kotlinx.serialization.internal;

import kotlin.UShort;
import kotlin.UShortArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UShortArraySerializer extends PrimitiveArraySerializer<UShort, UShortArray, Object> implements KSerializer<UShortArray> {
    public static final UShortArraySerializer INSTANCE = new UShortArraySerializer();

    public UShortArraySerializer() {
        super(BuiltinSerializersKt.serializer(UShort.Companion));
    }
}
