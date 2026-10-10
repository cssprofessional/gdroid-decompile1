package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PrivateBetaCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PrivateBetaCallback extends CallbackMsg {
    private final KeyValue depotSection;
    private final EResult result;

    public PrivateBetaCallback(IPacketMsg packetMsg) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponse.class, packetMsg);
        SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponse.Builder builder = (SteammessagesClientserverAppinfo.CMsgClientPICSPrivateBetaResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        KeyValue keyValue = new KeyValue(null, null, 3, null);
        this.depotSection = keyValue;
        if (builder.getDepotSection() == null || builder.getDepotSection().size() <= 0) {
            return;
        }
        MemoryStream memoryStream = new MemoryStream(builder.getDepotSection().toByteArray(), 0, builder.getDepotSection().size() - 1);
        try {
            keyValue.readAsText(memoryStream);
            CloseableKt.closeFinally(memoryStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(memoryStream, th);
                throw th2;
            }
        }
    }

    public final EResult getResult() {
        return this.result;
    }

    public final KeyValue getDepotSection() {
        return this.depotSection;
    }
}
