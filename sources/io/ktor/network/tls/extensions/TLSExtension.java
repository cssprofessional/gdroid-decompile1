package io.ktor.network.tls.extensions;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;

/* JADX INFO: compiled from: TLSExtension.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSExtension {
    public final int length;
    public final Source packet;
    public final TLSExtensionType type;

    public TLSExtension(TLSExtensionType type, int i, Source packet) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(packet, "packet");
        this.type = type;
        this.length = i;
        this.packet = packet;
    }

    public final TLSExtensionType getType() {
        return this.type;
    }

    public final Source getPacket() {
        return this.packet;
    }
}
