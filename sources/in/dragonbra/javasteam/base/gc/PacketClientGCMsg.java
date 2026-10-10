package in.dragonbra.javasteam.base.gc;

import in.dragonbra.javasteam.generated.MsgGCHdr;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacketClientGCMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PacketClientGCMsg implements IPacketGCMsg {
    private final int eMsg;
    private final MsgGCHdr gcHdr;
    private final byte[] payload;

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public boolean isProto() {
        return false;
    }

    public PacketClientGCMsg(int i, byte[] data) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(data, "data");
        this.eMsg = i;
        MsgGCHdr msgGCHdr = new MsgGCHdr();
        this.gcHdr = msgGCHdr;
        this.payload = data;
        try {
            MemoryStream memoryStream = new MemoryStream(data);
            try {
                msgGCHdr.deserialize(memoryStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(memoryStream, null);
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public int getMsgType() {
        return this.eMsg;
    }

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public JobID getTargetJobID() {
        return new JobID(this.gcHdr.getTargetJobID());
    }

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public JobID getSourceJobID() {
        return new JobID(this.gcHdr.getSourceJobID());
    }

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public byte[] getData() {
        return this.payload;
    }
}
