package io.ktor.utils.io;

/* JADX INFO: compiled from: ByteChannel.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteChannel_jvmKt {
    public static final boolean getDEVELOPMENT_MODE() {
        String property = System.getProperty("io.ktor.development");
        return property != null && Boolean.parseBoolean(property);
    }
}
