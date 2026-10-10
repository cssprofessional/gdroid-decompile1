package in.dragonbra.javasteam.base.gc;

import in.dragonbra.javasteam.generated.MsgGCHdrProtoBuf;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacketClientGCMsgProtobuf.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PacketClientGCMsgProtobuf implements IPacketGCMsg {
    private final int eMsg;
    private final byte[] payload;
    private final MsgGCHdrProtoBuf protobufHeader;

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public boolean isProto() {
        return true;
    }

    public PacketClientGCMsgProtobuf(int i, byte[] data) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(data, "data");
        this.eMsg = i;
        MsgGCHdrProtoBuf msgGCHdrProtoBuf = new MsgGCHdrProtoBuf();
        this.protobufHeader = msgGCHdrProtoBuf;
        this.payload = data;
        try {
            MemoryStream memoryStream = new MemoryStream(data);
            try {
                msgGCHdrProtoBuf.deserialize(memoryStream);
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
        return new JobID(this.protobufHeader.getProto().getJobidTarget());
    }

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public JobID getSourceJobID() {
        return new JobID(this.protobufHeader.getProto().getJobidSource());
    }

    @Override // in.dragonbra.javasteam.base.gc.IPacketGCMsg
    public byte[] getData() {
        return this.payload;
    }
}
