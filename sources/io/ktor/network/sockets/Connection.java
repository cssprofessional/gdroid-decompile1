package io.ktor.network.sockets;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Sockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Connection {
    public final ByteReadChannel input;
    public final ByteWriteChannel output;
    public final Socket socket;

    public Connection(Socket socket, ByteReadChannel input, ByteWriteChannel output) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        this.socket = socket;
        this.input = input;
        this.output = output;
    }

    public final Socket getSocket() {
        return this.socket;
    }

    public final ByteReadChannel getInput() {
        return this.input;
    }

    public final ByteWriteChannel getOutput() {
        return this.output;
    }
}
