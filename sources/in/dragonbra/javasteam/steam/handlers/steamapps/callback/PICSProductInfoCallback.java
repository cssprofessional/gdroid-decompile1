package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import in.dragonbra.javasteam.steam.handlers.steamapps.PICSProductInfo;
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

/* JADX INFO: compiled from: PICSProductInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PICSProductInfoCallback extends CallbackMsg {
    private final Map<Integer, PICSProductInfo> apps;
    private final boolean isMetaDataOnly;
    private final boolean isResponsePending;
    private final Map<Integer, PICSProductInfo> packages;
    private final List<Integer> unknownApps;
    private final List<Integer> unknownPackages;

    public PICSProductInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.class, packetMsg);
        SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.Builder builder = (SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        this.isMetaDataOnly = builder.getMetaDataOnly();
        this.isResponsePending = builder.getResponsePending();
        List<Integer> unknownPackageidsList = builder.getUnknownPackageidsList();
        Intrinsics.checkNotNullExpressionValue(unknownPackageidsList, "getUnknownPackageidsList(...)");
        this.unknownPackages = unknownPackageidsList;
        List<Integer> unknownAppidsList = builder.getUnknownAppidsList();
        Intrinsics.checkNotNullExpressionValue(unknownAppidsList, "getUnknownAppidsList(...)");
        this.unknownApps = unknownAppidsList;
        List<SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfo> appsList = builder.getAppsList();
        Intrinsics.checkNotNullExpressionValue(appsList, "getAppsList(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(appsList, 10)), 16));
        for (SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfo appInfo : appsList) {
            Integer numValueOf = Integer.valueOf(appInfo.getAppid());
            Intrinsics.checkNotNull(appInfo);
            Pair pair = TuplesKt.to(numValueOf, new PICSProductInfo(builder, appInfo));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.apps = linkedHashMap;
        List<SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfo> packagesList = builder.getPackagesList();
        Intrinsics.checkNotNullExpressionValue(packagesList, "getPackagesList(...)");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(packagesList, 10)), 16));
        for (SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfo packageInfo : packagesList) {
            Integer numValueOf2 = Integer.valueOf(packageInfo.getPackageid());
            Intrinsics.checkNotNull(packageInfo);
            Pair pair2 = TuplesKt.to(numValueOf2, new PICSProductInfo(packageInfo));
            linkedHashMap2.put(pair2.getFirst(), pair2.getSecond());
        }
        this.packages = linkedHashMap2;
    }

    public final boolean isMetaDataOnly() {
        return this.isMetaDataOnly;
    }

    public final boolean isResponsePending() {
        return this.isResponsePending;
    }

    public final List<Integer> getUnknownPackages() {
        return this.unknownPackages;
    }

    public final List<Integer> getUnknownApps() {
        return this.unknownApps;
    }

    public final Map<Integer, PICSProductInfo> getApps() {
        return this.apps;
    }

    public final Map<Integer, PICSProductInfo> getPackages() {
        return this.packages;
    }
}
