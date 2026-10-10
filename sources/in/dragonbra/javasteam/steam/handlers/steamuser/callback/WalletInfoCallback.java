package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.ECurrencyCode;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WalletInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WalletInfoCallback extends CallbackMsg {
    private final int balance;
    private final int balanceDelayed;
    private final ECurrencyCode currency;
    private final boolean isHasWallet;
    private final long longBalance;
    private final long longBalanceDelayed;

    public WalletInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver.CMsgClientWalletInfoUpdate.Builder builder = (SteammessagesClientserver.CMsgClientWalletInfoUpdate.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientWalletInfoUpdate.class, packetMsg).getBody();
        this.isHasWallet = builder.getHasWallet();
        this.currency = ECurrencyCode.from(builder.getCurrency());
        this.balance = builder.getBalance();
        this.balanceDelayed = builder.getBalanceDelayed();
        this.longBalance = builder.getBalance64();
        this.longBalanceDelayed = builder.getBalance64Delayed();
    }

    public final boolean isHasWallet() {
        return this.isHasWallet;
    }

    public final ECurrencyCode getCurrency() {
        return this.currency;
    }

    public final int getBalance() {
        return this.balance;
    }

    public final int getBalanceDelayed() {
        return this.balanceDelayed;
    }

    public final long getLongBalance() {
        return this.longBalance;
    }

    public final long getLongBalanceDelayed() {
        return this.longBalanceDelayed;
    }
}
