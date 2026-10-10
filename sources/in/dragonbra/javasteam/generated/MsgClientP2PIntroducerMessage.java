package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EIntroducerRouting;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientP2PIntroducerMessage implements ISteamSerializableMessage {
    private long steamID = 0;
    private EIntroducerRouting routingType = EIntroducerRouting.from(0);
    private byte[] data = new byte[1450];
    private int dataLen = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientP2PIntroducerMessage;
    }

    public SteamID getSteamID() {
        return new SteamID(this.steamID);
    }

    public void setSteamID(SteamID steamID) {
        this.steamID = steamID.convertToUInt64();
    }

    public EIntroducerRouting getRoutingType() {
        return this.routingType;
    }

    public void setRoutingType(EIntroducerRouting eIntroducerRouting) {
        this.routingType = eIntroducerRouting;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public int getDataLen() {
        return this.dataLen;
    }

    public void setDataLen(int i) {
        this.dataLen = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamID);
            binaryWriter.writeInt(this.routingType.code());
            binaryWriter.writeInt(this.data.length);
            binaryWriter.write(this.data);
            binaryWriter.writeInt(this.dataLen);
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
            this.steamID = binaryReader.readLong();
            this.routingType = EIntroducerRouting.from(binaryReader.readInt());
            this.data = binaryReader.readBytes(binaryReader.readInt());
            this.dataLen = binaryReader.readInt();
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
