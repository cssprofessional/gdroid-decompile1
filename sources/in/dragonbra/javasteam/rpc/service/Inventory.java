package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Inventory.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Inventory extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "Inventory";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Inventory(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1922369189:
                if (methodName.equals("SplitItemStack")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case -1865883962:
                if (methodName.equals("GetInventory")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case -1680160303:
                if (methodName.equals("PurchaseInit")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_PurchaseInit_Response.class, packetMsg);
                    break;
                }
                break;
            case -774063807:
                if (methodName.equals("AddPromoItem")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case -749134897:
                if (methodName.equals("DevSetNextDrop")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case -631986175:
                if (methodName.equals("GetItemDefMeta")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_Response.class, packetMsg);
                    break;
                }
                break;
            case -375310023:
                if (methodName.equals("SafeModifyItems")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 39581791:
                if (methodName.equals("PurchaseFinalize")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 139579175:
                if (methodName.equals("InspectItem")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 808269071:
                if (methodName.equals("ConsumeItem")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 1445495048:
                if (methodName.equals("GetEligiblePromoItemDefIDs")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_Response.class, packetMsg);
                    break;
                }
                break;
            case 1450937360:
                if (methodName.equals("GetUserPurchaseInfo")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 1533172413:
                if (methodName.equals("DevGenerateItem")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 1593706486:
                if (methodName.equals("ExchangeItem")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 1734377469:
                if (methodName.equals("ConsumePlaytime")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
            case 1918431837:
                if (methodName.equals("CombineItemStacks")) {
                    postResponseMsg(SteammessagesInventorySteamclient.CInventory_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> getInventory(SteammessagesInventorySteamclient.CInventory_GetInventory_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.GetInventory#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> exchangeItem(SteammessagesInventorySteamclient.CInventory_ExchangeItem_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.ExchangeItem#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_Response.Builder>> getEligiblePromoItemDefIDs(SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_Response.Builder.class, "Inventory.GetEligiblePromoItemDefIDs#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> addPromoItem(SteammessagesInventorySteamclient.CInventory_AddItem_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.AddPromoItem#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> safeModifyItems(SteammessagesInventorySteamclient.CInventory_ModifyItems_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.SafeModifyItems#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> consumePlaytime(SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.ConsumePlaytime#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> consumeItem(SteammessagesInventorySteamclient.CInventory_ConsumeItem_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.ConsumeItem#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> devGenerateItem(SteammessagesInventorySteamclient.CInventory_AddItem_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.DevGenerateItem#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> devSetNextDrop(SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.DevSetNextDrop#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> splitItemStack(SteammessagesInventorySteamclient.CInventory_SplitItemStack_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.SplitItemStack#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> combineItemStacks(SteammessagesInventorySteamclient.CInventory_CombineItemStacks_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.CombineItemStacks#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_Response.Builder>> getItemDefMeta(SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_Response.Builder.class, "Inventory.GetItemDefMeta#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_Response.Builder>> getUserPurchaseInfo(SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_Response.Builder.class, "Inventory.GetUserPurchaseInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_PurchaseInit_Response.Builder>> purchaseInit(SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_PurchaseInit_Response.Builder.class, "Inventory.PurchaseInit#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> purchaseFinalize(SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.PurchaseFinalize#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesInventorySteamclient.CInventory_Response.Builder>> inspectItem(SteammessagesInventorySteamclient.CInventory_InspectItem_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesInventorySteamclient.CInventory_Response.Builder.class, "Inventory.InspectItem#1", request);
    }
}
