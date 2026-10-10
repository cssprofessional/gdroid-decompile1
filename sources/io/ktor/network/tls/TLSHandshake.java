package io.ktor.network.tls;

import io.ktor.utils.io.core.ByteReadPacketKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Headers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSHandshake {
    public TLSHandshakeType type = TLSHandshakeType.HelloRequest;
    public Source packet = ByteReadPacketKt.getByteReadPacketEmpty();

    public final TLSHandshakeType getType() {
        return this.type;
    }

    public final void setType(TLSHandshakeType tLSHandshakeType) {
        Intrinsics.checkNotNullParameter(tLSHandshakeType, "<set-?>");
        this.type = tLSHandshakeType;
    }

    public final Source getPacket() {
        return this.packet;
    }

    public final void setPacket(Source source) {
        Intrinsics.checkNotNullParameter(source, "<set-?>");
        this.packet = source;
    }
}
