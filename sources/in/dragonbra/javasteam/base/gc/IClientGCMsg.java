package in.dragonbra.javasteam.base.gc;

import in.dragonbra.javasteam.types.JobID;

/* JADX INFO: compiled from: IClientGCMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IClientGCMsg {
    void deserialize(byte[] bArr);

    int getMsgType();

    JobID getSourceJobID();

    JobID getTargetJobID();

    boolean isProto();

    byte[] serialize();

    void setSourceJobID(JobID jobID);

    void setTargetJobID(JobID jobID);
}
