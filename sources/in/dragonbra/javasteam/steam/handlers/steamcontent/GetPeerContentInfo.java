package in.dragonbra.javasteam.steam.handlers.steamcontent;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetPeerContentInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GetPeerContentInfo {
    private final List<Integer> appIds;
    private final String ipPublic;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetPeerContentInfo copy$default(GetPeerContentInfo getPeerContentInfo, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getPeerContentInfo.appIds;
        }
        if ((i & 2) != 0) {
            str = getPeerContentInfo.ipPublic;
        }
        return getPeerContentInfo.copy(list, str);
    }

    public final List<Integer> component1() {
        return this.appIds;
    }

    public final String component2() {
        return this.ipPublic;
    }

    public final GetPeerContentInfo copy(List<Integer> appIds, String ipPublic) {
        Intrinsics.checkNotNullParameter(appIds, "appIds");
        Intrinsics.checkNotNullParameter(ipPublic, "ipPublic");
        return new GetPeerContentInfo(appIds, ipPublic);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetPeerContentInfo)) {
            return false;
        }
        GetPeerContentInfo getPeerContentInfo = (GetPeerContentInfo) obj;
        return Intrinsics.areEqual(this.appIds, getPeerContentInfo.appIds) && Intrinsics.areEqual(this.ipPublic, getPeerContentInfo.ipPublic);
    }

    public int hashCode() {
        return (this.appIds.hashCode() * 31) + this.ipPublic.hashCode();
    }

    public String toString() {
        return "GetPeerContentInfo(appIds=" + this.appIds + ", ipPublic=" + this.ipPublic + ")";
    }

    public GetPeerContentInfo(List<Integer> appIds, String ipPublic) {
        Intrinsics.checkNotNullParameter(appIds, "appIds");
        Intrinsics.checkNotNullParameter(ipPublic, "ipPublic");
        this.appIds = appIds;
        this.ipPublic = ipPublic;
    }

    public final List<Integer> getAppIds() {
        return this.appIds;
    }

    public final String getIpPublic() {
        return this.ipPublic;
    }
}
