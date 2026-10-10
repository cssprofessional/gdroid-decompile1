package in.dragonbra.javasteam.base.gc;

import in.dragonbra.javasteam.types.JobID;

/* JADX INFO: compiled from: IPacketGCMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IPacketGCMsg {
    byte[] getData();

    int getMsgType();

    JobID getSourceJobID();

    JobID getTargetJobID();

    boolean isProto();
}
