package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PublishedFileClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PublishedFileClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "PublishedFileClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PublishedFileClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        int iHashCode = methodName.hashCode();
        if (iHashCode == -1718548524) {
            if (methodName.equals("NotifyFileDeleted")) {
                postNotificationMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_FileDeleted_Client_Notification.class, packetMsg);
            }
        } else if (iHashCode == 41326271) {
            if (methodName.equals("NotifyFileSubscribed")) {
                postNotificationMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_FileSubscribed_Notification.class, packetMsg);
            }
        } else if (iHashCode == 1633875160 && methodName.equals("NotifyFileUnsubscribed")) {
            postNotificationMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_FileUnsubscribed_Notification.class, packetMsg);
        }
    }

    public final void notifyFileSubscribed(SteammessagesPublishedfileSteamclient.CPublishedFile_FileSubscribed_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PublishedFileClient.NotifyFileSubscribed#1", request);
    }

    public final void notifyFileUnsubscribed(SteammessagesPublishedfileSteamclient.CPublishedFile_FileUnsubscribed_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PublishedFileClient.NotifyFileUnsubscribed#1", request);
    }

    public final void notifyFileDeleted(SteammessagesPublishedfileSteamclient.CPublishedFile_FileDeleted_Client_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PublishedFileClient.NotifyFileDeleted#1", request);
    }
}
