package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: PICSTokensCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PICSTokensCallback extends CallbackMsg {
    private final Map<Integer, Long> appTokens;
    private final List<Integer> appTokensDenied;
    private final Map<Integer, Long> packageTokens;
    private final List<Integer> packageTokensDenied;

    public PICSTokensCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.class, packetMsg);
        SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.Builder builder = (SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        List<Integer> packageDeniedTokensList = builder.getPackageDeniedTokensList();
        Intrinsics.checkNotNullExpressionValue(packageDeniedTokensList, "getPackageDeniedTokensList(...)");
        this.packageTokensDenied = packageDeniedTokensList;
        List<Integer> appDeniedTokensList = builder.getAppDeniedTokensList();
        Intrinsics.checkNotNullExpressionValue(appDeniedTokensList, "getAppDeniedTokensList(...)");
        this.appTokensDenied = appDeniedTokensList;
        List<SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageToken> packageAccessTokensList = builder.getPackageAccessTokensList();
        Intrinsics.checkNotNullExpressionValue(packageAccessTokensList, "getPackageAccessTokensList(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(packageAccessTokensList, 10)), 16));
        for (SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.PackageToken packageToken : packageAccessTokensList) {
            Pair pair = TuplesKt.to(Integer.valueOf(packageToken.getPackageid()), Long.valueOf(packageToken.getAccessToken()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.packageTokens = linkedHashMap;
        List<SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppToken> appAccessTokensList = builder.getAppAccessTokensList();
        Intrinsics.checkNotNullExpressionValue(appAccessTokensList, "getAppAccessTokensList(...)");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(appAccessTokensList, 10)), 16));
        for (SteammessagesClientserverAppinfo.CMsgClientPICSAccessTokenResponse.AppToken appToken : appAccessTokensList) {
            Pair pair2 = TuplesKt.to(Integer.valueOf(appToken.getAppid()), Long.valueOf(appToken.getAccessToken()));
            linkedHashMap2.put(pair2.getFirst(), pair2.getSecond());
        }
        this.appTokens = linkedHashMap2;
    }

    public final List<Integer> getPackageTokensDenied() {
        return this.packageTokensDenied;
    }

    public final List<Integer> getAppTokensDenied() {
        return this.appTokensDenied;
    }

    public final Map<Integer, Long> getPackageTokens() {
        return this.packageTokens;
    }

    public final Map<Integer, Long> getAppTokens() {
        return this.appTokens;
    }
}
