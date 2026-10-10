package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.enums.EMsg;

/* JADX INFO: compiled from: IPacketMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IPacketMsg {
    byte[] getData();

    EMsg getMsgType();

    long getSourceJobID();

    long getTargetJobID();

    boolean isProto();
}
