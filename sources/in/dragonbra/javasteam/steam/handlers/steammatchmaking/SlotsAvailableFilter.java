package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.enums.ELobbyComparison;
import in.dragonbra.javasteam.enums.ELobbyFilterType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms;

/* JADX INFO: compiled from: Filter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SlotsAvailableFilter extends Filter {
    private final int slotsAvailable;

    public final int getSlotsAvailable() {
        return this.slotsAvailable;
    }

    public SlotsAvailableFilter(int i) {
        super(ELobbyFilterType.SlotsAvailable, "", ELobbyComparison.Equal);
        this.slotsAvailable = i;
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steammatchmaking.Filter
    public SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder serialize() {
        SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.Builder builderSerialize = super.serialize();
        builderSerialize.setValue(String.valueOf(this.slotsAvailable));
        return builderSerialize;
    }
}
