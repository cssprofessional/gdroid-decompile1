package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.enums.ELobbyComparison;
import in.dragonbra.javasteam.enums.ELobbyDistanceFilter;
import in.dragonbra.javasteam.enums.ELobbyFilterType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Filter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DistanceFilter extends Filter {
    private final ELobbyDistanceFilter value;

    public final ELobbyDistanceFilter getValue() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistanceFilter(ELobbyDistanceFilter value) {
        super(ELobbyFilterType.Distance, "", ELobbyComparison.Equal);
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steammatchmaking.Filter
    public SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder serialize() {
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder builderSerialize = super.serialize();
        builderSerialize.setValue(String.valueOf(this.value.code()));
        return builderSerialize;
    }
}
