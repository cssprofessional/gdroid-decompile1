package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.generated.MsgClientVACBanStatus;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VACStatusCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class VACStatusCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(VACStatusCallback.class);
    private final List<Integer> bannedApps;

    public VACStatusCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientVACBanStatus.class, packetMsg);
        MsgClientVACBanStatus msgClientVACBanStatus = (MsgClientVACBanStatus) clientMsg.getBody();
        ArrayList arrayList = new ArrayList();
        try {
            BinaryReader binaryReader = new BinaryReader(new ByteArrayInputStream(clientMsg.getPayload().toByteArray()));
            try {
                int numBans = msgClientVACBanStatus.getNumBans();
                for (int i = 0; i < numBans; i++) {
                    arrayList.add(Integer.valueOf(binaryReader.readInt()));
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(binaryReader, null);
            } finally {
            }
        } catch (Exception e) {
            logger.error("failed to read bans", e);
        }
        this.bannedApps = CollectionsKt___CollectionsKt.toList(arrayList);
    }

    /* JADX INFO: compiled from: VACStatusCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final List<Integer> getBannedApps() {
        return this.bannedApps;
    }
}
