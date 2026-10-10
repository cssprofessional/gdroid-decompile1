package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.util.Strings;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: CheckAppBetaPasswordCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CheckAppBetaPasswordCallback extends CallbackMsg {
    private final Map<String, byte[]> betaPasswords;
    private final EResult result;

    public CheckAppBetaPasswordCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.class, packetMsg);
        SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.Builder builder = (SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        List<SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPassword> betapasswordsList = builder.getBetapasswordsList();
        Intrinsics.checkNotNullExpressionValue(betapasswordsList, "getBetapasswordsList(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(betapasswordsList, 10)), 16));
        for (SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPassword betaPassword : betapasswordsList) {
            Pair pair = TuplesKt.to(betaPassword.getBetaname(), Strings.decodeHex(betaPassword.getBetapassword()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.betaPasswords = linkedHashMap;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final Map<String, byte[]> getBetaPasswords() {
        return this.betaPasswords;
    }
}
