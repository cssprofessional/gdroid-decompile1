package in.dragonbra.javasteam.steam.authentication;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.rpc.service.Authentication;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: AuthSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public class AuthSession {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(AuthSession.class);
    private List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> allowedConfirmations;
    private final SteamAuthentication authentication;
    private final IAuthenticator authenticator;
    private long clientID;
    private final CoroutineScope defaultScope;
    private final float pollingInterval;
    private final byte[] requestID;

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.AuthSession$pollDeviceConfirmation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthSession.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.AuthSession", f = "AuthSession.kt", l = {175, 176}, m = "pollDeviceConfirmation", v = 1)
    public static final class C00061 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C00061(Continuation<? super C00061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return AuthSession.this.pollDeviceConfirmation(null, this);
        }
    }

    public final CompletableFuture<AuthPollResult> pollAuthSessionStatus() throws AuthenticationException {
        return pollAuthSessionStatus$default(this, null, 1, null);
    }

    public final CompletableFuture<AuthPollResult> pollingWaitForResult() throws AuthenticationException {
        return pollingWaitForResult$default(this, null, 1, null);
    }

    public AuthSession(SteamAuthentication authentication, IAuthenticator iAuthenticator, long j, byte[] requestID, List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> allowedConfirmations, float f, CoroutineScope defaultScope) {
        Intrinsics.checkNotNullParameter(authentication, "authentication");
        Intrinsics.checkNotNullParameter(requestID, "requestID");
        Intrinsics.checkNotNullParameter(allowedConfirmations, "allowedConfirmations");
        Intrinsics.checkNotNullParameter(defaultScope, "defaultScope");
        this.authentication = authentication;
        this.authenticator = iAuthenticator;
        this.clientID = j;
        this.requestID = requestID;
        this.allowedConfirmations = allowedConfirmations;
        this.pollingInterval = f;
        this.defaultScope = defaultScope;
        this.allowedConfirmations = sortConfirmations(allowedConfirmations);
    }

    public final SteamAuthentication getAuthentication() {
        return this.authentication;
    }

    public final IAuthenticator getAuthenticator() {
        return this.authenticator;
    }

    public final long getClientID() {
        return this.clientID;
    }

    public final void setClientID(long j) {
        this.clientID = j;
    }

    public final byte[] getRequestID() {
        return this.requestID;
    }

    public final List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> getAllowedConfirmations() {
        return this.allowedConfirmations;
    }

    public final void setAllowedConfirmations(List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.allowedConfirmations = list;
    }

    public final float getPollingInterval() {
        return this.pollingInterval;
    }

    public final CoroutineScope getDefaultScope() {
        return this.defaultScope;
    }

    /* JADX INFO: compiled from: AuthSession.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.AuthSession$pollingWaitForResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthSession.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.AuthSession$pollingWaitForResult$1", f = "AuthSession.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.CREATE_NEW_PSN_LINKED_ACCOUNT_IF_NEEDED_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.ACCESS_TOKEN_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.GAMING_DEVICE_TYPE_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class C00071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AuthPollResult>, Object> {
        final /* synthetic */ CoroutineScope $parentScope;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.AuthSession$pollingWaitForResult$1$WhenMappings */
        /* JADX INFO: compiled from: AuthSession.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SteammessagesAuthSteamclient.EAuthSessionGuardType.values().length];
                try {
                    iArr[SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_None.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_EmailCode.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_DeviceCode.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_DeviceConfirmation.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00071(CoroutineScope coroutineScope, Continuation<? super C00071> continuation) {
            super(2, continuation);
            this.$parentScope = coroutineScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00071 c00071 = AuthSession.this.new C00071(this.$parentScope, continuation);
            c00071.L$0 = obj;
            return c00071;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AuthPollResult> continuation) {
            return ((C00071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00de  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x015b  */
        /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r13v31, types: [T, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r13v4, types: [T, in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 391
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.authentication.AuthSession.C00071.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ CompletableFuture pollingWaitForResult$default(AuthSession authSession, CoroutineScope coroutineScope, int i, Object obj) throws AuthenticationException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pollingWaitForResult");
        }
        if ((i & 1) != 0) {
            coroutineScope = authSession.defaultScope;
        }
        return authSession.pollingWaitForResult(coroutineScope);
    }

    public final CompletableFuture<AuthPollResult> pollingWaitForResult(CoroutineScope parentScope) throws AuthenticationException {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00071(parentScope, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.AuthSession$handleCodeAuth$2, reason: invalid class name */
    /* JADX INFO: compiled from: AuthSession.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.AuthSession$handleCodeAuth$2", f = "AuthSession.kt", l = {146, 150, 160}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineScope $parentScope;
        final /* synthetic */ SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation $preferredConfirmation;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.AuthSession$handleCodeAuth$2$WhenMappings */
        /* JADX INFO: compiled from: AuthSession.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SteammessagesAuthSteamclient.EAuthSessionGuardType.values().length];
                try {
                    iArr[SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_EmailCode.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_DeviceCode.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation cAuthentication_AllowedConfirmation, CoroutineScope coroutineScope, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$preferredConfirmation = cAuthentication_AllowedConfirmation;
            this.$parentScope = coroutineScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AuthSession.this.new AnonymousClass2(this.$preferredConfirmation, this.$parentScope, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Not initialized variable reg: 9, insn: 0x017a: IF  (r15v2 ?? I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) != (r9 I:??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:38:0x00b1, block:B:73:0x017a */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00b3 A[Catch: AuthenticationException -> 0x0029, TRY_ENTER, TryCatch #0 {AuthenticationException -> 0x0029, blocks: (B:8:0x0024, B:39:0x00b3, B:45:0x00c9, B:49:0x00d4, B:52:0x00eb, B:64:0x013b, B:66:0x0141, B:70:0x0167, B:71:0x016e, B:53:0x00ee, B:54:0x010a, B:55:0x010b, B:59:0x011c, B:62:0x0137, B:42:0x00bd, B:15:0x0040, B:18:0x0055), top: B:81:0x000c }] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x013b A[Catch: AuthenticationException -> 0x0029, TryCatch #0 {AuthenticationException -> 0x0029, blocks: (B:8:0x0024, B:39:0x00b3, B:45:0x00c9, B:49:0x00d4, B:52:0x00eb, B:64:0x013b, B:66:0x0141, B:70:0x0167, B:71:0x016e, B:53:0x00ee, B:54:0x010a, B:55:0x010b, B:59:0x011c, B:62:0x0137, B:42:0x00bd, B:15:0x0040, B:18:0x0055), top: B:81:0x000c }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x017f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0161 -> B:69:0x0164). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 428
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.authentication.AuthSession.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleCodeAuth(SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation cAuthentication_AllowedConfirmation, CoroutineScope coroutineScope, Continuation<? super Unit> continuation) throws AuthenticationException {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(cAuthentication_AllowedConfirmation, coroutineScope, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005f -> B:17:0x0040). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object pollDeviceConfirmation(kotlinx.coroutines.CoroutineScope r8, kotlin.coroutines.Continuation<? super in.dragonbra.javasteam.steam.authentication.AuthPollResult> r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof in.dragonbra.javasteam.steam.authentication.AuthSession.C00061
            if (r0 == 0) goto L13
            r0 = r9
            in.dragonbra.javasteam.steam.authentication.AuthSession$pollDeviceConfirmation$1 r0 = (in.dragonbra.javasteam.steam.authentication.AuthSession.C00061) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            in.dragonbra.javasteam.steam.authentication.AuthSession$pollDeviceConfirmation$1 r0 = new in.dragonbra.javasteam.steam.authentication.AuthSession$pollDeviceConfirmation$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.CoroutineScope r8 = (kotlinx.coroutines.CoroutineScope) r8
            goto L3d
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.CoroutineScope r8 = (kotlinx.coroutines.CoroutineScope) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4f
        L3d:
            kotlin.ResultKt.throwOnFailure(r9)
        L40:
            java.util.concurrent.CompletableFuture r9 = r7.pollAuthSessionStatus(r8)
            r0.L$0 = r8
            r0.label = r4
            java.lang.Object r9 = kotlinx.coroutines.future.FutureKt.await(r9, r0)
            if (r9 != r1) goto L4f
            return r1
        L4f:
            in.dragonbra.javasteam.steam.authentication.AuthPollResult r9 = (in.dragonbra.javasteam.steam.authentication.AuthPollResult) r9
            if (r9 == 0) goto L54
            return r9
        L54:
            float r9 = r7.pollingInterval
            long r5 = (long) r9
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.delay(r5, r0)
            if (r9 != r1) goto L40
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.authentication.AuthSession.pollDeviceConfirmation(kotlinx.coroutines.CoroutineScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.authentication.AuthSession$pollAuthSessionStatus$1, reason: invalid class name */
    /* JADX INFO: compiled from: AuthSession.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.authentication.AuthSession$pollAuthSessionStatus$1", f = "AuthSession.kt", l = {194}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AuthPollResult>, Object> {
        Object L$0;
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AuthSession.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AuthPollResult> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Request.Builder builderNewBuilder = SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Request.newBuilder();
                AuthSession authSession = AuthSession.this;
                builderNewBuilder.setClientId(authSession.getClientID());
                builderNewBuilder.setRequestId(ByteString.copyFrom(authSession.getRequestID()));
                SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Request cAuthentication_PollAuthSessionStatus_RequestBuild = builderNewBuilder.build();
                Authentication authenticationService$javasteam = AuthSession.this.getAuthentication().getAuthenticationService$javasteam();
                Intrinsics.checkNotNull(cAuthentication_PollAuthSessionStatus_RequestBuild);
                AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder>> asyncJobSinglePollAuthSessionStatus = authenticationService$javasteam.pollAuthSessionStatus(cAuthentication_PollAuthSessionStatus_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(cAuthentication_PollAuthSessionStatus_RequestBuild);
                this.label = 1;
                obj = asyncJobSinglePollAuthSessionStatus.await(this);
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
                throw new AuthenticationException("Failed to poll status", serviceMethodResponse.getResult());
            }
            AuthSession.this.handlePollAuthSessionStatusResponse$javasteam((SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder) serviceMethodResponse.getBody());
            String refreshToken = ((SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder) serviceMethodResponse.getBody()).getRefreshToken();
            Intrinsics.checkNotNullExpressionValue(refreshToken, "getRefreshToken(...)");
            if (refreshToken.length() > 0) {
                return new AuthPollResult((SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder) serviceMethodResponse.getBody());
            }
            return null;
        }
    }

    public static /* synthetic */ CompletableFuture pollAuthSessionStatus$default(AuthSession authSession, CoroutineScope coroutineScope, int i, Object obj) throws AuthenticationException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pollAuthSessionStatus");
        }
        if ((i & 1) != 0) {
            coroutineScope = authSession.defaultScope;
        }
        return authSession.pollAuthSessionStatus(coroutineScope);
    }

    public final CompletableFuture<AuthPollResult> pollAuthSessionStatus(CoroutineScope parentScope) throws AuthenticationException {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new AnonymousClass1(null), 3, null);
    }

    public void handlePollAuthSessionStatusResponse$javasteam(SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getNewClientId() != 0) {
            this.clientID = response.getNewClientId();
        }
    }

    private final List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> sortConfirmations(List<SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation> list) {
        Iterable<IndexedValue> iterableWithIndex = ArraysKt___ArraysKt.withIndex(new SteammessagesAuthSteamclient.EAuthSessionGuardType[]{SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_None, SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_DeviceConfirmation, SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_DeviceCode, SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_EmailCode, SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_EmailConfirmation, SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_MachineToken, SteammessagesAuthSteamclient.EAuthSessionGuardType.k_EAuthSessionGuardType_Unknown});
        final LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterableWithIndex, 10)), 16));
        for (IndexedValue indexedValue : iterableWithIndex) {
            Pair pair = TuplesKt.to((SteammessagesAuthSteamclient.EAuthSessionGuardType) indexedValue.component2(), Integer.valueOf(indexedValue.component1()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: in.dragonbra.javasteam.steam.authentication.AuthSession$sortConfirmations$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Integer num = (Integer) linkedHashMap.get(((SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation) t).getConfirmationType());
                Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
                Integer num2 = (Integer) linkedHashMap.get(((SteammessagesAuthSteamclient.CAuthentication_AllowedConfirmation) t2).getConfirmationType());
                return ComparisonsKt__ComparisonsKt.compareValues(numValueOf, Integer.valueOf(num2 != null ? num2.intValue() : Integer.MAX_VALUE));
            }
        });
    }
}
