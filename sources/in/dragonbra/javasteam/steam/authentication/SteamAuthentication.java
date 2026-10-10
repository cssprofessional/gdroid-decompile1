package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.rpc.service.Authentication;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.SteamID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: SteamAuthentication.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamAuthentication {
    private final Authentication authenticationService;
    private final SteamClient steamClient;

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.SteamAuthentication$getPasswordRSAPublicKey$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamAuthentication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication", f = "SteamAuthentication.kt", l = {57}, m = "getPasswordRSAPublicKey", v = 1)
    public static final class C00101 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C00101(Continuation<? super C00101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return SteamAuthentication.this.getPasswordRSAPublicKey(null, this);
        }
    }

    public final CompletableFuture<CredentialsAuthSession> beginAuthSessionViaCredentials(AuthSessionDetails authSessionDetails) throws AuthenticationException {
        Intrinsics.checkNotNullParameter(authSessionDetails, "authSessionDetails");
        return beginAuthSessionViaCredentials$default(this, authSessionDetails, null, 2, null);
    }

    public final CompletableFuture<QrAuthSession> beginAuthSessionViaQR(AuthSessionDetails authSessionDetails) throws AuthenticationException, CancellationException {
        Intrinsics.checkNotNullParameter(authSessionDetails, "authSessionDetails");
        return beginAuthSessionViaQR$default(this, authSessionDetails, null, 2, null);
    }

    public final CompletableFuture<AccessTokenGenerateResult> generateAccessTokenForApp(SteamID steamID, String refreshToken) throws IllegalArgumentException {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return generateAccessTokenForApp$default(this, steamID, refreshToken, false, null, 12, null);
    }

    public final CompletableFuture<AccessTokenGenerateResult> generateAccessTokenForApp(SteamID steamID, String refreshToken, boolean z) throws IllegalArgumentException {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return generateAccessTokenForApp$default(this, steamID, refreshToken, z, null, 8, null);
    }

    public SteamAuthentication(SteamClient steamClient) {
        Intrinsics.checkNotNullParameter(steamClient, "steamClient");
        this.steamClient = steamClient;
        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) steamClient.getHandler(SteamUnifiedMessages.class);
        if (steamUnifiedMessages == null) {
            throw new NullPointerException("Unable to get SteamUnifiedMessages handler");
        }
        this.authenticationService = (Authentication) steamUnifiedMessages.createService(Authentication.class);
    }

    public final Authentication getAuthenticationService$javasteam() {
        return this.authenticationService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getPasswordRSAPublicKey(java.lang.String r6, kotlin.coroutines.Continuation<? super in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Response.Builder> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof in.dragonbra.javasteam.steam.authentication.SteamAuthentication.C00101
            if (r0 == 0) goto L13
            r0 = r7
            in.dragonbra.javasteam.steam.authentication.SteamAuthentication$getPasswordRSAPublicKey$1 r0 = (in.dragonbra.javasteam.steam.authentication.SteamAuthentication.C00101) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            in.dragonbra.javasteam.steam.authentication.SteamAuthentication$getPasswordRSAPublicKey$1 r0 = new in.dragonbra.javasteam.steam.authentication.SteamAuthentication$getPasswordRSAPublicKey$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder r5 = (in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Request.Builder) r5
            java.lang.Object r5 = r0.L$0
            java.lang.String r5 = (java.lang.String) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L67
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder r7 = in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Request.newBuilder()
            r7.setAccountName(r6)
            in.dragonbra.javasteam.rpc.service.Authentication r5 = r5.authenticationService
            in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request r2 = r7.build()
            java.lang.String r4 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            in.dragonbra.javasteam.types.AsyncJobSingle r5 = r5.getPasswordRSAPublicKey(r2)
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$0 = r6
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r7 = r5.await(r0)
            if (r7 != r1) goto L67
            return r1
        L67:
            in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse r7 = (in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse) r7
            in.dragonbra.javasteam.enums.EResult r5 = r7.getResult()
            in.dragonbra.javasteam.enums.EResult r6 = in.dragonbra.javasteam.enums.EResult.OK
            if (r5 != r6) goto L76
            com.google.protobuf.GeneratedMessage$Builder r5 = r7.getBody()
            return r5
        L76:
            in.dragonbra.javasteam.steam.authentication.AuthenticationException r5 = new in.dragonbra.javasteam.steam.authentication.AuthenticationException
            java.lang.String r6 = "Failed to get password public key"
            in.dragonbra.javasteam.enums.EResult r7 = r7.getResult()
            r5.<init>(r6, r7)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.authentication.SteamAuthentication.getPasswordRSAPublicKey(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.SteamAuthentication$generateAccessTokenForApp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamAuthentication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication$generateAccessTokenForApp$1", f = "SteamAuthentication.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class C00091 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AccessTokenGenerateResult>, Object> {
        final /* synthetic */ boolean $allowRenewal;
        final /* synthetic */ String $refreshToken;
        final /* synthetic */ SteamID $steamID;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00091(String str, SteamID steamID, boolean z, Continuation<? super C00091> continuation) {
            super(2, continuation);
            this.$refreshToken = str;
            this.$steamID = steamID;
            this.$allowRenewal = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamAuthentication.this.new C00091(this.$refreshToken, this.$steamID, this.$allowRenewal, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AccessTokenGenerateResult> continuation) {
            return ((C00091) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Request.Builder builderNewBuilder = SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Request.newBuilder();
                String str = this.$refreshToken;
                SteamID steamID = this.$steamID;
                boolean z = this.$allowRenewal;
                builderNewBuilder.setRefreshToken(str);
                builderNewBuilder.setSteamid(steamID.convertToUInt64());
                if (z) {
                    builderNewBuilder.setRenewalType(SteammessagesAuthSteamclient.ETokenRenewalType.k_ETokenRenewalType_Allow);
                }
                Authentication authenticationService$javasteam = SteamAuthentication.this.getAuthenticationService$javasteam();
                SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Request cAuthentication_AccessToken_GenerateForApp_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cAuthentication_AccessToken_GenerateForApp_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Response.Builder>> asyncJobSingleGenerateAccessTokenForApp = authenticationService$javasteam.generateAccessTokenForApp(cAuthentication_AccessToken_GenerateForApp_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                obj = asyncJobSingleGenerateAccessTokenForApp.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) obj;
            if (serviceMethodResponse.getResult() != EResult.OK) {
                throw new IllegalArgumentException("Failed to generate token " + serviceMethodResponse.getResult());
            }
            return new AccessTokenGenerateResult((SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Response.Builder) serviceMethodResponse.getBody());
        }
    }

    public static /* synthetic */ CompletableFuture generateAccessTokenForApp$default(SteamAuthentication steamAuthentication, SteamID steamID, String str, boolean z, CoroutineScope coroutineScope, int i, Object obj) throws IllegalArgumentException {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            coroutineScope = steamAuthentication.steamClient.getDefaultScope$javasteam();
        }
        return steamAuthentication.generateAccessTokenForApp(steamID, str, z, coroutineScope);
    }

    public final CompletableFuture<AccessTokenGenerateResult> generateAccessTokenForApp(SteamID steamID, String refreshToken, boolean z, CoroutineScope parentScope) throws IllegalArgumentException {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00091(refreshToken, steamID, z, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaQR$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamAuthentication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaQR$1", f = "SteamAuthentication.kt", l = {126}, m = "invokeSuspend", v = 1)
    public static final class C00081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super QrAuthSession>, Object> {
        final /* synthetic */ AuthSessionDetails $authSessionDetails;
        final /* synthetic */ CoroutineScope $parentScope;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00081(AuthSessionDetails authSessionDetails, CoroutineScope coroutineScope, Continuation<? super C00081> continuation) {
            super(2, continuation);
            this.$authSessionDetails = authSessionDetails;
            this.$parentScope = coroutineScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamAuthentication.this.new C00081(this.$authSessionDetails, this.$parentScope, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super QrAuthSession> continuation) {
            return ((C00081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!SteamAuthentication.this.steamClient.isConnected()) {
                    throw new IllegalArgumentException("The SteamClient instance must be connected.");
                }
                SteammessagesAuthSteamclient.CAuthentication_DeviceDetails.Builder builderNewBuilder = SteammessagesAuthSteamclient.CAuthentication_DeviceDetails.newBuilder();
                AuthSessionDetails authSessionDetails = this.$authSessionDetails;
                builderNewBuilder.setDeviceFriendlyName(authSessionDetails.deviceFriendlyName);
                builderNewBuilder.setPlatformType(authSessionDetails.platformType);
                builderNewBuilder.setOsType(authSessionDetails.clientOSType.code());
                SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Request.Builder builderNewBuilder2 = SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Request.newBuilder();
                builderNewBuilder2.setWebsiteId(this.$authSessionDetails.websiteID);
                builderNewBuilder2.setDeviceDetails(builderNewBuilder.build());
                Authentication authenticationService$javasteam = SteamAuthentication.this.getAuthenticationService$javasteam();
                SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Request cAuthentication_BeginAuthSessionViaQR_RequestBuild = builderNewBuilder2.build();
                Intrinsics.checkNotNullExpressionValue(cAuthentication_BeginAuthSessionViaQR_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder>> asyncJobSingleBeginAuthSessionViaQR = authenticationService$javasteam.beginAuthSessionViaQR(cAuthentication_BeginAuthSessionViaQR_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.L$1 = SpillingKt.nullOutSpilledVariable(builderNewBuilder2);
                this.label = 1;
                obj = asyncJobSingleBeginAuthSessionViaQR.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) obj;
            if (serviceMethodResponse.getResult() != EResult.OK) {
                throw new AuthenticationException("Failed to begin QR auth session", serviceMethodResponse.getResult());
            }
            return new QrAuthSession(SteamAuthentication.this, this.$authSessionDetails.authenticator, (SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder) serviceMethodResponse.getBody(), this.$parentScope);
        }
    }

    public static /* synthetic */ CompletableFuture beginAuthSessionViaQR$default(SteamAuthentication steamAuthentication, AuthSessionDetails authSessionDetails, CoroutineScope coroutineScope, int i, Object obj) throws AuthenticationException, CancellationException {
        if ((i & 2) != 0) {
            coroutineScope = steamAuthentication.steamClient.getDefaultScope$javasteam();
        }
        return steamAuthentication.beginAuthSessionViaQR(authSessionDetails, coroutineScope);
    }

    public final CompletableFuture<QrAuthSession> beginAuthSessionViaQR(AuthSessionDetails authSessionDetails, CoroutineScope parentScope) throws AuthenticationException, CancellationException {
        Intrinsics.checkNotNullParameter(authSessionDetails, "authSessionDetails");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00081(authSessionDetails, parentScope, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaCredentials$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamAuthentication.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaCredentials$1", f = "SteamAuthentication.kt", l = {162, 204}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CredentialsAuthSession>, Object> {
        final /* synthetic */ AuthSessionDetails $authSessionDetails;
        final /* synthetic */ CoroutineScope $parentScope;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;
        final /* synthetic */ SteamAuthentication this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AuthSessionDetails authSessionDetails, SteamAuthentication steamAuthentication, CoroutineScope coroutineScope, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$authSessionDetails = authSessionDetails;
            this.this$0 = steamAuthentication;
            this.$parentScope = coroutineScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$authSessionDetails, this.this$0, this.$parentScope, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CredentialsAuthSession> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x019b  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01af  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 459
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.authentication.SteamAuthentication.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ CompletableFuture beginAuthSessionViaCredentials$default(SteamAuthentication steamAuthentication, AuthSessionDetails authSessionDetails, CoroutineScope coroutineScope, int i, Object obj) throws AuthenticationException {
        if ((i & 2) != 0) {
            coroutineScope = steamAuthentication.steamClient.getDefaultScope$javasteam();
        }
        return steamAuthentication.beginAuthSessionViaCredentials(authSessionDetails, coroutineScope);
    }

    public final CompletableFuture<CredentialsAuthSession> beginAuthSessionViaCredentials(AuthSessionDetails authSessionDetails, CoroutineScope parentScope) throws AuthenticationException {
        Intrinsics.checkNotNullParameter(authSessionDetails, "authSessionDetails");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new AnonymousClass1(authSessionDetails, this, parentScope, null), 3, null);
    }
}
