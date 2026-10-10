package io.ktor.network.sockets;

import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Sockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SocketsKt {
    public static final ByteReadChannel openReadChannel(AReadable aReadable) {
        Intrinsics.checkNotNullParameter(aReadable, "<this>");
        ByteChannel byteChannel = new ByteChannel(false);
        aReadable.attachForReading(byteChannel);
        return byteChannel;
    }

    public static /* synthetic */ ByteWriteChannel openWriteChannel$default(AWritable aWritable, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return openWriteChannel(aWritable, z);
    }

    public static final ByteWriteChannel openWriteChannel(AWritable aWritable, boolean z) {
        Intrinsics.checkNotNullParameter(aWritable, "<this>");
        ByteChannel byteChannel = new ByteChannel(z);
        aWritable.attachForWriting(byteChannel);
        return byteChannel;
    }

    public static final Connection connection(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return new Connection(socket, openReadChannel(socket), openWriteChannel$default(socket, false, 1, null));
    }
}
