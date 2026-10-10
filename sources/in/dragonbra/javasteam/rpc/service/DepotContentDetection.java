package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DepotContentDetection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DepotContentDetection extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "DepotContentDetection";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DepotContentDetection(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "GetAllDetectedAppContent")) {
            postResponseMsg(SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_Response.class, packetMsg);
        } else if (Intrinsics.areEqual(methodName, "GetDetectedContentSingleApp")) {
            postResponseMsg(SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_Response.class, packetMsg);
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_Response.Builder>> getAllDetectedAppContent(SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CDepotContentDetection_GetAllDetectedAppContent_Response.Builder.class, "DepotContentDetection.GetAllDetectedAppContent#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_Response.Builder>> getDetectedContentSingleApp(SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CDepotContentDetection_GetDetectedContentSingleApp_Response.Builder.class, "DepotContentDetection.GetDetectedContentSingleApp#1", request);
    }
}
