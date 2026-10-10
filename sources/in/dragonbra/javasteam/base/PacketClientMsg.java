package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.ExtendedClientMsgHdr;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacketClientMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PacketClientMsg implements IPacketMsg {
    private final long bodyOffset;
    private final EMsg eMsg;
    private final ExtendedClientMsgHdr header;
    private final byte[] payload;

    @Override // in.dragonbra.javasteam.base.IPacketMsg
    public boolean isProto() {
        return false;
    }

    public PacketClientMsg(EMsg eMsg, byte[] data) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
        Intrinsics.checkNotNullParameter(data, "data");
        this.eMsg = eMsg;
        this.payload = data;
        ExtendedClientMsgHdr extendedClientMsgHdr = new ExtendedClientMsgHdr();
        this.header = extendedClientMsgHdr;
        MemoryStream memoryStream = new MemoryStream(data);
        try {
            extendedClientMsgHdr.deserialize(memoryStream);
            this.bodyOffset = memoryStream.getPosition();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(memoryStream, null);
        } finally {
        }
    }

    public final ExtendedClientMsgHdr getHeader$javasteam() {
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
