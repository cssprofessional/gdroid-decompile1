package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.enums.ELobbyComparison;
import in.dragonbra.javasteam.enums.ELobbyFilterType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Filter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StringFilter extends Filter {
    private final String value;

    public final String getValue() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringFilter(String key, String value, ELobbyComparison comparison) {
        super(ELobbyFilterType.String, key, comparison);
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(comparison, "comparison");
        this.value = value;
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steammatchmaking.Filter
    public SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder serialize() {
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder builderSerialize = super.serialize();
        builderSerialize.setValue(this.value);
        return builderSerialize;
    }
}
