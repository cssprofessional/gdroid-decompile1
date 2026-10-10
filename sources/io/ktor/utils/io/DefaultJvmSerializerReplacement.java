package io.ktor.utils.io;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmSerializable.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DefaultJvmSerializerReplacement<T> implements Externalizable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 0;
    public JvmSerializer<T> serializer;
    public T value;

    public DefaultJvmSerializerReplacement(JvmSerializer<T> jvmSerializer, T t) {
        this.serializer = jvmSerializer;
        this.value = t;
    }

    public DefaultJvmSerializerReplacement() {
        this(null, null);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeObject(this.serializer);
        JvmSerializer<T> jvmSerializer = this.serializer;
        Intrinsics.checkNotNull(jvmSerializer);
        T t = this.value;
        Intrinsics.checkNotNull(t);
        out.writeObject(jvmSerializer.jvmSerialize(t));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput in2) throws ClassNotFoundException, IOException {
        Intrinsics.checkNotNullParameter(in2, "in");
        Object object = in2.readObject();
        Intrinsics.checkNotNull(object, "null cannot be cast to non-null type io.ktor.utils.io.JvmSerializer<T of io.ktor.utils.io.DefaultJvmSerializerReplacement>");
        JvmSerializer<T> jvmSerializer = (JvmSerializer) object;
        this.serializer = jvmSerializer;
        Intrinsics.checkNotNull(jvmSerializer);
        Object object2 = in2.readObject();
        Intrinsics.checkNotNull(object2, "null cannot be cast to non-null type kotlin.ByteArray");
        this.value = jvmSerializer.jvmDeserialize((byte[]) object2);
    }

    private final Object readResolve() {
        T t = this.value;
        Intrinsics.checkNotNull(t);
        return t;
    }

    /* JADX INFO: compiled from: JvmSerializable.jvm.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
