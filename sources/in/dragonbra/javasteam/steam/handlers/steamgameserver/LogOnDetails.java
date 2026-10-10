package in.dragonbra.javasteam.steam.handlers.steamgameserver;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogOnDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LogOnDetails {
    private int appID;
    private String token;

    public static /* synthetic */ LogOnDetails copy$default(LogOnDetails logOnDetails, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = logOnDetails.token;
        }
        if ((i2 & 2) != 0) {
            i = logOnDetails.appID;
        }
        return logOnDetails.copy(str, i);
    }

    public final String component1() {
        return this.token;
    }

    public final int component2() {
        return this.appID;
    }

    public final LogOnDetails copy(String str, int i) {
        return new LogOnDetails(str, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogOnDetails)) {
            return false;
        }
        LogOnDetails logOnDetails = (LogOnDetails) obj;
        return Intrinsics.areEqual(this.token, logOnDetails.token) && this.appID == logOnDetails.appID;
    }

    public int hashCode() {
        String str = this.token;
        return ((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.appID);
    }

    public String toString() {
        return "LogOnDetails(token=" + this.token + ", appID=" + this.appID + ")";
    }

    public LogOnDetails(String str, int i) {
        this.token = str;
        this.appID = i;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setAppID(int i) {
        this.appID = i;
    }

    public final void setToken(String str) {
        this.token = str;
    }
}
