package in.dragonbra.javasteam.steam.handlers.steamuserstats;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AchievementBlocks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AchievementBlocks {
    private final int achievementId;
    private final String description;
    private final String displayName;
    private final boolean hidden;
    private final String icon;
    private final String iconGray;
    private final String name;
    private final List<Integer> unlockTime;

    public final int component1() {
        return this.achievementId;
    }

    public final List<Integer> component2() {
        return this.unlockTime;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.displayName;
    }

    public final String component5() {
        return this.description;
    }

    public final String component6() {
        return this.icon;
    }

    public final String component7() {
        return this.iconGray;
    }

    public final boolean component8() {
        return this.hidden;
    }

    public final AchievementBlocks copy(int i, List<Integer> unlockTime, String str, String str2, String str3, String str4, String str5, boolean z) {
        Intrinsics.checkNotNullParameter(unlockTime, "unlockTime");
        return new AchievementBlocks(i, unlockTime, str, str2, str3, str4, str5, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AchievementBlocks)) {
            return false;
        }
        AchievementBlocks achievementBlocks = (AchievementBlocks) obj;
        return this.achievementId == achievementBlocks.achievementId && Intrinsics.areEqual(this.unlockTime, achievementBlocks.unlockTime) && Intrinsics.areEqual(this.name, achievementBlocks.name) && Intrinsics.areEqual(this.displayName, achievementBlocks.displayName) && Intrinsics.areEqual(this.description, achievementBlocks.description) && Intrinsics.areEqual(this.icon, achievementBlocks.icon) && Intrinsics.areEqual(this.iconGray, achievementBlocks.iconGray) && this.hidden == achievementBlocks.hidden;
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.achievementId) * 31) + this.unlockTime.hashCode()) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.displayName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.icon;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.iconGray;
        return ((iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31) + Boolean.hashCode(this.hidden);
    }

    public String toString() {
        return "AchievementBlocks(achievementId=" + this.achievementId + ", unlockTime=" + this.unlockTime + ", name=" + this.name + ", displayName=" + this.displayName + ", description=" + this.description + ", icon=" + this.icon + ", iconGray=" + this.iconGray + ", hidden=" + this.hidden + ")";
    }

    public AchievementBlocks(int i, List<Integer> unlockTime, String str, String str2, String str3, String str4, String str5, boolean z) {
        Intrinsics.checkNotNullParameter(unlockTime, "unlockTime");
        this.achievementId = i;
        this.unlockTime = unlockTime;
        this.name = str;
        this.displayName = str2;
        this.description = str3;
        this.icon = str4;
        this.iconGray = str5;
        this.hidden = z;
    }

    public /* synthetic */ AchievementBlocks(int i, List list, String str, String str2, String str3, String str4, String str5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, list, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? false : z);
    }

    public final int getAchievementId() {
        return this.achievementId;
    }

    public final List<Integer> getUnlockTime() {
        return this.unlockTime;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getIconGray() {
        return this.iconGray;
    }

    public final boolean getHidden() {
        return this.hidden;
    }

    public final boolean isUnlocked() {
        List<Integer> list = this.unlockTime;
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((Number) it.next()).intValue() > 0) {
                return true;
            }
        }
        return false;
    }

    public final int getUnlockTimestamp() {
        Object next;
        Iterator<T> it = this.unlockTime.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Number) next).intValue() > 0) {
                break;
            }
        }
        Integer num = (Integer) next;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final String getFormattedUnlockTime() {
        int unlockTimestamp = getUnlockTimestamp();
        if (unlockTimestamp == 0) {
            return null;
        }
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(((long) unlockTimestamp) * 1000));
    }
}
