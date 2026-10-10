package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.handlers.steamapps.License;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LicenseListCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LicenseListCallback extends CallbackMsg {
    private final List<License> licenseList;
    private final EResult result;

    public LicenseListCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver.CMsgClientLicenseList.Builder builder = (SteammessagesClientserver.CMsgClientLicenseList.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientLicenseList.class, packetMsg).getBody();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        List<SteammessagesClientserver.CMsgClientLicenseList.License> licensesList = builder.getLicensesList();
        Intrinsics.checkNotNullExpressionValue(licensesList, "getLicensesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(licensesList, 10));
        for (SteammessagesClientserver.CMsgClientLicenseList.License license : licensesList) {
            Intrinsics.checkNotNull(license);
            arrayList.add(new License(license));
        }
        this.licenseList = arrayList;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final List<License> getLicenseList() {
        return this.licenseList;
    }
}
