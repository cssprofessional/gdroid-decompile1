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
public class MsgClientOGSBeginSession implements ISteamSerializableMessage {
    private byte accountType = 0;
    private long accountId = 0;
    private int appId = 0;
    private int timeStarted = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientOGSBeginSession;
    }

    public byte getAccountType() {
        return this.accountType;
    }

    public void setAccountType(byte b) {
        this.accountType = b;
    }

    public SteamID getAccountId() {
        return new SteamID(this.accountId);
    }

    public void setAccountId(SteamID steamID) {
        this.accountId = steamID.convertToUInt64();
    }

    public int getAppId() {
        return this.appId;
    }

    public void setAppId(int i) {
        this.appId = i;
    }

    public int getTimeStarted() {
        return this.timeStarted;
    }

    public void setTimeStarted(int i) {
        this.timeStarted = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeByte(this.accountType);
            binaryWriter.writeLong(this.accountId);
            binaryWriter.writeInt(this.appId);
            binaryWriter.writeInt(this.timeStarted);
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
            this.accountType = binaryReader.readByte();
            this.accountId = binaryReader.readLong();
            this.appId = binaryReader.readInt();
            this.timeStarted = binaryReader.readInt();
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
