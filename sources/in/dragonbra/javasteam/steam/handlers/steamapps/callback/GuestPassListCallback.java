package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.generated.MsgClientUpdateGuestPassesList;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GuestPassListCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GuestPassListCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(GuestPassListCallback.class);
    private final int countGuestPassesToGive;
    private final int countGuestPassesToRedeem;
    private final List<KeyValue> guestPasses;
    private final EResult result;

    public GuestPassListCallback(IPacketMsg packetMsg) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientUpdateGuestPassesList.class, packetMsg);
        MsgClientUpdateGuestPassesList msgClientUpdateGuestPassesList = (MsgClientUpdateGuestPassesList) clientMsg.getBody();
        EResult result = msgClientUpdateGuestPassesList.getResult();
        Intrinsics.checkNotNullExpressionValue(result, "getResult(...)");
        this.result = result;
        int countGuestPassesToGive = msgClientUpdateGuestPassesList.getCountGuestPassesToGive();
        this.countGuestPassesToGive = countGuestPassesToGive;
        int countGuestPassesToRedeem = msgClientUpdateGuestPassesList.getCountGuestPassesToRedeem();
        this.countGuestPassesToRedeem = countGuestPassesToRedeem;
        ArrayList arrayList = new ArrayList();
        int i = countGuestPassesToGive + countGuestPassesToRedeem;
        for (int i2 = 0; i2 < i; i2++) {
            try {
                KeyValue keyValue = new KeyValue(null, null, 3, null);
                keyValue.tryReadAsBinary(clientMsg.getPayload());
                arrayList.add(keyValue);
            } catch (IOException e) {
                logger.error("failed to read guest passes", e);
            }
        }
        this.guestPasses = CollectionsKt___CollectionsKt.toList(arrayList);
    }

    /* JADX INFO: compiled from: GuestPassListCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getCountGuestPassesToGive() {
        return this.countGuestPassesToGive;
    }

    public final int getCountGuestPassesToRedeem() {
        return this.countGuestPassesToRedeem;
    }

    public final List<KeyValue> getGuestPasses() {
        return this.guestPasses;
    }
}
