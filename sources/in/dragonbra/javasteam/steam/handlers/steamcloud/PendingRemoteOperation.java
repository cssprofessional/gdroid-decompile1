package in.dragonbra.javasteam.steam.handlers.steamcloud;

import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PendingRemoteOperation.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PendingRemoteOperation {
    private final long clientId;
    private final int deviceType;
    private final String machineName;
    private final SteammessagesClientObjects.ECloudPendingRemoteOperation operation;
    private final EOSType osType;
    private final int timeLastUpdated;

    public PendingRemoteOperation(SteammessagesClientObjects.CCloud_PendingRemoteOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        SteammessagesClientObjects.ECloudPendingRemoteOperation operation2 = operation.getOperation();
        Intrinsics.checkNotNullExpressionValue(operation2, "getOperation(...)");
        this.operation = operation2;
        String machineName = operation.getMachineName();
        Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
        this.machineName = machineName;
        this.clientId = operation.getClientId();
        this.timeLastUpdated = operation.getTimeLastUpdated();
        EOSType eOSTypeFrom = EOSType.from(operation.getOsType());
        this.osType = eOSTypeFrom == null ? EOSType.Unknown : eOSTypeFrom;
        this.deviceType = operation.getDeviceType();
    }

    public final SteammessagesClientObjects.ECloudPendingRemoteOperation getOperation() {
        return this.operation;
    }

    public final String getMachineName() {
        return this.machineName;
    }

    public final long getClientId() {
        return this.clientId;
    }

    public final int getTimeLastUpdated() {
        return this.timeLastUpdated;
    }

    public final EOSType getOsType() {
        return this.osType;
    }

    public final int getDeviceType() {
        return this.deviceType;
    }
}
