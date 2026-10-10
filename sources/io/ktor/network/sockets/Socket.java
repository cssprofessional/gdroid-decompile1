package io.ktor.network.sockets;

import java.io.Closeable;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: compiled from: Sockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface Socket extends Closeable, DisposableHandle, AReadable, AWritable, CoroutineScope {
}
