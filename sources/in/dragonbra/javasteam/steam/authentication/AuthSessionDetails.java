package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.util.HardwareUtils;
import in.dragonbra.javasteam.util.Utils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthSessionDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AuthSessionDetails {
    public IAuthenticator authenticator;
    public EOSType clientOSType;
    public String guardData;
    public String password;
    public boolean persistentSession;
    public String username;
    public String websiteID;
    public String deviceFriendlyName = HardwareUtils.getMachineName(true);
    public SteammessagesAuthSteamclient.EAuthTokenPlatformType platformType = SteammessagesAuthSteamclient.EAuthTokenPlatformType.k_EAuthTokenPlatformType_SteamClient;

    public AuthSessionDetails() {
        EOSType oSType = Utils.getOSType();
        Intrinsics.checkNotNullExpressionValue(oSType, "getOSType(...)");
        this.clientOSType = oSType;
        this.websiteID = "Client";
    }
}
