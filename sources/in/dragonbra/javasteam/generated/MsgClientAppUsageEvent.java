package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EAppUsageEvent;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientAppUsageEvent implements ISteamSerializableMessage {
    private EAppUsageEvent appUsageEvent = EAppUsageEvent.from(0);
    private long gameID = 0;
    private short offline = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientAppUsageEvent;
    }

    public EAppUsageEvent getAppUsageEvent() {
        return this.appUsageEvent;
    }

    public void setAppUsageEvent(EAppUsageEvent eAppUsageEvent) {
        this.appUsageEvent = eAppUsageEvent;
    }

    public GameID getGameID() {
        return new GameID(this.gameID);
    }

    public void setGameID(GameID gameID) {
        this.gameID = gameID.convertToUInt64();
    }

    public short getOffline() {
        return this.offline;
    }

    public void setOffline(short s) {
        this.offline = s;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.appUsageEvent.code());
            binaryWriter.writeLong(this.gameID);
            binaryWriter.writeShort(this.offline);
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
            this.appUsageEvent = EAppUsageEvent.from(binaryReader.readInt());
            this.gameID = binaryReader.readLong();
            this.offline = binaryReader.readShort();
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
