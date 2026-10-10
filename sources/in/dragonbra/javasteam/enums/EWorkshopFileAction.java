package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EWorkshopFileAction {
    Played(0),
    Completed(1);

    private final int code;

    EWorkshopFileAction(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EWorkshopFileAction from(int i) {
        for (EWorkshopFileAction eWorkshopFileAction : values()) {
            if (eWorkshopFileAction.code == i) {
                return eWorkshopFileAction;
            }
        }
        return null;
    }
}
