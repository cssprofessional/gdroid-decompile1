package io.ktor.http.cio;

import io.ktor.http.HttpMethod;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.StringsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: RequestResponseBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestResponseBuilder {
    public final Sink packet = BytePacketBuilderKt.BytePacketBuilder();

    public final void requestLine(HttpMethod method, CharSequence uri, CharSequence version) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(version, "version");
        StringsKt.writeText$default(this.packet, method.getValue(), 0, 0, null, 14, null);
        this.packet.writeByte((byte) 32);
        StringsKt.writeText$default(this.packet, uri, 0, 0, null, 14, null);
        this.packet.writeByte((byte) 32);
        StringsKt.writeText$default(this.packet, version, 0, 0, null, 14, null);
        this.packet.writeByte((byte) 13);
        this.packet.writeByte((byte) 10);
    }

    public final void headerLine(CharSequence name, CharSequence value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        BytePacketBuilderKt.append$default(this.packet, name, 0, 0, 6, null);
        BytePacketBuilderKt.append$default(this.packet, ": ", 0, 0, 6, null);
        BytePacketBuilderKt.append$default(this.packet, value, 0, 0, 6, null);
        this.packet.writeByte((byte) 13);
        this.packet.writeByte((byte) 10);
    }

    public final void emptyLine() {
        this.packet.writeByte((byte) 13);
        this.packet.writeByte((byte) 10);
    }

    public final Source build() {
        return BytePacketBuilderKt.build(this.packet);
    }

    public final void release() {
        this.packet.close();
    }
}
