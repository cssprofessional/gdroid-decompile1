package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FreeLicenseCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FreeLicenseCallback extends CallbackMsg {
    private final List<Integer> grantedApps;
    private final List<Integer> grantedPackages;
    private final EResult result;

    public FreeLicenseCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponse.class, packetMsg);
        SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponse.Builder builder = (SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        List<Integer> listUnmodifiableList = Collections.unmodifiableList(builder.getGrantedAppidsList());
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.grantedApps = listUnmodifiableList;
        List<Integer> listUnmodifiableList2 = Collections.unmodifiableList(builder.getGrantedPackageidsList());
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList2, "unmodifiableList(...)");
        this.grantedPackages = listUnmodifiableList2;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final List<Integer> getGrantedApps() {
        return this.grantedApps;
    }

    public final List<Integer> getGrantedPackages() {
        return this.grantedPackages;
    }
}
