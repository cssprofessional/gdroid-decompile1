package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthPollResult.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AuthPollResult {
    private final String accessToken;
    private final String accountName;
    private final String newGuardData;
    private final String refreshToken;

    public AuthPollResult(SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        String accountName = response.getAccountName();
        Intrinsics.checkNotNullExpressionValue(accountName, "getAccountName(...)");
        this.accountName = accountName;
        String refreshToken = response.getRefreshToken();
        Intrinsics.checkNotNullExpressionValue(refreshToken, "getRefreshToken(...)");
        this.refreshToken = refreshToken;
        String accessToken = response.getAccessToken();
        Intrinsics.checkNotNullExpressionValue(accessToken, "getAccessToken(...)");
        this.accessToken = accessToken;
        this.newGuardData = response.getNewGuardData();
    }

    public final String getAccountName() {
        return this.accountName;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getNewGuardData() {
        return this.newGuardData;
    }
}
