package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.util.compat.ObjectsCompat;
import java.util.Date;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: GlobalID.kt */
/* JADX INFO: loaded from: classes2.dex */
public class GlobalID {
    private final BitVector64 gidBits;

    public GlobalID() {
        this(0L, 1, null);
    }

    public GlobalID(long j) {
        this.gidBits = new BitVector64(j);
    }

    public /* synthetic */ GlobalID(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Util.VLI_MAX : j);
    }

    public final long getSequentialCount() {
        return this.gidBits.getMask(0, SteamID.ACCOUNT_INSTANCE_MASK);
    }

    public final void setSequentialCount(long j) {
        this.gidBits.setMask(0, SteamID.ACCOUNT_INSTANCE_MASK, j);
    }

    public final Date getStartTime() {
        return new Date(this.gidBits.getMask(20, 1073741823L) * 1000);
    }

    public final void setStartTime(Date startTime) {
        Intrinsics.checkNotNullParameter(startTime, "startTime");
        this.gidBits.setMask(20, 1073741823L, (startTime.getTime() - 1104537600000L) / 1000);
    }

    public final long getProcessID() {
        return this.gidBits.getMask(50, 15L);
    }

    public final void setProcessID(long j) {
        this.gidBits.setMask(50, 15L, j);
    }

    public final long getBoxID() {
        return this.gidBits.getMask(54, 1023L);
    }

    public final void setBoxID(long j) {
        this.gidBits.setMask(54, 1023L, j);
    }

    public final long getValue() {
        return this.gidBits.getData();
    }

    public final void setValue(long j) {
        this.gidBits.setData(j);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GlobalID)) {
            return ObjectsCompat.equals(Long.valueOf(this.gidBits.getData()), Long.valueOf(((GlobalID) obj).gidBits.getData()));
        }
        return false;
    }

    public int hashCode() {
        return Long.hashCode(this.gidBits.getData());
    }

    public String toString() {
        return String.valueOf(getValue());
    }
}
