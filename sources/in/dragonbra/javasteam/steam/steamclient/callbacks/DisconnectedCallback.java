package in.dragonbra.javasteam.steam.steamclient.callbacks;

import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;

/* JADX INFO: compiled from: DisconnectedCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DisconnectedCallback extends CallbackMsg {
    private final boolean isUserInitiated;

    public DisconnectedCallback(boolean z) {
        this.isUserInitiated = z;
    }

    public final boolean isUserInitiated() {
        return this.isUserInitiated;
    }
}
