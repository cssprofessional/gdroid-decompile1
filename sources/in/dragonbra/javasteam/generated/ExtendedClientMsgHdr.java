package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableHeader;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.tukaani.xz.common.Util;

/* JADX INFO: loaded from: classes.dex */
public class ExtendedClientMsgHdr implements ISteamSerializableHeader {
    private EMsg msg = EMsg.Invalid;
    private byte headerSize = 36;
    private short headerVersion = 2;
    private long targetJobID = Util.VLI_MAX;
    private long sourceJobID = Util.VLI_MAX;
    private byte headerCanary = -17;
    private long steamID = 0;
    private int sessionID = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableHeader
    public void setEMsg(EMsg eMsg) {
        this.msg = eMsg;
    }

    public EMsg getMsg() {
        return this.msg;
    }

    public void setMsg(EMsg eMsg) {
        this.msg = eMsg;
    }

    public byte getHeaderSize() {
        return this.headerSize;
    }

    public void setHeaderSize(byte b) {
        this.headerSize = b;
    }

    public short getHeaderVersion() {
        return this.headerVersion;
    }

    public void setHeaderVersion(short s) {
        this.headerVersion = s;
    }

    public long getTargetJobID() {
        return this.targetJobID;
    }

    public void setTargetJobID(long j) {
        this.targetJobID = j;
    }

    public long getSourceJobID() {
        return this.sourceJobID;
    }

    public void setSourceJobID(long j) {
        this.sourceJobID = j;
    }

    public byte getHeaderCanary() {
        return this.headerCanary;
    }

    public void setHeaderCanary(byte b) {
        this.headerCanary = b;
    }

    public SteamID getSteamID() {
        return new SteamID(this.steamID);
    }

    public void setSteamID(SteamID steamID) {
        this.steamID = steamID.convertToUInt64();
    }

    public int getSessionID() {
        return this.sessionID;
    }

    public void setSessionID(int i) {
        this.sessionID = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.msg.code());
            binaryWriter.writeByte(this.headerSize);
            binaryWriter.writeShort(this.headerVersion);
            binaryWriter.writeLong(this.targetJobID);
            binaryWriter.writeLong(this.sourceJobID);
            binaryWriter.writeByte(this.headerCanary);
            binaryWriter.writeLong(this.steamID);
            binaryWriter.writeInt(this.sessionID);
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
            this.msg = EMsg.from(binaryReader.readInt());
            this.headerSize = binaryReader.readByte();
            this.headerVersion = binaryReader.readShort();
            this.targetJobID = binaryReader.readLong();
            this.sourceJobID = binaryReader.readLong();
            this.headerCanary = binaryReader.readByte();
            this.steamID = binaryReader.readLong();
            this.sessionID = binaryReader.readInt();
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
