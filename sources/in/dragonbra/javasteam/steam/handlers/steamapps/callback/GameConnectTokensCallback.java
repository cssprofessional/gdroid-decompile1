package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GameConnectTokensCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GameConnectTokensCallback extends CallbackMsg {
    private final List<byte[]> tokens;
    private final int tokensToKeep;

    public GameConnectTokensCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver.CMsgClientGameConnectTokens.Builder builder = (SteammessagesClientserver.CMsgClientGameConnectTokens.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientGameConnectTokens.class, packetMsg).getBody();
        this.tokensToKeep = builder.getMaxTokensToKeep();
        List<ByteString> tokensList = builder.getTokensList();
        Intrinsics.checkNotNullExpressionValue(tokensList, "getTokensList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(tokensList, 10));
        Iterator<T> it = tokensList.iterator();
        while (it.hasNext()) {
            arrayList.add(((ByteString) it.next()).toByteArray());
        }
        this.tokens = arrayList;
    }

    public final int getTokensToKeep() {
        return this.tokensToKeep;
    }

    public final List<byte[]> getTokens() {
        return this.tokens;
    }
}
