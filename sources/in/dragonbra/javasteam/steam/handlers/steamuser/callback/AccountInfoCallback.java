package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAccountFlags;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.EnumSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccountInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AccountInfoCallback extends CallbackMsg {
    private final EnumSet<EAccountFlags> accountFlags;
    private final int countAuthedComputers;
    private final String country;
    private final long facebookID;
    private final String facebookName;
    private final String personaName;

    public AccountInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserverLogin.CMsgClientAccountInfo.Builder builder = (SteammessagesClientserverLogin.CMsgClientAccountInfo.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientAccountInfo.class, packetMsg).getBody();
        String personaName = builder.getPersonaName();
        Intrinsics.checkNotNullExpressionValue(personaName, "getPersonaName(...)");
        this.personaName = personaName;
        String ipCountry = builder.getIpCountry();
        Intrinsics.checkNotNullExpressionValue(ipCountry, "getIpCountry(...)");
        this.country = ipCountry;
        this.countAuthedComputers = builder.getCountAuthedComputers();
        EnumSet<EAccountFlags> enumSetFrom = EAccountFlags.from(builder.getAccountFlags());
        Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
        this.accountFlags = enumSetFrom;
        this.facebookID = builder.getFacebookId();
        String facebookName = builder.getFacebookName();
        Intrinsics.checkNotNullExpressionValue(facebookName, "getFacebookName(...)");
        this.facebookName = facebookName;
    }

    public final String getPersonaName() {
        return this.personaName;
    }

    public final String getCountry() {
        return this.country;
    }

    public final int getCountAuthedComputers() {
        return this.countAuthedComputers;
    }

    public final EnumSet<EAccountFlags> getAccountFlags() {
        return this.accountFlags;
    }

    public final long getFacebookID() {
        return this.facebookID;
    }

    public final String getFacebookName() {
        return this.facebookName;
    }
}
