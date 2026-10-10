package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatInfoType {
    StateChange(1),
    InfoUpdate(2),
    MemberLimitChange(3);

    private final int code;

    EChatInfoType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatInfoType from(int i) {
        for (EChatInfoType eChatInfoType : values()) {
            if (eChatInfoType.code == i) {
                return eChatInfoType;
            }
        }
        return null;
    }
}
