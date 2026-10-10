package in.dragonbra.javasteam.steam.handlers.steamuser;

import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.util.Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnonymousLogOnDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AnonymousLogOnDetails {
    private Integer cellID;
    private String clientLanguage;
    private EOSType clientOSType;

    public AnonymousLogOnDetails() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ AnonymousLogOnDetails copy$default(AnonymousLogOnDetails anonymousLogOnDetails, Integer num, EOSType eOSType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            num = anonymousLogOnDetails.cellID;
        }
        if ((i & 2) != 0) {
            eOSType = anonymousLogOnDetails.clientOSType;
        }
        if ((i & 4) != 0) {
            str = anonymousLogOnDetails.clientLanguage;
        }
        return anonymousLogOnDetails.copy(num, eOSType, str);
    }

    public final Integer component1() {
        return this.cellID;
    }

    public final EOSType component2() {
        return this.clientOSType;
    }

    public final String component3() {
        return this.clientLanguage;
    }

    public final AnonymousLogOnDetails copy(Integer num, EOSType clientOSType, String clientLanguage) {
        Intrinsics.checkNotNullParameter(clientOSType, "clientOSType");
        Intrinsics.checkNotNullParameter(clientLanguage, "clientLanguage");
        return new AnonymousLogOnDetails(num, clientOSType, clientLanguage);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnonymousLogOnDetails)) {
            return false;
        }
        AnonymousLogOnDetails anonymousLogOnDetails = (AnonymousLogOnDetails) obj;
        return Intrinsics.areEqual(this.cellID, anonymousLogOnDetails.cellID) && this.clientOSType == anonymousLogOnDetails.clientOSType && Intrinsics.areEqual(this.clientLanguage, anonymousLogOnDetails.clientLanguage);
    }

    public int hashCode() {
        Integer num = this.cellID;
        return ((((num == null ? 0 : num.hashCode()) * 31) + this.clientOSType.hashCode()) * 31) + this.clientLanguage.hashCode();
    }

    public String toString() {
        return "AnonymousLogOnDetails(cellID=" + this.cellID + ", clientOSType=" + this.clientOSType + ", clientLanguage=" + this.clientLanguage + ")";
    }

    public AnonymousLogOnDetails(Integer num, EOSType clientOSType, String clientLanguage) {
        Intrinsics.checkNotNullParameter(clientOSType, "clientOSType");
        Intrinsics.checkNotNullParameter(clientLanguage, "clientLanguage");
        this.cellID = num;
        this.clientOSType = clientOSType;
        this.clientLanguage = clientLanguage;
    }

    public final Integer getCellID() {
        return this.cellID;
    }

    public final void setCellID(Integer num) {
        this.cellID = num;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ AnonymousLogOnDetails(Integer num, EOSType eOSType, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        num = (i & 1) != 0 ? null : num;
        if ((i & 2) != 0) {
            eOSType = Utils.getOSType();
            Intrinsics.checkNotNullExpressionValue(eOSType, "getOSType(...)");
        }
        this(num, eOSType, (i & 4) != 0 ? "english" : str);
    }

    public final EOSType getClientOSType() {
        return this.clientOSType;
    }

    public final void setClientOSType(EOSType eOSType) {
        Intrinsics.checkNotNullParameter(eOSType, "<set-?>");
        this.clientOSType = eOSType;
    }

    public final String getClientLanguage() {
        return this.clientLanguage;
    }

    public final void setClientLanguage(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.clientLanguage = str;
    }
}
