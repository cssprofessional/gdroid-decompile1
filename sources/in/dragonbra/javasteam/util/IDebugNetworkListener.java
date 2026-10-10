package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.enums.EMsg;

/* JADX INFO: loaded from: classes2.dex */
public interface IDebugNetworkListener {
    void onIncomingNetworkMessage(EMsg eMsg, byte[] bArr);

    void onOutgoingNetworkMessage(EMsg eMsg, byte[] bArr);
}
