package in.dragonbra.javasteam.steam.handlers.steamnotifications.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommentNotificationsCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CommentNotificationsCallback extends CallbackMsg {
    private final int commentCount;
    private final int commentOwnerCount;
    private final int commentSubscriptionsCount;

    public CommentNotificationsCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver2.CMsgClientCommentNotifications.Builder builder = (SteammessagesClientserver2.CMsgClientCommentNotifications.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientCommentNotifications.class, packetMsg).getBody();
        this.commentCount = builder.getCountNewComments();
        this.commentOwnerCount = builder.getCountNewCommentsOwner();
        this.commentSubscriptionsCount = builder.getCountNewCommentsSubscriptions();
    }

    public final int getCommentCount() {
        return this.commentCount;
    }

    public final int getCommentOwnerCount() {
        return this.commentOwnerCount;
    }

    public final int getCommentSubscriptionsCount() {
        return this.commentSubscriptionsCount;
    }
}
