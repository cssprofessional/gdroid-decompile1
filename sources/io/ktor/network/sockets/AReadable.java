package io.ktor.network.sockets;

import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.WriterJob;

/* JADX INFO: compiled from: Sockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface AReadable {
    WriterJob attachForReading(ByteChannel byteChannel);
}
