package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EChatRoomType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientCreateChatResponse implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private long steamIdChat = 0;
    private EChatRoomType chatRoomType = EChatRoomType.from(0);
    private long steamIdFriendChat = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientCreateChatResponse;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public SteamID getSteamIdChat() {
        return new SteamID(this.steamIdChat);
    }

    public void setSteamIdChat(SteamID steamID) {
        this.steamIdChat = steamID.convertToUInt64();
    }

    public EChatRoomType getChatRoomType() {
        return this.chatRoomType;
    }

    public void setChatRoomType(EChatRoomType eChatRoomType) {
        this.chatRoomType = eChatRoomType;
    }

    public SteamID getSteamIdFriendChat() {
        return new SteamID(this.steamIdFriendChat);
    }

    public void setSteamIdFriendChat(SteamID steamID) {
        this.steamIdFriendChat = steamID.convertToUInt64();
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeLong(this.steamIdChat);
            binaryWriter.writeInt(this.chatRoomType.code());
            binaryWriter.writeLong(this.steamIdFriendChat);
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
            this.steamIdChat = binaryReader.readLong();
            this.chatRoomType = EChatRoomType.from(binaryReader.readInt());
            this.steamIdFriendChat = binaryReader.readLong();
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
