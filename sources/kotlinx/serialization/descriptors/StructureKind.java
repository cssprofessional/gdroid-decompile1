package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes3.dex */
public abstract class StructureKind extends SerialKind {
    public /* synthetic */ StructureKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public StructureKind() {
        super(null);
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class CLASS extends StructureKind {
        public static final CLASS INSTANCE = new CLASS();

        public CLASS() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class LIST extends StructureKind {
        public static final LIST INSTANCE = new LIST();

        public LIST() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class OBJECT extends StructureKind {
        public static final OBJECT INSTANCE = new OBJECT();

        public OBJECT() {
            super(null);
        }
    }
}
