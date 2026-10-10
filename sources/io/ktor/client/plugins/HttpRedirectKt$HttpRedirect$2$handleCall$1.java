package io.ktor.client.plugins;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: HttpRedirect.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpRedirectKt", f = "HttpRedirect.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.IS_STEAM_DECK_DEPRECATED_FIELD_NUMBER}, m = "HttpRedirect$lambda$0$handleCall", v = 1)
public final class HttpRedirectKt$HttpRedirect$2$handleCall$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public Object L$9;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;

    public HttpRedirectKt$HttpRedirect$2$handleCall$1(Continuation<? super HttpRedirectKt$HttpRedirect$2$handleCall$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
        return HttpRedirectKt.HttpRedirect$lambda$0$handleCall(null, null, null, false, null, this);
    }
}
