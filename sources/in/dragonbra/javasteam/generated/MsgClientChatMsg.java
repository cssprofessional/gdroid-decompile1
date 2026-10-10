package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EChatEntryType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientChatMsg implements ISteamSerializableMessage {
    private long steamIdChatter = 0;
    private long steamIdChatRoom = 0;
    private EChatEntryType chatMsgType = EChatEntryType.from(0);

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientChatMsg;
    }

    public SteamID getSteamIdChatter() {
        return new SteamID(this.steamIdChatter);
    }

    public void setSteamIdChatter(SteamID steamID) {
        this.steamIdChatter = steamID.convertToUInt64();
    }

    public SteamID getSteamIdChatRoom() {
        return new SteamID(this.steamIdChatRoom);
    }

    public void setSteamIdChatRoom(SteamID steamID) {
        this.steamIdChatRoom = steamID.convertToUInt64();
    }

    public EChatEntryType getChatMsgType() {
        return this.chatMsgType;
    }

    public void setChatMsgType(EChatEntryType eChatEntryType) {
        this.chatMsgType = eChatEntryType;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamIdChatter);
            binaryWriter.writeLong(this.steamIdChatRoom);
            binaryWriter.writeInt(this.chatMsgType.code());
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
            this.steamIdChatter = binaryReader.readLong();
            this.steamIdChatRoom = binaryReader.readLong();
            this.chatMsgType = EChatEntryType.from(binaryReader.readInt());
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
