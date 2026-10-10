package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgGSGetReputationResponse implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private int reputationScore = 0;
    private boolean banned = false;
    private int bannedIp = 0;
    private short bannedPort = 0;
    private long bannedGameId = 0;
    private int timeBanExpires = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.GSGetReputationResponse;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public int getReputationScore() {
        return this.reputationScore;
    }

    public void setReputationScore(int i) {
        this.reputationScore = i;
    }

    public boolean getBanned() {
        return this.banned;
    }

    public void setBanned(boolean z) {
        this.banned = z;
    }

    public int getBannedIp() {
        return this.bannedIp;
    }

    public void setBannedIp(int i) {
        this.bannedIp = i;
    }

    public short getBannedPort() {
        return this.bannedPort;
    }

    public void setBannedPort(short s) {
        this.bannedPort = s;
    }

    public long getBannedGameId() {
        return this.bannedGameId;
    }

    public void setBannedGameId(long j) {
        this.bannedGameId = j;
    }

    public int getTimeBanExpires() {
        return this.timeBanExpires;
    }

    public void setTimeBanExpires(int i) {
        this.timeBanExpires = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeInt(this.reputationScore);
            binaryWriter.writeBoolean(this.banned);
            binaryWriter.writeInt(this.bannedIp);
            binaryWriter.writeShort(this.bannedPort);
            binaryWriter.writeLong(this.bannedGameId);
            binaryWriter.writeInt(this.timeBanExpires);
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
            this.result = EResult.from(binaryReader.readInt());
            this.reputationScore = binaryReader.readInt();
            this.banned = binaryReader.readBoolean();
            this.bannedIp = binaryReader.readInt();
            this.bannedPort = binaryReader.readShort();
            this.bannedGameId = binaryReader.readLong();
            this.timeBanExpires = binaryReader.readInt();
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
