package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.enums.ELobbyComparison;
import in.dragonbra.javasteam.enums.ELobbyFilterType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Filter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NumericalFilter extends Filter {
    private final int value;

    public final int getValue() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumericalFilter(String key, int i, ELobbyComparison comparison) {
        super(ELobbyFilterType.Numerical, key, comparison);
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(comparison, "comparison");
        this.value = i;
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steammatchmaking.Filter
    public SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder serialize() {
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder builderSerialize = super.serialize();
        builderSerialize.setValue(String.valueOf(this.value));
        return builderSerialize;
    }
}
