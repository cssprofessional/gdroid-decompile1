package in.dragonbra.javasteam.steam.handlers.steamapps;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PICSRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PICSRequest {
    private long accessToken;
    private int id;

    public PICSRequest() {
        this(0, 0L, 3, null);
    }

    public PICSRequest(int i) {
        this(i, 0L, 2, null);
    }

    public PICSRequest(int i, long j) {
        this.id = i;
        this.accessToken = j;
    }

    public /* synthetic */ PICSRequest(int i, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0L : j);
    }

    public final long getAccessToken() {
        return this.accessToken;
    }

    public final int getId() {
        return this.id;
    }

    public final void setAccessToken(long j) {
        this.accessToken = j;
    }

    public final void setId(int i) {
        this.id = i;
    }
}
