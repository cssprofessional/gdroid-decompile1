package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccessTokenGenerateResult.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AccessTokenGenerateResult {
    private final String accessToken;
    private final String refreshToken;

    public AccessTokenGenerateResult(SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        String refreshToken = response.getRefreshToken();
        Intrinsics.checkNotNullExpressionValue(refreshToken, "getRefreshToken(...)");
        this.refreshToken = refreshToken;
        String accessToken = response.getAccessToken();
        Intrinsics.checkNotNullExpressionValue(accessToken, "getAccessToken(...)");
        this.accessToken = accessToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }
}
