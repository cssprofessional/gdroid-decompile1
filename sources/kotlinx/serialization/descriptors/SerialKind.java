package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes3.dex */
public abstract class SerialKind {
    public /* synthetic */ SerialKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public SerialKind() {
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class ENUM extends SerialKind {
        public static final ENUM INSTANCE = new ENUM();

        public ENUM() {
            super(null);
        }
    }

    public String toString() {
        String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
        Intrinsics.checkNotNull(simpleName);
        return simpleName;
    }

    public int hashCode() {
        return toString().hashCode();
    }
}
