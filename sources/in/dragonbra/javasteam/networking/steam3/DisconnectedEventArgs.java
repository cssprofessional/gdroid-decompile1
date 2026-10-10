package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.util.event.EventArgs;

/* JADX INFO: loaded from: classes.dex */
public class DisconnectedEventArgs extends EventArgs {
    private final boolean userInitiated;

    public DisconnectedEventArgs(boolean z) {
        this.userInitiated = z;
    }

    public boolean isUserInitiated() {
        return this.userInitiated;
    }
}
