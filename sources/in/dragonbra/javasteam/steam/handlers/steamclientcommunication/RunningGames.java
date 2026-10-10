package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: RunningGames.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RunningGames {
    private final int appId;
    private final String extraInfo;
    private final int timeRunningSec;

    public static /* synthetic */ RunningGames copy$default(RunningGames runningGames, int i, String str, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = runningGames.appId;
        }
        if ((i3 & 2) != 0) {
            str = runningGames.extraInfo;
        }
        if ((i3 & 4) != 0) {
            i2 = runningGames.timeRunningSec;
        }
        return runningGames.copy(i, str, i2);
    }

    public final int component1() {
        return this.appId;
    }

    public final String component2() {
        return this.extraInfo;
    }

    public final int component3() {
        return this.timeRunningSec;
    }

    public final RunningGames copy(int i, String extraInfo, int i2) {
        Intrinsics.checkNotNullParameter(extraInfo, "extraInfo");
        return new RunningGames(i, extraInfo, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RunningGames)) {
            return false;
        }
        RunningGames runningGames = (RunningGames) obj;
        return this.appId == runningGames.appId && Intrinsics.areEqual(this.extraInfo, runningGames.extraInfo) && this.timeRunningSec == runningGames.timeRunningSec;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.appId) * 31) + this.extraInfo.hashCode()) * 31) + Integer.hashCode(this.timeRunningSec);
    }

    public RunningGames(int i, String extraInfo, int i2) {
        Intrinsics.checkNotNullParameter(extraInfo, "extraInfo");
        this.appId = i;
        this.extraInfo = extraInfo;
        this.timeRunningSec = i2;
    }

    public final int getAppId() {
        return this.appId;
    }

    public final String getExtraInfo() {
        return this.extraInfo;
    }

    public final int getTimeRunningSec() {
        return this.timeRunningSec;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            RunningGames(\n                appId=" + this.appId + ",\n                extraInfo='" + this.extraInfo + "',\n                timeRunningSec=" + this.timeRunningSec + "\n            )\n    ");
    }
}
