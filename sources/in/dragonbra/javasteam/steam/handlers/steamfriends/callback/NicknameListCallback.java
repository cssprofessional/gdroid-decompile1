package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.handlers.steamfriends.PlayerNickname;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NicknameListCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NicknameListCallback extends CallbackMsg {
    private final List<PlayerNickname> nicknames;

    public NicknameListCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        List<SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNickname> nicknamesList = ((SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.class, packetMsg).getBody()).getNicknamesList();
        Intrinsics.checkNotNullExpressionValue(nicknamesList, "getNicknamesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(nicknamesList, 10));
        for (SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNickname playerNickname : nicknamesList) {
            Intrinsics.checkNotNull(playerNickname);
            arrayList.add(new PlayerNickname(playerNickname));
        }
        this.nicknames = arrayList;
    }

    public final List<PlayerNickname> getNicknames() {
        return this.nicknames;
    }
}
