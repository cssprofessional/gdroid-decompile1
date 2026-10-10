package in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServiceMethodNotification.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ServiceMethodNotification<T extends GeneratedMessage.Builder<T>> extends CallbackMsg {
    private final T body;
    private final String jobName;

    public ServiceMethodNotification(Class<? extends AbstractMessage> clazz, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        setJobID(JobID.INVALID);
        String targetJobName = packetMsg.getHeader$javasteam().getProto().getTargetJobName();
        Intrinsics.checkNotNullExpressionValue(targetJobName, "getTargetJobName(...)");
        this.jobName = targetJobName;
        this.body = (T) new ClientMsgProtobuf(clazz, packetMsg).getBody();
    }

    public final String getJobName() {
        return this.jobName;
    }

    public final T getBody() {
        return this.body;
    }
}
