package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.webui.ServiceClientcomm;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientComm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientComm extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ClientComm";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientComm(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1891040791:
                if (methodName.equals("EnableOrDisableDownloads")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Response.class, packetMsg);
                    break;
                }
                break;
            case -1639605797:
                if (methodName.equals("GetAllClientLogonInfo")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case -1589349260:
                if (methodName.equals("SetClientAppUpdateState")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_SetClientAppUpdateState_Response.class, packetMsg);
                    break;
                }
                break;
            case -14627376:
                if (methodName.equals("GetClientLogonInfo")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_GetClientLogonInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 1218106139:
                if (methodName.equals("InstallClientApp")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_InstallClientApp_Response.class, packetMsg);
                    break;
                }
                break;
            case 1603327727:
                if (methodName.equals("GetClientInfo")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_GetClientInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 1749288884:
                if (methodName.equals("UninstallClientApp")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_UninstallClientApp_Response.class, packetMsg);
                    break;
                }
                break;
            case 1788781507:
                if (methodName.equals("LaunchClientApp")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_LaunchClientApp_Response.class, packetMsg);
                    break;
                }
                break;
            case 1960476798:
                if (methodName.equals("GetClientAppList")) {
                    postResponseMsg(ServiceClientcomm.CClientComm_GetClientAppList_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Response.Builder>> enableOrDisableDownloads(ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_EnableOrDisableDownloads_Response.Builder.class, "ClientComm.EnableOrDisableDownloads#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response.Builder>> getAllClientLogonInfo(ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_GetAllClientLogonInfo_Response.Builder.class, "ClientComm.GetAllClientLogonInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetClientAppList_Response.Builder>> getClientAppList(ServiceClientcomm.CClientComm_GetClientAppList_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_GetClientAppList_Response.Builder.class, "ClientComm.GetClientAppList#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetClientInfo_Response.Builder>> getClientInfo(ServiceClientcomm.CClientComm_GetClientInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_GetClientInfo_Response.Builder.class, "ClientComm.GetClientInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_GetClientLogonInfo_Response.Builder>> getClientLogonInfo(ServiceClientcomm.CClientComm_GetClientLogonInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_GetClientLogonInfo_Response.Builder.class, "ClientComm.GetClientLogonInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_InstallClientApp_Response.Builder>> installClientApp(ServiceClientcomm.CClientComm_InstallClientApp_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_InstallClientApp_Response.Builder.class, "ClientComm.InstallClientApp#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_LaunchClientApp_Response.Builder>> launchClientApp(ServiceClientcomm.CClientComm_LaunchClientApp_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_LaunchClientApp_Response.Builder.class, "ClientComm.LaunchClientApp#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_SetClientAppUpdateState_Response.Builder>> setClientAppUpdateState(ServiceClientcomm.CClientComm_SetClientAppUpdateState_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_SetClientAppUpdateState_Response.Builder.class, "ClientComm.SetClientAppUpdateState#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<ServiceClientcomm.CClientComm_UninstallClientApp_Response.Builder>> uninstallClientApp(ServiceClientcomm.CClientComm_UninstallClientApp_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(ServiceClientcomm.CClientComm_UninstallClientApp_Response.Builder.class, "ClientComm.UninstallClientApp#1", request);
    }
}
