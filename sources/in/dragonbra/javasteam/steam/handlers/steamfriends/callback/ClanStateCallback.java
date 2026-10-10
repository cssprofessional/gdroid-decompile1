package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAccountFlags;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.handlers.steamfriends.Event;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClanStateCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClanStateCallback extends CallbackMsg {
    private final EnumSet<EAccountFlags> accountFlags;
    private final List<Event> announcements;
    private byte[] avatarHash;
    private final SteamID clanID;
    private String clanName;
    private final List<Event> events;
    private final boolean isChatRoomPrivate;
    private int memberChattingCount;
    private int memberInGameCount;
    private int memberOnlineCount;
    private int memberTotalCount;

    public ClanStateCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.avatarHash = new byte[0];
        SteammessagesClientserver.CMsgClientClanState.Builder builder = (SteammessagesClientserver.CMsgClientClanState.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientClanState.class, packetMsg).getBody();
        this.clanID = new SteamID(builder.getSteamidClan());
        EnumSet<EAccountFlags> enumSetFrom = EAccountFlags.from(builder.getClanAccountFlags());
        Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
        this.accountFlags = enumSetFrom;
        this.isChatRoomPrivate = builder.getChatRoomPrivate();
        if (builder.hasNameInfo()) {
            this.clanName = builder.getNameInfo().getClanName();
            byte[] byteArray = builder.getNameInfo().getShaAvatar().toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
            this.avatarHash = byteArray;
        }
        if (builder.hasUserCounts()) {
            this.memberTotalCount = builder.getUserCounts().getMembers();
            this.memberOnlineCount = builder.getUserCounts().getOnline();
            this.memberChattingCount = builder.getUserCounts().getChatting();
            this.memberInGameCount = builder.getUserCounts().getInGame();
        }
        List<SteammessagesClientserver.CMsgClientClanState.Event> eventsList = builder.getEventsList();
        Intrinsics.checkNotNullExpressionValue(eventsList, "getEventsList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(eventsList, 10));
        for (SteammessagesClientserver.CMsgClientClanState.Event event : eventsList) {
            Intrinsics.checkNotNull(event);
            arrayList.add(new Event(event));
        }
        this.events = arrayList;
        List<SteammessagesClientserver.CMsgClientClanState.Event> announcementsList = builder.getAnnouncementsList();
        Intrinsics.checkNotNullExpressionValue(announcementsList, "getAnnouncementsList(...)");
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(announcementsList, 10));
        for (SteammessagesClientserver.CMsgClientClanState.Event event2 : announcementsList) {
            Intrinsics.checkNotNull(event2);
            arrayList2.add(new Event(event2));
        }
        this.announcements = arrayList2;
    }

    public final SteamID getClanID() {
        return this.clanID;
    }

    public final EnumSet<EAccountFlags> getAccountFlags() {
        return this.accountFlags;
    }

    public final boolean isChatRoomPrivate() {
        return this.isChatRoomPrivate;
    }

    public final String getClanName() {
        return this.clanName;
    }

    public final byte[] getAvatarHash() {
        return this.avatarHash;
    }

    public final int getMemberTotalCount() {
        return this.memberTotalCount;
    }

    public final int getMemberOnlineCount() {
        return this.memberOnlineCount;
    }

    public final int getMemberChattingCount() {
        return this.memberChattingCount;
    }

    public final int getMemberInGameCount() {
        return this.memberInGameCount;
    }

    public final List<Event> getEvents() {
        return this.events;
    }

    public final List<Event> getAnnouncements() {
        return this.announcements;
    }
}
