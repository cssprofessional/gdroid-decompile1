package in.dragonbra.javasteam.types;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: JobID.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class JobID extends GlobalID {
    public static final Companion Companion = new Companion(null);
    public static final JobID INVALID = new JobID();

    /* JADX INFO: compiled from: JobID.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public JobID() {
        super(0L, 1, null);
    }

    public JobID(long j) {
        super(j);
    }
}
