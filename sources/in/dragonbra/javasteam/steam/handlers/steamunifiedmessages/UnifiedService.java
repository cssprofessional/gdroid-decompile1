package in.dragonbra.javasteam.steam.handlers.steamunifiedmessages;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnifiedService.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class UnifiedService {
    private final SteamUnifiedMessages unifiedMessages;

    /* JADX WARN: Multi-variable type inference failed */
    public UnifiedService() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public abstract String getServiceName();

    public abstract void handleNotificationMsg(String str, PacketClientMsgProtobuf packetClientMsgProtobuf);

    public abstract void handleResponseMsg(String str, PacketClientMsgProtobuf packetClientMsgProtobuf);

    public UnifiedService(SteamUnifiedMessages steamUnifiedMessages) {
        this.unifiedMessages = steamUnifiedMessages;
    }

    public /* synthetic */ UnifiedService(SteamUnifiedMessages steamUnifiedMessages, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : steamUnifiedMessages);
    }

    public final SteamUnifiedMessages getUnifiedMessages() {
        return this.unifiedMessages;
    }

    public final <TResponse extends GeneratedMessage.Builder<TResponse>> void postResponseMsg(Class<? extends AbstractMessage> serviceClass, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteamUnifiedMessages steamUnifiedMessages = this.unifiedMessages;
        if (steamUnifiedMessages != null) {
            steamUnifiedMessages.handleResponseMsg$javasteam(serviceClass, packetMsg);
        }
    }

    public final <TNotification extends GeneratedMessage.Builder<TNotification>> void postNotificationMsg(Class<? extends AbstractMessage> serviceClass, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteamUnifiedMessages steamUnifiedMessages = this.unifiedMessages;
        if (steamUnifiedMessages != null) {
            steamUnifiedMessages.handleNotificationMsg$javasteam(serviceClass, packetMsg);
        }
    }
}
