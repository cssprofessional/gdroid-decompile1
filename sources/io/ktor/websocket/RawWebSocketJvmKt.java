package io.ktor.websocket;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RawWebSocketJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RawWebSocketJvmKt {
    public static /* synthetic */ WebSocketSession RawWebSocket$default(ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, long j, boolean z, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 4) != 0) {
            j = 2147483647L;
        }
        long j2 = j;
        if ((i & 8) != 0) {
            z = false;
        }
        return RawWebSocket(byteReadChannel, byteWriteChannel, j2, z, coroutineContext);
    }

    public static final WebSocketSession RawWebSocket(ByteReadChannel input, ByteWriteChannel output, long j, boolean z, CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        return new RawWebSocketJvm(input, output, j, z, coroutineContext, null, 32, null);
    }
}
