package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.enums.EAccountType;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.handlers.steamfriends.FriendMessage;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendMsgHistoryCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendMsgHistoryCallback extends CallbackMsg {
    private final List<FriendMessage> messages;
    private final EResult result;
    private final SteamID steamID;

    public FriendMsgHistoryCallback(SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.Builder msg, EUniverse universe) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(universe, "universe");
        EResult eResultFrom = EResult.from(msg.getSuccess());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.steamID = new SteamID(msg.getSteamid());
        List<SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessage> messagesList = msg.getMessagesList();
        Intrinsics.checkNotNullExpressionValue(messagesList, "getMessagesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(messagesList, 10));
        for (SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessage friendMessage : messagesList) {
            SteamID steamID = new SteamID(friendMessage.getAccountid(), universe, EAccountType.Individual);
            Date date = new Date(((long) friendMessage.getTimestamp()) * 1000);
            boolean unread = friendMessage.getUnread();
            String message = friendMessage.getMessage();
            Intrinsics.checkNotNullExpressionValue(message, "getMessage(...)");
            arrayList.add(new FriendMessage(steamID, unread, message, date));
        }
        this.messages = arrayList;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final List<FriendMessage> getMessages() {
        return this.messages;
    }
}
