package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientGetFriendsWhoPlayGameResponse implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private long gameId = 0;
    private int countFriends = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientGetFriendsWhoPlayGameResponse;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public GameID getGameId() {
        return new GameID(this.gameId);
    }

    public void setGameId(GameID gameID) {
        this.gameId = gameID.convertToUInt64();
    }

    public int getCountFriends() {
        return this.countFriends;
    }

    public void setCountFriends(int i) {
        this.countFriends = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeLong(this.gameId);
            binaryWriter.writeInt(this.countFriends);
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
            this.gameId = binaryReader.readLong();
            this.countFriends = binaryReader.readInt();
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
