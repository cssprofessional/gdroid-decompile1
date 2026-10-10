package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.handlers.steamfriends.NameTableInstance;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AliasHistoryCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AliasHistoryCallback extends CallbackMsg {
    private final List<NameTableInstance> responses;

    public AliasHistoryCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.class, packetMsg);
        setJobID(clientMsgProtobuf.getTargetJobID());
        List<SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.NameTableInstance> responsesList = ((SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.Builder) clientMsgProtobuf.getBody()).getResponsesList();
        Intrinsics.checkNotNullExpressionValue(responsesList, "getResponsesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(responsesList, 10));
        for (SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.NameTableInstance nameTableInstance : responsesList) {
            Intrinsics.checkNotNull(nameTableInstance);
            arrayList.add(new NameTableInstance(nameTableInstance));
        }
        this.responses = arrayList;
    }

    public final List<NameTableInstance> getResponses() {
        return this.responses;
    }
}
