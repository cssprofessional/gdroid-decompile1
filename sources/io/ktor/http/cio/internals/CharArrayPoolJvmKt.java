package io.ktor.http.cio.internals;

/* JADX INFO: compiled from: CharArrayPoolJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CharArrayPoolJvmKt {
    public static final boolean isPoolingDisabled() {
        String property = System.getProperty("ktor.internal.cio.disable.chararray.pooling");
        if (property != null) {
            return Boolean.parseBoolean(property);
        }
        return false;
    }
}
