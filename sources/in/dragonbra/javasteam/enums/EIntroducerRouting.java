package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EIntroducerRouting {
    P2PVoiceChat(1),
    P2PNetworking(2);

    private final int code;

    EIntroducerRouting(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EIntroducerRouting from(int i) {
        for (EIntroducerRouting eIntroducerRouting : values()) {
            if (eIntroducerRouting.code == i) {
                return eIntroducerRouting;
            }
        }
        return null;
    }
}
