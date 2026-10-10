package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientLogOnResponse implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private int outOfGameHeartbeatRateSec = 0;
    private int inGameHeartbeatRateSec = 0;
    private long clientSuppliedSteamId = 0;
    private int ipPublic = 0;
    private int serverRealTime = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientLogOnResponse;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public int getOutOfGameHeartbeatRateSec() {
        return this.outOfGameHeartbeatRateSec;
    }

    public void setOutOfGameHeartbeatRateSec(int i) {
        this.outOfGameHeartbeatRateSec = i;
    }

    public int getInGameHeartbeatRateSec() {
        return this.inGameHeartbeatRateSec;
    }

    public void setInGameHeartbeatRateSec(int i) {
        this.inGameHeartbeatRateSec = i;
    }

    public SteamID getClientSuppliedSteamId() {
        return new SteamID(this.clientSuppliedSteamId);
    }

    public void setClientSuppliedSteamId(SteamID steamID) {
        this.clientSuppliedSteamId = steamID.convertToUInt64();
    }

    public int getIpPublic() {
        return this.ipPublic;
    }

    public void setIpPublic(int i) {
        this.ipPublic = i;
    }

    public int getServerRealTime() {
        return this.serverRealTime;
    }

    public void setServerRealTime(int i) {
        this.serverRealTime = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeInt(this.outOfGameHeartbeatRateSec);
            binaryWriter.writeInt(this.inGameHeartbeatRateSec);
            binaryWriter.writeLong(this.clientSuppliedSteamId);
            binaryWriter.writeInt(this.ipPublic);
            binaryWriter.writeInt(this.serverRealTime);
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
            this.outOfGameHeartbeatRateSec = binaryReader.readInt();
            this.inGameHeartbeatRateSec = binaryReader.readInt();
            this.clientSuppliedSteamId = binaryReader.readLong();
            this.ipPublic = binaryReader.readInt();
            this.serverRealTime = binaryReader.readInt();
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
