package io.ktor.http;

import io.ktor.util.StringValues;

/* JADX INFO: compiled from: Parameters.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface Parameters extends StringValues {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: Parameters.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final Parameters Empty = EmptyParameters.INSTANCE;

        public final Parameters getEmpty() {
            return Empty;
        }
    }
}
