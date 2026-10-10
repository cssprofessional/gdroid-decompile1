package io.ktor.network.tls;

import io.ktor.utils.io.core.ByteReadPacketKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Headers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSRecord {
    public final Source packet;
    public final TLSRecordType type;
    public final TLSVersion version;

    public TLSRecord() {
        this(null, null, null, 7, null);
    }

    public TLSRecord(TLSRecordType type, TLSVersion version, Source packet) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(packet, "packet");
        this.type = type;
        this.version = version;
        this.packet = packet;
    }

    public /* synthetic */ TLSRecord(TLSRecordType tLSRecordType, TLSVersion tLSVersion, Source source, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TLSRecordType.Handshake : tLSRecordType, (i & 2) != 0 ? TLSVersion.TLS12 : tLSVersion, (i & 4) != 0 ? ByteReadPacketKt.getByteReadPacketEmpty() : source);
    }

    public final TLSRecordType getType() {
        return this.type;
    }

    public final TLSVersion getVersion() {
        return this.version;
    }

    public final Source getPacket() {
        return this.packet;
    }
}
