package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EPersonaState {
    Offline(0),
    Online(1),
    Busy(2),
    Away(3),
    Snooze(4),
    LookingToTrade(5),
    LookingToPlay(6),
    Invisible(7);

    private final int code;

    EPersonaState(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EPersonaState from(int i) {
        for (EPersonaState ePersonaState : values()) {
            if (ePersonaState.code == i) {
                return ePersonaState;
            }
        }
        return null;
    }
}
