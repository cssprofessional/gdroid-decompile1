package in.dragonbra.javasteam.steam.handlers.steamnotifications.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemAnnouncementsCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ItemAnnouncementsCallback extends CallbackMsg {
    private final int count;

    public ItemAnnouncementsCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.count = ((SteammessagesClientserver2.CMsgClientItemAnnouncements.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientItemAnnouncements.class, packetMsg).getBody()).getCountNewItems();
    }

    public final int getCount() {
        return this.count;
    }
}
