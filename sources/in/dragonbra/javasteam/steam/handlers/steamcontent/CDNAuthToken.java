package in.dragonbra.javasteam.steam.handlers.steamcontent;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CDNAuthToken.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CDNAuthToken {
    private final Date expiration;
    private final EResult result;
    private final String token;

    public CDNAuthToken(ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.Builder> message) {
        Intrinsics.checkNotNullParameter(message, "message");
        SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response cContentServerDirectory_GetCDNAuthToken_ResponseBuild = ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.Builder) message.getBody()).build();
        this.result = message.getResult();
        String token = cContentServerDirectory_GetCDNAuthToken_ResponseBuild.getToken();
        Intrinsics.checkNotNullExpressionValue(token, "getToken(...)");
        this.token = token;
        this.expiration = new Date(((long) cContentServerDirectory_GetCDNAuthToken_ResponseBuild.getExpirationTime()) * 1000);
    }

    public final EResult getResult() {
        return this.result;
    }

    public final String getToken() {
        return this.token;
    }

    public final Date getExpiration() {
        return this.expiration;
    }
}
