package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CloudGaming.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudGaming extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "CloudGaming";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudGaming(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "CreateNonce")) {
            postResponseMsg(SteammessagesAuthSteamclient.CCloudGaming_CreateNonce_Response.class, packetMsg);
        } else if (Intrinsics.areEqual(methodName, "GetTimeRemaining")) {
            postResponseMsg(SteammessagesAuthSteamclient.CCloudGaming_GetTimeRemaining_Response.class, packetMsg);
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CCloudGaming_CreateNonce_Response.Builder>> createNonce(SteammessagesAuthSteamclient.CCloudGaming_CreateNonce_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CCloudGaming_CreateNonce_Response.Builder.class, "CloudGaming.CreateNonce#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CCloudGaming_GetTimeRemaining_Response.Builder>> getTimeRemaining(SteammessagesAuthSteamclient.CCloudGaming_GetTimeRemaining_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CCloudGaming_GetTimeRemaining_Response.Builder.class, "CloudGaming.GetTimeRemaining#1", request);
    }
}
