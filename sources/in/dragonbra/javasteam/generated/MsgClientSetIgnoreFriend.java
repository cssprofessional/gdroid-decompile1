package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientSetIgnoreFriend implements ISteamSerializableMessage {
    private long mySteamId = 0;
    private long steamIdFriend = 0;
    private byte ignore = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientSetIgnoreFriend;
    }

    public SteamID getMySteamId() {
        return new SteamID(this.mySteamId);
    }

    public void setMySteamId(SteamID steamID) {
        this.mySteamId = steamID.convertToUInt64();
    }

    public SteamID getSteamIdFriend() {
        return new SteamID(this.steamIdFriend);
    }

    public void setSteamIdFriend(SteamID steamID) {
        this.steamIdFriend = steamID.convertToUInt64();
    }

    public byte getIgnore() {
        return this.ignore;
    }

    public void setIgnore(byte b) {
        this.ignore = b;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.mySteamId);
            binaryWriter.writeLong(this.steamIdFriend);
            binaryWriter.writeByte(this.ignore);
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
            this.mySteamId = binaryReader.readLong();
            this.steamIdFriend = binaryReader.readLong();
            this.ignore = binaryReader.readByte();
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
