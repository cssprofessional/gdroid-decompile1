package io.ktor.utils.io;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: IODispatcher.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class IODispatcher_jvmKt {
    public static final CoroutineDispatcher ioDispatcher() {
        return Dispatchers.getIO();
    }
}
