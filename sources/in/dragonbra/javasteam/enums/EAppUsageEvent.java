package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EAppUsageEvent {
    GameLaunch(1),
    GameLaunchTrial(2),
    Media(3),
    PreloadStart(4),
    PreloadFinish(5),
    MarketingMessageView(6),
    InGameAdViewed(7),
    GameLaunchFreeWeekend(8);

    private final int code;

    EAppUsageEvent(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EAppUsageEvent from(int i) {
        for (EAppUsageEvent eAppUsageEvent : values()) {
            if (eAppUsageEvent.code == i) {
                return eAppUsageEvent;
            }
        }
        return null;
    }
}
