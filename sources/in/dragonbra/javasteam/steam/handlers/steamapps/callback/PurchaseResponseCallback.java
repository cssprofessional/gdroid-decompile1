package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EPurchaseResultDetail;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchaseResponseCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PurchaseResponseCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(PurchaseResponseCallback.class);
    private final KeyValue purchaseReceiptInfo;
    private final EPurchaseResultDetail purchaseResultDetail;
    private final EResult result;

    public PurchaseResponseCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientPurchaseResponse.class, packetMsg);
        SteammessagesClientserver2.CMsgClientPurchaseResponse.Builder builder = (SteammessagesClientserver2.CMsgClientPurchaseResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.purchaseResultDetail = EPurchaseResultDetail.from(builder.getPurchaseResultDetails());
        KeyValue keyValue = new KeyValue(null, null, 3, null);
        this.purchaseReceiptInfo = keyValue;
        if (builder.getPurchaseReceiptInfo() != null) {
            try {
                keyValue.tryReadAsBinary(new MemoryStream(builder.getPurchaseReceiptInfo().toByteArray()));
            } catch (Exception e) {
                logger.error("Failed to read purchase receipt info", e);
            }
        }
    }

    /* JADX INFO: compiled from: PurchaseResponseCallback.kt */
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

    public final EPurchaseResultDetail getPurchaseResultDetail() {
        return this.purchaseResultDetail;
    }

    public final KeyValue getPurchaseReceiptInfo() {
        return this.purchaseReceiptInfo;
    }
}
