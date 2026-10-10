package in.dragonbra.javasteam.steam.discovery;

import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServerInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ServerInfo {
    private Instant lastBadConnectionTimeUtc;
    private final ProtocolTypes protocol;
    private final ServerRecord record;

    public ServerInfo(ServerRecord record, ProtocolTypes protocol) {
        Intrinsics.checkNotNullParameter(record, "record");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        this.record = record;
        this.protocol = protocol;
    }

    public final ProtocolTypes getProtocol() {
        return this.protocol;
    }

    public final ServerRecord getRecord() {
        return this.record;
    }

    public final Instant getLastBadConnectionTimeUtc() {
        return this.lastBadConnectionTimeUtc;
    }

    public final void setLastBadConnectionTimeUtc(Instant instant) {
        this.lastBadConnectionTimeUtc = instant;
    }
}
