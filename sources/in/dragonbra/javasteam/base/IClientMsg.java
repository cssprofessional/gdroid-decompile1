package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;

/* JADX INFO: compiled from: IClientMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IClientMsg {
    void deserialize(byte[] bArr);

    EMsg getMsgType();

    int getSessionID();

    JobID getSourceJobID();

    SteamID getSteamID();

    JobID getTargetJobID();

    boolean isProto();

    byte[] serialize();

    void setSessionID(int i);

    void setSourceJobID(JobID jobID);

    void setSteamID(SteamID steamID);

    void setTargetJobID(JobID jobID);
}
