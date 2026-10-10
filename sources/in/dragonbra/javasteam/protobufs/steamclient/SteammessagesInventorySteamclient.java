package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesInventorySteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CInventoryClient_NewItems_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventoryClient_NewItems_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_AddItem_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_AddItem_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_CombineItemStacks_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_CombineItemStacks_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_ConsumeItem_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_ConsumeItem_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_ConsumePlaytime_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_ConsumePlaytime_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_DevSetNextDrop_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_DevSetNextDrop_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_ExchangeItem_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_ExchangeItem_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetInventory_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetInventory_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetItemDefMeta_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetItemDefMeta_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetItemDefMeta_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetItemDefMeta_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetUserPurchaseInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetUserPurchaseInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_GetUserPurchaseInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_GetUserPurchaseInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_InspectItem_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_InspectItem_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_ModifyItems_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_ModifyItems_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_PurchaseFinalize_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_PurchaseFinalize_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_PurchaseInit_Request_LineItem_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_PurchaseInit_Request_LineItem_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_PurchaseInit_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_PurchaseInit_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_PurchaseInit_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_PurchaseInit_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CInventory_SplitItemStack_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CInventory_SplitItemStack_Request_fieldAccessorTable;

    public interface CInventoryClient_NewItems_NotificationOrBuilder extends MessageOrBuilder {
        int getAppid();

        CInventory_Response getInventoryResponse();

        CInventory_ResponseOrBuilder getInventoryResponseOrBuilder();

        boolean hasAppid();

        boolean hasInventoryResponse();
    }

    public interface CInventory_AddItem_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean getIsPurchase();

        long getItemdefid(int i);

        int getItemdefidCount();

        List<Long> getItemdefidList();

        String getItempropsjson(int i);

        ByteString getItempropsjsonBytes(int i);

        int getItempropsjsonCount();

        List<String> getItempropsjsonList();

        int getItemquantity(int i);

        int getItemquantityCount();

        List<Integer> getItemquantityList();

        boolean getNotify();

        long getRequestid();

        long getSteamid();

        boolean getTradeRestriction();

        boolean hasAppid();

        boolean hasIsPurchase();

        boolean hasNotify();

        boolean hasRequestid();

        boolean hasSteamid();

        boolean hasTradeRestriction();
    }

    public interface CInventory_CombineItemStacks_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getDestitemid();

        long getFromitemid();

        int getQuantity();

        long getSteamid();

        boolean hasAppid();

        boolean hasDestitemid();

        boolean hasFromitemid();

        boolean hasQuantity();

        boolean hasSteamid();
    }

    public interface CInventory_ConsumeItem_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getItemid();

        int getQuantity();

        long getRequestid();

        long getSteamid();

        String getTimestamp();

        ByteString getTimestampBytes();

        boolean hasAppid();

        boolean hasItemid();

        boolean hasQuantity();

        boolean hasRequestid();

        boolean hasSteamid();

        boolean hasTimestamp();
    }

    public interface CInventory_ConsumePlaytime_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getItemdefid();

        boolean hasAppid();

        boolean hasItemdefid();
    }

    public interface CInventory_DevSetNextDrop_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getDroptime();

        ByteString getDroptimeBytes();

        long getItemdefid();

        boolean hasAppid();

        boolean hasDroptime();

        boolean hasItemdefid();
    }

    public interface CInventory_ExchangeItem_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getMaterialsitemid(int i);

        int getMaterialsitemidCount();

        List<Long> getMaterialsitemidList();

        int getMaterialsquantity(int i);

        int getMaterialsquantityCount();

        List<Integer> getMaterialsquantityList();

        long getOutputitemdefid();

        long getSteamid();

        boolean hasAppid();

        boolean hasOutputitemdefid();

        boolean hasSteamid();
    }

    public interface CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getSteamid();

        boolean hasAppid();

        boolean hasSteamid();
    }

    public interface CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder extends MessageOrBuilder {
        long getItemdefids(int i);

        int getItemdefidsCount();

        List<Long> getItemdefidsList();
    }

    public interface CInventory_GetInventory_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getSteamid();

        boolean hasAppid();

        boolean hasSteamid();
    }

    public interface CInventory_GetItemDefMeta_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean hasAppid();
    }

    public interface CInventory_GetItemDefMeta_ResponseOrBuilder extends MessageOrBuilder {
        String getDigest();

        ByteString getDigestBytes();

        int getModified();

        boolean hasDigest();

        boolean hasModified();
    }

    public interface CInventory_GetUserPurchaseInfo_ResponseOrBuilder extends MessageOrBuilder {
        int getEcurrency();

        boolean hasEcurrency();
    }

    public interface CInventory_InspectItem_RequestOrBuilder extends MessageOrBuilder {
        long getItemdefid();

        long getItemid();

        String getTags();

        ByteString getTagsBytes();

        boolean hasItemdefid();

        boolean hasItemid();

        boolean hasTags();
    }

    public interface CInventory_ModifyItems_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getSteamid();

        int getTimestamp();

        CInventory_ModifyItems_Request.ItemPropertyUpdate getUpdates(int i);

        int getUpdatesCount();

        List<CInventory_ModifyItems_Request.ItemPropertyUpdate> getUpdatesList();

        CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder getUpdatesOrBuilder(int i);

        List<? extends CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder> getUpdatesOrBuilderList();

        boolean hasAppid();

        boolean hasSteamid();

        boolean hasTimestamp();
    }

    public interface CInventory_PurchaseFinalize_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getLanguage();

        long getOrderid();

        boolean hasAppid();

        boolean hasLanguage();

        boolean hasOrderid();
    }

    public interface CInventory_PurchaseInit_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getLanguage();

        CInventory_PurchaseInit_Request.LineItem getLineItems(int i);

        int getLineItemsCount();

        List<CInventory_PurchaseInit_Request.LineItem> getLineItemsList();

        CInventory_PurchaseInit_Request.LineItemOrBuilder getLineItemsOrBuilder(int i);

        List<? extends CInventory_PurchaseInit_Request.LineItemOrBuilder> getLineItemsOrBuilderList();

        boolean hasAppid();

        boolean hasLanguage();
    }

    public interface CInventory_PurchaseInit_ResponseOrBuilder extends MessageOrBuilder {
        long getOrderid();

        long getTransid();

        boolean hasOrderid();

        boolean hasTransid();
    }

    public interface CInventory_ResponseOrBuilder extends MessageOrBuilder {
        String getEtag();

        ByteString getEtagBytes();

        String getItemJson();

        ByteString getItemJsonBytes();

        String getItemdefJson();

        ByteString getItemdefJsonBytes();

        long getRemoveditemids(int i);

        int getRemoveditemidsCount();

        List<Long> getRemoveditemidsList();

        boolean getReplayed();

        ByteString getTicket();

        boolean hasEtag();

        boolean hasItemJson();

        boolean hasItemdefJson();

        boolean hasReplayed();

        boolean hasTicket();
    }

    public interface CInventory_SplitItemStack_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getItemid();

        int getQuantity();

        long getSteamid();

        boolean hasAppid();

        boolean hasItemid();

        boolean hasQuantity();

        boolean hasSteamid();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesInventorySteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesInventorySteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nVin/dragonbra/javasteam/protobufs/steamclient/steammessages_inventory.steamclient.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\"A\n\u001fCInventory_GetInventory_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\"\u0086\u0001\n\u0013CInventory_Response\u0012\f\n\u0004etag\u0018\u0001 \u0001(\t\u0012\u0016\n\u000eremoveditemids\u0018\u0002 \u0003(\u0004\u0012\u0011\n\titem_json\u0018\u0003 \u0001(\t\u0012\u0014\n\fitemdef_json\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006ticket\u0018\u0005 \u0001(\f\u0012\u0010\n\breplayed\u0018\u0006 \u0001(\b\"\u008e\u0001\n\u001fCInventory_ExchangeItem_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\u0012\u0017\n\u000fmaterialsitemid\u0018\u0003 \u0003(\u0004\u0012\u0019\n\u0011materialsquantity\u0018\u0004 \u0003(\r\u0012\u0017\n\u000foutputitemdefid\u0018\u0005 \u0001(\u0004\"O\n-CInventory_GetEligiblePromoItemDefIDs_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\"D\n.CInventory_GetEligiblePromoItemDefIDs_Response\u0012\u0012\n\nitemdefids\u0018\u0001 \u0003(\u0004\"Ö\u0001\n\u001aCInventory_AddItem_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0011\n\titemdefid\u0018\u0002 \u0003(\u0004\u0012\u0015\n\ritempropsjson\u0018\u0003 \u0003(\t\u0012\u0014\n\fitemquantity\u0018\t \u0003(\r\u0012\u000f\n\u0007steamid\u0018\u0004 \u0001(\u0004\u0012\u000e\n\u0006notify\u0018\u0005 \u0001(\b\u0012\u0011\n\trequestid\u0018\u0006 \u0001(\u0004\u0012\u0019\n\u0011trade_restriction\u0018\u0007 \u0001(\b\u0012\u001a\n\u000bis_purchase\u0018\b \u0001(\b:\u0005false\"å\u0002\n\u001eCInventory_ModifyItems_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\u0012C\n\u0007updates\u0018\u0003 \u0003(\u000b22.CInventory_ModifyItems_Request.ItemPropertyUpdate\u0012\u0011\n\ttimestamp\u0018\u0004 \u0001(\r\u001aÊ\u0001\n\u0012ItemPropertyUpdate\u0012\u000e\n\u0006itemid\u0018\u0001 \u0001(\u0004\u0012\u0017\n\u000fremove_property\u0018\u0002 \u0001(\b\u0012\u0015\n\rproperty_name\u0018\u0003 \u0001(\t\u0012\u001b\n\u0013property_value_bool\u0018\u0004 \u0001(\b\u0012\u001a\n\u0012property_value_int\u0018\u0005 \u0001(\u0003\u0012\u001d\n\u0015property_value_string\u0018\u0006 \u0001(\t\u0012\u001c\n\u0014property_value_float\u0018\u0007 \u0001(\u0002\"F\n\"CInventory_ConsumePlaytime_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0011\n\titemdefid\u0018\u0002 \u0001(\u0004\"\u0088\u0001\n\u001eCInventory_ConsumeItem_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006itemid\u0018\u0002 \u0001(\u0004\u0012\u0010\n\bquantity\u0018\u0003 \u0001(\r\u0012\u0011\n\ttimestamp\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007steamid\u0018\u0005 \u0001(\u0004\u0012\u0011\n\trequestid\u0018\u0006 \u0001(\u0004\"W\n!CInventory_DevSetNextDrop_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0011\n\titemdefid\u0018\u0002 \u0001(\u0004\u0012\u0010\n\bdroptime\u0018\u0003 \u0001(\t\"e\n!CInventory_SplitItemStack_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006itemid\u0018\u0002 \u0001(\u0004\u0012\u0010\n\bquantity\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0005 \u0001(\u0004\"\u0080\u0001\n$CInventory_CombineItemStacks_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0012\n\nfromitemid\u0018\u0002 \u0001(\u0004\u0012\u0012\n\ndestitemid\u0018\u0003 \u0001(\u0004\u0012\u0010\n\bquantity\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0007 \u0001(\u0006\"2\n!CInventory_GetItemDefMeta_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\"F\n\"CInventory_GetItemDefMeta_Response\u0012\u0010\n\bmodified\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006digest\u0018\u0002 \u0001(\t\"(\n&CInventory_GetUserPurchaseInfo_Request\"<\n'CInventory_GetUserPurchaseInfo_Response\u0012\u0011\n\tecurrency\u0018\u0001 \u0001(\u0005\"²\u0001\n\u001fCInventory_PurchaseInit_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0010\n\blanguage\u0018\u0002 \u0001(\u0005\u0012=\n\nline_items\u0018\u0003 \u0003(\u000b2).CInventory_PurchaseInit_Request.LineItem\u001a/\n\bLineItem\u0012\u0011\n\titemdefid\u0018\u0001 \u0001(\u0004\u0012\u0010\n\bquantity\u0018\u0002 \u0001(\r\"D\n CInventory_PurchaseInit_Response\u0012\u000f\n\u0007orderid\u0018\u0001 \u0001(\u0004\u0012\u000f\n\u0007transid\u0018\u0002 \u0001(\u0004\"W\n#CInventory_PurchaseFinalize_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0010\n\blanguage\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007orderid\u0018\u0003 \u0001(\u0004\"Q\n\u001eCInventory_InspectItem_Request\u0012\u0011\n\titemdefid\u0018\u0001 \u0001(\u0004\u0012\u000e\n\u0006itemid\u0018\u0002 \u0001(\u0006\u0012\f\n\u0004tags\u0018\u0003 \u0001(\t\"i\n&CInventoryClient_NewItems_Notification\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u00120\n\u0012inventory_response\u0018\u0002 \u0001(\u000b2\u0014.CInventory_Response2\u009b\n\n\tInventory\u0012F\n\fGetInventory\u0012 .CInventory_GetInventory_Request\u001a\u0014.CInventory_Response\u0012F\n\fExchangeItem\u0012 .CInventory_ExchangeItem_Request\u001a\u0014.CInventory_Response\u0012}\n\u001aGetEligiblePromoItemDefIDs\u0012..CInventory_GetEligiblePromoItemDefIDs_Request\u001a/.CInventory_GetEligiblePromoItemDefIDs_Response\u0012A\n\fAddPromoItem\u0012\u001b.CInventory_AddItem_Request\u001a\u0014.CInventory_Response\u0012H\n\u000fSafeModifyItems\u0012\u001f.CInventory_ModifyItems_Request\u001a\u0014.CInventory_Response\u0012L\n\u000fConsumePlaytime\u0012#.CInventory_ConsumePlaytime_Request\u001a\u0014.CInventory_Response\u0012D\n\u000bConsumeItem\u0012\u001f.CInventory_ConsumeItem_Request\u001a\u0014.CInventory_Response\u0012D\n\u000fDevGenerateItem\u0012\u001b.CInventory_AddItem_Request\u001a\u0014.CInventory_Response\u0012J\n\u000eDevSetNextDrop\u0012\".CInventory_DevSetNextDrop_Request\u001a\u0014.CInventory_Response\u0012J\n\u000eSplitItemStack\u0012\".CInventory_SplitItemStack_Request\u001a\u0014.CInventory_Response\u0012P\n\u0011CombineItemStacks\u0012%.CInventory_CombineItemStacks_Request\u001a\u0014.CInventory_Response\u0012Y\n\u000eGetItemDefMeta\u0012\".CInventory_GetItemDefMeta_Request\u001a#.CInventory_GetItemDefMeta_Response\u0012h\n\u0013GetUserPurchaseInfo\u0012'.CInventory_GetUserPurchaseInfo_Request\u001a(.CInventory_GetUserPurchaseInfo_Response\u0012S\n\fPurchaseInit\u0012 .CInventory_PurchaseInit_Request\u001a!.CInventory_PurchaseInit_Response\u0012N\n\u0010PurchaseFinalize\u0012$.CInventory_PurchaseFinalize_Request\u001a\u0014.CInventory_Response\u0012D\n\u000bInspectItem\u0012\u001f.CInventory_InspectItem_Request\u001a\u0014.CInventory_Response2_\n\u000fInventoryClient\u0012F\n\u000eNotifyNewItems\u0012'.CInventoryClient_NewItems_Notification\u001a\u000b.NoResponse\u001a\u0004Àµ\u0018\u0002B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), SteammessagesUnifiedBaseSteamclient.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CInventory_GetInventory_Request_descriptor = descriptor2;
        internal_static_CInventory_GetInventory_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Appid", "Steamid"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CInventory_Response_descriptor = descriptor3;
        internal_static_CInventory_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Etag", "Removeditemids", "ItemJson", "ItemdefJson", "Ticket", "Replayed"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CInventory_ExchangeItem_Request_descriptor = descriptor4;
        internal_static_CInventory_ExchangeItem_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Appid", "Steamid", "Materialsitemid", "Materialsquantity", "Outputitemdefid"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_descriptor = descriptor5;
        internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Appid", "Steamid"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_descriptor = descriptor6;
        internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Itemdefids"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CInventory_AddItem_Request_descriptor = descriptor7;
        internal_static_CInventory_AddItem_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Appid", "Itemdefid", "Itempropsjson", "Itemquantity", "Steamid", "Notify", "Requestid", "TradeRestriction", "IsPurchase"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CInventory_ModifyItems_Request_descriptor = descriptor8;
        internal_static_CInventory_ModifyItems_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Appid", "Steamid", "Updates", "Timestamp"});
        Descriptors.Descriptor descriptor9 = descriptor8.getNestedTypes().get(0);
        internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_descriptor = descriptor9;
        internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Itemid", "RemoveProperty", "PropertyName", "PropertyValueBool", "PropertyValueInt", "PropertyValueString", "PropertyValueFloat"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(7);
        internal_static_CInventory_ConsumePlaytime_Request_descriptor = descriptor10;
        internal_static_CInventory_ConsumePlaytime_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Appid", "Itemdefid"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(8);
        internal_static_CInventory_ConsumeItem_Request_descriptor = descriptor11;
        internal_static_CInventory_ConsumeItem_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Appid", "Itemid", "Quantity", "Timestamp", "Steamid", "Requestid"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(9);
        internal_static_CInventory_DevSetNextDrop_Request_descriptor = descriptor12;
        internal_static_CInventory_DevSetNextDrop_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Appid", "Itemdefid", "Droptime"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(10);
        internal_static_CInventory_SplitItemStack_Request_descriptor = descriptor13;
        internal_static_CInventory_SplitItemStack_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Appid", "Itemid", "Quantity", "Steamid"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(11);
        internal_static_CInventory_CombineItemStacks_Request_descriptor = descriptor14;
        internal_static_CInventory_CombineItemStacks_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Appid", "Fromitemid", "Destitemid", "Quantity", "Steamid"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(12);
        internal_static_CInventory_GetItemDefMeta_Request_descriptor = descriptor15;
        internal_static_CInventory_GetItemDefMeta_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Appid"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(13);
        internal_static_CInventory_GetItemDefMeta_Response_descriptor = descriptor16;
        internal_static_CInventory_GetItemDefMeta_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Modified", "Digest"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(14);
        internal_static_CInventory_GetUserPurchaseInfo_Request_descriptor = descriptor17;
        internal_static_CInventory_GetUserPurchaseInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[0]);
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(15);
        internal_static_CInventory_GetUserPurchaseInfo_Response_descriptor = descriptor18;
        internal_static_CInventory_GetUserPurchaseInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"Ecurrency"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(16);
        internal_static_CInventory_PurchaseInit_Request_descriptor = descriptor19;
        internal_static_CInventory_PurchaseInit_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"Appid", "Language", "LineItems"});
        Descriptors.Descriptor descriptor20 = descriptor19.getNestedTypes().get(0);
        internal_static_CInventory_PurchaseInit_Request_LineItem_descriptor = descriptor20;
        internal_static_CInventory_PurchaseInit_Request_LineItem_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"Itemdefid", "Quantity"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(17);
        internal_static_CInventory_PurchaseInit_Response_descriptor = descriptor21;
        internal_static_CInventory_PurchaseInit_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Orderid", "Transid"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(18);
        internal_static_CInventory_PurchaseFinalize_Request_descriptor = descriptor22;
        internal_static_CInventory_PurchaseFinalize_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"Appid", "Language", "Orderid"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(19);
        internal_static_CInventory_InspectItem_Request_descriptor = descriptor23;
        internal_static_CInventory_InspectItem_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"Itemdefid", "Itemid", "Tags"});
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(20);
        internal_static_CInventoryClient_NewItems_Notification_descriptor = descriptor24;
        internal_static_CInventoryClient_NewItems_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"Appid", "InventoryResponse"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
        ExtensionRegistry extensionRegistryNewInstance = ExtensionRegistry.newInstance();
        extensionRegistryNewInstance.add((GeneratedMessage.GeneratedExtension<?, ?>) SteammessagesUnifiedBaseSteamclient.serviceExecutionSite);
        Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, extensionRegistryNewInstance);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CInventory_GetInventory_Request extends GeneratedMessage implements CInventory_GetInventory_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_GetInventory_Request DEFAULT_INSTANCE;
        private static final Parser<CInventory_GetInventory_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetInventory_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetInventory_Request();
            PARSER = new AbstractParser<CInventory_GetInventory_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetInventory_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetInventory_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetInventory_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetInventory_Request() {
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetInventory_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetInventory_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetInventory_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_GetInventory_Request)) {
                return super.equals(obj);
            }
            CInventory_GetInventory_Request cInventory_GetInventory_Request = (CInventory_GetInventory_Request) obj;
            if (hasAppid() != cInventory_GetInventory_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cInventory_GetInventory_Request.getAppid()) && hasSteamid() == cInventory_GetInventory_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cInventory_GetInventory_Request.getSteamid()) && getUnknownFields().equals(cInventory_GetInventory_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_GetInventory_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetInventory_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetInventory_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetInventory_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetInventory_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetInventory_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetInventory_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetInventory_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetInventory_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetInventory_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetInventory_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetInventory_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetInventory_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetInventory_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetInventory_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetInventory_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetInventory_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetInventory_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetInventory_Request cInventory_GetInventory_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetInventory_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_GetInventory_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetInventory_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetInventory_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetInventory_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetInventory_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetInventory_Request getDefaultInstanceForType() {
                return CInventory_GetInventory_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetInventory_Request build() {
                CInventory_GetInventory_Request cInventory_GetInventory_RequestBuildPartial = buildPartial();
                if (cInventory_GetInventory_RequestBuildPartial.isInitialized()) {
                    return cInventory_GetInventory_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetInventory_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetInventory_Request buildPartial() {
                CInventory_GetInventory_Request cInventory_GetInventory_Request = new CInventory_GetInventory_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_GetInventory_Request);
                }
                onBuilt();
                return cInventory_GetInventory_Request;
            }

            private void buildPartial0(CInventory_GetInventory_Request cInventory_GetInventory_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_GetInventory_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_GetInventory_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                cInventory_GetInventory_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetInventory_Request) {
                    return mergeFrom((CInventory_GetInventory_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetInventory_Request cInventory_GetInventory_Request) {
                if (cInventory_GetInventory_Request == CInventory_GetInventory_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_GetInventory_Request.hasAppid()) {
                    setAppid(cInventory_GetInventory_Request.getAppid());
                }
                if (cInventory_GetInventory_Request.hasSteamid()) {
                    setSteamid(cInventory_GetInventory_Request.getSteamid());
                }
                mergeUnknownFields(cInventory_GetInventory_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetInventory_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_GetInventory_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetInventory_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetInventory_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetInventory_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_Response extends GeneratedMessage implements CInventory_ResponseOrBuilder {
        private static final CInventory_Response DEFAULT_INSTANCE;
        public static final int ETAG_FIELD_NUMBER = 1;
        public static final int ITEMDEF_JSON_FIELD_NUMBER = 4;
        public static final int ITEM_JSON_FIELD_NUMBER = 3;
        private static final Parser<CInventory_Response> PARSER;
        public static final int REMOVEDITEMIDS_FIELD_NUMBER = 2;
        public static final int REPLAYED_FIELD_NUMBER = 6;
        public static final int TICKET_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object etag_;
        private volatile Object itemJson_;
        private volatile Object itemdefJson_;
        private byte memoizedIsInitialized;
        private Internal.LongList removeditemids_;
        private boolean replayed_;
        private ByteString ticket_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_Response.class.getName());
            DEFAULT_INSTANCE = new CInventory_Response();
            PARSER = new AbstractParser<CInventory_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_Response.1
                @Override // com.google.protobuf.Parser
                public CInventory_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_Response.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.etag_ = "";
            this.removeditemids_ = GeneratedMessage.emptyLongList();
            this.itemJson_ = "";
            this.itemdefJson_ = "";
            this.ticket_ = ByteString.EMPTY;
            this.replayed_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_Response() {
            this.etag_ = "";
            this.removeditemids_ = GeneratedMessage.emptyLongList();
            this.itemJson_ = "";
            this.itemdefJson_ = "";
            ByteString byteString = ByteString.EMPTY;
            this.ticket_ = byteString;
            this.replayed_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.etag_ = "";
            this.removeditemids_ = GeneratedMessage.emptyLongList();
            this.itemJson_ = "";
            this.itemdefJson_ = "";
            this.ticket_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public boolean hasEtag() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public String getEtag() {
            Object obj = this.etag_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.etag_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public ByteString getEtagBytes() {
            Object obj = this.etag_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.etag_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public List<Long> getRemoveditemidsList() {
            return this.removeditemids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public int getRemoveditemidsCount() {
            return this.removeditemids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public long getRemoveditemids(int i) {
            return this.removeditemids_.getLong(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public boolean hasItemJson() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public String getItemJson() {
            Object obj = this.itemJson_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.itemJson_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public ByteString getItemJsonBytes() {
            Object obj = this.itemJson_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.itemJson_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public boolean hasItemdefJson() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public String getItemdefJson() {
            Object obj = this.itemdefJson_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.itemdefJson_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public ByteString getItemdefJsonBytes() {
            Object obj = this.itemdefJson_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.itemdefJson_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public boolean hasTicket() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public ByteString getTicket() {
            return this.ticket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public boolean hasReplayed() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
        public boolean getReplayed() {
            return this.replayed_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 1, this.etag_);
            }
            for (int i = 0; i < this.removeditemids_.size(); i++) {
                codedOutputStream.writeUInt64(2, this.removeditemids_.getLong(i));
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.itemJson_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.itemdefJson_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBytes(5, this.ticket_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(6, this.replayed_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.etag_) : 0;
            int iComputeUInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < this.removeditemids_.size(); i2++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(this.removeditemids_.getLong(i2));
            }
            int size = iComputeStringSize + iComputeUInt64SizeNoTag + getRemoveditemidsList().size();
            if ((this.bitField0_ & 2) != 0) {
                size += GeneratedMessage.computeStringSize(3, this.itemJson_);
            }
            if ((this.bitField0_ & 4) != 0) {
                size += GeneratedMessage.computeStringSize(4, this.itemdefJson_);
            }
            if ((this.bitField0_ & 8) != 0) {
                size += CodedOutputStream.computeBytesSize(5, this.ticket_);
            }
            if ((this.bitField0_ & 16) != 0) {
                size += CodedOutputStream.computeBoolSize(6, this.replayed_);
            }
            int serializedSize = size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_Response)) {
                return super.equals(obj);
            }
            CInventory_Response cInventory_Response = (CInventory_Response) obj;
            if (hasEtag() != cInventory_Response.hasEtag()) {
                return false;
            }
            if ((hasEtag() && !getEtag().equals(cInventory_Response.getEtag())) || !getRemoveditemidsList().equals(cInventory_Response.getRemoveditemidsList()) || hasItemJson() != cInventory_Response.hasItemJson()) {
                return false;
            }
            if ((hasItemJson() && !getItemJson().equals(cInventory_Response.getItemJson())) || hasItemdefJson() != cInventory_Response.hasItemdefJson()) {
                return false;
            }
            if ((hasItemdefJson() && !getItemdefJson().equals(cInventory_Response.getItemdefJson())) || hasTicket() != cInventory_Response.hasTicket()) {
                return false;
            }
            if ((!hasTicket() || getTicket().equals(cInventory_Response.getTicket())) && hasReplayed() == cInventory_Response.hasReplayed()) {
                return (!hasReplayed() || getReplayed() == cInventory_Response.getReplayed()) && getUnknownFields().equals(cInventory_Response.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEtag()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEtag().hashCode();
            }
            if (getRemoveditemidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getRemoveditemidsList().hashCode();
            }
            if (hasItemJson()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getItemJson().hashCode();
            }
            if (hasItemdefJson()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getItemdefJson().hashCode();
            }
            if (hasTicket()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getTicket().hashCode();
            }
            if (hasReplayed()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getReplayed());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_Response parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_Response cInventory_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_ResponseOrBuilder {
            private int bitField0_;
            private Object etag_;
            private Object itemJson_;
            private Object itemdefJson_;
            private Internal.LongList removeditemids_;
            private boolean replayed_;
            private ByteString ticket_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_Response.class, Builder.class);
            }

            private Builder() {
                this.etag_ = "";
                this.removeditemids_ = GeneratedMessage.emptyLongList();
                this.itemJson_ = "";
                this.itemdefJson_ = "";
                this.ticket_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.etag_ = "";
                this.removeditemids_ = GeneratedMessage.emptyLongList();
                this.itemJson_ = "";
                this.itemdefJson_ = "";
                this.ticket_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.etag_ = "";
                this.removeditemids_ = GeneratedMessage.emptyLongList();
                this.itemJson_ = "";
                this.itemdefJson_ = "";
                this.ticket_ = ByteString.EMPTY;
                this.replayed_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_Response getDefaultInstanceForType() {
                return CInventory_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_Response build() {
                CInventory_Response cInventory_ResponseBuildPartial = buildPartial();
                if (cInventory_ResponseBuildPartial.isInitialized()) {
                    return cInventory_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_Response buildPartial() {
                CInventory_Response cInventory_Response = new CInventory_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_Response);
                }
                onBuilt();
                return cInventory_Response;
            }

            private void buildPartial0(CInventory_Response cInventory_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_Response.etag_ = this.etag_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    this.removeditemids_.makeImmutable();
                    cInventory_Response.removeditemids_ = this.removeditemids_;
                }
                if ((i2 & 4) != 0) {
                    cInventory_Response.itemJson_ = this.itemJson_;
                    i |= 2;
                }
                if ((i2 & 8) != 0) {
                    cInventory_Response.itemdefJson_ = this.itemdefJson_;
                    i |= 4;
                }
                if ((i2 & 16) != 0) {
                    cInventory_Response.ticket_ = this.ticket_;
                    i |= 8;
                }
                if ((i2 & 32) != 0) {
                    cInventory_Response.replayed_ = this.replayed_;
                    i |= 16;
                }
                cInventory_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_Response) {
                    return mergeFrom((CInventory_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_Response cInventory_Response) {
                if (cInventory_Response == CInventory_Response.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_Response.hasEtag()) {
                    this.etag_ = cInventory_Response.etag_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (!cInventory_Response.removeditemids_.isEmpty()) {
                    if (this.removeditemids_.isEmpty()) {
                        Internal.LongList longList = cInventory_Response.removeditemids_;
                        this.removeditemids_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureRemoveditemidsIsMutable();
                        this.removeditemids_.addAll(cInventory_Response.removeditemids_);
                    }
                    onChanged();
                }
                if (cInventory_Response.hasItemJson()) {
                    this.itemJson_ = cInventory_Response.itemJson_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cInventory_Response.hasItemdefJson()) {
                    this.itemdefJson_ = cInventory_Response.itemdefJson_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cInventory_Response.hasTicket()) {
                    setTicket(cInventory_Response.getTicket());
                }
                if (cInventory_Response.hasReplayed()) {
                    setReplayed(cInventory_Response.getReplayed());
                }
                mergeUnknownFields(cInventory_Response.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    this.etag_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    long uInt64 = codedInputStream.readUInt64();
                                    ensureRemoveditemidsIsMutable();
                                    this.removeditemids_.addLong(uInt64);
                                } else if (tag == 18) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureRemoveditemidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.removeditemids_.addLong(codedInputStream.readUInt64());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 26) {
                                    this.itemJson_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.itemdefJson_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.ticket_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.replayed_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public boolean hasEtag() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public String getEtag() {
                Object obj = this.etag_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.etag_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public ByteString getEtagBytes() {
                Object obj = this.etag_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.etag_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setEtag(String str) {
                str.getClass();
                this.etag_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEtag() {
                this.etag_ = CInventory_Response.getDefaultInstance().getEtag();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setEtagBytes(ByteString byteString) {
                byteString.getClass();
                this.etag_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            private void ensureRemoveditemidsIsMutable() {
                if (!this.removeditemids_.isModifiable()) {
                    this.removeditemids_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.removeditemids_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public List<Long> getRemoveditemidsList() {
                this.removeditemids_.makeImmutable();
                return this.removeditemids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public int getRemoveditemidsCount() {
                return this.removeditemids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public long getRemoveditemids(int i) {
                return this.removeditemids_.getLong(i);
            }

            public Builder setRemoveditemids(int i, long j) {
                ensureRemoveditemidsIsMutable();
                this.removeditemids_.setLong(i, j);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addRemoveditemids(long j) {
                ensureRemoveditemidsIsMutable();
                this.removeditemids_.addLong(j);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllRemoveditemids(Iterable<? extends Long> iterable) {
                ensureRemoveditemidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.removeditemids_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRemoveditemids() {
                this.removeditemids_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public boolean hasItemJson() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public String getItemJson() {
                Object obj = this.itemJson_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.itemJson_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public ByteString getItemJsonBytes() {
                Object obj = this.itemJson_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.itemJson_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setItemJson(String str) {
                str.getClass();
                this.itemJson_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearItemJson() {
                this.itemJson_ = CInventory_Response.getDefaultInstance().getItemJson();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setItemJsonBytes(ByteString byteString) {
                byteString.getClass();
                this.itemJson_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public boolean hasItemdefJson() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public String getItemdefJson() {
                Object obj = this.itemdefJson_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.itemdefJson_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public ByteString getItemdefJsonBytes() {
                Object obj = this.itemdefJson_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.itemdefJson_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setItemdefJson(String str) {
                str.getClass();
                this.itemdefJson_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearItemdefJson() {
                this.itemdefJson_ = CInventory_Response.getDefaultInstance().getItemdefJson();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setItemdefJsonBytes(ByteString byteString) {
                byteString.getClass();
                this.itemdefJson_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public boolean hasTicket() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public ByteString getTicket() {
                return this.ticket_;
            }

            public Builder setTicket(ByteString byteString) {
                byteString.getClass();
                this.ticket_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearTicket() {
                this.bitField0_ &= -17;
                this.ticket_ = CInventory_Response.getDefaultInstance().getTicket();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public boolean hasReplayed() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ResponseOrBuilder
            public boolean getReplayed() {
                return this.replayed_;
            }

            public Builder setReplayed(boolean z) {
                this.replayed_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearReplayed() {
                this.bitField0_ &= -33;
                this.replayed_ = false;
                onChanged();
                return this;
            }
        }

        public static CInventory_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_ExchangeItem_Request extends GeneratedMessage implements CInventory_ExchangeItem_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_ExchangeItem_Request DEFAULT_INSTANCE;
        public static final int MATERIALSITEMID_FIELD_NUMBER = 3;
        public static final int MATERIALSQUANTITY_FIELD_NUMBER = 4;
        public static final int OUTPUTITEMDEFID_FIELD_NUMBER = 5;
        private static final Parser<CInventory_ExchangeItem_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private Internal.LongList materialsitemid_;
        private Internal.IntList materialsquantity_;
        private byte memoizedIsInitialized;
        private long outputitemdefid_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_ExchangeItem_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_ExchangeItem_Request();
            PARSER = new AbstractParser<CInventory_ExchangeItem_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_ExchangeItem_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_ExchangeItem_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_ExchangeItem_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.materialsitemid_ = GeneratedMessage.emptyLongList();
            this.materialsquantity_ = GeneratedMessage.emptyIntList();
            this.outputitemdefid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_ExchangeItem_Request() {
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.materialsitemid_ = GeneratedMessage.emptyLongList();
            this.materialsquantity_ = GeneratedMessage.emptyIntList();
            this.outputitemdefid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.materialsitemid_ = GeneratedMessage.emptyLongList();
            this.materialsquantity_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ExchangeItem_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ExchangeItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ExchangeItem_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public List<Long> getMaterialsitemidList() {
            return this.materialsitemid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public int getMaterialsitemidCount() {
            return this.materialsitemid_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public long getMaterialsitemid(int i) {
            return this.materialsitemid_.getLong(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public List<Integer> getMaterialsquantityList() {
            return this.materialsquantity_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public int getMaterialsquantityCount() {
            return this.materialsquantity_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public int getMaterialsquantity(int i) {
            return this.materialsquantity_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public boolean hasOutputitemdefid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
        public long getOutputitemdefid() {
            return this.outputitemdefid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            for (int i = 0; i < this.materialsitemid_.size(); i++) {
                codedOutputStream.writeUInt64(3, this.materialsitemid_.getLong(i));
            }
            for (int i2 = 0; i2 < this.materialsquantity_.size(); i2++) {
                codedOutputStream.writeUInt32(4, this.materialsquantity_.getInt(i2));
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(5, this.outputitemdefid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            int iComputeUInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < this.materialsitemid_.size(); i2++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(this.materialsitemid_.getLong(i2));
            }
            int size = iComputeUInt32Size + iComputeUInt64SizeNoTag + getMaterialsitemidList().size();
            int iComputeUInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.materialsquantity_.size(); i3++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.materialsquantity_.getInt(i3));
            }
            int size2 = size + iComputeUInt32SizeNoTag + getMaterialsquantityList().size();
            if ((this.bitField0_ & 4) != 0) {
                size2 += CodedOutputStream.computeUInt64Size(5, this.outputitemdefid_);
            }
            int serializedSize = size2 + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_ExchangeItem_Request)) {
                return super.equals(obj);
            }
            CInventory_ExchangeItem_Request cInventory_ExchangeItem_Request = (CInventory_ExchangeItem_Request) obj;
            if (hasAppid() != cInventory_ExchangeItem_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_ExchangeItem_Request.getAppid()) || hasSteamid() != cInventory_ExchangeItem_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cInventory_ExchangeItem_Request.getSteamid()) && getMaterialsitemidList().equals(cInventory_ExchangeItem_Request.getMaterialsitemidList()) && getMaterialsquantityList().equals(cInventory_ExchangeItem_Request.getMaterialsquantityList()) && hasOutputitemdefid() == cInventory_ExchangeItem_Request.hasOutputitemdefid()) {
                return (!hasOutputitemdefid() || getOutputitemdefid() == cInventory_ExchangeItem_Request.getOutputitemdefid()) && getUnknownFields().equals(cInventory_ExchangeItem_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (getMaterialsitemidCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMaterialsitemidList().hashCode();
            }
            if (getMaterialsquantityCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMaterialsquantityList().hashCode();
            }
            if (hasOutputitemdefid()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getOutputitemdefid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_ExchangeItem_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_ExchangeItem_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_ExchangeItem_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_ExchangeItem_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_ExchangeItem_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_ExchangeItem_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_ExchangeItem_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_ExchangeItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_ExchangeItem_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ExchangeItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ExchangeItem_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_ExchangeItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_ExchangeItem_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ExchangeItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ExchangeItem_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_ExchangeItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_ExchangeItem_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ExchangeItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_ExchangeItem_Request cInventory_ExchangeItem_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_ExchangeItem_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_ExchangeItem_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Internal.LongList materialsitemid_;
            private Internal.IntList materialsquantity_;
            private long outputitemdefid_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ExchangeItem_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ExchangeItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ExchangeItem_Request.class, Builder.class);
            }

            private Builder() {
                this.materialsitemid_ = GeneratedMessage.emptyLongList();
                this.materialsquantity_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.materialsitemid_ = GeneratedMessage.emptyLongList();
                this.materialsquantity_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.steamid_ = 0L;
                this.materialsitemid_ = GeneratedMessage.emptyLongList();
                this.materialsquantity_ = GeneratedMessage.emptyIntList();
                this.outputitemdefid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ExchangeItem_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_ExchangeItem_Request getDefaultInstanceForType() {
                return CInventory_ExchangeItem_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ExchangeItem_Request build() {
                CInventory_ExchangeItem_Request cInventory_ExchangeItem_RequestBuildPartial = buildPartial();
                if (cInventory_ExchangeItem_RequestBuildPartial.isInitialized()) {
                    return cInventory_ExchangeItem_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_ExchangeItem_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ExchangeItem_Request buildPartial() {
                CInventory_ExchangeItem_Request cInventory_ExchangeItem_Request = new CInventory_ExchangeItem_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_ExchangeItem_Request);
                }
                onBuilt();
                return cInventory_ExchangeItem_Request;
            }

            private void buildPartial0(CInventory_ExchangeItem_Request cInventory_ExchangeItem_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_ExchangeItem_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_ExchangeItem_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    this.materialsitemid_.makeImmutable();
                    cInventory_ExchangeItem_Request.materialsitemid_ = this.materialsitemid_;
                }
                if ((i2 & 8) != 0) {
                    this.materialsquantity_.makeImmutable();
                    cInventory_ExchangeItem_Request.materialsquantity_ = this.materialsquantity_;
                }
                if ((i2 & 16) != 0) {
                    cInventory_ExchangeItem_Request.outputitemdefid_ = this.outputitemdefid_;
                    i |= 4;
                }
                cInventory_ExchangeItem_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_ExchangeItem_Request) {
                    return mergeFrom((CInventory_ExchangeItem_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_ExchangeItem_Request cInventory_ExchangeItem_Request) {
                if (cInventory_ExchangeItem_Request == CInventory_ExchangeItem_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_ExchangeItem_Request.hasAppid()) {
                    setAppid(cInventory_ExchangeItem_Request.getAppid());
                }
                if (cInventory_ExchangeItem_Request.hasSteamid()) {
                    setSteamid(cInventory_ExchangeItem_Request.getSteamid());
                }
                if (!cInventory_ExchangeItem_Request.materialsitemid_.isEmpty()) {
                    if (this.materialsitemid_.isEmpty()) {
                        Internal.LongList longList = cInventory_ExchangeItem_Request.materialsitemid_;
                        this.materialsitemid_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 4;
                    } else {
                        ensureMaterialsitemidIsMutable();
                        this.materialsitemid_.addAll(cInventory_ExchangeItem_Request.materialsitemid_);
                    }
                    onChanged();
                }
                if (!cInventory_ExchangeItem_Request.materialsquantity_.isEmpty()) {
                    if (this.materialsquantity_.isEmpty()) {
                        Internal.IntList intList = cInventory_ExchangeItem_Request.materialsquantity_;
                        this.materialsquantity_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 8;
                    } else {
                        ensureMaterialsquantityIsMutable();
                        this.materialsquantity_.addAll(cInventory_ExchangeItem_Request.materialsquantity_);
                    }
                    onChanged();
                }
                if (cInventory_ExchangeItem_Request.hasOutputitemdefid()) {
                    setOutputitemdefid(cInventory_ExchangeItem_Request.getOutputitemdefid());
                }
                mergeUnknownFields(cInventory_ExchangeItem_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    long uInt64 = codedInputStream.readUInt64();
                                    ensureMaterialsitemidIsMutable();
                                    this.materialsitemid_.addLong(uInt64);
                                } else if (tag == 26) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureMaterialsitemidIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.materialsitemid_.addLong(codedInputStream.readUInt64());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 32) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureMaterialsquantityIsMutable();
                                    this.materialsquantity_.addInt(uInt32);
                                } else if (tag == 34) {
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureMaterialsquantityIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.materialsquantity_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                } else if (tag == 40) {
                                    this.outputitemdefid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            private void ensureMaterialsitemidIsMutable() {
                if (!this.materialsitemid_.isModifiable()) {
                    this.materialsitemid_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.materialsitemid_);
                }
                this.bitField0_ |= 4;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public List<Long> getMaterialsitemidList() {
                this.materialsitemid_.makeImmutable();
                return this.materialsitemid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public int getMaterialsitemidCount() {
                return this.materialsitemid_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public long getMaterialsitemid(int i) {
                return this.materialsitemid_.getLong(i);
            }

            public Builder setMaterialsitemid(int i, long j) {
                ensureMaterialsitemidIsMutable();
                this.materialsitemid_.setLong(i, j);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder addMaterialsitemid(long j) {
                ensureMaterialsitemidIsMutable();
                this.materialsitemid_.addLong(j);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder addAllMaterialsitemid(Iterable<? extends Long> iterable) {
                ensureMaterialsitemidIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.materialsitemid_);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMaterialsitemid() {
                this.materialsitemid_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            private void ensureMaterialsquantityIsMutable() {
                if (!this.materialsquantity_.isModifiable()) {
                    this.materialsquantity_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.materialsquantity_);
                }
                this.bitField0_ |= 8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public List<Integer> getMaterialsquantityList() {
                this.materialsquantity_.makeImmutable();
                return this.materialsquantity_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public int getMaterialsquantityCount() {
                return this.materialsquantity_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public int getMaterialsquantity(int i) {
                return this.materialsquantity_.getInt(i);
            }

            public Builder setMaterialsquantity(int i, int i2) {
                ensureMaterialsquantityIsMutable();
                this.materialsquantity_.setInt(i, i2);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addMaterialsquantity(int i) {
                ensureMaterialsquantityIsMutable();
                this.materialsquantity_.addInt(i);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addAllMaterialsquantity(Iterable<? extends Integer> iterable) {
                ensureMaterialsquantityIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.materialsquantity_);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMaterialsquantity() {
                this.materialsquantity_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public boolean hasOutputitemdefid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ExchangeItem_RequestOrBuilder
            public long getOutputitemdefid() {
                return this.outputitemdefid_;
            }

            public Builder setOutputitemdefid(long j) {
                this.outputitemdefid_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearOutputitemdefid() {
                this.bitField0_ &= -17;
                this.outputitemdefid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_ExchangeItem_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_ExchangeItem_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_ExchangeItem_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_ExchangeItem_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_GetEligiblePromoItemDefIDs_Request extends GeneratedMessage implements CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_GetEligiblePromoItemDefIDs_Request DEFAULT_INSTANCE;
        private static final Parser<CInventory_GetEligiblePromoItemDefIDs_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetEligiblePromoItemDefIDs_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetEligiblePromoItemDefIDs_Request();
            PARSER = new AbstractParser<CInventory_GetEligiblePromoItemDefIDs_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetEligiblePromoItemDefIDs_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetEligiblePromoItemDefIDs_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetEligiblePromoItemDefIDs_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetEligiblePromoItemDefIDs_Request() {
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetEligiblePromoItemDefIDs_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_GetEligiblePromoItemDefIDs_Request)) {
                return super.equals(obj);
            }
            CInventory_GetEligiblePromoItemDefIDs_Request cInventory_GetEligiblePromoItemDefIDs_Request = (CInventory_GetEligiblePromoItemDefIDs_Request) obj;
            if (hasAppid() != cInventory_GetEligiblePromoItemDefIDs_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cInventory_GetEligiblePromoItemDefIDs_Request.getAppid()) && hasSteamid() == cInventory_GetEligiblePromoItemDefIDs_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cInventory_GetEligiblePromoItemDefIDs_Request.getSteamid()) && getUnknownFields().equals(cInventory_GetEligiblePromoItemDefIDs_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetEligiblePromoItemDefIDs_Request cInventory_GetEligiblePromoItemDefIDs_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetEligiblePromoItemDefIDs_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetEligiblePromoItemDefIDs_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetEligiblePromoItemDefIDs_Request getDefaultInstanceForType() {
                return CInventory_GetEligiblePromoItemDefIDs_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetEligiblePromoItemDefIDs_Request build() {
                CInventory_GetEligiblePromoItemDefIDs_Request cInventory_GetEligiblePromoItemDefIDs_RequestBuildPartial = buildPartial();
                if (cInventory_GetEligiblePromoItemDefIDs_RequestBuildPartial.isInitialized()) {
                    return cInventory_GetEligiblePromoItemDefIDs_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetEligiblePromoItemDefIDs_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetEligiblePromoItemDefIDs_Request buildPartial() {
                CInventory_GetEligiblePromoItemDefIDs_Request cInventory_GetEligiblePromoItemDefIDs_Request = new CInventory_GetEligiblePromoItemDefIDs_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_GetEligiblePromoItemDefIDs_Request);
                }
                onBuilt();
                return cInventory_GetEligiblePromoItemDefIDs_Request;
            }

            private void buildPartial0(CInventory_GetEligiblePromoItemDefIDs_Request cInventory_GetEligiblePromoItemDefIDs_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_GetEligiblePromoItemDefIDs_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_GetEligiblePromoItemDefIDs_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                cInventory_GetEligiblePromoItemDefIDs_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetEligiblePromoItemDefIDs_Request) {
                    return mergeFrom((CInventory_GetEligiblePromoItemDefIDs_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetEligiblePromoItemDefIDs_Request cInventory_GetEligiblePromoItemDefIDs_Request) {
                if (cInventory_GetEligiblePromoItemDefIDs_Request == CInventory_GetEligiblePromoItemDefIDs_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_GetEligiblePromoItemDefIDs_Request.hasAppid()) {
                    setAppid(cInventory_GetEligiblePromoItemDefIDs_Request.getAppid());
                }
                if (cInventory_GetEligiblePromoItemDefIDs_Request.hasSteamid()) {
                    setSteamid(cInventory_GetEligiblePromoItemDefIDs_Request.getSteamid());
                }
                mergeUnknownFields(cInventory_GetEligiblePromoItemDefIDs_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetEligiblePromoItemDefIDs_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetEligiblePromoItemDefIDs_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetEligiblePromoItemDefIDs_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_GetEligiblePromoItemDefIDs_Response extends GeneratedMessage implements CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder {
        private static final CInventory_GetEligiblePromoItemDefIDs_Response DEFAULT_INSTANCE;
        public static final int ITEMDEFIDS_FIELD_NUMBER = 1;
        private static final Parser<CInventory_GetEligiblePromoItemDefIDs_Response> PARSER;
        private static final long serialVersionUID = 0;
        private Internal.LongList itemdefids_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetEligiblePromoItemDefIDs_Response.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetEligiblePromoItemDefIDs_Response();
            PARSER = new AbstractParser<CInventory_GetEligiblePromoItemDefIDs_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_Response.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetEligiblePromoItemDefIDs_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetEligiblePromoItemDefIDs_Response.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetEligiblePromoItemDefIDs_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.itemdefids_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetEligiblePromoItemDefIDs_Response() {
            this.itemdefids_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
            this.itemdefids_ = GeneratedMessage.emptyLongList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetEligiblePromoItemDefIDs_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder
        public List<Long> getItemdefidsList() {
            return this.itemdefids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder
        public int getItemdefidsCount() {
            return this.itemdefids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder
        public long getItemdefids(int i) {
            return this.itemdefids_.getLong(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i = 0; i < this.itemdefids_.size(); i++) {
                codedOutputStream.writeUInt64(1, this.itemdefids_.getLong(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < this.itemdefids_.size(); i2++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(this.itemdefids_.getLong(i2));
            }
            int size = iComputeUInt64SizeNoTag + getItemdefidsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_GetEligiblePromoItemDefIDs_Response)) {
                return super.equals(obj);
            }
            CInventory_GetEligiblePromoItemDefIDs_Response cInventory_GetEligiblePromoItemDefIDs_Response = (CInventory_GetEligiblePromoItemDefIDs_Response) obj;
            return getItemdefidsList().equals(cInventory_GetEligiblePromoItemDefIDs_Response.getItemdefidsList()) && getUnknownFields().equals(cInventory_GetEligiblePromoItemDefIDs_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getItemdefidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getItemdefidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetEligiblePromoItemDefIDs_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetEligiblePromoItemDefIDs_Response cInventory_GetEligiblePromoItemDefIDs_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetEligiblePromoItemDefIDs_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder {
            private int bitField0_;
            private Internal.LongList itemdefids_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetEligiblePromoItemDefIDs_Response.class, Builder.class);
            }

            private Builder() {
                this.itemdefids_ = GeneratedMessage.emptyLongList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.itemdefids_ = GeneratedMessage.emptyLongList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.itemdefids_ = GeneratedMessage.emptyLongList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetEligiblePromoItemDefIDs_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetEligiblePromoItemDefIDs_Response getDefaultInstanceForType() {
                return CInventory_GetEligiblePromoItemDefIDs_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetEligiblePromoItemDefIDs_Response build() {
                CInventory_GetEligiblePromoItemDefIDs_Response cInventory_GetEligiblePromoItemDefIDs_ResponseBuildPartial = buildPartial();
                if (cInventory_GetEligiblePromoItemDefIDs_ResponseBuildPartial.isInitialized()) {
                    return cInventory_GetEligiblePromoItemDefIDs_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetEligiblePromoItemDefIDs_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetEligiblePromoItemDefIDs_Response buildPartial() {
                CInventory_GetEligiblePromoItemDefIDs_Response cInventory_GetEligiblePromoItemDefIDs_Response = new CInventory_GetEligiblePromoItemDefIDs_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_GetEligiblePromoItemDefIDs_Response);
                }
                onBuilt();
                return cInventory_GetEligiblePromoItemDefIDs_Response;
            }

            private void buildPartial0(CInventory_GetEligiblePromoItemDefIDs_Response cInventory_GetEligiblePromoItemDefIDs_Response) {
                if ((this.bitField0_ & 1) != 0) {
                    this.itemdefids_.makeImmutable();
                    cInventory_GetEligiblePromoItemDefIDs_Response.itemdefids_ = this.itemdefids_;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetEligiblePromoItemDefIDs_Response) {
                    return mergeFrom((CInventory_GetEligiblePromoItemDefIDs_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetEligiblePromoItemDefIDs_Response cInventory_GetEligiblePromoItemDefIDs_Response) {
                if (cInventory_GetEligiblePromoItemDefIDs_Response == CInventory_GetEligiblePromoItemDefIDs_Response.getDefaultInstance()) {
                    return this;
                }
                if (!cInventory_GetEligiblePromoItemDefIDs_Response.itemdefids_.isEmpty()) {
                    if (this.itemdefids_.isEmpty()) {
                        Internal.LongList longList = cInventory_GetEligiblePromoItemDefIDs_Response.itemdefids_;
                        this.itemdefids_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 1;
                    } else {
                        ensureItemdefidsIsMutable();
                        this.itemdefids_.addAll(cInventory_GetEligiblePromoItemDefIDs_Response.itemdefids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cInventory_GetEligiblePromoItemDefIDs_Response.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    long uInt64 = codedInputStream.readUInt64();
                                    ensureItemdefidsIsMutable();
                                    this.itemdefids_.addLong(uInt64);
                                } else if (tag == 10) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureItemdefidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.itemdefids_.addLong(codedInputStream.readUInt64());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            private void ensureItemdefidsIsMutable() {
                if (!this.itemdefids_.isModifiable()) {
                    this.itemdefids_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.itemdefids_);
                }
                this.bitField0_ |= 1;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder
            public List<Long> getItemdefidsList() {
                this.itemdefids_.makeImmutable();
                return this.itemdefids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder
            public int getItemdefidsCount() {
                return this.itemdefids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetEligiblePromoItemDefIDs_ResponseOrBuilder
            public long getItemdefids(int i) {
                return this.itemdefids_.getLong(i);
            }

            public Builder setItemdefids(int i, long j) {
                ensureItemdefidsIsMutable();
                this.itemdefids_.setLong(i, j);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addItemdefids(long j) {
                ensureItemdefidsIsMutable();
                this.itemdefids_.addLong(j);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAllItemdefids(Iterable<? extends Long> iterable) {
                ensureItemdefidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.itemdefids_);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearItemdefids() {
                this.itemdefids_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }
        }

        public static CInventory_GetEligiblePromoItemDefIDs_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetEligiblePromoItemDefIDs_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetEligiblePromoItemDefIDs_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetEligiblePromoItemDefIDs_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_AddItem_Request extends GeneratedMessage implements CInventory_AddItem_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_AddItem_Request DEFAULT_INSTANCE;
        public static final int IS_PURCHASE_FIELD_NUMBER = 8;
        public static final int ITEMDEFID_FIELD_NUMBER = 2;
        public static final int ITEMPROPSJSON_FIELD_NUMBER = 3;
        public static final int ITEMQUANTITY_FIELD_NUMBER = 9;
        public static final int NOTIFY_FIELD_NUMBER = 5;
        private static final Parser<CInventory_AddItem_Request> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 6;
        public static final int STEAMID_FIELD_NUMBER = 4;
        public static final int TRADE_RESTRICTION_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private boolean isPurchase_;
        private Internal.LongList itemdefid_;
        private LazyStringArrayList itempropsjson_;
        private Internal.IntList itemquantity_;
        private byte memoizedIsInitialized;
        private boolean notify_;
        private long requestid_;
        private long steamid_;
        private boolean tradeRestriction_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_AddItem_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_AddItem_Request();
            PARSER = new AbstractParser<CInventory_AddItem_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_AddItem_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_AddItem_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_AddItem_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.itemdefid_ = GeneratedMessage.emptyLongList();
            this.itempropsjson_ = LazyStringArrayList.emptyList();
            this.itemquantity_ = GeneratedMessage.emptyIntList();
            this.steamid_ = 0L;
            this.notify_ = false;
            this.requestid_ = 0L;
            this.tradeRestriction_ = false;
            this.isPurchase_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_AddItem_Request() {
            this.appid_ = 0;
            this.itemdefid_ = GeneratedMessage.emptyLongList();
            this.itempropsjson_ = LazyStringArrayList.emptyList();
            this.itemquantity_ = GeneratedMessage.emptyIntList();
            this.steamid_ = 0L;
            this.notify_ = false;
            this.requestid_ = 0L;
            this.tradeRestriction_ = false;
            this.isPurchase_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.itemdefid_ = GeneratedMessage.emptyLongList();
            this.itempropsjson_ = LazyStringArrayList.emptyList();
            this.itemquantity_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_AddItem_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_AddItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_AddItem_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public List<Long> getItemdefidList() {
            return this.itemdefid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public int getItemdefidCount() {
            return this.itemdefid_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public long getItemdefid(int i) {
            return this.itemdefid_.getLong(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public ProtocolStringList getItempropsjsonList() {
            return this.itempropsjson_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public int getItempropsjsonCount() {
            return this.itempropsjson_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public String getItempropsjson(int i) {
            return this.itempropsjson_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public ByteString getItempropsjsonBytes(int i) {
            return this.itempropsjson_.getByteString(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public List<Integer> getItemquantityList() {
            return this.itemquantity_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public int getItemquantityCount() {
            return this.itemquantity_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public int getItemquantity(int i) {
            return this.itemquantity_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean hasNotify() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean getNotify() {
            return this.notify_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public long getRequestid() {
            return this.requestid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean hasTradeRestriction() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean getTradeRestriction() {
            return this.tradeRestriction_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean hasIsPurchase() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
        public boolean getIsPurchase() {
            return this.isPurchase_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            for (int i = 0; i < this.itemdefid_.size(); i++) {
                codedOutputStream.writeUInt64(2, this.itemdefid_.getLong(i));
            }
            for (int i2 = 0; i2 < this.itempropsjson_.size(); i2++) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.itempropsjson_.getRaw(i2));
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(4, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(5, this.notify_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt64(6, this.requestid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(7, this.tradeRestriction_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBool(8, this.isPurchase_);
            }
            for (int i3 = 0; i3 < this.itemquantity_.size(); i3++) {
                codedOutputStream.writeUInt32(9, this.itemquantity_.getInt(i3));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            int iComputeUInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < this.itemdefid_.size(); i2++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(this.itemdefid_.getLong(i2));
            }
            int size = iComputeUInt32Size + iComputeUInt64SizeNoTag + getItemdefidList().size();
            int iComputeStringSizeNoTag = 0;
            for (int i3 = 0; i3 < this.itempropsjson_.size(); i3++) {
                iComputeStringSizeNoTag += GeneratedMessage.computeStringSizeNoTag(this.itempropsjson_.getRaw(i3));
            }
            int size2 = size + iComputeStringSizeNoTag + getItempropsjsonList().size();
            if ((this.bitField0_ & 2) != 0) {
                size2 += CodedOutputStream.computeUInt64Size(4, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                size2 += CodedOutputStream.computeBoolSize(5, this.notify_);
            }
            if ((this.bitField0_ & 8) != 0) {
                size2 += CodedOutputStream.computeUInt64Size(6, this.requestid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                size2 += CodedOutputStream.computeBoolSize(7, this.tradeRestriction_);
            }
            if ((this.bitField0_ & 32) != 0) {
                size2 += CodedOutputStream.computeBoolSize(8, this.isPurchase_);
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i4 = 0; i4 < this.itemquantity_.size(); i4++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.itemquantity_.getInt(i4));
            }
            int size3 = size2 + iComputeUInt32SizeNoTag + getItemquantityList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size3;
            return size3;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_AddItem_Request)) {
                return super.equals(obj);
            }
            CInventory_AddItem_Request cInventory_AddItem_Request = (CInventory_AddItem_Request) obj;
            if (hasAppid() != cInventory_AddItem_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_AddItem_Request.getAppid()) || !getItemdefidList().equals(cInventory_AddItem_Request.getItemdefidList()) || !getItempropsjsonList().equals(cInventory_AddItem_Request.getItempropsjsonList()) || !getItemquantityList().equals(cInventory_AddItem_Request.getItemquantityList()) || hasSteamid() != cInventory_AddItem_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cInventory_AddItem_Request.getSteamid()) || hasNotify() != cInventory_AddItem_Request.hasNotify()) {
                return false;
            }
            if ((hasNotify() && getNotify() != cInventory_AddItem_Request.getNotify()) || hasRequestid() != cInventory_AddItem_Request.hasRequestid()) {
                return false;
            }
            if ((hasRequestid() && getRequestid() != cInventory_AddItem_Request.getRequestid()) || hasTradeRestriction() != cInventory_AddItem_Request.hasTradeRestriction()) {
                return false;
            }
            if ((!hasTradeRestriction() || getTradeRestriction() == cInventory_AddItem_Request.getTradeRestriction()) && hasIsPurchase() == cInventory_AddItem_Request.hasIsPurchase()) {
                return (!hasIsPurchase() || getIsPurchase() == cInventory_AddItem_Request.getIsPurchase()) && getUnknownFields().equals(cInventory_AddItem_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (getItemdefidCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getItemdefidList().hashCode();
            }
            if (getItempropsjsonCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getItempropsjsonList().hashCode();
            }
            if (getItemquantityCount() > 0) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getItemquantityList().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasNotify()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getNotify());
            }
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getRequestid());
            }
            if (hasTradeRestriction()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getTradeRestriction());
            }
            if (hasIsPurchase()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashBoolean(getIsPurchase());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_AddItem_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_AddItem_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_AddItem_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_AddItem_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_AddItem_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_AddItem_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_AddItem_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_AddItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_AddItem_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_AddItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_AddItem_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_AddItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_AddItem_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_AddItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_AddItem_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_AddItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_AddItem_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_AddItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_AddItem_Request cInventory_AddItem_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_AddItem_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_AddItem_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private boolean isPurchase_;
            private Internal.LongList itemdefid_;
            private LazyStringArrayList itempropsjson_;
            private Internal.IntList itemquantity_;
            private boolean notify_;
            private long requestid_;
            private long steamid_;
            private boolean tradeRestriction_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_AddItem_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_AddItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_AddItem_Request.class, Builder.class);
            }

            private Builder() {
                this.itemdefid_ = GeneratedMessage.emptyLongList();
                this.itempropsjson_ = LazyStringArrayList.emptyList();
                this.itemquantity_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.itemdefid_ = GeneratedMessage.emptyLongList();
                this.itempropsjson_ = LazyStringArrayList.emptyList();
                this.itemquantity_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.itemdefid_ = GeneratedMessage.emptyLongList();
                this.itempropsjson_ = LazyStringArrayList.emptyList();
                this.itemquantity_ = GeneratedMessage.emptyIntList();
                this.steamid_ = 0L;
                this.notify_ = false;
                this.requestid_ = 0L;
                this.tradeRestriction_ = false;
                this.isPurchase_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_AddItem_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_AddItem_Request getDefaultInstanceForType() {
                return CInventory_AddItem_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_AddItem_Request build() {
                CInventory_AddItem_Request cInventory_AddItem_RequestBuildPartial = buildPartial();
                if (cInventory_AddItem_RequestBuildPartial.isInitialized()) {
                    return cInventory_AddItem_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_AddItem_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_AddItem_Request buildPartial() {
                CInventory_AddItem_Request cInventory_AddItem_Request = new CInventory_AddItem_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_AddItem_Request);
                }
                onBuilt();
                return cInventory_AddItem_Request;
            }

            private void buildPartial0(CInventory_AddItem_Request cInventory_AddItem_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_AddItem_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    this.itemdefid_.makeImmutable();
                    cInventory_AddItem_Request.itemdefid_ = this.itemdefid_;
                }
                if ((i2 & 4) != 0) {
                    this.itempropsjson_.makeImmutable();
                    cInventory_AddItem_Request.itempropsjson_ = this.itempropsjson_;
                }
                if ((i2 & 8) != 0) {
                    this.itemquantity_.makeImmutable();
                    cInventory_AddItem_Request.itemquantity_ = this.itemquantity_;
                }
                if ((i2 & 16) != 0) {
                    cInventory_AddItem_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 32) != 0) {
                    cInventory_AddItem_Request.notify_ = this.notify_;
                    i |= 4;
                }
                if ((i2 & 64) != 0) {
                    cInventory_AddItem_Request.requestid_ = this.requestid_;
                    i |= 8;
                }
                if ((i2 & 128) != 0) {
                    cInventory_AddItem_Request.tradeRestriction_ = this.tradeRestriction_;
                    i |= 16;
                }
                if ((i2 & 256) != 0) {
                    cInventory_AddItem_Request.isPurchase_ = this.isPurchase_;
                    i |= 32;
                }
                cInventory_AddItem_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_AddItem_Request) {
                    return mergeFrom((CInventory_AddItem_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_AddItem_Request cInventory_AddItem_Request) {
                if (cInventory_AddItem_Request == CInventory_AddItem_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_AddItem_Request.hasAppid()) {
                    setAppid(cInventory_AddItem_Request.getAppid());
                }
                if (!cInventory_AddItem_Request.itemdefid_.isEmpty()) {
                    if (this.itemdefid_.isEmpty()) {
                        Internal.LongList longList = cInventory_AddItem_Request.itemdefid_;
                        this.itemdefid_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureItemdefidIsMutable();
                        this.itemdefid_.addAll(cInventory_AddItem_Request.itemdefid_);
                    }
                    onChanged();
                }
                if (!cInventory_AddItem_Request.itempropsjson_.isEmpty()) {
                    if (this.itempropsjson_.isEmpty()) {
                        this.itempropsjson_ = cInventory_AddItem_Request.itempropsjson_;
                        this.bitField0_ |= 4;
                    } else {
                        ensureItempropsjsonIsMutable();
                        this.itempropsjson_.addAll(cInventory_AddItem_Request.itempropsjson_);
                    }
                    onChanged();
                }
                if (!cInventory_AddItem_Request.itemquantity_.isEmpty()) {
                    if (this.itemquantity_.isEmpty()) {
                        Internal.IntList intList = cInventory_AddItem_Request.itemquantity_;
                        this.itemquantity_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 8;
                    } else {
                        ensureItemquantityIsMutable();
                        this.itemquantity_.addAll(cInventory_AddItem_Request.itemquantity_);
                    }
                    onChanged();
                }
                if (cInventory_AddItem_Request.hasSteamid()) {
                    setSteamid(cInventory_AddItem_Request.getSteamid());
                }
                if (cInventory_AddItem_Request.hasNotify()) {
                    setNotify(cInventory_AddItem_Request.getNotify());
                }
                if (cInventory_AddItem_Request.hasRequestid()) {
                    setRequestid(cInventory_AddItem_Request.getRequestid());
                }
                if (cInventory_AddItem_Request.hasTradeRestriction()) {
                    setTradeRestriction(cInventory_AddItem_Request.getTradeRestriction());
                }
                if (cInventory_AddItem_Request.hasIsPurchase()) {
                    setIsPurchase(cInventory_AddItem_Request.getIsPurchase());
                }
                mergeUnknownFields(cInventory_AddItem_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            switch (tag) {
                                case 0:
                                    z = true;
                                    break;
                                case 8:
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    long uInt64 = codedInputStream.readUInt64();
                                    ensureItemdefidIsMutable();
                                    this.itemdefid_.addLong(uInt64);
                                    break;
                                case 18:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureItemdefidIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.itemdefid_.addLong(codedInputStream.readUInt64());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case 26:
                                    ByteString bytes = codedInputStream.readBytes();
                                    ensureItempropsjsonIsMutable();
                                    this.itempropsjson_.add(bytes);
                                    break;
                                case 32:
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                    break;
                                case 40:
                                    this.notify_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                    break;
                                case 48:
                                    this.requestid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 64;
                                    break;
                                case 56:
                                    this.tradeRestriction_ = codedInputStream.readBool();
                                    this.bitField0_ |= 128;
                                    break;
                                case 64:
                                    this.isPurchase_ = codedInputStream.readBool();
                                    this.bitField0_ |= 256;
                                    break;
                                case 72:
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureItemquantityIsMutable();
                                    this.itemquantity_.addInt(uInt32);
                                    break;
                                case 74:
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureItemquantityIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.itemquantity_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                    break;
                                default:
                                    if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                        z = true;
                                    }
                                    break;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            private void ensureItemdefidIsMutable() {
                if (!this.itemdefid_.isModifiable()) {
                    this.itemdefid_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.itemdefid_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public List<Long> getItemdefidList() {
                this.itemdefid_.makeImmutable();
                return this.itemdefid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public int getItemdefidCount() {
                return this.itemdefid_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public long getItemdefid(int i) {
                return this.itemdefid_.getLong(i);
            }

            public Builder setItemdefid(int i, long j) {
                ensureItemdefidIsMutable();
                this.itemdefid_.setLong(i, j);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addItemdefid(long j) {
                ensureItemdefidIsMutable();
                this.itemdefid_.addLong(j);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllItemdefid(Iterable<? extends Long> iterable) {
                ensureItemdefidIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.itemdefid_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearItemdefid() {
                this.itemdefid_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            private void ensureItempropsjsonIsMutable() {
                if (!this.itempropsjson_.isModifiable()) {
                    this.itempropsjson_ = new LazyStringArrayList((LazyStringList) this.itempropsjson_);
                }
                this.bitField0_ |= 4;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public ProtocolStringList getItempropsjsonList() {
                this.itempropsjson_.makeImmutable();
                return this.itempropsjson_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public int getItempropsjsonCount() {
                return this.itempropsjson_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public String getItempropsjson(int i) {
                return this.itempropsjson_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public ByteString getItempropsjsonBytes(int i) {
                return this.itempropsjson_.getByteString(i);
            }

            public Builder setItempropsjson(int i, String str) {
                str.getClass();
                ensureItempropsjsonIsMutable();
                this.itempropsjson_.set(i, str);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder addItempropsjson(String str) {
                str.getClass();
                ensureItempropsjsonIsMutable();
                this.itempropsjson_.add(str);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder addAllItempropsjson(Iterable<String> iterable) {
                ensureItempropsjsonIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.itempropsjson_);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearItempropsjson() {
                this.itempropsjson_ = LazyStringArrayList.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder addItempropsjsonBytes(ByteString byteString) {
                byteString.getClass();
                ensureItempropsjsonIsMutable();
                this.itempropsjson_.add(byteString);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            private void ensureItemquantityIsMutable() {
                if (!this.itemquantity_.isModifiable()) {
                    this.itemquantity_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.itemquantity_);
                }
                this.bitField0_ |= 8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public List<Integer> getItemquantityList() {
                this.itemquantity_.makeImmutable();
                return this.itemquantity_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public int getItemquantityCount() {
                return this.itemquantity_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public int getItemquantity(int i) {
                return this.itemquantity_.getInt(i);
            }

            public Builder setItemquantity(int i, int i2) {
                ensureItemquantityIsMutable();
                this.itemquantity_.setInt(i, i2);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addItemquantity(int i) {
                ensureItemquantityIsMutable();
                this.itemquantity_.addInt(i);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder addAllItemquantity(Iterable<? extends Integer> iterable) {
                ensureItemquantityIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.itemquantity_);
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearItemquantity() {
                this.itemquantity_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -17;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean hasNotify() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean getNotify() {
                return this.notify_;
            }

            public Builder setNotify(boolean z) {
                this.notify_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearNotify() {
                this.bitField0_ &= -33;
                this.notify_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -65;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean hasTradeRestriction() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean getTradeRestriction() {
                return this.tradeRestriction_;
            }

            public Builder setTradeRestriction(boolean z) {
                this.tradeRestriction_ = z;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearTradeRestriction() {
                this.bitField0_ &= -129;
                this.tradeRestriction_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean hasIsPurchase() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_AddItem_RequestOrBuilder
            public boolean getIsPurchase() {
                return this.isPurchase_;
            }

            public Builder setIsPurchase(boolean z) {
                this.isPurchase_ = z;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearIsPurchase() {
                this.bitField0_ &= -257;
                this.isPurchase_ = false;
                onChanged();
                return this;
            }
        }

        public static CInventory_AddItem_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_AddItem_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_AddItem_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_AddItem_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_ModifyItems_Request extends GeneratedMessage implements CInventory_ModifyItems_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_ModifyItems_Request DEFAULT_INSTANCE;
        private static final Parser<CInventory_ModifyItems_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 2;
        public static final int TIMESTAMP_FIELD_NUMBER = 4;
        public static final int UPDATES_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;
        private int timestamp_;
        private List<ItemPropertyUpdate> updates_;

        public interface ItemPropertyUpdateOrBuilder extends MessageOrBuilder {
            long getItemid();

            String getPropertyName();

            ByteString getPropertyNameBytes();

            boolean getPropertyValueBool();

            float getPropertyValueFloat();

            long getPropertyValueInt();

            String getPropertyValueString();

            ByteString getPropertyValueStringBytes();

            boolean getRemoveProperty();

            boolean hasItemid();

            boolean hasPropertyName();

            boolean hasPropertyValueBool();

            boolean hasPropertyValueFloat();

            boolean hasPropertyValueInt();

            boolean hasPropertyValueString();

            boolean hasRemoveProperty();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_ModifyItems_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_ModifyItems_Request();
            PARSER = new AbstractParser<CInventory_ModifyItems_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_ModifyItems_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_ModifyItems_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_ModifyItems_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.timestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_ModifyItems_Request() {
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.timestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.updates_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ModifyItems_Request.class, Builder.class);
        }

        public static final class ItemPropertyUpdate extends GeneratedMessage implements ItemPropertyUpdateOrBuilder {
            private static final ItemPropertyUpdate DEFAULT_INSTANCE;
            public static final int ITEMID_FIELD_NUMBER = 1;
            private static final Parser<ItemPropertyUpdate> PARSER;
            public static final int PROPERTY_NAME_FIELD_NUMBER = 3;
            public static final int PROPERTY_VALUE_BOOL_FIELD_NUMBER = 4;
            public static final int PROPERTY_VALUE_FLOAT_FIELD_NUMBER = 7;
            public static final int PROPERTY_VALUE_INT_FIELD_NUMBER = 5;
            public static final int PROPERTY_VALUE_STRING_FIELD_NUMBER = 6;
            public static final int REMOVE_PROPERTY_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private long itemid_;
            private byte memoizedIsInitialized;
            private volatile Object propertyName_;
            private boolean propertyValueBool_;
            private float propertyValueFloat_;
            private long propertyValueInt_;
            private volatile Object propertyValueString_;
            private boolean removeProperty_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ItemPropertyUpdate.class.getName());
                DEFAULT_INSTANCE = new ItemPropertyUpdate();
                PARSER = new AbstractParser<ItemPropertyUpdate>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdate.1
                    @Override // com.google.protobuf.Parser
                    public ItemPropertyUpdate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = ItemPropertyUpdate.newBuilder();
                        try {
                            builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                            return builderNewBuilder.buildPartial();
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (UninitializedMessageException e2) {
                            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                        }
                    }
                };
            }

            private ItemPropertyUpdate(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.itemid_ = 0L;
                this.removeProperty_ = false;
                this.propertyName_ = "";
                this.propertyValueBool_ = false;
                this.propertyValueInt_ = 0L;
                this.propertyValueString_ = "";
                this.propertyValueFloat_ = 0.0f;
                this.memoizedIsInitialized = (byte) -1;
            }

            private ItemPropertyUpdate() {
                this.itemid_ = 0L;
                this.removeProperty_ = false;
                this.propertyName_ = "";
                this.propertyValueBool_ = false;
                this.propertyValueInt_ = 0L;
                this.propertyValueString_ = "";
                this.propertyValueFloat_ = 0.0f;
                this.memoizedIsInitialized = (byte) -1;
                this.propertyName_ = "";
                this.propertyValueString_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_fieldAccessorTable.ensureFieldAccessorsInitialized(ItemPropertyUpdate.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasItemid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public long getItemid() {
                return this.itemid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasRemoveProperty() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean getRemoveProperty() {
                return this.removeProperty_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasPropertyName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public String getPropertyName() {
                Object obj = this.propertyName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.propertyName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public ByteString getPropertyNameBytes() {
                Object obj = this.propertyName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.propertyName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasPropertyValueBool() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean getPropertyValueBool() {
                return this.propertyValueBool_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasPropertyValueInt() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public long getPropertyValueInt() {
                return this.propertyValueInt_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasPropertyValueString() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public String getPropertyValueString() {
                Object obj = this.propertyValueString_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.propertyValueString_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public ByteString getPropertyValueStringBytes() {
                Object obj = this.propertyValueString_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.propertyValueString_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public boolean hasPropertyValueFloat() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
            public float getPropertyValueFloat() {
                return this.propertyValueFloat_;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    codedOutputStream.writeUInt64(1, this.itemid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeBool(2, this.removeProperty_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 3, this.propertyName_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBool(4, this.propertyValueBool_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeInt64(5, this.propertyValueInt_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 6, this.propertyValueString_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    codedOutputStream.writeFloat(7, this.propertyValueFloat_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.itemid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt64Size += CodedOutputStream.computeBoolSize(2, this.removeProperty_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt64Size += GeneratedMessage.computeStringSize(3, this.propertyName_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt64Size += CodedOutputStream.computeBoolSize(4, this.propertyValueBool_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeUInt64Size += CodedOutputStream.computeInt64Size(5, this.propertyValueInt_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeUInt64Size += GeneratedMessage.computeStringSize(6, this.propertyValueString_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    iComputeUInt64Size += CodedOutputStream.computeFloatSize(7, this.propertyValueFloat_);
                }
                int serializedSize = iComputeUInt64Size + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ItemPropertyUpdate)) {
                    return super.equals(obj);
                }
                ItemPropertyUpdate itemPropertyUpdate = (ItemPropertyUpdate) obj;
                if (hasItemid() != itemPropertyUpdate.hasItemid()) {
                    return false;
                }
                if ((hasItemid() && getItemid() != itemPropertyUpdate.getItemid()) || hasRemoveProperty() != itemPropertyUpdate.hasRemoveProperty()) {
                    return false;
                }
                if ((hasRemoveProperty() && getRemoveProperty() != itemPropertyUpdate.getRemoveProperty()) || hasPropertyName() != itemPropertyUpdate.hasPropertyName()) {
                    return false;
                }
                if ((hasPropertyName() && !getPropertyName().equals(itemPropertyUpdate.getPropertyName())) || hasPropertyValueBool() != itemPropertyUpdate.hasPropertyValueBool()) {
                    return false;
                }
                if ((hasPropertyValueBool() && getPropertyValueBool() != itemPropertyUpdate.getPropertyValueBool()) || hasPropertyValueInt() != itemPropertyUpdate.hasPropertyValueInt()) {
                    return false;
                }
                if ((hasPropertyValueInt() && getPropertyValueInt() != itemPropertyUpdate.getPropertyValueInt()) || hasPropertyValueString() != itemPropertyUpdate.hasPropertyValueString()) {
                    return false;
                }
                if ((!hasPropertyValueString() || getPropertyValueString().equals(itemPropertyUpdate.getPropertyValueString())) && hasPropertyValueFloat() == itemPropertyUpdate.hasPropertyValueFloat()) {
                    return (!hasPropertyValueFloat() || Float.floatToIntBits(getPropertyValueFloat()) == Float.floatToIntBits(itemPropertyUpdate.getPropertyValueFloat())) && getUnknownFields().equals(itemPropertyUpdate.getUnknownFields());
                }
                return false;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasItemid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getItemid());
                }
                if (hasRemoveProperty()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getRemoveProperty());
                }
                if (hasPropertyName()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getPropertyName().hashCode();
                }
                if (hasPropertyValueBool()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getPropertyValueBool());
                }
                if (hasPropertyValueInt()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getPropertyValueInt());
                }
                if (hasPropertyValueString()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getPropertyValueString().hashCode();
                }
                if (hasPropertyValueFloat()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + Float.floatToIntBits(getPropertyValueFloat());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static ItemPropertyUpdate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static ItemPropertyUpdate parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static ItemPropertyUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static ItemPropertyUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ItemPropertyUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static ItemPropertyUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ItemPropertyUpdate parseFrom(InputStream inputStream) throws IOException {
                return (ItemPropertyUpdate) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static ItemPropertyUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ItemPropertyUpdate) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ItemPropertyUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ItemPropertyUpdate) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ItemPropertyUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ItemPropertyUpdate) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ItemPropertyUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ItemPropertyUpdate) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static ItemPropertyUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ItemPropertyUpdate) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(ItemPropertyUpdate itemPropertyUpdate) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(itemPropertyUpdate);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ItemPropertyUpdateOrBuilder {
                private int bitField0_;
                private long itemid_;
                private Object propertyName_;
                private boolean propertyValueBool_;
                private float propertyValueFloat_;
                private long propertyValueInt_;
                private Object propertyValueString_;
                private boolean removeProperty_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_fieldAccessorTable.ensureFieldAccessorsInitialized(ItemPropertyUpdate.class, Builder.class);
                }

                private Builder() {
                    this.propertyName_ = "";
                    this.propertyValueString_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.propertyName_ = "";
                    this.propertyValueString_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.itemid_ = 0L;
                    this.removeProperty_ = false;
                    this.propertyName_ = "";
                    this.propertyValueBool_ = false;
                    this.propertyValueInt_ = 0L;
                    this.propertyValueString_ = "";
                    this.propertyValueFloat_ = 0.0f;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_ItemPropertyUpdate_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ItemPropertyUpdate getDefaultInstanceForType() {
                    return ItemPropertyUpdate.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ItemPropertyUpdate build() {
                    ItemPropertyUpdate itemPropertyUpdateBuildPartial = buildPartial();
                    if (itemPropertyUpdateBuildPartial.isInitialized()) {
                        return itemPropertyUpdateBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) itemPropertyUpdateBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ItemPropertyUpdate buildPartial() {
                    ItemPropertyUpdate itemPropertyUpdate = new ItemPropertyUpdate(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(itemPropertyUpdate);
                    }
                    onBuilt();
                    return itemPropertyUpdate;
                }

                private void buildPartial0(ItemPropertyUpdate itemPropertyUpdate) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        itemPropertyUpdate.itemid_ = this.itemid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        itemPropertyUpdate.removeProperty_ = this.removeProperty_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        itemPropertyUpdate.propertyName_ = this.propertyName_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        itemPropertyUpdate.propertyValueBool_ = this.propertyValueBool_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        itemPropertyUpdate.propertyValueInt_ = this.propertyValueInt_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        itemPropertyUpdate.propertyValueString_ = this.propertyValueString_;
                        i |= 32;
                    }
                    if ((i2 & 64) != 0) {
                        itemPropertyUpdate.propertyValueFloat_ = this.propertyValueFloat_;
                        i |= 64;
                    }
                    itemPropertyUpdate.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof ItemPropertyUpdate) {
                        return mergeFrom((ItemPropertyUpdate) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ItemPropertyUpdate itemPropertyUpdate) {
                    if (itemPropertyUpdate == ItemPropertyUpdate.getDefaultInstance()) {
                        return this;
                    }
                    if (itemPropertyUpdate.hasItemid()) {
                        setItemid(itemPropertyUpdate.getItemid());
                    }
                    if (itemPropertyUpdate.hasRemoveProperty()) {
                        setRemoveProperty(itemPropertyUpdate.getRemoveProperty());
                    }
                    if (itemPropertyUpdate.hasPropertyName()) {
                        this.propertyName_ = itemPropertyUpdate.propertyName_;
                        this.bitField0_ |= 4;
                        onChanged();
                    }
                    if (itemPropertyUpdate.hasPropertyValueBool()) {
                        setPropertyValueBool(itemPropertyUpdate.getPropertyValueBool());
                    }
                    if (itemPropertyUpdate.hasPropertyValueInt()) {
                        setPropertyValueInt(itemPropertyUpdate.getPropertyValueInt());
                    }
                    if (itemPropertyUpdate.hasPropertyValueString()) {
                        this.propertyValueString_ = itemPropertyUpdate.propertyValueString_;
                        this.bitField0_ |= 32;
                        onChanged();
                    }
                    if (itemPropertyUpdate.hasPropertyValueFloat()) {
                        setPropertyValueFloat(itemPropertyUpdate.getPropertyValueFloat());
                    }
                    mergeUnknownFields(itemPropertyUpdate.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    extensionRegistryLite.getClass();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 8) {
                                        this.itemid_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.removeProperty_ = codedInputStream.readBool();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 26) {
                                        this.propertyName_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 32) {
                                        this.propertyValueBool_ = codedInputStream.readBool();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 40) {
                                        this.propertyValueInt_ = codedInputStream.readInt64();
                                        this.bitField0_ |= 16;
                                    } else if (tag == 50) {
                                        this.propertyValueString_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 32;
                                    } else if (tag == 61) {
                                        this.propertyValueFloat_ = codedInputStream.readFloat();
                                        this.bitField0_ |= 64;
                                    } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.unwrapIOException();
                            }
                        } catch (Throwable th) {
                            onChanged();
                            throw th;
                        }
                    }
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasItemid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public long getItemid() {
                    return this.itemid_;
                }

                public Builder setItemid(long j) {
                    this.itemid_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearItemid() {
                    this.bitField0_ &= -2;
                    this.itemid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasRemoveProperty() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean getRemoveProperty() {
                    return this.removeProperty_;
                }

                public Builder setRemoveProperty(boolean z) {
                    this.removeProperty_ = z;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearRemoveProperty() {
                    this.bitField0_ &= -3;
                    this.removeProperty_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasPropertyName() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public String getPropertyName() {
                    Object obj = this.propertyName_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.propertyName_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public ByteString getPropertyNameBytes() {
                    Object obj = this.propertyName_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.propertyName_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPropertyName(String str) {
                    str.getClass();
                    this.propertyName_ = str;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearPropertyName() {
                    this.propertyName_ = ItemPropertyUpdate.getDefaultInstance().getPropertyName();
                    this.bitField0_ &= -5;
                    onChanged();
                    return this;
                }

                public Builder setPropertyNameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.propertyName_ = byteString;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasPropertyValueBool() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean getPropertyValueBool() {
                    return this.propertyValueBool_;
                }

                public Builder setPropertyValueBool(boolean z) {
                    this.propertyValueBool_ = z;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearPropertyValueBool() {
                    this.bitField0_ &= -9;
                    this.propertyValueBool_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasPropertyValueInt() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public long getPropertyValueInt() {
                    return this.propertyValueInt_;
                }

                public Builder setPropertyValueInt(long j) {
                    this.propertyValueInt_ = j;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearPropertyValueInt() {
                    this.bitField0_ &= -17;
                    this.propertyValueInt_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasPropertyValueString() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public String getPropertyValueString() {
                    Object obj = this.propertyValueString_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.propertyValueString_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public ByteString getPropertyValueStringBytes() {
                    Object obj = this.propertyValueString_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.propertyValueString_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPropertyValueString(String str) {
                    str.getClass();
                    this.propertyValueString_ = str;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearPropertyValueString() {
                    this.propertyValueString_ = ItemPropertyUpdate.getDefaultInstance().getPropertyValueString();
                    this.bitField0_ &= -33;
                    onChanged();
                    return this;
                }

                public Builder setPropertyValueStringBytes(ByteString byteString) {
                    byteString.getClass();
                    this.propertyValueString_ = byteString;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public boolean hasPropertyValueFloat() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_Request.ItemPropertyUpdateOrBuilder
                public float getPropertyValueFloat() {
                    return this.propertyValueFloat_;
                }

                public Builder setPropertyValueFloat(float f) {
                    this.propertyValueFloat_ = f;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearPropertyValueFloat() {
                    this.bitField0_ &= -65;
                    this.propertyValueFloat_ = 0.0f;
                    onChanged();
                    return this;
                }
            }

            public static ItemPropertyUpdate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ItemPropertyUpdate> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<ItemPropertyUpdate> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ItemPropertyUpdate getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public List<ItemPropertyUpdate> getUpdatesList() {
            return this.updates_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public List<? extends ItemPropertyUpdateOrBuilder> getUpdatesOrBuilderList() {
            return this.updates_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public int getUpdatesCount() {
            return this.updates_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public ItemPropertyUpdate getUpdates(int i) {
            return this.updates_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public ItemPropertyUpdateOrBuilder getUpdatesOrBuilder(int i) {
            return this.updates_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public boolean hasTimestamp() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
        public int getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            for (int i = 0; i < this.updates_.size(); i++) {
                codedOutputStream.writeMessage(3, this.updates_.get(i));
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(4, this.timestamp_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            for (int i2 = 0; i2 < this.updates_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(3, this.updates_.get(i2));
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.timestamp_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_ModifyItems_Request)) {
                return super.equals(obj);
            }
            CInventory_ModifyItems_Request cInventory_ModifyItems_Request = (CInventory_ModifyItems_Request) obj;
            if (hasAppid() != cInventory_ModifyItems_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_ModifyItems_Request.getAppid()) || hasSteamid() != cInventory_ModifyItems_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cInventory_ModifyItems_Request.getSteamid()) && getUpdatesList().equals(cInventory_ModifyItems_Request.getUpdatesList()) && hasTimestamp() == cInventory_ModifyItems_Request.hasTimestamp()) {
                return (!hasTimestamp() || getTimestamp() == cInventory_ModifyItems_Request.getTimestamp()) && getUnknownFields().equals(cInventory_ModifyItems_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (getUpdatesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getUpdatesList().hashCode();
            }
            if (hasTimestamp()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getTimestamp();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_ModifyItems_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_ModifyItems_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_ModifyItems_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_ModifyItems_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_ModifyItems_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_ModifyItems_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_ModifyItems_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_ModifyItems_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_ModifyItems_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ModifyItems_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ModifyItems_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_ModifyItems_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_ModifyItems_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ModifyItems_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ModifyItems_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_ModifyItems_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_ModifyItems_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ModifyItems_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_ModifyItems_Request cInventory_ModifyItems_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_ModifyItems_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_ModifyItems_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long steamid_;
            private int timestamp_;
            private RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> updatesBuilder_;
            private List<ItemPropertyUpdate> updates_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ModifyItems_Request.class, Builder.class);
            }

            private Builder() {
                this.updates_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.updates_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.steamid_ = 0L;
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.updates_ = Collections.emptyList();
                } else {
                    this.updates_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                this.timestamp_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ModifyItems_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_ModifyItems_Request getDefaultInstanceForType() {
                return CInventory_ModifyItems_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ModifyItems_Request build() {
                CInventory_ModifyItems_Request cInventory_ModifyItems_RequestBuildPartial = buildPartial();
                if (cInventory_ModifyItems_RequestBuildPartial.isInitialized()) {
                    return cInventory_ModifyItems_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_ModifyItems_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ModifyItems_Request buildPartial() {
                CInventory_ModifyItems_Request cInventory_ModifyItems_Request = new CInventory_ModifyItems_Request(this);
                buildPartialRepeatedFields(cInventory_ModifyItems_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_ModifyItems_Request);
                }
                onBuilt();
                return cInventory_ModifyItems_Request;
            }

            private void buildPartialRepeatedFields(CInventory_ModifyItems_Request cInventory_ModifyItems_Request) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.updates_ = Collections.unmodifiableList(this.updates_);
                        this.bitField0_ &= -5;
                    }
                    cInventory_ModifyItems_Request.updates_ = this.updates_;
                    return;
                }
                cInventory_ModifyItems_Request.updates_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CInventory_ModifyItems_Request cInventory_ModifyItems_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_ModifyItems_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_ModifyItems_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 8) != 0) {
                    cInventory_ModifyItems_Request.timestamp_ = this.timestamp_;
                    i |= 4;
                }
                cInventory_ModifyItems_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_ModifyItems_Request) {
                    return mergeFrom((CInventory_ModifyItems_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_ModifyItems_Request cInventory_ModifyItems_Request) {
                if (cInventory_ModifyItems_Request == CInventory_ModifyItems_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_ModifyItems_Request.hasAppid()) {
                    setAppid(cInventory_ModifyItems_Request.getAppid());
                }
                if (cInventory_ModifyItems_Request.hasSteamid()) {
                    setSteamid(cInventory_ModifyItems_Request.getSteamid());
                }
                if (this.updatesBuilder_ == null) {
                    if (!cInventory_ModifyItems_Request.updates_.isEmpty()) {
                        if (this.updates_.isEmpty()) {
                            this.updates_ = cInventory_ModifyItems_Request.updates_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureUpdatesIsMutable();
                            this.updates_.addAll(cInventory_ModifyItems_Request.updates_);
                        }
                        onChanged();
                    }
                } else if (!cInventory_ModifyItems_Request.updates_.isEmpty()) {
                    if (this.updatesBuilder_.isEmpty()) {
                        this.updatesBuilder_.dispose();
                        this.updatesBuilder_ = null;
                        this.updates_ = cInventory_ModifyItems_Request.updates_;
                        this.bitField0_ &= -5;
                        this.updatesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetUpdatesFieldBuilder() : null;
                    } else {
                        this.updatesBuilder_.addAllMessages(cInventory_ModifyItems_Request.updates_);
                    }
                }
                if (cInventory_ModifyItems_Request.hasTimestamp()) {
                    setTimestamp(cInventory_ModifyItems_Request.getTimestamp());
                }
                mergeUnknownFields(cInventory_ModifyItems_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    ItemPropertyUpdate itemPropertyUpdate = (ItemPropertyUpdate) codedInputStream.readMessage(ItemPropertyUpdate.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureUpdatesIsMutable();
                                        this.updates_.add(itemPropertyUpdate);
                                    } else {
                                        repeatedFieldBuilder.addMessage(itemPropertyUpdate);
                                    }
                                } else if (tag == 32) {
                                    this.timestamp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            private void ensureUpdatesIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.updates_ = new ArrayList(this.updates_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public List<ItemPropertyUpdate> getUpdatesList() {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.updates_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public int getUpdatesCount() {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.updates_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public ItemPropertyUpdate getUpdates(int i) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.updates_.get(i);
                }
                return (ItemPropertyUpdate) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setUpdates(int i, ItemPropertyUpdate itemPropertyUpdate) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    itemPropertyUpdate.getClass();
                    ensureUpdatesIsMutable();
                    this.updates_.set(i, itemPropertyUpdate);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, itemPropertyUpdate);
                }
                return this;
            }

            public Builder setUpdates(int i, ItemPropertyUpdate.Builder builder) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUpdatesIsMutable();
                    this.updates_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUpdates(ItemPropertyUpdate itemPropertyUpdate) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    itemPropertyUpdate.getClass();
                    ensureUpdatesIsMutable();
                    this.updates_.add(itemPropertyUpdate);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(itemPropertyUpdate);
                }
                return this;
            }

            public Builder addUpdates(int i, ItemPropertyUpdate itemPropertyUpdate) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    itemPropertyUpdate.getClass();
                    ensureUpdatesIsMutable();
                    this.updates_.add(i, itemPropertyUpdate);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, itemPropertyUpdate);
                }
                return this;
            }

            public Builder addUpdates(ItemPropertyUpdate.Builder builder) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUpdatesIsMutable();
                    this.updates_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUpdates(int i, ItemPropertyUpdate.Builder builder) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUpdatesIsMutable();
                    this.updates_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUpdates(Iterable<? extends ItemPropertyUpdate> iterable) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUpdatesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.updates_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUpdates() {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.updates_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeUpdates(int i) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUpdatesIsMutable();
                    this.updates_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public ItemPropertyUpdate.Builder getUpdatesBuilder(int i) {
                return (ItemPropertyUpdate.Builder) internalGetUpdatesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public ItemPropertyUpdateOrBuilder getUpdatesOrBuilder(int i) {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.updates_.get(i);
                }
                return (ItemPropertyUpdateOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public List<? extends ItemPropertyUpdateOrBuilder> getUpdatesOrBuilderList() {
                RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> repeatedFieldBuilder = this.updatesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.updates_);
            }

            public ItemPropertyUpdate.Builder addUpdatesBuilder() {
                return (ItemPropertyUpdate.Builder) internalGetUpdatesFieldBuilder().addBuilder(ItemPropertyUpdate.getDefaultInstance());
            }

            public ItemPropertyUpdate.Builder addUpdatesBuilder(int i) {
                return (ItemPropertyUpdate.Builder) internalGetUpdatesFieldBuilder().addBuilder(i, ItemPropertyUpdate.getDefaultInstance());
            }

            public List<ItemPropertyUpdate.Builder> getUpdatesBuilderList() {
                return internalGetUpdatesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ItemPropertyUpdate, ItemPropertyUpdate.Builder, ItemPropertyUpdateOrBuilder> internalGetUpdatesFieldBuilder() {
                if (this.updatesBuilder_ == null) {
                    this.updatesBuilder_ = new RepeatedFieldBuilder<>(this.updates_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.updates_ = null;
                }
                return this.updatesBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ModifyItems_RequestOrBuilder
            public int getTimestamp() {
                return this.timestamp_;
            }

            public Builder setTimestamp(int i) {
                this.timestamp_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearTimestamp() {
                this.bitField0_ &= -9;
                this.timestamp_ = 0;
                onChanged();
                return this;
            }
        }

        public static CInventory_ModifyItems_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_ModifyItems_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_ModifyItems_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_ModifyItems_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_ConsumePlaytime_Request extends GeneratedMessage implements CInventory_ConsumePlaytime_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_ConsumePlaytime_Request DEFAULT_INSTANCE;
        public static final int ITEMDEFID_FIELD_NUMBER = 2;
        private static final Parser<CInventory_ConsumePlaytime_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long itemdefid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_ConsumePlaytime_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_ConsumePlaytime_Request();
            PARSER = new AbstractParser<CInventory_ConsumePlaytime_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_ConsumePlaytime_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_ConsumePlaytime_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_ConsumePlaytime_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.itemdefid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_ConsumePlaytime_Request() {
            this.appid_ = 0;
            this.itemdefid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumePlaytime_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumePlaytime_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ConsumePlaytime_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
        public boolean hasItemdefid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
        public long getItemdefid() {
            return this.itemdefid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.itemdefid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.itemdefid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_ConsumePlaytime_Request)) {
                return super.equals(obj);
            }
            CInventory_ConsumePlaytime_Request cInventory_ConsumePlaytime_Request = (CInventory_ConsumePlaytime_Request) obj;
            if (hasAppid() != cInventory_ConsumePlaytime_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cInventory_ConsumePlaytime_Request.getAppid()) && hasItemdefid() == cInventory_ConsumePlaytime_Request.hasItemdefid()) {
                return (!hasItemdefid() || getItemdefid() == cInventory_ConsumePlaytime_Request.getItemdefid()) && getUnknownFields().equals(cInventory_ConsumePlaytime_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasItemdefid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getItemdefid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_ConsumePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ConsumePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ConsumePlaytime_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_ConsumePlaytime_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_ConsumePlaytime_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ConsumePlaytime_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_ConsumePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_ConsumePlaytime_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ConsumePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_ConsumePlaytime_Request cInventory_ConsumePlaytime_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_ConsumePlaytime_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_ConsumePlaytime_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long itemdefid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumePlaytime_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumePlaytime_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ConsumePlaytime_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.itemdefid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumePlaytime_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_ConsumePlaytime_Request getDefaultInstanceForType() {
                return CInventory_ConsumePlaytime_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ConsumePlaytime_Request build() {
                CInventory_ConsumePlaytime_Request cInventory_ConsumePlaytime_RequestBuildPartial = buildPartial();
                if (cInventory_ConsumePlaytime_RequestBuildPartial.isInitialized()) {
                    return cInventory_ConsumePlaytime_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_ConsumePlaytime_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ConsumePlaytime_Request buildPartial() {
                CInventory_ConsumePlaytime_Request cInventory_ConsumePlaytime_Request = new CInventory_ConsumePlaytime_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_ConsumePlaytime_Request);
                }
                onBuilt();
                return cInventory_ConsumePlaytime_Request;
            }

            private void buildPartial0(CInventory_ConsumePlaytime_Request cInventory_ConsumePlaytime_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_ConsumePlaytime_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_ConsumePlaytime_Request.itemdefid_ = this.itemdefid_;
                    i |= 2;
                }
                cInventory_ConsumePlaytime_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_ConsumePlaytime_Request) {
                    return mergeFrom((CInventory_ConsumePlaytime_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_ConsumePlaytime_Request cInventory_ConsumePlaytime_Request) {
                if (cInventory_ConsumePlaytime_Request == CInventory_ConsumePlaytime_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_ConsumePlaytime_Request.hasAppid()) {
                    setAppid(cInventory_ConsumePlaytime_Request.getAppid());
                }
                if (cInventory_ConsumePlaytime_Request.hasItemdefid()) {
                    setItemdefid(cInventory_ConsumePlaytime_Request.getItemdefid());
                }
                mergeUnknownFields(cInventory_ConsumePlaytime_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.itemdefid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
            public boolean hasItemdefid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumePlaytime_RequestOrBuilder
            public long getItemdefid() {
                return this.itemdefid_;
            }

            public Builder setItemdefid(long j) {
                this.itemdefid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearItemdefid() {
                this.bitField0_ &= -3;
                this.itemdefid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_ConsumePlaytime_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_ConsumePlaytime_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_ConsumePlaytime_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_ConsumePlaytime_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_ConsumeItem_Request extends GeneratedMessage implements CInventory_ConsumeItem_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_ConsumeItem_Request DEFAULT_INSTANCE;
        public static final int ITEMID_FIELD_NUMBER = 2;
        private static final Parser<CInventory_ConsumeItem_Request> PARSER;
        public static final int QUANTITY_FIELD_NUMBER = 3;
        public static final int REQUESTID_FIELD_NUMBER = 6;
        public static final int STEAMID_FIELD_NUMBER = 5;
        public static final int TIMESTAMP_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long itemid_;
        private byte memoizedIsInitialized;
        private int quantity_;
        private long requestid_;
        private long steamid_;
        private volatile Object timestamp_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_ConsumeItem_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_ConsumeItem_Request();
            PARSER = new AbstractParser<CInventory_ConsumeItem_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_ConsumeItem_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_ConsumeItem_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_ConsumeItem_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.itemid_ = 0L;
            this.quantity_ = 0;
            this.timestamp_ = "";
            this.steamid_ = 0L;
            this.requestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_ConsumeItem_Request() {
            this.appid_ = 0;
            this.itemid_ = 0L;
            this.quantity_ = 0;
            this.timestamp_ = "";
            this.steamid_ = 0L;
            this.requestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.timestamp_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumeItem_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumeItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ConsumeItem_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public boolean hasItemid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public long getItemid() {
            return this.itemid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public boolean hasQuantity() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public int getQuantity() {
            return this.quantity_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public boolean hasTimestamp() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public String getTimestamp() {
            Object obj = this.timestamp_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.timestamp_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public ByteString getTimestampBytes() {
            Object obj = this.timestamp_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.timestamp_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
        public long getRequestid() {
            return this.requestid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.itemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.quantity_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.timestamp_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt64(5, this.steamid_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt64(6, this.requestid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.itemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.quantity_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.timestamp_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(5, this.steamid_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(6, this.requestid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_ConsumeItem_Request)) {
                return super.equals(obj);
            }
            CInventory_ConsumeItem_Request cInventory_ConsumeItem_Request = (CInventory_ConsumeItem_Request) obj;
            if (hasAppid() != cInventory_ConsumeItem_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_ConsumeItem_Request.getAppid()) || hasItemid() != cInventory_ConsumeItem_Request.hasItemid()) {
                return false;
            }
            if ((hasItemid() && getItemid() != cInventory_ConsumeItem_Request.getItemid()) || hasQuantity() != cInventory_ConsumeItem_Request.hasQuantity()) {
                return false;
            }
            if ((hasQuantity() && getQuantity() != cInventory_ConsumeItem_Request.getQuantity()) || hasTimestamp() != cInventory_ConsumeItem_Request.hasTimestamp()) {
                return false;
            }
            if ((hasTimestamp() && !getTimestamp().equals(cInventory_ConsumeItem_Request.getTimestamp())) || hasSteamid() != cInventory_ConsumeItem_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cInventory_ConsumeItem_Request.getSteamid()) && hasRequestid() == cInventory_ConsumeItem_Request.hasRequestid()) {
                return (!hasRequestid() || getRequestid() == cInventory_ConsumeItem_Request.getRequestid()) && getUnknownFields().equals(cInventory_ConsumeItem_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasItemid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getItemid());
            }
            if (hasQuantity()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getQuantity();
            }
            if (hasTimestamp()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getTimestamp().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getRequestid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_ConsumeItem_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_ConsumeItem_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_ConsumeItem_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_ConsumeItem_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_ConsumeItem_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_ConsumeItem_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_ConsumeItem_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_ConsumeItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_ConsumeItem_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ConsumeItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ConsumeItem_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_ConsumeItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_ConsumeItem_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ConsumeItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_ConsumeItem_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_ConsumeItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_ConsumeItem_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_ConsumeItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_ConsumeItem_Request cInventory_ConsumeItem_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_ConsumeItem_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_ConsumeItem_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long itemid_;
            private int quantity_;
            private long requestid_;
            private long steamid_;
            private Object timestamp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumeItem_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumeItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_ConsumeItem_Request.class, Builder.class);
            }

            private Builder() {
                this.timestamp_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.timestamp_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.itemid_ = 0L;
                this.quantity_ = 0;
                this.timestamp_ = "";
                this.steamid_ = 0L;
                this.requestid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_ConsumeItem_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_ConsumeItem_Request getDefaultInstanceForType() {
                return CInventory_ConsumeItem_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ConsumeItem_Request build() {
                CInventory_ConsumeItem_Request cInventory_ConsumeItem_RequestBuildPartial = buildPartial();
                if (cInventory_ConsumeItem_RequestBuildPartial.isInitialized()) {
                    return cInventory_ConsumeItem_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_ConsumeItem_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_ConsumeItem_Request buildPartial() {
                CInventory_ConsumeItem_Request cInventory_ConsumeItem_Request = new CInventory_ConsumeItem_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_ConsumeItem_Request);
                }
                onBuilt();
                return cInventory_ConsumeItem_Request;
            }

            private void buildPartial0(CInventory_ConsumeItem_Request cInventory_ConsumeItem_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_ConsumeItem_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_ConsumeItem_Request.itemid_ = this.itemid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cInventory_ConsumeItem_Request.quantity_ = this.quantity_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cInventory_ConsumeItem_Request.timestamp_ = this.timestamp_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cInventory_ConsumeItem_Request.steamid_ = this.steamid_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cInventory_ConsumeItem_Request.requestid_ = this.requestid_;
                    i |= 32;
                }
                cInventory_ConsumeItem_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_ConsumeItem_Request) {
                    return mergeFrom((CInventory_ConsumeItem_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_ConsumeItem_Request cInventory_ConsumeItem_Request) {
                if (cInventory_ConsumeItem_Request == CInventory_ConsumeItem_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_ConsumeItem_Request.hasAppid()) {
                    setAppid(cInventory_ConsumeItem_Request.getAppid());
                }
                if (cInventory_ConsumeItem_Request.hasItemid()) {
                    setItemid(cInventory_ConsumeItem_Request.getItemid());
                }
                if (cInventory_ConsumeItem_Request.hasQuantity()) {
                    setQuantity(cInventory_ConsumeItem_Request.getQuantity());
                }
                if (cInventory_ConsumeItem_Request.hasTimestamp()) {
                    this.timestamp_ = cInventory_ConsumeItem_Request.timestamp_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cInventory_ConsumeItem_Request.hasSteamid()) {
                    setSteamid(cInventory_ConsumeItem_Request.getSteamid());
                }
                if (cInventory_ConsumeItem_Request.hasRequestid()) {
                    setRequestid(cInventory_ConsumeItem_Request.getRequestid());
                }
                mergeUnknownFields(cInventory_ConsumeItem_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.itemid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.quantity_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.timestamp_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.requestid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 32;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public boolean hasItemid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public long getItemid() {
                return this.itemid_;
            }

            public Builder setItemid(long j) {
                this.itemid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearItemid() {
                this.bitField0_ &= -3;
                this.itemid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public boolean hasQuantity() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public int getQuantity() {
                return this.quantity_;
            }

            public Builder setQuantity(int i) {
                this.quantity_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearQuantity() {
                this.bitField0_ &= -5;
                this.quantity_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public String getTimestamp() {
                Object obj = this.timestamp_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.timestamp_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public ByteString getTimestampBytes() {
                Object obj = this.timestamp_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.timestamp_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTimestamp(String str) {
                str.getClass();
                this.timestamp_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearTimestamp() {
                this.timestamp_ = CInventory_ConsumeItem_Request.getDefaultInstance().getTimestamp();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setTimestampBytes(ByteString byteString) {
                byteString.getClass();
                this.timestamp_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -17;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_ConsumeItem_RequestOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -33;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_ConsumeItem_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_ConsumeItem_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_ConsumeItem_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_ConsumeItem_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_DevSetNextDrop_Request extends GeneratedMessage implements CInventory_DevSetNextDrop_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_DevSetNextDrop_Request DEFAULT_INSTANCE;
        public static final int DROPTIME_FIELD_NUMBER = 3;
        public static final int ITEMDEFID_FIELD_NUMBER = 2;
        private static final Parser<CInventory_DevSetNextDrop_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private volatile Object droptime_;
        private long itemdefid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_DevSetNextDrop_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_DevSetNextDrop_Request();
            PARSER = new AbstractParser<CInventory_DevSetNextDrop_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_DevSetNextDrop_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_DevSetNextDrop_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_DevSetNextDrop_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.itemdefid_ = 0L;
            this.droptime_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_DevSetNextDrop_Request() {
            this.appid_ = 0;
            this.itemdefid_ = 0L;
            this.droptime_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.droptime_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_DevSetNextDrop_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_DevSetNextDrop_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_DevSetNextDrop_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public boolean hasItemdefid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public long getItemdefid() {
            return this.itemdefid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public boolean hasDroptime() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public String getDroptime() {
            Object obj = this.droptime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.droptime_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
        public ByteString getDroptimeBytes() {
            Object obj = this.droptime_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.droptime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.itemdefid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.droptime_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.itemdefid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.droptime_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_DevSetNextDrop_Request)) {
                return super.equals(obj);
            }
            CInventory_DevSetNextDrop_Request cInventory_DevSetNextDrop_Request = (CInventory_DevSetNextDrop_Request) obj;
            if (hasAppid() != cInventory_DevSetNextDrop_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_DevSetNextDrop_Request.getAppid()) || hasItemdefid() != cInventory_DevSetNextDrop_Request.hasItemdefid()) {
                return false;
            }
            if ((!hasItemdefid() || getItemdefid() == cInventory_DevSetNextDrop_Request.getItemdefid()) && hasDroptime() == cInventory_DevSetNextDrop_Request.hasDroptime()) {
                return (!hasDroptime() || getDroptime().equals(cInventory_DevSetNextDrop_Request.getDroptime())) && getUnknownFields().equals(cInventory_DevSetNextDrop_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasItemdefid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getItemdefid());
            }
            if (hasDroptime()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDroptime().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_DevSetNextDrop_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_DevSetNextDrop_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_DevSetNextDrop_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_DevSetNextDrop_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_DevSetNextDrop_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_DevSetNextDrop_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_DevSetNextDrop_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_DevSetNextDrop_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_DevSetNextDrop_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_DevSetNextDrop_Request cInventory_DevSetNextDrop_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_DevSetNextDrop_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_DevSetNextDrop_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object droptime_;
            private long itemdefid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_DevSetNextDrop_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_DevSetNextDrop_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_DevSetNextDrop_Request.class, Builder.class);
            }

            private Builder() {
                this.droptime_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.droptime_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.itemdefid_ = 0L;
                this.droptime_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_DevSetNextDrop_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_DevSetNextDrop_Request getDefaultInstanceForType() {
                return CInventory_DevSetNextDrop_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_DevSetNextDrop_Request build() {
                CInventory_DevSetNextDrop_Request cInventory_DevSetNextDrop_RequestBuildPartial = buildPartial();
                if (cInventory_DevSetNextDrop_RequestBuildPartial.isInitialized()) {
                    return cInventory_DevSetNextDrop_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_DevSetNextDrop_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_DevSetNextDrop_Request buildPartial() {
                CInventory_DevSetNextDrop_Request cInventory_DevSetNextDrop_Request = new CInventory_DevSetNextDrop_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_DevSetNextDrop_Request);
                }
                onBuilt();
                return cInventory_DevSetNextDrop_Request;
            }

            private void buildPartial0(CInventory_DevSetNextDrop_Request cInventory_DevSetNextDrop_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_DevSetNextDrop_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_DevSetNextDrop_Request.itemdefid_ = this.itemdefid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cInventory_DevSetNextDrop_Request.droptime_ = this.droptime_;
                    i |= 4;
                }
                cInventory_DevSetNextDrop_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_DevSetNextDrop_Request) {
                    return mergeFrom((CInventory_DevSetNextDrop_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_DevSetNextDrop_Request cInventory_DevSetNextDrop_Request) {
                if (cInventory_DevSetNextDrop_Request == CInventory_DevSetNextDrop_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_DevSetNextDrop_Request.hasAppid()) {
                    setAppid(cInventory_DevSetNextDrop_Request.getAppid());
                }
                if (cInventory_DevSetNextDrop_Request.hasItemdefid()) {
                    setItemdefid(cInventory_DevSetNextDrop_Request.getItemdefid());
                }
                if (cInventory_DevSetNextDrop_Request.hasDroptime()) {
                    this.droptime_ = cInventory_DevSetNextDrop_Request.droptime_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cInventory_DevSetNextDrop_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.itemdefid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.droptime_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public boolean hasItemdefid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public long getItemdefid() {
                return this.itemdefid_;
            }

            public Builder setItemdefid(long j) {
                this.itemdefid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearItemdefid() {
                this.bitField0_ &= -3;
                this.itemdefid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public boolean hasDroptime() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public String getDroptime() {
                Object obj = this.droptime_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.droptime_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_DevSetNextDrop_RequestOrBuilder
            public ByteString getDroptimeBytes() {
                Object obj = this.droptime_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.droptime_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDroptime(String str) {
                str.getClass();
                this.droptime_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDroptime() {
                this.droptime_ = CInventory_DevSetNextDrop_Request.getDefaultInstance().getDroptime();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setDroptimeBytes(ByteString byteString) {
                byteString.getClass();
                this.droptime_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CInventory_DevSetNextDrop_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_DevSetNextDrop_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_DevSetNextDrop_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_DevSetNextDrop_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_SplitItemStack_Request extends GeneratedMessage implements CInventory_SplitItemStack_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_SplitItemStack_Request DEFAULT_INSTANCE;
        public static final int ITEMID_FIELD_NUMBER = 2;
        private static final Parser<CInventory_SplitItemStack_Request> PARSER;
        public static final int QUANTITY_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long itemid_;
        private byte memoizedIsInitialized;
        private int quantity_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_SplitItemStack_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_SplitItemStack_Request();
            PARSER = new AbstractParser<CInventory_SplitItemStack_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_SplitItemStack_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_SplitItemStack_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_SplitItemStack_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.itemid_ = 0L;
            this.quantity_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_SplitItemStack_Request() {
            this.appid_ = 0;
            this.itemid_ = 0L;
            this.quantity_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_SplitItemStack_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_SplitItemStack_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_SplitItemStack_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public boolean hasItemid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public long getItemid() {
            return this.itemid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public boolean hasQuantity() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public int getQuantity() {
            return this.quantity_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.itemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.quantity_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt64(5, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.itemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.quantity_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(5, this.steamid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_SplitItemStack_Request)) {
                return super.equals(obj);
            }
            CInventory_SplitItemStack_Request cInventory_SplitItemStack_Request = (CInventory_SplitItemStack_Request) obj;
            if (hasAppid() != cInventory_SplitItemStack_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_SplitItemStack_Request.getAppid()) || hasItemid() != cInventory_SplitItemStack_Request.hasItemid()) {
                return false;
            }
            if ((hasItemid() && getItemid() != cInventory_SplitItemStack_Request.getItemid()) || hasQuantity() != cInventory_SplitItemStack_Request.hasQuantity()) {
                return false;
            }
            if ((!hasQuantity() || getQuantity() == cInventory_SplitItemStack_Request.getQuantity()) && hasSteamid() == cInventory_SplitItemStack_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cInventory_SplitItemStack_Request.getSteamid()) && getUnknownFields().equals(cInventory_SplitItemStack_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasItemid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getItemid());
            }
            if (hasQuantity()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getQuantity();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_SplitItemStack_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_SplitItemStack_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_SplitItemStack_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_SplitItemStack_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_SplitItemStack_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_SplitItemStack_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_SplitItemStack_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_SplitItemStack_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_SplitItemStack_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_SplitItemStack_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_SplitItemStack_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_SplitItemStack_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_SplitItemStack_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_SplitItemStack_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_SplitItemStack_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_SplitItemStack_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_SplitItemStack_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_SplitItemStack_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_SplitItemStack_Request cInventory_SplitItemStack_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_SplitItemStack_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_SplitItemStack_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long itemid_;
            private int quantity_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_SplitItemStack_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_SplitItemStack_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_SplitItemStack_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.itemid_ = 0L;
                this.quantity_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_SplitItemStack_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_SplitItemStack_Request getDefaultInstanceForType() {
                return CInventory_SplitItemStack_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_SplitItemStack_Request build() {
                CInventory_SplitItemStack_Request cInventory_SplitItemStack_RequestBuildPartial = buildPartial();
                if (cInventory_SplitItemStack_RequestBuildPartial.isInitialized()) {
                    return cInventory_SplitItemStack_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_SplitItemStack_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_SplitItemStack_Request buildPartial() {
                CInventory_SplitItemStack_Request cInventory_SplitItemStack_Request = new CInventory_SplitItemStack_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_SplitItemStack_Request);
                }
                onBuilt();
                return cInventory_SplitItemStack_Request;
            }

            private void buildPartial0(CInventory_SplitItemStack_Request cInventory_SplitItemStack_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_SplitItemStack_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_SplitItemStack_Request.itemid_ = this.itemid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cInventory_SplitItemStack_Request.quantity_ = this.quantity_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cInventory_SplitItemStack_Request.steamid_ = this.steamid_;
                    i |= 8;
                }
                cInventory_SplitItemStack_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_SplitItemStack_Request) {
                    return mergeFrom((CInventory_SplitItemStack_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_SplitItemStack_Request cInventory_SplitItemStack_Request) {
                if (cInventory_SplitItemStack_Request == CInventory_SplitItemStack_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_SplitItemStack_Request.hasAppid()) {
                    setAppid(cInventory_SplitItemStack_Request.getAppid());
                }
                if (cInventory_SplitItemStack_Request.hasItemid()) {
                    setItemid(cInventory_SplitItemStack_Request.getItemid());
                }
                if (cInventory_SplitItemStack_Request.hasQuantity()) {
                    setQuantity(cInventory_SplitItemStack_Request.getQuantity());
                }
                if (cInventory_SplitItemStack_Request.hasSteamid()) {
                    setSteamid(cInventory_SplitItemStack_Request.getSteamid());
                }
                mergeUnknownFields(cInventory_SplitItemStack_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.itemid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.quantity_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 40) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 8;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public boolean hasItemid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public long getItemid() {
                return this.itemid_;
            }

            public Builder setItemid(long j) {
                this.itemid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearItemid() {
                this.bitField0_ &= -3;
                this.itemid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public boolean hasQuantity() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public int getQuantity() {
                return this.quantity_;
            }

            public Builder setQuantity(int i) {
                this.quantity_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearQuantity() {
                this.bitField0_ &= -5;
                this.quantity_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_SplitItemStack_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -9;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_SplitItemStack_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_SplitItemStack_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_SplitItemStack_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_SplitItemStack_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_CombineItemStacks_Request extends GeneratedMessage implements CInventory_CombineItemStacks_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_CombineItemStacks_Request DEFAULT_INSTANCE;
        public static final int DESTITEMID_FIELD_NUMBER = 3;
        public static final int FROMITEMID_FIELD_NUMBER = 2;
        private static final Parser<CInventory_CombineItemStacks_Request> PARSER;
        public static final int QUANTITY_FIELD_NUMBER = 4;
        public static final int STEAMID_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long destitemid_;
        private long fromitemid_;
        private byte memoizedIsInitialized;
        private int quantity_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_CombineItemStacks_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_CombineItemStacks_Request();
            PARSER = new AbstractParser<CInventory_CombineItemStacks_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_CombineItemStacks_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_CombineItemStacks_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_CombineItemStacks_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.fromitemid_ = 0L;
            this.destitemid_ = 0L;
            this.quantity_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_CombineItemStacks_Request() {
            this.appid_ = 0;
            this.fromitemid_ = 0L;
            this.destitemid_ = 0L;
            this.quantity_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_CombineItemStacks_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_CombineItemStacks_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_CombineItemStacks_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public boolean hasFromitemid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public long getFromitemid() {
            return this.fromitemid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public boolean hasDestitemid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public long getDestitemid() {
            return this.destitemid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public boolean hasQuantity() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public int getQuantity() {
            return this.quantity_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.fromitemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.destitemid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.quantity_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed64(7, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.fromitemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(3, this.destitemid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.quantity_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(7, this.steamid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_CombineItemStacks_Request)) {
                return super.equals(obj);
            }
            CInventory_CombineItemStacks_Request cInventory_CombineItemStacks_Request = (CInventory_CombineItemStacks_Request) obj;
            if (hasAppid() != cInventory_CombineItemStacks_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_CombineItemStacks_Request.getAppid()) || hasFromitemid() != cInventory_CombineItemStacks_Request.hasFromitemid()) {
                return false;
            }
            if ((hasFromitemid() && getFromitemid() != cInventory_CombineItemStacks_Request.getFromitemid()) || hasDestitemid() != cInventory_CombineItemStacks_Request.hasDestitemid()) {
                return false;
            }
            if ((hasDestitemid() && getDestitemid() != cInventory_CombineItemStacks_Request.getDestitemid()) || hasQuantity() != cInventory_CombineItemStacks_Request.hasQuantity()) {
                return false;
            }
            if ((!hasQuantity() || getQuantity() == cInventory_CombineItemStacks_Request.getQuantity()) && hasSteamid() == cInventory_CombineItemStacks_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cInventory_CombineItemStacks_Request.getSteamid()) && getUnknownFields().equals(cInventory_CombineItemStacks_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasFromitemid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getFromitemid());
            }
            if (hasDestitemid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getDestitemid());
            }
            if (hasQuantity()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getQuantity();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_CombineItemStacks_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_CombineItemStacks_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_CombineItemStacks_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_CombineItemStacks_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_CombineItemStacks_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_CombineItemStacks_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_CombineItemStacks_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_CombineItemStacks_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_CombineItemStacks_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_CombineItemStacks_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_CombineItemStacks_Request cInventory_CombineItemStacks_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_CombineItemStacks_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_CombineItemStacks_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long destitemid_;
            private long fromitemid_;
            private int quantity_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_CombineItemStacks_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_CombineItemStacks_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_CombineItemStacks_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.fromitemid_ = 0L;
                this.destitemid_ = 0L;
                this.quantity_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_CombineItemStacks_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_CombineItemStacks_Request getDefaultInstanceForType() {
                return CInventory_CombineItemStacks_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_CombineItemStacks_Request build() {
                CInventory_CombineItemStacks_Request cInventory_CombineItemStacks_RequestBuildPartial = buildPartial();
                if (cInventory_CombineItemStacks_RequestBuildPartial.isInitialized()) {
                    return cInventory_CombineItemStacks_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_CombineItemStacks_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_CombineItemStacks_Request buildPartial() {
                CInventory_CombineItemStacks_Request cInventory_CombineItemStacks_Request = new CInventory_CombineItemStacks_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_CombineItemStacks_Request);
                }
                onBuilt();
                return cInventory_CombineItemStacks_Request;
            }

            private void buildPartial0(CInventory_CombineItemStacks_Request cInventory_CombineItemStacks_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_CombineItemStacks_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_CombineItemStacks_Request.fromitemid_ = this.fromitemid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cInventory_CombineItemStacks_Request.destitemid_ = this.destitemid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cInventory_CombineItemStacks_Request.quantity_ = this.quantity_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cInventory_CombineItemStacks_Request.steamid_ = this.steamid_;
                    i |= 16;
                }
                cInventory_CombineItemStacks_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_CombineItemStacks_Request) {
                    return mergeFrom((CInventory_CombineItemStacks_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_CombineItemStacks_Request cInventory_CombineItemStacks_Request) {
                if (cInventory_CombineItemStacks_Request == CInventory_CombineItemStacks_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_CombineItemStacks_Request.hasAppid()) {
                    setAppid(cInventory_CombineItemStacks_Request.getAppid());
                }
                if (cInventory_CombineItemStacks_Request.hasFromitemid()) {
                    setFromitemid(cInventory_CombineItemStacks_Request.getFromitemid());
                }
                if (cInventory_CombineItemStacks_Request.hasDestitemid()) {
                    setDestitemid(cInventory_CombineItemStacks_Request.getDestitemid());
                }
                if (cInventory_CombineItemStacks_Request.hasQuantity()) {
                    setQuantity(cInventory_CombineItemStacks_Request.getQuantity());
                }
                if (cInventory_CombineItemStacks_Request.hasSteamid()) {
                    setSteamid(cInventory_CombineItemStacks_Request.getSteamid());
                }
                mergeUnknownFields(cInventory_CombineItemStacks_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.fromitemid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.destitemid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.quantity_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 57) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 16;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public boolean hasFromitemid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public long getFromitemid() {
                return this.fromitemid_;
            }

            public Builder setFromitemid(long j) {
                this.fromitemid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFromitemid() {
                this.bitField0_ &= -3;
                this.fromitemid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public boolean hasDestitemid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public long getDestitemid() {
                return this.destitemid_;
            }

            public Builder setDestitemid(long j) {
                this.destitemid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDestitemid() {
                this.bitField0_ &= -5;
                this.destitemid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public boolean hasQuantity() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public int getQuantity() {
                return this.quantity_;
            }

            public Builder setQuantity(int i) {
                this.quantity_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearQuantity() {
                this.bitField0_ &= -9;
                this.quantity_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_CombineItemStacks_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -17;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_CombineItemStacks_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_CombineItemStacks_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_CombineItemStacks_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_CombineItemStacks_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_GetItemDefMeta_Request extends GeneratedMessage implements CInventory_GetItemDefMeta_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_GetItemDefMeta_Request DEFAULT_INSTANCE;
        private static final Parser<CInventory_GetItemDefMeta_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetItemDefMeta_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetItemDefMeta_Request();
            PARSER = new AbstractParser<CInventory_GetItemDefMeta_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetItemDefMeta_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetItemDefMeta_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetItemDefMeta_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetItemDefMeta_Request() {
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetItemDefMeta_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_GetItemDefMeta_Request)) {
                return super.equals(obj);
            }
            CInventory_GetItemDefMeta_Request cInventory_GetItemDefMeta_Request = (CInventory_GetItemDefMeta_Request) obj;
            if (hasAppid() != cInventory_GetItemDefMeta_Request.hasAppid()) {
                return false;
            }
            return (!hasAppid() || getAppid() == cInventory_GetItemDefMeta_Request.getAppid()) && getUnknownFields().equals(cInventory_GetItemDefMeta_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetItemDefMeta_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetItemDefMeta_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetItemDefMeta_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetItemDefMeta_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetItemDefMeta_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetItemDefMeta_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetItemDefMeta_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetItemDefMeta_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetItemDefMeta_Request cInventory_GetItemDefMeta_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetItemDefMeta_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_GetItemDefMeta_RequestOrBuilder {
            private int appid_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetItemDefMeta_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetItemDefMeta_Request getDefaultInstanceForType() {
                return CInventory_GetItemDefMeta_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetItemDefMeta_Request build() {
                CInventory_GetItemDefMeta_Request cInventory_GetItemDefMeta_RequestBuildPartial = buildPartial();
                if (cInventory_GetItemDefMeta_RequestBuildPartial.isInitialized()) {
                    return cInventory_GetItemDefMeta_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetItemDefMeta_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetItemDefMeta_Request buildPartial() {
                CInventory_GetItemDefMeta_Request cInventory_GetItemDefMeta_Request = new CInventory_GetItemDefMeta_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_GetItemDefMeta_Request);
                }
                onBuilt();
                return cInventory_GetItemDefMeta_Request;
            }

            private void buildPartial0(CInventory_GetItemDefMeta_Request cInventory_GetItemDefMeta_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cInventory_GetItemDefMeta_Request.appid_ = this.appid_;
                } else {
                    i = 0;
                }
                cInventory_GetItemDefMeta_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetItemDefMeta_Request) {
                    return mergeFrom((CInventory_GetItemDefMeta_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetItemDefMeta_Request cInventory_GetItemDefMeta_Request) {
                if (cInventory_GetItemDefMeta_Request == CInventory_GetItemDefMeta_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_GetItemDefMeta_Request.hasAppid()) {
                    setAppid(cInventory_GetItemDefMeta_Request.getAppid());
                }
                mergeUnknownFields(cInventory_GetItemDefMeta_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }
        }

        public static CInventory_GetItemDefMeta_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetItemDefMeta_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetItemDefMeta_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetItemDefMeta_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_GetItemDefMeta_Response extends GeneratedMessage implements CInventory_GetItemDefMeta_ResponseOrBuilder {
        private static final CInventory_GetItemDefMeta_Response DEFAULT_INSTANCE;
        public static final int DIGEST_FIELD_NUMBER = 2;
        public static final int MODIFIED_FIELD_NUMBER = 1;
        private static final Parser<CInventory_GetItemDefMeta_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object digest_;
        private byte memoizedIsInitialized;
        private int modified_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetItemDefMeta_Response.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetItemDefMeta_Response();
            PARSER = new AbstractParser<CInventory_GetItemDefMeta_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_Response.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetItemDefMeta_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetItemDefMeta_Response.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetItemDefMeta_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.modified_ = 0;
            this.digest_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetItemDefMeta_Response() {
            this.modified_ = 0;
            this.digest_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.digest_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetItemDefMeta_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
        public boolean hasModified() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
        public int getModified() {
            return this.modified_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
        public boolean hasDigest() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
        public String getDigest() {
            Object obj = this.digest_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.digest_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
        public ByteString getDigestBytes() {
            Object obj = this.digest_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.digest_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.modified_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.digest_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.modified_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.digest_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_GetItemDefMeta_Response)) {
                return super.equals(obj);
            }
            CInventory_GetItemDefMeta_Response cInventory_GetItemDefMeta_Response = (CInventory_GetItemDefMeta_Response) obj;
            if (hasModified() != cInventory_GetItemDefMeta_Response.hasModified()) {
                return false;
            }
            if ((!hasModified() || getModified() == cInventory_GetItemDefMeta_Response.getModified()) && hasDigest() == cInventory_GetItemDefMeta_Response.hasDigest()) {
                return (!hasDigest() || getDigest().equals(cInventory_GetItemDefMeta_Response.getDigest())) && getUnknownFields().equals(cInventory_GetItemDefMeta_Response.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasModified()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getModified();
            }
            if (hasDigest()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDigest().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetItemDefMeta_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetItemDefMeta_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetItemDefMeta_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetItemDefMeta_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetItemDefMeta_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetItemDefMeta_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetItemDefMeta_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetItemDefMeta_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetItemDefMeta_Response cInventory_GetItemDefMeta_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetItemDefMeta_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_GetItemDefMeta_ResponseOrBuilder {
            private int bitField0_;
            private Object digest_;
            private int modified_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetItemDefMeta_Response.class, Builder.class);
            }

            private Builder() {
                this.digest_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.digest_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.modified_ = 0;
                this.digest_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetItemDefMeta_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetItemDefMeta_Response getDefaultInstanceForType() {
                return CInventory_GetItemDefMeta_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetItemDefMeta_Response build() {
                CInventory_GetItemDefMeta_Response cInventory_GetItemDefMeta_ResponseBuildPartial = buildPartial();
                if (cInventory_GetItemDefMeta_ResponseBuildPartial.isInitialized()) {
                    return cInventory_GetItemDefMeta_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetItemDefMeta_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetItemDefMeta_Response buildPartial() {
                CInventory_GetItemDefMeta_Response cInventory_GetItemDefMeta_Response = new CInventory_GetItemDefMeta_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_GetItemDefMeta_Response);
                }
                onBuilt();
                return cInventory_GetItemDefMeta_Response;
            }

            private void buildPartial0(CInventory_GetItemDefMeta_Response cInventory_GetItemDefMeta_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_GetItemDefMeta_Response.modified_ = this.modified_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_GetItemDefMeta_Response.digest_ = this.digest_;
                    i |= 2;
                }
                cInventory_GetItemDefMeta_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetItemDefMeta_Response) {
                    return mergeFrom((CInventory_GetItemDefMeta_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetItemDefMeta_Response cInventory_GetItemDefMeta_Response) {
                if (cInventory_GetItemDefMeta_Response == CInventory_GetItemDefMeta_Response.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_GetItemDefMeta_Response.hasModified()) {
                    setModified(cInventory_GetItemDefMeta_Response.getModified());
                }
                if (cInventory_GetItemDefMeta_Response.hasDigest()) {
                    this.digest_ = cInventory_GetItemDefMeta_Response.digest_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cInventory_GetItemDefMeta_Response.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.modified_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.digest_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
            public boolean hasModified() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
            public int getModified() {
                return this.modified_;
            }

            public Builder setModified(int i) {
                this.modified_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearModified() {
                this.bitField0_ &= -2;
                this.modified_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
            public boolean hasDigest() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
            public String getDigest() {
                Object obj = this.digest_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.digest_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetItemDefMeta_ResponseOrBuilder
            public ByteString getDigestBytes() {
                Object obj = this.digest_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.digest_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDigest(String str) {
                str.getClass();
                this.digest_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDigest() {
                this.digest_ = CInventory_GetItemDefMeta_Response.getDefaultInstance().getDigest();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setDigestBytes(ByteString byteString) {
                byteString.getClass();
                this.digest_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CInventory_GetItemDefMeta_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetItemDefMeta_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetItemDefMeta_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetItemDefMeta_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_GetUserPurchaseInfo_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CInventory_GetUserPurchaseInfo_Request DEFAULT_INSTANCE;
        private static final Parser<CInventory_GetUserPurchaseInfo_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetUserPurchaseInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetUserPurchaseInfo_Request();
            PARSER = new AbstractParser<CInventory_GetUserPurchaseInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetUserPurchaseInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetUserPurchaseInfo_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetUserPurchaseInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetUserPurchaseInfo_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetUserPurchaseInfo_Request.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CInventory_GetUserPurchaseInfo_Request) {
                return getUnknownFields().equals(((CInventory_GetUserPurchaseInfo_Request) obj).getUnknownFields());
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((779 + getDescriptor().hashCode()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetUserPurchaseInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetUserPurchaseInfo_Request cInventory_GetUserPurchaseInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetUserPurchaseInfo_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements MessageOrBuilder {
            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetUserPurchaseInfo_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetUserPurchaseInfo_Request getDefaultInstanceForType() {
                return CInventory_GetUserPurchaseInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetUserPurchaseInfo_Request build() {
                CInventory_GetUserPurchaseInfo_Request cInventory_GetUserPurchaseInfo_RequestBuildPartial = buildPartial();
                if (cInventory_GetUserPurchaseInfo_RequestBuildPartial.isInitialized()) {
                    return cInventory_GetUserPurchaseInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetUserPurchaseInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetUserPurchaseInfo_Request buildPartial() {
                CInventory_GetUserPurchaseInfo_Request cInventory_GetUserPurchaseInfo_Request = new CInventory_GetUserPurchaseInfo_Request(this);
                onBuilt();
                return cInventory_GetUserPurchaseInfo_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetUserPurchaseInfo_Request) {
                    return mergeFrom((CInventory_GetUserPurchaseInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetUserPurchaseInfo_Request cInventory_GetUserPurchaseInfo_Request) {
                if (cInventory_GetUserPurchaseInfo_Request == CInventory_GetUserPurchaseInfo_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cInventory_GetUserPurchaseInfo_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } finally {
                        onChanged();
                    }
                }
                return this;
            }
        }

        public static CInventory_GetUserPurchaseInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetUserPurchaseInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetUserPurchaseInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetUserPurchaseInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_GetUserPurchaseInfo_Response extends GeneratedMessage implements CInventory_GetUserPurchaseInfo_ResponseOrBuilder {
        private static final CInventory_GetUserPurchaseInfo_Response DEFAULT_INSTANCE;
        public static final int ECURRENCY_FIELD_NUMBER = 1;
        private static final Parser<CInventory_GetUserPurchaseInfo_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int ecurrency_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_GetUserPurchaseInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CInventory_GetUserPurchaseInfo_Response();
            PARSER = new AbstractParser<CInventory_GetUserPurchaseInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CInventory_GetUserPurchaseInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_GetUserPurchaseInfo_Response.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_GetUserPurchaseInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.ecurrency_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_GetUserPurchaseInfo_Response() {
            this.ecurrency_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetUserPurchaseInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_ResponseOrBuilder
        public boolean hasEcurrency() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_ResponseOrBuilder
        public int getEcurrency() {
            return this.ecurrency_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.ecurrency_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.ecurrency_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeInt32Size;
            return iComputeInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_GetUserPurchaseInfo_Response)) {
                return super.equals(obj);
            }
            CInventory_GetUserPurchaseInfo_Response cInventory_GetUserPurchaseInfo_Response = (CInventory_GetUserPurchaseInfo_Response) obj;
            if (hasEcurrency() != cInventory_GetUserPurchaseInfo_Response.hasEcurrency()) {
                return false;
            }
            return (!hasEcurrency() || getEcurrency() == cInventory_GetUserPurchaseInfo_Response.getEcurrency()) && getUnknownFields().equals(cInventory_GetUserPurchaseInfo_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEcurrency()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEcurrency();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_GetUserPurchaseInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_GetUserPurchaseInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_GetUserPurchaseInfo_Response cInventory_GetUserPurchaseInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_GetUserPurchaseInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_GetUserPurchaseInfo_ResponseOrBuilder {
            private int bitField0_;
            private int ecurrency_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_GetUserPurchaseInfo_Response.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.ecurrency_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_GetUserPurchaseInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_GetUserPurchaseInfo_Response getDefaultInstanceForType() {
                return CInventory_GetUserPurchaseInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetUserPurchaseInfo_Response build() {
                CInventory_GetUserPurchaseInfo_Response cInventory_GetUserPurchaseInfo_ResponseBuildPartial = buildPartial();
                if (cInventory_GetUserPurchaseInfo_ResponseBuildPartial.isInitialized()) {
                    return cInventory_GetUserPurchaseInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_GetUserPurchaseInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_GetUserPurchaseInfo_Response buildPartial() {
                CInventory_GetUserPurchaseInfo_Response cInventory_GetUserPurchaseInfo_Response = new CInventory_GetUserPurchaseInfo_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_GetUserPurchaseInfo_Response);
                }
                onBuilt();
                return cInventory_GetUserPurchaseInfo_Response;
            }

            private void buildPartial0(CInventory_GetUserPurchaseInfo_Response cInventory_GetUserPurchaseInfo_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cInventory_GetUserPurchaseInfo_Response.ecurrency_ = this.ecurrency_;
                } else {
                    i = 0;
                }
                cInventory_GetUserPurchaseInfo_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_GetUserPurchaseInfo_Response) {
                    return mergeFrom((CInventory_GetUserPurchaseInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_GetUserPurchaseInfo_Response cInventory_GetUserPurchaseInfo_Response) {
                if (cInventory_GetUserPurchaseInfo_Response == CInventory_GetUserPurchaseInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_GetUserPurchaseInfo_Response.hasEcurrency()) {
                    setEcurrency(cInventory_GetUserPurchaseInfo_Response.getEcurrency());
                }
                mergeUnknownFields(cInventory_GetUserPurchaseInfo_Response.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.ecurrency_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_ResponseOrBuilder
            public boolean hasEcurrency() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_GetUserPurchaseInfo_ResponseOrBuilder
            public int getEcurrency() {
                return this.ecurrency_;
            }

            public Builder setEcurrency(int i) {
                this.ecurrency_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEcurrency() {
                this.bitField0_ &= -2;
                this.ecurrency_ = 0;
                onChanged();
                return this;
            }
        }

        public static CInventory_GetUserPurchaseInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_GetUserPurchaseInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_GetUserPurchaseInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_GetUserPurchaseInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_PurchaseInit_Request extends GeneratedMessage implements CInventory_PurchaseInit_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_PurchaseInit_Request DEFAULT_INSTANCE;
        public static final int LANGUAGE_FIELD_NUMBER = 2;
        public static final int LINE_ITEMS_FIELD_NUMBER = 3;
        private static final Parser<CInventory_PurchaseInit_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private int language_;
        private List<LineItem> lineItems_;
        private byte memoizedIsInitialized;

        public interface LineItemOrBuilder extends MessageOrBuilder {
            long getItemdefid();

            int getQuantity();

            boolean hasItemdefid();

            boolean hasQuantity();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_PurchaseInit_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_PurchaseInit_Request();
            PARSER = new AbstractParser<CInventory_PurchaseInit_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_PurchaseInit_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_PurchaseInit_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_PurchaseInit_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.language_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_PurchaseInit_Request() {
            this.appid_ = 0;
            this.language_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.lineItems_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_PurchaseInit_Request.class, Builder.class);
        }

        public static final class LineItem extends GeneratedMessage implements LineItemOrBuilder {
            private static final LineItem DEFAULT_INSTANCE;
            public static final int ITEMDEFID_FIELD_NUMBER = 1;
            private static final Parser<LineItem> PARSER;
            public static final int QUANTITY_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private long itemdefid_;
            private byte memoizedIsInitialized;
            private int quantity_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", LineItem.class.getName());
                DEFAULT_INSTANCE = new LineItem();
                PARSER = new AbstractParser<LineItem>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItem.1
                    @Override // com.google.protobuf.Parser
                    public LineItem parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = LineItem.newBuilder();
                        try {
                            builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                            return builderNewBuilder.buildPartial();
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (UninitializedMessageException e2) {
                            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                        }
                    }
                };
            }

            private LineItem(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.itemdefid_ = 0L;
                this.quantity_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private LineItem() {
                this.itemdefid_ = 0L;
                this.quantity_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_LineItem_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_LineItem_fieldAccessorTable.ensureFieldAccessorsInitialized(LineItem.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
            public boolean hasItemdefid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
            public long getItemdefid() {
                return this.itemdefid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
            public boolean hasQuantity() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
            public int getQuantity() {
                return this.quantity_;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    codedOutputStream.writeUInt64(1, this.itemdefid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.quantity_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.itemdefid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.quantity_);
                }
                int serializedSize = iComputeUInt64Size + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof LineItem)) {
                    return super.equals(obj);
                }
                LineItem lineItem = (LineItem) obj;
                if (hasItemdefid() != lineItem.hasItemdefid()) {
                    return false;
                }
                if ((!hasItemdefid() || getItemdefid() == lineItem.getItemdefid()) && hasQuantity() == lineItem.hasQuantity()) {
                    return (!hasQuantity() || getQuantity() == lineItem.getQuantity()) && getUnknownFields().equals(lineItem.getUnknownFields());
                }
                return false;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasItemdefid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getItemdefid());
                }
                if (hasQuantity()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getQuantity();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static LineItem parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static LineItem parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static LineItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static LineItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static LineItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static LineItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static LineItem parseFrom(InputStream inputStream) throws IOException {
                return (LineItem) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static LineItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (LineItem) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static LineItem parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (LineItem) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static LineItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (LineItem) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static LineItem parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (LineItem) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static LineItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (LineItem) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(LineItem lineItem) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(lineItem);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements LineItemOrBuilder {
                private int bitField0_;
                private long itemdefid_;
                private int quantity_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_LineItem_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_LineItem_fieldAccessorTable.ensureFieldAccessorsInitialized(LineItem.class, Builder.class);
                }

                private Builder() {
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.itemdefid_ = 0L;
                    this.quantity_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_LineItem_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public LineItem getDefaultInstanceForType() {
                    return LineItem.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public LineItem build() {
                    LineItem lineItemBuildPartial = buildPartial();
                    if (lineItemBuildPartial.isInitialized()) {
                        return lineItemBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) lineItemBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public LineItem buildPartial() {
                    LineItem lineItem = new LineItem(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(lineItem);
                    }
                    onBuilt();
                    return lineItem;
                }

                private void buildPartial0(LineItem lineItem) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        lineItem.itemdefid_ = this.itemdefid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        lineItem.quantity_ = this.quantity_;
                        i |= 2;
                    }
                    lineItem.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof LineItem) {
                        return mergeFrom((LineItem) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(LineItem lineItem) {
                    if (lineItem == LineItem.getDefaultInstance()) {
                        return this;
                    }
                    if (lineItem.hasItemdefid()) {
                        setItemdefid(lineItem.getItemdefid());
                    }
                    if (lineItem.hasQuantity()) {
                        setQuantity(lineItem.getQuantity());
                    }
                    mergeUnknownFields(lineItem.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    extensionRegistryLite.getClass();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 8) {
                                        this.itemdefid_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.quantity_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.unwrapIOException();
                            }
                        } catch (Throwable th) {
                            onChanged();
                            throw th;
                        }
                    }
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
                public boolean hasItemdefid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
                public long getItemdefid() {
                    return this.itemdefid_;
                }

                public Builder setItemdefid(long j) {
                    this.itemdefid_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearItemdefid() {
                    this.bitField0_ &= -2;
                    this.itemdefid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
                public boolean hasQuantity() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Request.LineItemOrBuilder
                public int getQuantity() {
                    return this.quantity_;
                }

                public Builder setQuantity(int i) {
                    this.quantity_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearQuantity() {
                    this.bitField0_ &= -3;
                    this.quantity_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static LineItem getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<LineItem> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<LineItem> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LineItem getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public int getLanguage() {
            return this.language_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public List<LineItem> getLineItemsList() {
            return this.lineItems_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public List<? extends LineItemOrBuilder> getLineItemsOrBuilderList() {
            return this.lineItems_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public int getLineItemsCount() {
            return this.lineItems_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public LineItem getLineItems(int i) {
            return this.lineItems_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
        public LineItemOrBuilder getLineItemsOrBuilder(int i) {
            return this.lineItems_.get(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.language_);
            }
            for (int i = 0; i < this.lineItems_.size(); i++) {
                codedOutputStream.writeMessage(3, this.lineItems_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(2, this.language_);
            }
            for (int i2 = 0; i2 < this.lineItems_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(3, this.lineItems_.get(i2));
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_PurchaseInit_Request)) {
                return super.equals(obj);
            }
            CInventory_PurchaseInit_Request cInventory_PurchaseInit_Request = (CInventory_PurchaseInit_Request) obj;
            if (hasAppid() != cInventory_PurchaseInit_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cInventory_PurchaseInit_Request.getAppid()) && hasLanguage() == cInventory_PurchaseInit_Request.hasLanguage()) {
                return (!hasLanguage() || getLanguage() == cInventory_PurchaseInit_Request.getLanguage()) && getLineItemsList().equals(cInventory_PurchaseInit_Request.getLineItemsList()) && getUnknownFields().equals(cInventory_PurchaseInit_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasLanguage()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLanguage();
            }
            if (getLineItemsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getLineItemsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_PurchaseInit_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_PurchaseInit_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_PurchaseInit_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_PurchaseInit_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_PurchaseInit_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_PurchaseInit_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseInit_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_PurchaseInit_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_PurchaseInit_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseInit_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_PurchaseInit_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_PurchaseInit_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseInit_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_PurchaseInit_Request cInventory_PurchaseInit_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_PurchaseInit_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_PurchaseInit_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int language_;
            private RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> lineItemsBuilder_;
            private List<LineItem> lineItems_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_PurchaseInit_Request.class, Builder.class);
            }

            private Builder() {
                this.lineItems_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.lineItems_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.language_ = 0;
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.lineItems_ = Collections.emptyList();
                } else {
                    this.lineItems_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_PurchaseInit_Request getDefaultInstanceForType() {
                return CInventory_PurchaseInit_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_PurchaseInit_Request build() {
                CInventory_PurchaseInit_Request cInventory_PurchaseInit_RequestBuildPartial = buildPartial();
                if (cInventory_PurchaseInit_RequestBuildPartial.isInitialized()) {
                    return cInventory_PurchaseInit_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_PurchaseInit_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_PurchaseInit_Request buildPartial() {
                CInventory_PurchaseInit_Request cInventory_PurchaseInit_Request = new CInventory_PurchaseInit_Request(this);
                buildPartialRepeatedFields(cInventory_PurchaseInit_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_PurchaseInit_Request);
                }
                onBuilt();
                return cInventory_PurchaseInit_Request;
            }

            private void buildPartialRepeatedFields(CInventory_PurchaseInit_Request cInventory_PurchaseInit_Request) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.lineItems_ = Collections.unmodifiableList(this.lineItems_);
                        this.bitField0_ &= -5;
                    }
                    cInventory_PurchaseInit_Request.lineItems_ = this.lineItems_;
                    return;
                }
                cInventory_PurchaseInit_Request.lineItems_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CInventory_PurchaseInit_Request cInventory_PurchaseInit_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_PurchaseInit_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_PurchaseInit_Request.language_ = this.language_;
                    i |= 2;
                }
                cInventory_PurchaseInit_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_PurchaseInit_Request) {
                    return mergeFrom((CInventory_PurchaseInit_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_PurchaseInit_Request cInventory_PurchaseInit_Request) {
                if (cInventory_PurchaseInit_Request == CInventory_PurchaseInit_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_PurchaseInit_Request.hasAppid()) {
                    setAppid(cInventory_PurchaseInit_Request.getAppid());
                }
                if (cInventory_PurchaseInit_Request.hasLanguage()) {
                    setLanguage(cInventory_PurchaseInit_Request.getLanguage());
                }
                if (this.lineItemsBuilder_ == null) {
                    if (!cInventory_PurchaseInit_Request.lineItems_.isEmpty()) {
                        if (this.lineItems_.isEmpty()) {
                            this.lineItems_ = cInventory_PurchaseInit_Request.lineItems_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureLineItemsIsMutable();
                            this.lineItems_.addAll(cInventory_PurchaseInit_Request.lineItems_);
                        }
                        onChanged();
                    }
                } else if (!cInventory_PurchaseInit_Request.lineItems_.isEmpty()) {
                    if (this.lineItemsBuilder_.isEmpty()) {
                        this.lineItemsBuilder_.dispose();
                        this.lineItemsBuilder_ = null;
                        this.lineItems_ = cInventory_PurchaseInit_Request.lineItems_;
                        this.bitField0_ &= -5;
                        this.lineItemsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetLineItemsFieldBuilder() : null;
                    } else {
                        this.lineItemsBuilder_.addAllMessages(cInventory_PurchaseInit_Request.lineItems_);
                    }
                }
                mergeUnknownFields(cInventory_PurchaseInit_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.language_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    LineItem lineItem = (LineItem) codedInputStream.readMessage(LineItem.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureLineItemsIsMutable();
                                        this.lineItems_.add(lineItem);
                                    } else {
                                        repeatedFieldBuilder.addMessage(lineItem);
                                    }
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public int getLanguage() {
                return this.language_;
            }

            public Builder setLanguage(int i) {
                this.language_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -3;
                this.language_ = 0;
                onChanged();
                return this;
            }

            private void ensureLineItemsIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.lineItems_ = new ArrayList(this.lineItems_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public List<LineItem> getLineItemsList() {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.lineItems_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public int getLineItemsCount() {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.lineItems_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public LineItem getLineItems(int i) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.lineItems_.get(i);
                }
                return (LineItem) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setLineItems(int i, LineItem lineItem) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    lineItem.getClass();
                    ensureLineItemsIsMutable();
                    this.lineItems_.set(i, lineItem);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, lineItem);
                }
                return this;
            }

            public Builder setLineItems(int i, LineItem.Builder builder) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLineItemsIsMutable();
                    this.lineItems_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addLineItems(LineItem lineItem) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    lineItem.getClass();
                    ensureLineItemsIsMutable();
                    this.lineItems_.add(lineItem);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(lineItem);
                }
                return this;
            }

            public Builder addLineItems(int i, LineItem lineItem) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    lineItem.getClass();
                    ensureLineItemsIsMutable();
                    this.lineItems_.add(i, lineItem);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, lineItem);
                }
                return this;
            }

            public Builder addLineItems(LineItem.Builder builder) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLineItemsIsMutable();
                    this.lineItems_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addLineItems(int i, LineItem.Builder builder) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLineItemsIsMutable();
                    this.lineItems_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllLineItems(Iterable<? extends LineItem> iterable) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLineItemsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.lineItems_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearLineItems() {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.lineItems_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeLineItems(int i) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLineItemsIsMutable();
                    this.lineItems_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public LineItem.Builder getLineItemsBuilder(int i) {
                return (LineItem.Builder) internalGetLineItemsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public LineItemOrBuilder getLineItemsOrBuilder(int i) {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.lineItems_.get(i);
                }
                return (LineItemOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_RequestOrBuilder
            public List<? extends LineItemOrBuilder> getLineItemsOrBuilderList() {
                RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> repeatedFieldBuilder = this.lineItemsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.lineItems_);
            }

            public LineItem.Builder addLineItemsBuilder() {
                return (LineItem.Builder) internalGetLineItemsFieldBuilder().addBuilder(LineItem.getDefaultInstance());
            }

            public LineItem.Builder addLineItemsBuilder(int i) {
                return (LineItem.Builder) internalGetLineItemsFieldBuilder().addBuilder(i, LineItem.getDefaultInstance());
            }

            public List<LineItem.Builder> getLineItemsBuilderList() {
                return internalGetLineItemsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<LineItem, LineItem.Builder, LineItemOrBuilder> internalGetLineItemsFieldBuilder() {
                if (this.lineItemsBuilder_ == null) {
                    this.lineItemsBuilder_ = new RepeatedFieldBuilder<>(this.lineItems_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.lineItems_ = null;
                }
                return this.lineItemsBuilder_;
            }
        }

        public static CInventory_PurchaseInit_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_PurchaseInit_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_PurchaseInit_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_PurchaseInit_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_PurchaseInit_Response extends GeneratedMessage implements CInventory_PurchaseInit_ResponseOrBuilder {
        private static final CInventory_PurchaseInit_Response DEFAULT_INSTANCE;
        public static final int ORDERID_FIELD_NUMBER = 1;
        private static final Parser<CInventory_PurchaseInit_Response> PARSER;
        public static final int TRANSID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long orderid_;
        private long transid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_PurchaseInit_Response.class.getName());
            DEFAULT_INSTANCE = new CInventory_PurchaseInit_Response();
            PARSER = new AbstractParser<CInventory_PurchaseInit_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_Response.1
                @Override // com.google.protobuf.Parser
                public CInventory_PurchaseInit_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_PurchaseInit_Response.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_PurchaseInit_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.orderid_ = 0L;
            this.transid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_PurchaseInit_Response() {
            this.orderid_ = 0L;
            this.transid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_PurchaseInit_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
        public boolean hasOrderid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
        public long getOrderid() {
            return this.orderid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
        public boolean hasTransid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
        public long getTransid() {
            return this.transid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt64(1, this.orderid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.transid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.orderid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.transid_);
            }
            int serializedSize = iComputeUInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_PurchaseInit_Response)) {
                return super.equals(obj);
            }
            CInventory_PurchaseInit_Response cInventory_PurchaseInit_Response = (CInventory_PurchaseInit_Response) obj;
            if (hasOrderid() != cInventory_PurchaseInit_Response.hasOrderid()) {
                return false;
            }
            if ((!hasOrderid() || getOrderid() == cInventory_PurchaseInit_Response.getOrderid()) && hasTransid() == cInventory_PurchaseInit_Response.hasTransid()) {
                return (!hasTransid() || getTransid() == cInventory_PurchaseInit_Response.getTransid()) && getUnknownFields().equals(cInventory_PurchaseInit_Response.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasOrderid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getOrderid());
            }
            if (hasTransid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getTransid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_PurchaseInit_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_PurchaseInit_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_PurchaseInit_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_PurchaseInit_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Response parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_PurchaseInit_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_PurchaseInit_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseInit_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_PurchaseInit_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_PurchaseInit_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseInit_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_PurchaseInit_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_PurchaseInit_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_PurchaseInit_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseInit_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_PurchaseInit_Response cInventory_PurchaseInit_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_PurchaseInit_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_PurchaseInit_ResponseOrBuilder {
            private int bitField0_;
            private long orderid_;
            private long transid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_PurchaseInit_Response.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.orderid_ = 0L;
                this.transid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseInit_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_PurchaseInit_Response getDefaultInstanceForType() {
                return CInventory_PurchaseInit_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_PurchaseInit_Response build() {
                CInventory_PurchaseInit_Response cInventory_PurchaseInit_ResponseBuildPartial = buildPartial();
                if (cInventory_PurchaseInit_ResponseBuildPartial.isInitialized()) {
                    return cInventory_PurchaseInit_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_PurchaseInit_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_PurchaseInit_Response buildPartial() {
                CInventory_PurchaseInit_Response cInventory_PurchaseInit_Response = new CInventory_PurchaseInit_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_PurchaseInit_Response);
                }
                onBuilt();
                return cInventory_PurchaseInit_Response;
            }

            private void buildPartial0(CInventory_PurchaseInit_Response cInventory_PurchaseInit_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_PurchaseInit_Response.orderid_ = this.orderid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_PurchaseInit_Response.transid_ = this.transid_;
                    i |= 2;
                }
                cInventory_PurchaseInit_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_PurchaseInit_Response) {
                    return mergeFrom((CInventory_PurchaseInit_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_PurchaseInit_Response cInventory_PurchaseInit_Response) {
                if (cInventory_PurchaseInit_Response == CInventory_PurchaseInit_Response.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_PurchaseInit_Response.hasOrderid()) {
                    setOrderid(cInventory_PurchaseInit_Response.getOrderid());
                }
                if (cInventory_PurchaseInit_Response.hasTransid()) {
                    setTransid(cInventory_PurchaseInit_Response.getTransid());
                }
                mergeUnknownFields(cInventory_PurchaseInit_Response.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.orderid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.transid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
            public boolean hasOrderid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
            public long getOrderid() {
                return this.orderid_;
            }

            public Builder setOrderid(long j) {
                this.orderid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearOrderid() {
                this.bitField0_ &= -2;
                this.orderid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
            public boolean hasTransid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseInit_ResponseOrBuilder
            public long getTransid() {
                return this.transid_;
            }

            public Builder setTransid(long j) {
                this.transid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearTransid() {
                this.bitField0_ &= -3;
                this.transid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_PurchaseInit_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_PurchaseInit_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_PurchaseInit_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_PurchaseInit_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_PurchaseFinalize_Request extends GeneratedMessage implements CInventory_PurchaseFinalize_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventory_PurchaseFinalize_Request DEFAULT_INSTANCE;
        public static final int LANGUAGE_FIELD_NUMBER = 2;
        public static final int ORDERID_FIELD_NUMBER = 3;
        private static final Parser<CInventory_PurchaseFinalize_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private int language_;
        private byte memoizedIsInitialized;
        private long orderid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_PurchaseFinalize_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_PurchaseFinalize_Request();
            PARSER = new AbstractParser<CInventory_PurchaseFinalize_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_PurchaseFinalize_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_PurchaseFinalize_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_PurchaseFinalize_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.language_ = 0;
            this.orderid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_PurchaseFinalize_Request() {
            this.appid_ = 0;
            this.language_ = 0;
            this.orderid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseFinalize_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseFinalize_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_PurchaseFinalize_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
        public int getLanguage() {
            return this.language_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
        public boolean hasOrderid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
        public long getOrderid() {
            return this.orderid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.language_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.orderid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(2, this.language_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(3, this.orderid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_PurchaseFinalize_Request)) {
                return super.equals(obj);
            }
            CInventory_PurchaseFinalize_Request cInventory_PurchaseFinalize_Request = (CInventory_PurchaseFinalize_Request) obj;
            if (hasAppid() != cInventory_PurchaseFinalize_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cInventory_PurchaseFinalize_Request.getAppid()) || hasLanguage() != cInventory_PurchaseFinalize_Request.hasLanguage()) {
                return false;
            }
            if ((!hasLanguage() || getLanguage() == cInventory_PurchaseFinalize_Request.getLanguage()) && hasOrderid() == cInventory_PurchaseFinalize_Request.hasOrderid()) {
                return (!hasOrderid() || getOrderid() == cInventory_PurchaseFinalize_Request.getOrderid()) && getUnknownFields().equals(cInventory_PurchaseFinalize_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasLanguage()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLanguage();
            }
            if (hasOrderid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getOrderid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_PurchaseFinalize_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseFinalize_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_PurchaseFinalize_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_PurchaseFinalize_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_PurchaseFinalize_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseFinalize_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_PurchaseFinalize_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_PurchaseFinalize_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_PurchaseFinalize_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_PurchaseFinalize_Request cInventory_PurchaseFinalize_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_PurchaseFinalize_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_PurchaseFinalize_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int language_;
            private long orderid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseFinalize_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseFinalize_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_PurchaseFinalize_Request.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.language_ = 0;
                this.orderid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_PurchaseFinalize_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_PurchaseFinalize_Request getDefaultInstanceForType() {
                return CInventory_PurchaseFinalize_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_PurchaseFinalize_Request build() {
                CInventory_PurchaseFinalize_Request cInventory_PurchaseFinalize_RequestBuildPartial = buildPartial();
                if (cInventory_PurchaseFinalize_RequestBuildPartial.isInitialized()) {
                    return cInventory_PurchaseFinalize_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_PurchaseFinalize_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_PurchaseFinalize_Request buildPartial() {
                CInventory_PurchaseFinalize_Request cInventory_PurchaseFinalize_Request = new CInventory_PurchaseFinalize_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_PurchaseFinalize_Request);
                }
                onBuilt();
                return cInventory_PurchaseFinalize_Request;
            }

            private void buildPartial0(CInventory_PurchaseFinalize_Request cInventory_PurchaseFinalize_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_PurchaseFinalize_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_PurchaseFinalize_Request.language_ = this.language_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cInventory_PurchaseFinalize_Request.orderid_ = this.orderid_;
                    i |= 4;
                }
                cInventory_PurchaseFinalize_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_PurchaseFinalize_Request) {
                    return mergeFrom((CInventory_PurchaseFinalize_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_PurchaseFinalize_Request cInventory_PurchaseFinalize_Request) {
                if (cInventory_PurchaseFinalize_Request == CInventory_PurchaseFinalize_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_PurchaseFinalize_Request.hasAppid()) {
                    setAppid(cInventory_PurchaseFinalize_Request.getAppid());
                }
                if (cInventory_PurchaseFinalize_Request.hasLanguage()) {
                    setLanguage(cInventory_PurchaseFinalize_Request.getLanguage());
                }
                if (cInventory_PurchaseFinalize_Request.hasOrderid()) {
                    setOrderid(cInventory_PurchaseFinalize_Request.getOrderid());
                }
                mergeUnknownFields(cInventory_PurchaseFinalize_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.language_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.orderid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
            public int getLanguage() {
                return this.language_;
            }

            public Builder setLanguage(int i) {
                this.language_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -3;
                this.language_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
            public boolean hasOrderid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_PurchaseFinalize_RequestOrBuilder
            public long getOrderid() {
                return this.orderid_;
            }

            public Builder setOrderid(long j) {
                this.orderid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearOrderid() {
                this.bitField0_ &= -5;
                this.orderid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CInventory_PurchaseFinalize_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_PurchaseFinalize_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_PurchaseFinalize_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_PurchaseFinalize_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventory_InspectItem_Request extends GeneratedMessage implements CInventory_InspectItem_RequestOrBuilder {
        private static final CInventory_InspectItem_Request DEFAULT_INSTANCE;
        public static final int ITEMDEFID_FIELD_NUMBER = 1;
        public static final int ITEMID_FIELD_NUMBER = 2;
        private static final Parser<CInventory_InspectItem_Request> PARSER;
        public static final int TAGS_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long itemdefid_;
        private long itemid_;
        private byte memoizedIsInitialized;
        private volatile Object tags_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventory_InspectItem_Request.class.getName());
            DEFAULT_INSTANCE = new CInventory_InspectItem_Request();
            PARSER = new AbstractParser<CInventory_InspectItem_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_Request.1
                @Override // com.google.protobuf.Parser
                public CInventory_InspectItem_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventory_InspectItem_Request.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventory_InspectItem_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.itemdefid_ = 0L;
            this.itemid_ = 0L;
            this.tags_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventory_InspectItem_Request() {
            this.itemdefid_ = 0L;
            this.itemid_ = 0L;
            this.tags_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.tags_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_InspectItem_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventory_InspectItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_InspectItem_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public boolean hasItemdefid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public long getItemdefid() {
            return this.itemdefid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public boolean hasItemid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public long getItemid() {
            return this.itemid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public boolean hasTags() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public String getTags() {
            Object obj = this.tags_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tags_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
        public ByteString getTagsBytes() {
            Object obj = this.tags_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tags_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt64(1, this.itemdefid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.itemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.tags_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.itemdefid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeFixed64Size(2, this.itemid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += GeneratedMessage.computeStringSize(3, this.tags_);
            }
            int serializedSize = iComputeUInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventory_InspectItem_Request)) {
                return super.equals(obj);
            }
            CInventory_InspectItem_Request cInventory_InspectItem_Request = (CInventory_InspectItem_Request) obj;
            if (hasItemdefid() != cInventory_InspectItem_Request.hasItemdefid()) {
                return false;
            }
            if ((hasItemdefid() && getItemdefid() != cInventory_InspectItem_Request.getItemdefid()) || hasItemid() != cInventory_InspectItem_Request.hasItemid()) {
                return false;
            }
            if ((!hasItemid() || getItemid() == cInventory_InspectItem_Request.getItemid()) && hasTags() == cInventory_InspectItem_Request.hasTags()) {
                return (!hasTags() || getTags().equals(cInventory_InspectItem_Request.getTags())) && getUnknownFields().equals(cInventory_InspectItem_Request.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasItemdefid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getItemdefid());
            }
            if (hasItemid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getItemid());
            }
            if (hasTags()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTags().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventory_InspectItem_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventory_InspectItem_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventory_InspectItem_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventory_InspectItem_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventory_InspectItem_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventory_InspectItem_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventory_InspectItem_Request parseFrom(InputStream inputStream) throws IOException {
            return (CInventory_InspectItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventory_InspectItem_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_InspectItem_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_InspectItem_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventory_InspectItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventory_InspectItem_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_InspectItem_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventory_InspectItem_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventory_InspectItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventory_InspectItem_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventory_InspectItem_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventory_InspectItem_Request cInventory_InspectItem_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventory_InspectItem_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventory_InspectItem_RequestOrBuilder {
            private int bitField0_;
            private long itemdefid_;
            private long itemid_;
            private Object tags_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_InspectItem_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_InspectItem_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventory_InspectItem_Request.class, Builder.class);
            }

            private Builder() {
                this.tags_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.tags_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.itemdefid_ = 0L;
                this.itemid_ = 0L;
                this.tags_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventory_InspectItem_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventory_InspectItem_Request getDefaultInstanceForType() {
                return CInventory_InspectItem_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_InspectItem_Request build() {
                CInventory_InspectItem_Request cInventory_InspectItem_RequestBuildPartial = buildPartial();
                if (cInventory_InspectItem_RequestBuildPartial.isInitialized()) {
                    return cInventory_InspectItem_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventory_InspectItem_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventory_InspectItem_Request buildPartial() {
                CInventory_InspectItem_Request cInventory_InspectItem_Request = new CInventory_InspectItem_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventory_InspectItem_Request);
                }
                onBuilt();
                return cInventory_InspectItem_Request;
            }

            private void buildPartial0(CInventory_InspectItem_Request cInventory_InspectItem_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventory_InspectItem_Request.itemdefid_ = this.itemdefid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cInventory_InspectItem_Request.itemid_ = this.itemid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cInventory_InspectItem_Request.tags_ = this.tags_;
                    i |= 4;
                }
                cInventory_InspectItem_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventory_InspectItem_Request) {
                    return mergeFrom((CInventory_InspectItem_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventory_InspectItem_Request cInventory_InspectItem_Request) {
                if (cInventory_InspectItem_Request == CInventory_InspectItem_Request.getDefaultInstance()) {
                    return this;
                }
                if (cInventory_InspectItem_Request.hasItemdefid()) {
                    setItemdefid(cInventory_InspectItem_Request.getItemdefid());
                }
                if (cInventory_InspectItem_Request.hasItemid()) {
                    setItemid(cInventory_InspectItem_Request.getItemid());
                }
                if (cInventory_InspectItem_Request.hasTags()) {
                    this.tags_ = cInventory_InspectItem_Request.tags_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cInventory_InspectItem_Request.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.itemdefid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.itemid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.tags_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public boolean hasItemdefid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public long getItemdefid() {
                return this.itemdefid_;
            }

            public Builder setItemdefid(long j) {
                this.itemdefid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearItemdefid() {
                this.bitField0_ &= -2;
                this.itemdefid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public boolean hasItemid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public long getItemid() {
                return this.itemid_;
            }

            public Builder setItemid(long j) {
                this.itemid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearItemid() {
                this.bitField0_ &= -3;
                this.itemid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public boolean hasTags() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public String getTags() {
                Object obj = this.tags_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.tags_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventory_InspectItem_RequestOrBuilder
            public ByteString getTagsBytes() {
                Object obj = this.tags_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tags_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTags(String str) {
                str.getClass();
                this.tags_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearTags() {
                this.tags_ = CInventory_InspectItem_Request.getDefaultInstance().getTags();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setTagsBytes(ByteString byteString) {
                byteString.getClass();
                this.tags_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CInventory_InspectItem_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventory_InspectItem_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventory_InspectItem_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventory_InspectItem_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CInventoryClient_NewItems_Notification extends GeneratedMessage implements CInventoryClient_NewItems_NotificationOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CInventoryClient_NewItems_Notification DEFAULT_INSTANCE;
        public static final int INVENTORY_RESPONSE_FIELD_NUMBER = 2;
        private static final Parser<CInventoryClient_NewItems_Notification> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private CInventory_Response inventoryResponse_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CInventoryClient_NewItems_Notification.class.getName());
            DEFAULT_INSTANCE = new CInventoryClient_NewItems_Notification();
            PARSER = new AbstractParser<CInventoryClient_NewItems_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_Notification.1
                @Override // com.google.protobuf.Parser
                public CInventoryClient_NewItems_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CInventoryClient_NewItems_Notification.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CInventoryClient_NewItems_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CInventoryClient_NewItems_Notification() {
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesInventorySteamclient.internal_static_CInventoryClient_NewItems_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesInventorySteamclient.internal_static_CInventoryClient_NewItems_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventoryClient_NewItems_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
        public boolean hasInventoryResponse() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
        public CInventory_Response getInventoryResponse() {
            CInventory_Response cInventory_Response = this.inventoryResponse_;
            return cInventory_Response == null ? CInventory_Response.getDefaultInstance() : cInventory_Response;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
        public CInventory_ResponseOrBuilder getInventoryResponseOrBuilder() {
            CInventory_Response cInventory_Response = this.inventoryResponse_;
            return cInventory_Response == null ? CInventory_Response.getDefaultInstance() : cInventory_Response;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(2, getInventoryResponse());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(2, getInventoryResponse());
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CInventoryClient_NewItems_Notification)) {
                return super.equals(obj);
            }
            CInventoryClient_NewItems_Notification cInventoryClient_NewItems_Notification = (CInventoryClient_NewItems_Notification) obj;
            if (hasAppid() != cInventoryClient_NewItems_Notification.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cInventoryClient_NewItems_Notification.getAppid()) && hasInventoryResponse() == cInventoryClient_NewItems_Notification.hasInventoryResponse()) {
                return (!hasInventoryResponse() || getInventoryResponse().equals(cInventoryClient_NewItems_Notification.getInventoryResponse())) && getUnknownFields().equals(cInventoryClient_NewItems_Notification.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasInventoryResponse()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getInventoryResponse().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CInventoryClient_NewItems_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CInventoryClient_NewItems_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventoryClient_NewItems_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventoryClient_NewItems_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CInventoryClient_NewItems_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CInventoryClient_NewItems_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventoryClient_NewItems_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CInventoryClient_NewItems_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CInventoryClient_NewItems_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CInventoryClient_NewItems_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CInventoryClient_NewItems_Notification cInventoryClient_NewItems_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cInventoryClient_NewItems_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CInventoryClient_NewItems_NotificationOrBuilder {
            private int appid_;
            private int bitField0_;
            private SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> inventoryResponseBuilder_;
            private CInventory_Response inventoryResponse_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesInventorySteamclient.internal_static_CInventoryClient_NewItems_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesInventorySteamclient.internal_static_CInventoryClient_NewItems_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CInventoryClient_NewItems_Notification.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetInventoryResponseFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.inventoryResponse_ = null;
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.inventoryResponseBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesInventorySteamclient.internal_static_CInventoryClient_NewItems_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CInventoryClient_NewItems_Notification getDefaultInstanceForType() {
                return CInventoryClient_NewItems_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventoryClient_NewItems_Notification build() {
                CInventoryClient_NewItems_Notification cInventoryClient_NewItems_NotificationBuildPartial = buildPartial();
                if (cInventoryClient_NewItems_NotificationBuildPartial.isInitialized()) {
                    return cInventoryClient_NewItems_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cInventoryClient_NewItems_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CInventoryClient_NewItems_Notification buildPartial() {
                CInventoryClient_NewItems_Notification cInventoryClient_NewItems_Notification = new CInventoryClient_NewItems_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cInventoryClient_NewItems_Notification);
                }
                onBuilt();
                return cInventoryClient_NewItems_Notification;
            }

            private void buildPartial0(CInventoryClient_NewItems_Notification cInventoryClient_NewItems_Notification) {
                int i;
                CInventory_Response cInventory_Response;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cInventoryClient_NewItems_Notification.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                    if (singleFieldBuilder == null) {
                        cInventory_Response = this.inventoryResponse_;
                    } else {
                        cInventory_Response = (CInventory_Response) singleFieldBuilder.build();
                    }
                    cInventoryClient_NewItems_Notification.inventoryResponse_ = cInventory_Response;
                    i |= 2;
                }
                cInventoryClient_NewItems_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CInventoryClient_NewItems_Notification) {
                    return mergeFrom((CInventoryClient_NewItems_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CInventoryClient_NewItems_Notification cInventoryClient_NewItems_Notification) {
                if (cInventoryClient_NewItems_Notification == CInventoryClient_NewItems_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cInventoryClient_NewItems_Notification.hasAppid()) {
                    setAppid(cInventoryClient_NewItems_Notification.getAppid());
                }
                if (cInventoryClient_NewItems_Notification.hasInventoryResponse()) {
                    mergeInventoryResponse(cInventoryClient_NewItems_Notification.getInventoryResponse());
                }
                mergeUnknownFields(cInventoryClient_NewItems_Notification.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetInventoryResponseFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
            public boolean hasInventoryResponse() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
            public CInventory_Response getInventoryResponse() {
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder == null) {
                    CInventory_Response cInventory_Response = this.inventoryResponse_;
                    return cInventory_Response == null ? CInventory_Response.getDefaultInstance() : cInventory_Response;
                }
                return (CInventory_Response) singleFieldBuilder.getMessage();
            }

            public Builder setInventoryResponse(CInventory_Response cInventory_Response) {
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder == null) {
                    cInventory_Response.getClass();
                    this.inventoryResponse_ = cInventory_Response;
                } else {
                    singleFieldBuilder.setMessage(cInventory_Response);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setInventoryResponse(CInventory_Response.Builder builder) {
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder == null) {
                    this.inventoryResponse_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeInventoryResponse(CInventory_Response cInventory_Response) {
                CInventory_Response cInventory_Response2;
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (cInventory_Response2 = this.inventoryResponse_) != null && cInventory_Response2 != CInventory_Response.getDefaultInstance()) {
                        getInventoryResponseBuilder().mergeFrom(cInventory_Response);
                    } else {
                        this.inventoryResponse_ = cInventory_Response;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cInventory_Response);
                }
                if (this.inventoryResponse_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearInventoryResponse() {
                this.bitField0_ &= -3;
                this.inventoryResponse_ = null;
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.inventoryResponseBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CInventory_Response.Builder getInventoryResponseBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (CInventory_Response.Builder) internalGetInventoryResponseFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesInventorySteamclient.CInventoryClient_NewItems_NotificationOrBuilder
            public CInventory_ResponseOrBuilder getInventoryResponseOrBuilder() {
                SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> singleFieldBuilder = this.inventoryResponseBuilder_;
                if (singleFieldBuilder != null) {
                    return (CInventory_ResponseOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CInventory_Response cInventory_Response = this.inventoryResponse_;
                return cInventory_Response == null ? CInventory_Response.getDefaultInstance() : cInventory_Response;
            }

            private SingleFieldBuilder<CInventory_Response, CInventory_Response.Builder, CInventory_ResponseOrBuilder> internalGetInventoryResponseFieldBuilder() {
                if (this.inventoryResponseBuilder_ == null) {
                    this.inventoryResponseBuilder_ = new SingleFieldBuilder<>(getInventoryResponse(), getParentForChildren(), isClean());
                    this.inventoryResponse_ = null;
                }
                return this.inventoryResponseBuilder_;
            }
        }

        public static CInventoryClient_NewItems_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CInventoryClient_NewItems_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CInventoryClient_NewItems_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CInventoryClient_NewItems_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
