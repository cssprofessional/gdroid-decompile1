package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmailAddrInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EmailAddrInfoCallback extends CallbackMsg {
    private final String emailAddress;
    private final boolean isEmailValidated;

    public EmailAddrInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver2.CMsgClientEmailAddrInfo.Builder builder = (SteammessagesClientserver2.CMsgClientEmailAddrInfo.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientEmailAddrInfo.class, packetMsg).getBody();
        String emailAddress = builder.getEmailAddress();
        Intrinsics.checkNotNullExpressionValue(emailAddress, "getEmailAddress(...)");
        this.emailAddress = emailAddress;
        this.isEmailValidated = builder.getEmailIsValidated();
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final boolean isEmailValidated() {
        return this.isEmailValidated;
    }
}
