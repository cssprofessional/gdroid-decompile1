package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentServerDirectory.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ContentServerDirectory extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ContentServerDirectory";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentServerDirectory(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1851483153:
                if (methodName.equals("GetPeerContentInfo")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case -1412611345:
                if (methodName.equals("GetServersForSteamPipe")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.class, packetMsg);
                    break;
                }
                break;
            case -398424614:
                if (methodName.equals("GetCDNAuthToken")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.class, packetMsg);
                    break;
                }
                break;
            case -361472223:
                if (methodName.equals("GetClientUpdateHosts")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_Response.class, packetMsg);
                    break;
                }
                break;
            case -179121065:
                if (methodName.equals("GetManifestRequestCode")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.class, packetMsg);
                    break;
                }
                break;
            case 615330328:
                if (methodName.equals("GetDepotPatchInfo")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 1355669547:
                if (methodName.equals("RequestPeerContentServer")) {
                    postResponseMsg(SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.Builder>> getServersForSteamPipe(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.Builder.class, "ContentServerDirectory.GetServersForSteamPipe#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response.Builder>> getDepotPatchInfo(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetDepotPatchInfo_Response.Builder.class, "ContentServerDirectory.GetDepotPatchInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_Response.Builder>> getClientUpdateHosts(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetClientUpdateHosts_Response.Builder.class, "ContentServerDirectory.GetClientUpdateHosts#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.Builder>> getManifestRequestCode(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.Builder.class, "ContentServerDirectory.GetManifestRequestCode#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.Builder>> getCDNAuthToken(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.Builder.class, "ContentServerDirectory.GetCDNAuthToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response.Builder>> requestPeerContentServer(SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_RequestPeerContentServer_Response.Builder.class, "ContentServerDirectory.RequestPeerContentServer#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response.Builder>> getPeerContentInfo(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetPeerContentInfo_Response.Builder.class, "ContentServerDirectory.GetPeerContentInfo#1", request);
    }
}
