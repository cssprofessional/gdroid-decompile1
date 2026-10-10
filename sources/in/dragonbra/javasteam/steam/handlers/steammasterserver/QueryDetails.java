package in.dragonbra.javasteam.steam.handlers.steammasterserver;

import in.dragonbra.javasteam.enums.ERegionCode;
import java.net.InetAddress;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class QueryDetails {
    private int appID;
    private String filter;
    private InetAddress geoLocatedIP;
    private int maxServers;
    private ERegionCode region;

    public static /* synthetic */ QueryDetails copy$default(QueryDetails queryDetails, int i, String str, ERegionCode eRegionCode, InetAddress inetAddress, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = queryDetails.appID;
        }
        if ((i3 & 2) != 0) {
            str = queryDetails.filter;
        }
        String str2 = str;
        if ((i3 & 4) != 0) {
            eRegionCode = queryDetails.region;
        }
        ERegionCode eRegionCode2 = eRegionCode;
        if ((i3 & 8) != 0) {
            inetAddress = queryDetails.geoLocatedIP;
        }
        InetAddress inetAddress2 = inetAddress;
        if ((i3 & 16) != 0) {
            i2 = queryDetails.maxServers;
        }
        return queryDetails.copy(i, str2, eRegionCode2, inetAddress2, i2);
    }

    public final int component1() {
        return this.appID;
    }

    public final String component2() {
        return this.filter;
    }

    public final ERegionCode component3() {
        return this.region;
    }

    public final InetAddress component4() {
        return this.geoLocatedIP;
    }

    public final int component5() {
        return this.maxServers;
    }

    public final QueryDetails copy(int i, String str, ERegionCode region, InetAddress inetAddress, int i2) {
        Intrinsics.checkNotNullParameter(region, "region");
        return new QueryDetails(i, str, region, inetAddress, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryDetails)) {
            return false;
        }
        QueryDetails queryDetails = (QueryDetails) obj;
        return this.appID == queryDetails.appID && Intrinsics.areEqual(this.filter, queryDetails.filter) && this.region == queryDetails.region && Intrinsics.areEqual(this.geoLocatedIP, queryDetails.geoLocatedIP) && this.maxServers == queryDetails.maxServers;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.appID) * 31;
        String str = this.filter;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.region.hashCode()) * 31;
        InetAddress inetAddress = this.geoLocatedIP;
        return ((iHashCode2 + (inetAddress != null ? inetAddress.hashCode() : 0)) * 31) + Integer.hashCode(this.maxServers);
    }

    public String toString() {
        return "QueryDetails(appID=" + this.appID + ", filter=" + this.filter + ", region=" + this.region + ", geoLocatedIP=" + this.geoLocatedIP + ", maxServers=" + this.maxServers + ")";
    }

    public QueryDetails(int i, String str, ERegionCode region, InetAddress inetAddress, int i2) {
        Intrinsics.checkNotNullParameter(region, "region");
        this.appID = i;
        this.filter = str;
        this.region = region;
        this.geoLocatedIP = inetAddress;
        this.maxServers = i2;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final void setAppID(int i) {
        this.appID = i;
    }

    public final String getFilter() {
        return this.filter;
    }

    public final void setFilter(String str) {
        this.filter = str;
    }

    public final ERegionCode getRegion() {
        return this.region;
    }

    public final void setRegion(ERegionCode eRegionCode) {
        Intrinsics.checkNotNullParameter(eRegionCode, "<set-?>");
        this.region = eRegionCode;
    }

    public final InetAddress getGeoLocatedIP() {
        return this.geoLocatedIP;
    }

    public final void setGeoLocatedIP(InetAddress inetAddress) {
        this.geoLocatedIP = inetAddress;
    }

    public final int getMaxServers() {
        return this.maxServers;
    }

    public final void setMaxServers(int i) {
        this.maxServers = i;
    }
}
