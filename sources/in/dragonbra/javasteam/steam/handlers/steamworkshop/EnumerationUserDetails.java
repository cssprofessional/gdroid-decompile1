package in.dragonbra.javasteam.steam.handlers.steamworkshop;

import in.dragonbra.javasteam.enums.EWorkshopFileAction;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnumerationUserDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumerationUserDetails {
    private int appID;
    private int startIndex;
    private EWorkshopFileAction userAction;

    public static /* synthetic */ EnumerationUserDetails copy$default(EnumerationUserDetails enumerationUserDetails, int i, int i2, EWorkshopFileAction eWorkshopFileAction, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = enumerationUserDetails.appID;
        }
        if ((i3 & 2) != 0) {
            i2 = enumerationUserDetails.startIndex;
        }
        if ((i3 & 4) != 0) {
            eWorkshopFileAction = enumerationUserDetails.userAction;
        }
        return enumerationUserDetails.copy(i, i2, eWorkshopFileAction);
    }

    public final int component1() {
        return this.appID;
    }

    public final int component2() {
        return this.startIndex;
    }

    public final EWorkshopFileAction component3() {
        return this.userAction;
    }

    public final EnumerationUserDetails copy(int i, int i2, EWorkshopFileAction userAction) {
        Intrinsics.checkNotNullParameter(userAction, "userAction");
        return new EnumerationUserDetails(i, i2, userAction);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EnumerationUserDetails)) {
            return false;
        }
        EnumerationUserDetails enumerationUserDetails = (EnumerationUserDetails) obj;
        return this.appID == enumerationUserDetails.appID && this.startIndex == enumerationUserDetails.startIndex && this.userAction == enumerationUserDetails.userAction;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.appID) * 31) + Integer.hashCode(this.startIndex)) * 31) + this.userAction.hashCode();
    }

    public String toString() {
        return "EnumerationUserDetails(appID=" + this.appID + ", startIndex=" + this.startIndex + ", userAction=" + this.userAction + ")";
    }

    public EnumerationUserDetails(int i, int i2, EWorkshopFileAction userAction) {
        Intrinsics.checkNotNullParameter(userAction, "userAction");
        this.appID = i;
        this.startIndex = i2;
        this.userAction = userAction;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final void setAppID(int i) {
        this.appID = i;
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    public final void setStartIndex(int i) {
        this.startIndex = i;
    }

    public final EWorkshopFileAction getUserAction() {
        return this.userAction;
    }

    public final void setUserAction(EWorkshopFileAction eWorkshopFileAction) {
        Intrinsics.checkNotNullParameter(eWorkshopFileAction, "<set-?>");
        this.userAction = eWorkshopFileAction;
    }
}
