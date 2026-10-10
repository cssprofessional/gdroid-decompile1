package in.dragonbra.javasteam.steam.handlers.steamuserstats;

/* JADX INFO: compiled from: Stats.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Stats {
    private final int statId;
    private final int statValue;

    public static /* synthetic */ Stats copy$default(Stats stats, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = stats.statId;
        }
        if ((i3 & 2) != 0) {
            i2 = stats.statValue;
        }
        return stats.copy(i, i2);
    }

    public final int component1() {
        return this.statId;
    }

    public final int component2() {
        return this.statValue;
    }

    public final Stats copy(int i, int i2) {
        return new Stats(i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stats)) {
            return false;
        }
        Stats stats = (Stats) obj;
        return this.statId == stats.statId && this.statValue == stats.statValue;
    }

    public int hashCode() {
        return (Integer.hashCode(this.statId) * 31) + Integer.hashCode(this.statValue);
    }

    public String toString() {
        return "Stats(statId=" + this.statId + ", statValue=" + this.statValue + ")";
    }

    public Stats(int i, int i2) {
        this.statId = i;
        this.statValue = i2;
    }

    public final int getStatId() {
        return this.statId;
    }

    public final int getStatValue() {
        return this.statValue;
    }
}
