package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EMobileConfirmationAction {
    None(0),
    Allow(1),
    Cancel(2);

    private final int code;

    EMobileConfirmationAction(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EMobileConfirmationAction from(int i) {
        for (EMobileConfirmationAction eMobileConfirmationAction : values()) {
            if (eMobileConfirmationAction.code == i) {
                return eMobileConfirmationAction;
            }
        }
        return null;
    }
}
