package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import in.dragonbra.javasteam.steam.handlers.steamapps.PICSChangeData;
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

/* JADX INFO: compiled from: PICSChangesCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PICSChangesCallback extends CallbackMsg {
    private final Map<Integer, PICSChangeData> appChanges;
    private final int currentChangeNumber;
    private final boolean isRequiresFullAppUpdate;
    private final boolean isRequiresFullPackageUpdate;
    private final boolean isRequiresFullUpdate;
    private final int lastChangeNumber;
    private final Map<Integer, PICSChangeData> packageChanges;

    public PICSChangesCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.class, packetMsg);
        SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.Builder builder = (SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        this.lastChangeNumber = builder.getSinceChangeNumber();
        this.currentChangeNumber = builder.getCurrentChangeNumber();
        this.isRequiresFullAppUpdate = builder.getForceFullAppUpdate();
        this.isRequiresFullPackageUpdate = builder.getForceFullPackageUpdate();
        this.isRequiresFullUpdate = builder.getForceFullUpdate();
        List<SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChange> packageChangesList = builder.getPackageChangesList();
        Intrinsics.checkNotNullExpressionValue(packageChangesList, "getPackageChangesList(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(packageChangesList, 10)), 16));
        for (SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.PackageChange packageChange : packageChangesList) {
            Integer numValueOf = Integer.valueOf(packageChange.getPackageid());
            Intrinsics.checkNotNull(packageChange);
            Pair pair = TuplesKt.to(numValueOf, new PICSChangeData(packageChange));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.packageChanges = linkedHashMap;
        List<SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChange> appChangesList = builder.getAppChangesList();
        Intrinsics.checkNotNullExpressionValue(appChangesList, "getAppChangesList(...)");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(appChangesList, 10)), 16));
        for (SteammessagesClientserverAppinfo.CMsgClientPICSChangesSinceResponse.AppChange appChange : appChangesList) {
            Integer numValueOf2 = Integer.valueOf(appChange.getAppid());
            Intrinsics.checkNotNull(appChange);
            Pair pair2 = TuplesKt.to(numValueOf2, new PICSChangeData(appChange));
            linkedHashMap2.put(pair2.getFirst(), pair2.getSecond());
        }
        this.appChanges = linkedHashMap2;
    }

    public final int getLastChangeNumber() {
        return this.lastChangeNumber;
    }

    public final int getCurrentChangeNumber() {
        return this.currentChangeNumber;
    }

    public final boolean isRequiresFullUpdate() {
        return this.isRequiresFullUpdate;
    }

    public final boolean isRequiresFullAppUpdate() {
        return this.isRequiresFullAppUpdate;
    }

    public final boolean isRequiresFullPackageUpdate() {
        return this.isRequiresFullPackageUpdate;
    }

    public final Map<Integer, PICSChangeData> getPackageChanges() {
        return this.packageChanges;
    }

    public final Map<Integer, PICSChangeData> getAppChanges() {
        return this.appChanges;
    }
}
