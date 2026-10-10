package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: QrAuthSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class QrAuthSession extends AuthSession {
    private String challengeUrl;
    private IChallengeUrlChanged challengeUrlChanged;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QrAuthSession(SteamAuthentication authentication, IAuthenticator iAuthenticator, SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder response) {
        this(authentication, iAuthenticator, response, null, 8, null);
        Intrinsics.checkNotNullParameter(authentication, "authentication");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public /* synthetic */ QrAuthSession(SteamAuthentication steamAuthentication, IAuthenticator iAuthenticator, SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder builder, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(steamAuthentication, iAuthenticator, builder, (i & 8) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null))) : coroutineScope);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public QrAuthSession(SteamAuthentication authentication, IAuthenticator iAuthenticator, SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder response, CoroutineScope defaultScope) {
        Intrinsics.checkNotNullParameter(authentication, "authentication");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(defaultScope, "defaultScope");
        long clientId = response.getClientId();
        byte[] byteArray = response.getRequestId().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> allowedConfirmationsList = response.getAllowedConfirmationsList();
        Intrinsics.checkNotNullExpressionValue(allowedConfirmationsList, "getAllowedConfirmationsList(...)");
        super(authentication, iAuthenticator, clientId, byteArray, allowedConfirmationsList, response.getInterval(), defaultScope);
        String challengeUrl = response.getChallengeUrl();
        Intrinsics.checkNotNullExpressionValue(challengeUrl, "getChallengeUrl(...)");
        this.challengeUrl = challengeUrl;
    }

    public final String getChallengeUrl() {
        return this.challengeUrl;
    }

    public final IChallengeUrlChanged getChallengeUrlChanged() {
        return this.challengeUrlChanged;
    }

    public final void setChallengeUrlChanged(IChallengeUrlChanged iChallengeUrlChanged) {
        this.challengeUrlChanged = iChallengeUrlChanged;
    }

    @Override // in.dragonbra.javasteam.steam.authentication.AuthSession
    public void handlePollAuthSessionStatusResponse$javasteam(SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        super.handlePollAuthSessionStatusResponse$javasteam(response);
        String newChallengeUrl = response.getNewChallengeUrl();
        Intrinsics.checkNotNullExpressionValue(newChallengeUrl, "getNewChallengeUrl(...)");
        if (newChallengeUrl.length() > 0) {
            String newChallengeUrl2 = response.getNewChallengeUrl();
            Intrinsics.checkNotNullExpressionValue(newChallengeUrl2, "getNewChallengeUrl(...)");
            this.challengeUrl = newChallengeUrl2;
            IChallengeUrlChanged iChallengeUrlChanged = this.challengeUrlChanged;
            if (iChallengeUrlChanged != null) {
                iChallengeUrlChanged.onChanged(this);
            }
        }
    }
}
