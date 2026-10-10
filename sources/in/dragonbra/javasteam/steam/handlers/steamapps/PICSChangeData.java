package in.dragonbra.javasteam.steam.handlers.steamapps;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PICSChangeData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PICSChangeData {
    private final int changeNumber;
    private final int id;
    private final boolean isNeedsToken;

    public final int getId() {
        return this.id;
    }

    public final int getChangeNumber() {
        return this.changeNumber;
    }

    public final boolean isNeedsToken() {
        return this.isNeedsToken;
    }

    public PICSChangeData(SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChange change) {
        Intrinsics.checkNotNullParameter(change, "change");
        this.id = change.getAppid();
        this.changeNumber = change.getChangeNumber();
        this.isNeedsToken = change.getNeedsToken();
    }

    public PICSChangeData(SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChange change) {
        Intrinsics.checkNotNullParameter(change, "change");
        this.id = change.getPackageid();
        this.changeNumber = change.getChangeNumber();
        this.isNeedsToken = change.getNeedsToken();
    }
}
