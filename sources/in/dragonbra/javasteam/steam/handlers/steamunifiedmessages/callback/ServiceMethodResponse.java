package in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServiceMethodResponse.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ServiceMethodResponse<T extends GeneratedMessage.Builder<T>> extends CallbackMsg {
    private final T body;
    private final EResult result;

    public ServiceMethodResponse(Class<? extends AbstractMessage> clazz, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesBase.CMsgProtoBufHeader.Builder proto = packetMsg.getHeader$javasteam().getProto();
        setJobID(new JobID(proto.getJobidTarget()));
        EResult eResultFrom = EResult.from(proto.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.body = (T) new ClientMsgProtobuf(clazz, packetMsg).getBody();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final T getBody() {
        return this.body;
    }
}
