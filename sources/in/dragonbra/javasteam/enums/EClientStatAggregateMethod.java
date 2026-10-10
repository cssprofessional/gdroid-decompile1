package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EClientStatAggregateMethod {
    LatestOnly(0),
    Sum(1),
    Event(2),
    Scalar(3);

    private final int code;

    EClientStatAggregateMethod(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EClientStatAggregateMethod from(int i) {
        for (EClientStatAggregateMethod eClientStatAggregateMethod : values()) {
            if (eClientStatAggregateMethod.code == i) {
                return eClientStatAggregateMethod;
            }
        }
        return null;
    }
}
