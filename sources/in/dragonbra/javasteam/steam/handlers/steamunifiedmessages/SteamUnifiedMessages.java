package in.dragonbra.javasteam.steam.handlers.steamunifiedmessages;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Message;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.MsgHdrProtoBuf;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodNotification;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: SteamUnifiedMessages.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamUnifiedMessages extends ClientMsgHandler {
    private final ConcurrentHashMap<String, UnifiedService> handlers = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: SteamUnifiedMessages.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EMsg.values().length];
            try {
                iArr[EMsg.ServiceMethodResponse.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EMsg.ServiceMethod.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final ConcurrentHashMap<String, UnifiedService> getHandlers$javasteam() {
        return this.handlers;
    }

    public final /* synthetic */ <TService extends UnifiedService> TService createService() {
        Intrinsics.reifiedOperationMarker(4, "TService");
        return (TService) createService(UnifiedService.class);
    }

    public final <TService extends UnifiedService> TService createService(Class<TService> serviceClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        TService tserviceNewInstance = serviceClass.getDeclaredConstructor(SteamUnifiedMessages.class).newInstance(this);
        ConcurrentHashMap<String, UnifiedService> concurrentHashMap = this.handlers;
        String serviceName = tserviceNewInstance.getServiceName();
        UnifiedService unifiedService = concurrentHashMap.get(serviceName);
        if (unifiedService == null) {
            UnifiedService unifiedServicePutIfAbsent = concurrentHashMap.putIfAbsent(serviceName, tserviceNewInstance);
            if (unifiedServicePutIfAbsent != null) {
                tserviceNewInstance = unifiedServicePutIfAbsent;
            }
            unifiedService = tserviceNewInstance;
        }
        Intrinsics.checkNotNull(unifiedService, "null cannot be cast to non-null type TService of in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages.createService");
        return (TService) unifiedService;
    }

    public final /* synthetic */ <TService extends UnifiedService> void removeService() {
        Intrinsics.reifiedOperationMarker(4, "TService");
        removeService(UnifiedService.class);
    }

    public final <TService extends UnifiedService> void removeService(Class<TService> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        this.handlers.remove(serviceClass.getDeclaredConstructor(SteamUnifiedMessages.class).newInstance(null).getServiceName());
    }

    public final <TRequest extends GeneratedMessage.Builder<TRequest>, TResult extends GeneratedMessage.Builder<TResult>> AsyncJobSingle<ServiceMethodResponse<TResult>> sendMessage(Class<? extends TResult> responseClass, String name, GeneratedMessage message) {
        EMsg eMsg;
        Intrinsics.checkNotNullParameter(responseClass, "responseClass");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(message, "message");
        if (getClient().getSteamID() == null) {
            eMsg = EMsg.ServiceMethodCallFromClientNonAuthed;
        } else {
            eMsg = EMsg.ServiceMethodCallFromClient;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(message.getClass(), eMsg, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        MsgHdrProtoBuf header = clientMsgProtobuf.getHeader();
        Intrinsics.checkNotNull(header);
        header.getProto().setTargetJobName(name);
        clientMsgProtobuf.getBody().mergeFrom((Message) message);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final <TRequest extends GeneratedMessage.Builder<TRequest>> void sendNotification(String name, GeneratedMessage message) {
        EMsg eMsg;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(message, "message");
        if (getClient().getSteamID() == null) {
            eMsg = EMsg.ServiceMethodCallFromClientNonAuthed;
        } else {
            eMsg = EMsg.ServiceMethodCallFromClient;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(message.getClass(), eMsg, 0, 4, null);
        MsgHdrProtoBuf header = clientMsgProtobuf.getHeader();
        Intrinsics.checkNotNull(header);
        header.getProto().setTargetJobName(name);
        clientMsgProtobuf.getBody().mergeFrom((Message) message);
        getClient().send(clientMsgProtobuf);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        PacketClientMsgProtobuf packetClientMsgProtobuf = packetMsg instanceof PacketClientMsgProtobuf ? (PacketClientMsgProtobuf) packetMsg : null;
        if (packetClientMsgProtobuf == null) {
            return;
        }
        PacketClientMsgProtobuf packetClientMsgProtobuf2 = (PacketClientMsgProtobuf) packetMsg;
        if (packetClientMsgProtobuf2.getMsgType() == EMsg.ServiceMethod || packetClientMsgProtobuf2.getMsgType() == EMsg.ServiceMethodResponse) {
            String targetJobName = packetClientMsgProtobuf.getHeader$javasteam().getProto().getTargetJobName();
            Intrinsics.checkNotNull(targetJobName);
            if (targetJobName.length() == 0) {
                return;
            }
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) targetJobName, '.', 0, false, 6, (Object) null);
            int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) targetJobName, '#', 0, false, 6, (Object) null);
            if (iIndexOf$default < 0 || iLastIndexOf$default < 0) {
                return;
            }
            UnifiedService unifiedService = this.handlers.get(StringsKt___StringsKt.take(targetJobName, iIndexOf$default));
            if (unifiedService == null) {
                return;
            }
            String strSubstring = targetJobName.substring(iIndexOf$default + 1, iLastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            int i = WhenMappings.$EnumSwitchMapping$0[packetClientMsgProtobuf.getMsgType().ordinal()];
            if (i == 1) {
                unifiedService.handleResponseMsg(strSubstring, packetClientMsgProtobuf);
            } else {
                if (i != 2) {
                    return;
                }
                unifiedService.handleNotificationMsg(strSubstring, packetClientMsgProtobuf);
            }
        }
    }

    public final <TResponse extends GeneratedMessage.Builder<TResponse>> void handleResponseMsg$javasteam(Class<? extends AbstractMessage> serviceClass, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        getClient().postCallback(new ServiceMethodResponse(serviceClass, packetMsg));
    }

    public final <TNotification extends GeneratedMessage.Builder<TNotification>> void handleNotificationMsg$javasteam(Class<? extends AbstractMessage> serviceClass, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        getClient().postCallback(new ServiceMethodNotification(serviceClass, packetMsg));
    }
}
