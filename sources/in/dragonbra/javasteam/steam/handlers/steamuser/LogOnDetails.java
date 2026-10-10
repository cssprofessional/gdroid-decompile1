package in.dragonbra.javasteam.steam.handlers.steamuser;

import in.dragonbra.javasteam.enums.EGamingDeviceType;
import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.enums.EUIMode;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.util.HardwareUtils;
import in.dragonbra.javasteam.util.Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogOnDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LogOnDetails {
    private String accessToken;
    private long accountID;
    private long accountInstance;
    private String authCode;
    private Integer cellID;
    private ChatMode chatMode;
    private String clientLanguage;
    private EOSType clientOSType;
    private EGamingDeviceType gamingDeviceType;
    private boolean isSteamDeck;
    private Integer loginID;
    private String machineName;
    private String password;
    private boolean requestSteam2Ticket;
    private boolean shouldRememberPassword;
    private String twoFactorCode;
    private EUIMode uiMode;
    private String username;

    public LogOnDetails() {
        this(null, null, null, null, null, null, false, null, 0L, 0L, false, null, null, null, null, null, null, false, 262143, null);
    }

    public static /* synthetic */ void isSteamDeck$annotations() {
    }

    public final String component1() {
        return this.username;
    }

    public final long component10() {
        return this.accountID;
    }

    public final boolean component11() {
        return this.requestSteam2Ticket;
    }

    public final EOSType component12() {
        return this.clientOSType;
    }

    public final String component13() {
        return this.clientLanguage;
    }

    public final String component14() {
        return this.machineName;
    }

    public final ChatMode component15() {
        return this.chatMode;
    }

    public final EUIMode component16() {
        return this.uiMode;
    }

    public final EGamingDeviceType component17() {
        return this.gamingDeviceType;
    }

    public final boolean component18() {
        return this.isSteamDeck;
    }

    public final String component2() {
        return this.password;
    }

    public final Integer component3() {
        return this.cellID;
    }

    public final Integer component4() {
        return this.loginID;
    }

    public final String component5() {
        return this.authCode;
    }

    public final String component6() {
        return this.twoFactorCode;
    }

    public final boolean component7() {
        return this.shouldRememberPassword;
    }

    public final String component8() {
        return this.accessToken;
    }

    public final long component9() {
        return this.accountInstance;
    }

    public final LogOnDetails copy(String username, String str, Integer num, Integer num2, String str2, String str3, boolean z, String str4, long j, long j2, boolean z2, EOSType clientOSType, String clientLanguage, String machineName, ChatMode chatMode, EUIMode uiMode, EGamingDeviceType gamingDeviceType, boolean z3) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(clientOSType, "clientOSType");
        Intrinsics.checkNotNullParameter(clientLanguage, "clientLanguage");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(chatMode, "chatMode");
        Intrinsics.checkNotNullParameter(uiMode, "uiMode");
        Intrinsics.checkNotNullParameter(gamingDeviceType, "gamingDeviceType");
        return new LogOnDetails(username, str, num, num2, str2, str3, z, str4, j, j2, z2, clientOSType, clientLanguage, machineName, chatMode, uiMode, gamingDeviceType, z3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogOnDetails)) {
            return false;
        }
        LogOnDetails logOnDetails = (LogOnDetails) obj;
        return Intrinsics.areEqual(this.username, logOnDetails.username) && Intrinsics.areEqual(this.password, logOnDetails.password) && Intrinsics.areEqual(this.cellID, logOnDetails.cellID) && Intrinsics.areEqual(this.loginID, logOnDetails.loginID) && Intrinsics.areEqual(this.authCode, logOnDetails.authCode) && Intrinsics.areEqual(this.twoFactorCode, logOnDetails.twoFactorCode) && this.shouldRememberPassword == logOnDetails.shouldRememberPassword && Intrinsics.areEqual(this.accessToken, logOnDetails.accessToken) && this.accountInstance == logOnDetails.accountInstance && this.accountID == logOnDetails.accountID && this.requestSteam2Ticket == logOnDetails.requestSteam2Ticket && this.clientOSType == logOnDetails.clientOSType && Intrinsics.areEqual(this.clientLanguage, logOnDetails.clientLanguage) && Intrinsics.areEqual(this.machineName, logOnDetails.machineName) && this.chatMode == logOnDetails.chatMode && this.uiMode == logOnDetails.uiMode && this.gamingDeviceType == logOnDetails.gamingDeviceType && this.isSteamDeck == logOnDetails.isSteamDeck;
    }

    public int hashCode() {
        int iHashCode = this.username.hashCode() * 31;
        String str = this.password;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.cellID;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.loginID;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.authCode;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.twoFactorCode;
        int iHashCode6 = (((iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31) + Boolean.hashCode(this.shouldRememberPassword)) * 31;
        String str4 = this.accessToken;
        return ((((((((((((((((((((iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31) + Long.hashCode(this.accountInstance)) * 31) + Long.hashCode(this.accountID)) * 31) + Boolean.hashCode(this.requestSteam2Ticket)) * 31) + this.clientOSType.hashCode()) * 31) + this.clientLanguage.hashCode()) * 31) + this.machineName.hashCode()) * 31) + this.chatMode.hashCode()) * 31) + this.uiMode.hashCode()) * 31) + this.gamingDeviceType.hashCode()) * 31) + Boolean.hashCode(this.isSteamDeck);
    }

    public String toString() {
        return "LogOnDetails(username=" + this.username + ", password=" + this.password + ", cellID=" + this.cellID + ", loginID=" + this.loginID + ", authCode=" + this.authCode + ", twoFactorCode=" + this.twoFactorCode + ", shouldRememberPassword=" + this.shouldRememberPassword + ", accessToken=" + this.accessToken + ", accountInstance=" + this.accountInstance + ", accountID=" + this.accountID + ", requestSteam2Ticket=" + this.requestSteam2Ticket + ", clientOSType=" + this.clientOSType + ", clientLanguage=" + this.clientLanguage + ", machineName=" + this.machineName + ", chatMode=" + this.chatMode + ", uiMode=" + this.uiMode + ", gamingDeviceType=" + this.gamingDeviceType + ", isSteamDeck=" + this.isSteamDeck + ")";
    }

    public LogOnDetails(String username, String str, Integer num, Integer num2, String str2, String str3, boolean z, String str4, long j, long j2, boolean z2, EOSType clientOSType, String clientLanguage, String machineName, ChatMode chatMode, EUIMode uiMode, EGamingDeviceType gamingDeviceType, boolean z3) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(clientOSType, "clientOSType");
        Intrinsics.checkNotNullParameter(clientLanguage, "clientLanguage");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(chatMode, "chatMode");
        Intrinsics.checkNotNullParameter(uiMode, "uiMode");
        Intrinsics.checkNotNullParameter(gamingDeviceType, "gamingDeviceType");
        this.username = username;
        this.password = str;
        this.cellID = num;
        this.loginID = num2;
        this.authCode = str2;
        this.twoFactorCode = str3;
        this.shouldRememberPassword = z;
        this.accessToken = str4;
        this.accountInstance = j;
        this.accountID = j2;
        this.requestSteam2Ticket = z2;
        this.clientOSType = clientOSType;
        this.clientLanguage = clientLanguage;
        this.machineName = machineName;
        this.chatMode = chatMode;
        this.uiMode = uiMode;
        this.gamingDeviceType = gamingDeviceType;
        this.isSteamDeck = z3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ LogOnDetails(String str, String str2, Integer num, Integer num2, String str3, String str4, boolean z, String str5, long j, long j2, boolean z2, EOSType eOSType, String str6, String str7, ChatMode chatMode, EUIMode eUIMode, EGamingDeviceType eGamingDeviceType, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        EOSType oSType;
        EOSType eOSType2;
        String machineName;
        String str8 = (i & 1) != 0 ? "" : str;
        String str9 = (i & 2) != 0 ? null : str2;
        Integer num3 = (i & 4) != 0 ? null : num;
        Integer num4 = (i & 8) != 0 ? null : num2;
        String str10 = (i & 16) != 0 ? null : str3;
        String str11 = (i & 32) != 0 ? null : str4;
        boolean z4 = (i & 64) != 0 ? false : z;
        String str12 = (i & 128) == 0 ? str5 : null;
        long j3 = (i & 256) != 0 ? 1L : j;
        long j4 = (i & 512) != 0 ? 0L : j2;
        boolean z5 = (i & 1024) != 0 ? false : z2;
        if ((i & 2048) != 0) {
            oSType = Utils.getOSType();
            Intrinsics.checkNotNullExpressionValue(oSType, "getOSType(...)");
        } else {
            oSType = eOSType;
        }
        String str13 = (i & 4096) != 0 ? "english" : str6;
        if ((i & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
            machineName = HardwareUtils.getMachineName(true);
            eOSType2 = oSType;
            Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
        } else {
            eOSType2 = oSType;
            machineName = str7;
        }
        this(str8, str9, num3, num4, str10, str11, z4, str12, j3, j4, z5, eOSType2, str13, machineName, (i & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0 ? ChatMode.DEFAULT : chatMode, (i & 32768) != 0 ? EUIMode.Unknown : eUIMode, (i & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0 ? EGamingDeviceType.Unknown : eGamingDeviceType, (i & 131072) != 0 ? false : z3);
    }

    public final String getUsername() {
        return this.username;
    }

    public final void setUsername(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.username = str;
    }

    public final String getPassword() {
        return this.password;
    }

    public final void setPassword(String str) {
        this.password = str;
    }

    public final Integer getCellID() {
        return this.cellID;
    }

    public final void setCellID(Integer num) {
        this.cellID = num;
    }

    public final Integer getLoginID() {
        return this.loginID;
    }

    public final void setLoginID(Integer num) {
        this.loginID = num;
    }

    public final String getAuthCode() {
        return this.authCode;
    }

    public final void setAuthCode(String str) {
        this.authCode = str;
    }

    public final String getTwoFactorCode() {
        return this.twoFactorCode;
    }

    public final void setTwoFactorCode(String str) {
        this.twoFactorCode = str;
    }

    public final boolean getShouldRememberPassword() {
        return this.shouldRememberPassword;
    }

    public final void setShouldRememberPassword(boolean z) {
        this.shouldRememberPassword = z;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final void setAccessToken(String str) {
        this.accessToken = str;
    }

    public final long getAccountInstance() {
        return this.accountInstance;
    }

    public final void setAccountInstance(long j) {
        this.accountInstance = j;
    }

    public final long getAccountID() {
        return this.accountID;
    }

    public final void setAccountID(long j) {
        this.accountID = j;
    }

    public final boolean getRequestSteam2Ticket() {
        return this.requestSteam2Ticket;
    }

    public final void setRequestSteam2Ticket(boolean z) {
        this.requestSteam2Ticket = z;
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

    public final String getMachineName() {
        return this.machineName;
    }

    public final void setMachineName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.machineName = str;
    }

    public final ChatMode getChatMode() {
        return this.chatMode;
    }

    public final void setChatMode(ChatMode chatMode) {
        Intrinsics.checkNotNullParameter(chatMode, "<set-?>");
        this.chatMode = chatMode;
    }

    public final EUIMode getUiMode() {
        return this.uiMode;
    }

    public final void setUiMode(EUIMode eUIMode) {
        Intrinsics.checkNotNullParameter(eUIMode, "<set-?>");
        this.uiMode = eUIMode;
    }

    public final EGamingDeviceType getGamingDeviceType() {
        return this.gamingDeviceType;
    }

    public final void setGamingDeviceType(EGamingDeviceType eGamingDeviceType) {
        Intrinsics.checkNotNullParameter(eGamingDeviceType, "<set-?>");
        this.gamingDeviceType = eGamingDeviceType;
    }

    public final boolean isSteamDeck() {
        return this.isSteamDeck;
    }

    public final void setSteamDeck(boolean z) {
        this.isSteamDeck = z;
    }
}
