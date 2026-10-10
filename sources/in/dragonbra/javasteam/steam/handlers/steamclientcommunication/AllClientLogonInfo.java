package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: AllClientLogonInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AllClientLogonInfo {
    private final int refetchIntervalSec;
    private final List<AllClientLogonInfoSession> sessions;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AllClientLogonInfo copy$default(AllClientLogonInfo allClientLogonInfo, List list, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = allClientLogonInfo.sessions;
        }
        if ((i2 & 2) != 0) {
            i = allClientLogonInfo.refetchIntervalSec;
        }
        return allClientLogonInfo.copy(list, i);
    }

    public final List<AllClientLogonInfoSession> component1() {
        return this.sessions;
    }

    public final int component2() {
        return this.refetchIntervalSec;
    }

    public final AllClientLogonInfo copy(List<AllClientLogonInfoSession> sessions, int i) {
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        return new AllClientLogonInfo(sessions, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AllClientLogonInfo)) {
            return false;
        }
        AllClientLogonInfo allClientLogonInfo = (AllClientLogonInfo) obj;
        return Intrinsics.areEqual(this.sessions, allClientLogonInfo.sessions) && this.refetchIntervalSec == allClientLogonInfo.refetchIntervalSec;
    }

    public int hashCode() {
        return (this.sessions.hashCode() * 31) + Integer.hashCode(this.refetchIntervalSec);
    }

    public AllClientLogonInfo(List<AllClientLogonInfoSession> sessions, int i) {
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        this.sessions = sessions;
        this.refetchIntervalSec = i;
    }

    public final List<AllClientLogonInfoSession> getSessions() {
        return this.sessions;
    }

    public final int getRefetchIntervalSec() {
        return this.refetchIntervalSec;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n           AllClientLogonInfo(\n                sessions=" + this.sessions + ",\n                refetchIntervalSec=" + this.refetchIntervalSec + "\n           )\n    ");
    }
}
