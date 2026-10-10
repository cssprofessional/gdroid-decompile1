package io.ktor.network.tls;

import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.ByteReadPacketKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UtilsKt {
    public static final Sink Digest() {
        return Digest.m8118constructorimpl(BytePacketBuilderKt.BytePacketBuilder());
    }

    /* JADX INFO: renamed from: plusAssign-Hh8V18w, reason: not valid java name */
    public static final void m8129plusAssignHh8V18w(Sink sink, TLSHandshake record) throws TLSException {
        Intrinsics.checkNotNullParameter(sink, "$v$c$io-ktor-network-tls-Digest$-$this$plusAssign$0");
        Intrinsics.checkNotNullParameter(record, "record");
        if (record.getType() != TLSHandshakeType.HelloRequest) {
            Buffer buffer = new Buffer();
            RenderKt.writeTLSHandshakeType(buffer, record.getType(), (int) ByteReadPacketKt.getRemaining(record.getPacket()));
            if (ByteReadPacketKt.getRemaining(record.getPacket()) > 0) {
                BytePacketBuilderKt.writePacket(buffer, ByteReadPacketKt.copy(record.getPacket()));
            }
            Digest.m8123updateimpl(sink, buffer);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
