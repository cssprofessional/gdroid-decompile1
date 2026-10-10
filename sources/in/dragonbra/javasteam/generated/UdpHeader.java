package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializable;
import in.dragonbra.javasteam.enums.EUdpPacketType;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class UdpHeader implements ISteamSerializable {
    public static final int MAGIC = 825250646;
    private int magic = MAGIC;
    private short payloadSize = 0;
    private EUdpPacketType packetType = EUdpPacketType.Invalid;
    private byte flags = 0;
    private int sourceConnID = 512;
    private int destConnID = 0;
    private int seqThis = 0;
    private int seqAck = 0;
    private int packetsInMsg = 0;
    private int msgStartSeq = 0;
    private int msgSize = 0;

    public int getMagic() {
        return this.magic;
    }

    public void setMagic(int i) {
        this.magic = i;
    }

    public short getPayloadSize() {
        return this.payloadSize;
    }

    public void setPayloadSize(short s) {
        this.payloadSize = s;
    }

    public EUdpPacketType getPacketType() {
        return this.packetType;
    }

    public void setPacketType(EUdpPacketType eUdpPacketType) {
        this.packetType = eUdpPacketType;
    }

    public byte getFlags() {
        return this.flags;
    }

    public void setFlags(byte b) {
        this.flags = b;
    }

    public int getSourceConnID() {
        return this.sourceConnID;
    }

    public void setSourceConnID(int i) {
        this.sourceConnID = i;
    }

    public int getDestConnID() {
        return this.destConnID;
    }

    public void setDestConnID(int i) {
        this.destConnID = i;
    }

    public int getSeqThis() {
        return this.seqThis;
    }

    public void setSeqThis(int i) {
        this.seqThis = i;
    }

    public int getSeqAck() {
        return this.seqAck;
    }

    public void setSeqAck(int i) {
        this.seqAck = i;
    }

    public int getPacketsInMsg() {
        return this.packetsInMsg;
    }

    public void setPacketsInMsg(int i) {
        this.packetsInMsg = i;
    }

    public int getMsgStartSeq() {
        return this.msgStartSeq;
    }

    public void setMsgStartSeq(int i) {
        this.msgStartSeq = i;
    }

    public int getMsgSize() {
        return this.msgSize;
    }

    public void setMsgSize(int i) {
        this.msgSize = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.magic);
            binaryWriter.writeShort(this.payloadSize);
            binaryWriter.writeByte(this.packetType.code());
            binaryWriter.writeByte(this.flags);
            binaryWriter.writeInt(this.sourceConnID);
            binaryWriter.writeInt(this.destConnID);
            binaryWriter.writeInt(this.seqThis);
            binaryWriter.writeInt(this.seqAck);
            binaryWriter.writeInt(this.packetsInMsg);
            binaryWriter.writeInt(this.msgStartSeq);
            binaryWriter.writeInt(this.msgSize);
            binaryWriter.close();
        } catch (Throwable th) {
            try {
                binaryWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void deserialize(InputStream inputStream) throws IOException {
        BinaryReader binaryReader = new BinaryReader(inputStream);
        try {
            this.magic = binaryReader.readInt();
            this.payloadSize = binaryReader.readShort();
            this.packetType = EUdpPacketType.from(binaryReader.readByte());
            this.flags = binaryReader.readByte();
            this.sourceConnID = binaryReader.readInt();
            this.destConnID = binaryReader.readInt();
            this.seqThis = binaryReader.readInt();
            this.seqAck = binaryReader.readInt();
            this.packetsInMsg = binaryReader.readInt();
            this.msgStartSeq = binaryReader.readInt();
            this.msgSize = binaryReader.readInt();
            binaryReader.close();
        } catch (Throwable th) {
            try {
                binaryReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
