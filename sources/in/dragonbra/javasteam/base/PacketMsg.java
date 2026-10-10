package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.MsgHdr;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacketMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PacketMsg implements IPacketMsg {
    private final long bodyOffset;
    private final EMsg eMsg;
    private final MsgHdr header;
    private final byte[] payload;

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public boolean isProto() {
        return false;
    }

    public PacketMsg(EMsg eMsg, byte[] data) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
        Intrinsics.checkNotNullParameter(data, "data");
        this.eMsg = eMsg;
        this.payload = data;
        MsgHdr msgHdr = new MsgHdr();
        this.header = msgHdr;
        MemoryStream memoryStream = new MemoryStream(data);
        try {
            msgHdr.deserialize(memoryStream);
            this.bodyOffset = memoryStream.getPosition();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(memoryStream, null);
        } finally {
        }
    }

    public final MsgHdr getHeader$javasteam() {
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
        return this.header.getTargetJobID();
    }

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public long getSourceJobID() {
        return this.header.getSourceJobID();
    }

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public byte[] getData() {
        return this.payload;
    }
}
