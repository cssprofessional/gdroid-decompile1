package in.dragonbra.javasteam.steam.handlers.steamapps;

/* JADX INFO: compiled from: AppProcessInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AppProcessInfo {
    private final boolean parentIsSteam;
    private final int processId;
    private final int processIdParent;

    public static /* synthetic */ AppProcessInfo copy$default(AppProcessInfo appProcessInfo, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = appProcessInfo.processId;
        }
        if ((i3 & 2) != 0) {
            i2 = appProcessInfo.processIdParent;
        }
        if ((i3 & 4) != 0) {
            z = appProcessInfo.parentIsSteam;
        }
        return appProcessInfo.copy(i, i2, z);
    }

    public final int component1() {
        return this.processId;
    }

    public final int component2() {
        return this.processIdParent;
    }

    public final boolean component3() {
        return this.parentIsSteam;
    }

    public final AppProcessInfo copy(int i, int i2, boolean z) {
        return new AppProcessInfo(i, i2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppProcessInfo)) {
            return false;
        }
        AppProcessInfo appProcessInfo = (AppProcessInfo) obj;
        return this.processId == appProcessInfo.processId && this.processIdParent == appProcessInfo.processIdParent && this.parentIsSteam == appProcessInfo.parentIsSteam;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.processId) * 31) + Integer.hashCode(this.processIdParent)) * 31) + Boolean.hashCode(this.parentIsSteam);
    }

    public String toString() {
        return "AppProcessInfo(processId=" + this.processId + ", processIdParent=" + this.processIdParent + ", parentIsSteam=" + this.parentIsSteam + ")";
    }

    public AppProcessInfo(int i, int i2, boolean z) {
        this.processId = i;
        this.processIdParent = i2;
        this.parentIsSteam = z;
    }

    public final int getProcessId() {
        return this.processId;
    }

    public final int getProcessIdParent() {
        return this.processIdParent;
    }

    public final boolean getParentIsSteam() {
        return this.parentIsSteam;
    }
}
