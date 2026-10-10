package in.dragonbra.javasteam.steam.handlers.steamauthticket;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SteamAuthTicket.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket", f = "SteamAuthTicket.kt", l = {114, 135}, m = "getAuthSessionTicketInternal$javasteam", v = 1)
public final class SteamAuthTicket$getAuthSessionTicketInternal$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SteamAuthTicket this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SteamAuthTicket$getAuthSessionTicketInternal$1(SteamAuthTicket steamAuthTicket, Continuation<? super SteamAuthTicket$getAuthSessionTicketInternal$1> continuation) {
        super(continuation);
        this.this$0 = steamAuthTicket;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
        return this.this$0.getAuthSessionTicketInternal$javasteam(0, null, null, this);
    }
}
