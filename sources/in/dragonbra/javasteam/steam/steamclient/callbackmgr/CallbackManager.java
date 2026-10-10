package in.dragonbra.javasteam.steam.steamclient.callbackmgr;

import com.google.protobuf.GeneratedMessage;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodNotification;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.io.Closeable;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CallbackManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CallbackManager {
    private final Set<CallbackBase> registeredCallbacks;
    private final SteamClient steamClient;
    private final SteamUnifiedMessages steamUnifiedMessages;

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$runWaitCallbackAsync$1, reason: invalid class name */
    /* JADX INFO: compiled from: CallbackManager.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager", f = "CallbackManager.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER}, m = "runWaitCallbackAsync", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return CallbackManager.this.runWaitCallbackAsync(this);
        }
    }

    public CallbackManager(SteamClient steamClient) {
        Intrinsics.checkNotNullParameter(steamClient, "steamClient");
        this.steamClient = steamClient;
        Set<CallbackBase> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(...)");
        this.registeredCallbacks = setNewSetFromMap;
        ClientMsgHandler handler = steamClient.getHandler(SteamUnifiedMessages.class);
        Intrinsics.checkNotNull(handler);
        this.steamUnifiedMessages = (SteamUnifiedMessages) handler;
    }

    public final boolean runCallbacks() {
        CallbackMsg callback = this.steamClient.getCallback();
        if (callback == null) {
            return false;
        }
        handle(callback);
        return true;
    }

    public final boolean runWaitCallbacks(long j) {
        CallbackMsg callbackMsgWaitForCallback = this.steamClient.waitForCallback(j);
        if (callbackMsgWaitForCallback == null) {
            return false;
        }
        handle(callbackMsgWaitForCallback);
        return true;
    }

    public final void runWaitAllCallbacks(long j) {
        if (runWaitCallbacks(j)) {
            while (runCallbacks()) {
            }
        }
    }

    public final void runWaitCallbacks() {
        handle(this.steamClient.waitForCallback());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object runWaitCallbackAsync(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$runWaitCallbackAsync$1 r0 = (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$runWaitCallbackAsync$1 r0 = new in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$runWaitCallbackAsync$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            in.dragonbra.javasteam.steam.steamclient.SteamClient r5 = r4.steamClient
            r0.label = r3
            java.lang.Object r5 = r5.waitForCallbackAsync(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg r5 = (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg) r5
            r4.handle(r5)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.runWaitCallbackAsync(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final <TCallback extends CallbackMsg> Closeable subscribe(Class<? extends TCallback> callbackType, JobID jobID, Consumer<TCallback> callbackFunc) {
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        return new Callback(callbackType, callbackFunc, this, jobID);
    }

    public final <TCallback extends CallbackMsg> Closeable subscribe(Class<? extends TCallback> callbackType, Consumer<TCallback> callbackFunc) {
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        return subscribe(callbackType, JobID.INVALID, callbackFunc);
    }

    public final <TService extends UnifiedService, TNotification extends GeneratedMessage.Builder<TNotification>> Closeable subscribeServiceNotification(Class<TService> serviceClass, final Class<TNotification> notificationClass, final Consumer<ServiceMethodNotification<TNotification>> callbackFunc) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(notificationClass, "notificationClass");
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        this.steamUnifiedMessages.createService(serviceClass);
        return new Callback(ServiceMethodNotification.class, new Consumer() { // from class: in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$$ExternalSyntheticLambda1
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                CallbackManager.subscribeServiceNotification$lambda$0(notificationClass, callbackFunc, (ServiceMethodNotification) obj);
            }
        }, this, JobID.INVALID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeServiceNotification$lambda$0(Class cls, Consumer consumer, ServiceMethodNotification serviceMethodNotification) {
        if (Intrinsics.areEqual(serviceMethodNotification.getBody().getClass(), cls)) {
            Intrinsics.checkNotNull(serviceMethodNotification, "null cannot be cast to non-null type in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodNotification<TNotification of in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.subscribeServiceNotification>");
            consumer.accept(serviceMethodNotification);
        }
    }

    public final <TService extends UnifiedService, TNotification extends GeneratedMessage.Builder<TNotification>> Closeable subscribeServiceResponse(Class<TService> serviceClass, final Class<TNotification> notificationClass, final Consumer<ServiceMethodResponse<TNotification>> callbackFunc) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(notificationClass, "notificationClass");
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        this.steamUnifiedMessages.createService(serviceClass);
        return new Callback(ServiceMethodResponse.class, new Consumer() { // from class: in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$$ExternalSyntheticLambda0
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                CallbackManager.subscribeServiceResponse$lambda$0(notificationClass, callbackFunc, (ServiceMethodResponse) obj);
            }
        }, this, JobID.INVALID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeServiceResponse$lambda$0(Class cls, Consumer consumer, ServiceMethodResponse serviceMethodResponse) {
        if (Intrinsics.areEqual(serviceMethodResponse.getBody().getClass(), cls)) {
            Intrinsics.checkNotNull(serviceMethodResponse, "null cannot be cast to non-null type in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse<TNotification of in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.subscribeServiceResponse>");
            consumer.accept(serviceMethodResponse);
        }
    }

    public static /* synthetic */ Closeable subscribe$default(CallbackManager callbackManager, JobID jobID, Function1 callbackFunc, int i, Object obj) {
        if ((i & 1) != 0) {
            jobID = JobID.INVALID;
        }
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        Intrinsics.reifiedOperationMarker(4, "TCallback");
        return callbackManager.subscribe(CallbackMsg.class, jobID, new CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0(callbackFunc));
    }

    public final /* synthetic */ <TCallback extends CallbackMsg> Closeable subscribe(JobID jobID, Function1<? super TCallback, Unit> callbackFunc) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        Intrinsics.reifiedOperationMarker(4, "TCallback");
        return subscribe(CallbackMsg.class, jobID, new CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0(callbackFunc));
    }

    public final /* synthetic */ <TCallback extends CallbackMsg> Closeable subscribe(Consumer<TCallback> callbackFunc) {
        Intrinsics.checkNotNullParameter(callbackFunc, "callbackFunc");
        Intrinsics.reifiedOperationMarker(4, "TCallback");
        return subscribe(CallbackMsg.class, JobID.INVALID, callbackFunc);
    }

    public final /* synthetic */ <TService extends UnifiedService, TNotification extends GeneratedMessage.Builder<TNotification>> Closeable subscribeServiceNotification(Function1<? super ServiceMethodNotification<TNotification>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.reifiedOperationMarker(4, "TService");
        Intrinsics.reifiedOperationMarker(4, "TNotification");
        return subscribeServiceNotification(UnifiedService.class, GeneratedMessage.Builder.class, new CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0(callback));
    }

    public final /* synthetic */ <TService extends UnifiedService, TNotification extends GeneratedMessage.Builder<TNotification>> Closeable subscribeServiceResponse(Function1<? super ServiceMethodResponse<TNotification>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.reifiedOperationMarker(4, "TService");
        Intrinsics.reifiedOperationMarker(4, "TNotification");
        return subscribeServiceResponse(UnifiedService.class, GeneratedMessage.Builder.class, new CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0(callback));
    }

    public final void register$javasteam(CallbackBase callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.registeredCallbacks.contains(callback)) {
            return;
        }
        this.registeredCallbacks.add(callback);
    }

    public final void unregister$javasteam(CallbackBase callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.registeredCallbacks.remove(callback);
    }

    private final void handle(CallbackMsg callbackMsg) {
        Set<CallbackBase> set = this.registeredCallbacks;
        Class<?> cls = callbackMsg.getClass();
        for (CallbackBase callbackBase : set) {
            if (callbackBase.getCallbackType().isAssignableFrom(cls)) {
                callbackBase.run(callbackMsg);
            }
        }
    }
}
