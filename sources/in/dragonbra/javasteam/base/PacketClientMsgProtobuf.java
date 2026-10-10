package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.MsgHdrProtoBuf;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacketClientMsgProtobuf.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PacketClientMsgProtobuf implements IPacketMsg {
    private final long bodyOffset;
    private final EMsg eMsg;
    private final MsgHdrProtoBuf header;
    private final byte[] payload;

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public boolean isProto() {
        return true;
    }

    public PacketClientMsgProtobuf(EMsg eMsg, byte[] data) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
        Intrinsics.checkNotNullParameter(data, "data");
        this.eMsg = eMsg;
        this.payload = data;
        MsgHdrProtoBuf msgHdrProtoBuf = new MsgHdrProtoBuf();
        this.header = msgHdrProtoBuf;
        MemoryStream memoryStream = new MemoryStream(data);
        try {
            msgHdrProtoBuf.deserialize(memoryStream);
            this.bodyOffset = memoryStream.getPosition();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(memoryStream, null);
        } finally {
        }
    }

    public final MsgHdrProtoBuf getHeader$javasteam() {
        return this.header;
    }

    public final long getBodyOffset$javasteam() {
        return this.bodyOffset;
    }

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public EMsg getMsgType() {
        return this.eMsg;
    }

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public long getTargetJobID() {
        return this.header.getProto().getJobidTarget();
    }

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public long getSourceJobID() {
        return this.header.getProto().getJobidSource();
    }

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public byte[] getData() {
        return this.payload;
    }
}
