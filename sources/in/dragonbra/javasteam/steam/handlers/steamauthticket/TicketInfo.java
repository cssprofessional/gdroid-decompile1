package in.dragonbra.javasteam.steam.handlers.steamauthticket;

import in.dragonbra.javasteam.util.Utils;
import java.io.Closeable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TicketInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TicketInfo implements Closeable {
    private final int appID;
    private final SteamAuthTicket handler;
    private final byte[] ticket;
    private final long ticketCRC;

    public TicketInfo(SteamAuthTicket handler, int i, byte[] ticket) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        this.handler = handler;
        this.appID = i;
        this.ticket = ticket;
        this.ticketCRC = Utils.crc32(ticket);
    }

    public final int getAppID$javasteam() {
        return this.appID;
    }

    public final byte[] getTicket() {
        return this.ticket;
    }

    public final long getTicketCRC$javasteam() {
        return this.ticketCRC;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.handler.cancelAuthTicket$javasteam(this);
    }
}
