package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.rpc.service.Authentication;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.SteamID;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: CredentialsAuthSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CredentialsAuthSession extends AuthSession {
    private final SteamID steamID;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CredentialsAuthSession(SteamAuthentication authentication, IAuthenticator iAuthenticator, SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Response.Builder response) {
        this(authentication, iAuthenticator, response, null, 8, null);
        Intrinsics.checkNotNullParameter(authentication, "authentication");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public final CompletableFuture<Unit> sendSteamGuardCode(String str, SteammessagesAuthSteamclient.EAuthSessionGuardType eAuthSessionGuardType) throws AuthenticationException {
        return sendSteamGuardCode$default(this, str, eAuthSessionGuardType, null, 4, null);
    }

    public /* synthetic */ CredentialsAuthSession(SteamAuthentication steamAuthentication, IAuthenticator iAuthenticator, SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Response.Builder builder, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(steamAuthentication, iAuthenticator, builder, (i & 8) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null))) : coroutineScope);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CredentialsAuthSession(SteamAuthentication authentication, IAuthenticator iAuthenticator, SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Response.Builder response, CoroutineScope defaultScope) {
        Intrinsics.checkNotNullParameter(authentication, "authentication");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(defaultScope, "defaultScope");
        long clientId = response.getClientId();
        byte[] byteArray = response.getRequestId().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> allowedConfirmationsList = response.getAllowedConfirmationsList();
        Intrinsics.checkNotNullExpressionValue(allowedConfirmationsList, "getAllowedConfirmationsList(...)");
        super(authentication, iAuthenticator, clientId, byteArray, allowedConfirmationsList, response.getInterval(), defaultScope);
        this.steamID = new SteamID(response.getSteamid());
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession$sendSteamGuardCode$1, reason: invalid class name */
    /* JADX INFO: compiled from: CredentialsAuthSession.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession$sendSteamGuardCode$1", f = "CredentialsAuthSession.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $code;
        final /* synthetic */ SteammessagesAuthSteamclient.EAuthSessionGuardType $codeType;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, SteammessagesAuthSteamclient.EAuthSessionGuardType eAuthSessionGuardType, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$code = str;
            this.$codeType = eAuthSessionGuardType;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CredentialsAuthSession.this.new AnonymousClass1(this.$code, this.$codeType, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request.Builder builderNewBuilder = SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request.newBuilder();
                CredentialsAuthSession credentialsAuthSession = CredentialsAuthSession.this;
                String str = this.$code;
                SteammessagesAuthSteamclient.EAuthSessionGuardType eAuthSessionGuardType = this.$codeType;
                builderNewBuilder.setClientId(credentialsAuthSession.getClientID());
                builderNewBuilder.setSteamid(credentialsAuthSession.steamID.convertToUInt64());
                builderNewBuilder.setCode(str);
                builderNewBuilder.setCodeType(eAuthSessionGuardType);
                SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request cAuthentication_UpdateAuthSessionWithSteamGuardCode_RequestBuild = builderNewBuilder.build();
                Authentication authenticationService$javasteam = CredentialsAuthSession.this.getAuthentication().getAuthenticationService$javasteam();
                Intrinsics.checkNotNull(cAuthentication_UpdateAuthSessionWithSteamGuardCode_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Response.Builder>> asyncJobSingleUpdateAuthSessionWithSteamGuardCode = authenticationService$javasteam.updateAuthSessionWithSteamGuardCode(cAuthentication_UpdateAuthSessionWithSteamGuardCode_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cAuthentication_UpdateAuthSessionWithSteamGuardCode_RequestBuild);
                this.label = 1;
                obj = asyncJobSingleUpdateAuthSessionWithSteamGuardCode.await(this);
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
            if (serviceMethodResponse.getResult() != EResult.OK && serviceMethodResponse.getResult() != EResult.DuplicateRequest) {
                throw new AuthenticationException("Failed to send steam guard code", serviceMethodResponse.getResult());
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ CompletableFuture sendSteamGuardCode$default(CredentialsAuthSession credentialsAuthSession, String str, SteammessagesAuthSteamclient.EAuthSessionGuardType eAuthSessionGuardType, CoroutineScope coroutineScope, int i, Object obj) throws AuthenticationException {
        if ((i & 4) != 0) {
            coroutineScope = credentialsAuthSession.getDefaultScope();
        }
        return credentialsAuthSession.sendSteamGuardCode(str, eAuthSessionGuardType, coroutineScope);
    }

    public final CompletableFuture<Unit> sendSteamGuardCode(String str, SteammessagesAuthSteamclient.EAuthSessionGuardType eAuthSessionGuardType, CoroutineScope parentScope) throws AuthenticationException {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new AnonymousClass1(str, eAuthSessionGuardType, null), 3, null);
    }
}
