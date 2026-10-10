package io.ktor.http;

import io.ktor.util.StringValues;

/* JADX INFO: compiled from: Headers.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface Headers extends StringValues {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: Headers.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final Headers Empty = EmptyHeaders.INSTANCE;

        public final Headers getEmpty() {
            return Empty;
        }
    }
}
