package in.dragonbra.javasteam.steam.handlers.steamauthticket;

import in.dragonbra.javasteam.base.IPacketMsg;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamAuthTicket.kt */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class SteamAuthTicket$dispatchMap$3 extends FunctionReferenceImpl implements Function1<IPacketMsg, Unit> {
    public SteamAuthTicket$dispatchMap$3(Object obj) {
        super(1, obj, SteamAuthTicket.class, "handleGameConnectTokens", "handleGameConnectTokens(Lin/dragonbra/javasteam/base/IPacketMsg;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(IPacketMsg iPacketMsg) {
        invoke2(iPacketMsg);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(IPacketMsg p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((SteamAuthTicket) this.receiver).handleGameConnectTokens(p0);
    }
}
