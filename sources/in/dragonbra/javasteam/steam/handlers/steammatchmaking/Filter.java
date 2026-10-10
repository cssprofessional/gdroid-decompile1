package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.enums.ELobbyComparison;
import in.dragonbra.javasteam.enums.ELobbyFilterType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Filter.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class Filter {
    private final ELobbyComparison comparison;
    private final ELobbyFilterType filterType;
    private final String key;

    public Filter(ELobbyFilterType filterType, String key, ELobbyComparison comparison) {
        Intrinsics.checkNotNullParameter(filterType, "filterType");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(comparison, "comparison");
        this.filterType = filterType;
        this.key = key;
        this.comparison = comparison;
    }

    public final ELobbyFilterType getFilterType() {
        return this.filterType;
    }

    public final String getKey() {
        return this.key;
    }

    public final ELobbyComparison getComparison() {
        return this.comparison;
    }

    public SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder serialize() {
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder builderNewBuilder = SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.newBuilder();
        builderNewBuilder.setFilterType(this.filterType.code());
        builderNewBuilder.setKey(this.key);
        builderNewBuilder.setComparision(this.comparison.code());
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "apply(...)");
        return builderNewBuilder;
    }
}
