package io.ktor.client.plugins;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: HttpCallValidator.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpCallValidatorKt", f = "HttpCallValidator.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.IS_TESLA_DEPRECATED_FIELD_NUMBER}, m = "HttpCallValidator$lambda$0$validateResponse", v = 1)
public final class HttpCallValidatorKt$HttpCallValidator$2$validateResponse$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public /* synthetic */ Object result;

    public HttpCallValidatorKt$HttpCallValidator$2$validateResponse$1(Continuation<? super HttpCallValidatorKt$HttpCallValidator$2$validateResponse$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
        return HttpCallValidatorKt.HttpCallValidator$lambda$0$validateResponse(null, null, this);
    }
}
