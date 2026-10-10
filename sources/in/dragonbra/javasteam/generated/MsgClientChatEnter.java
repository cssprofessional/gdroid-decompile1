package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EChatRoomEnterResponse;
import in.dragonbra.javasteam.enums.EChatRoomType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientChatEnter implements ISteamSerializableMessage {
    private long steamIdChat = 0;
    private long steamIdFriend = 0;
    private EChatRoomType chatRoomType = EChatRoomType.from(0);
    private long steamIdOwner = 0;
    private long steamIdClan = 0;
    private byte chatFlags = 0;
    private EChatRoomEnterResponse enterResponse = EChatRoomEnterResponse.from(0);
    private int numMembers = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientChatEnter;
    }

    public SteamID getSteamIdChat() {
        return new SteamID(this.steamIdChat);
    }

    public void setSteamIdChat(SteamID steamID) {
        this.steamIdChat = steamID.convertToUInt64();
    }

    public SteamID getSteamIdFriend() {
        return new SteamID(this.steamIdFriend);
    }

    public void setSteamIdFriend(SteamID steamID) {
        this.steamIdFriend = steamID.convertToUInt64();
    }

    public EChatRoomType getChatRoomType() {
        return this.chatRoomType;
    }

    public void setChatRoomType(EChatRoomType eChatRoomType) {
        this.chatRoomType = eChatRoomType;
    }

    public SteamID getSteamIdOwner() {
        return new SteamID(this.steamIdOwner);
    }

    public void setSteamIdOwner(SteamID steamID) {
        this.steamIdOwner = steamID.convertToUInt64();
    }

    public SteamID getSteamIdClan() {
        return new SteamID(this.steamIdClan);
    }

    public void setSteamIdClan(SteamID steamID) {
        this.steamIdClan = steamID.convertToUInt64();
    }

    public byte getChatFlags() {
        return this.chatFlags;
    }

    public void setChatFlags(byte b) {
        this.chatFlags = b;
    }

    public EChatRoomEnterResponse getEnterResponse() {
        return this.enterResponse;
    }

    public void setEnterResponse(EChatRoomEnterResponse eChatRoomEnterResponse) {
        this.enterResponse = eChatRoomEnterResponse;
    }

    public int getNumMembers() {
        return this.numMembers;
    }

    public void setNumMembers(int i) {
        this.numMembers = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamIdChat);
            binaryWriter.writeLong(this.steamIdFriend);
            binaryWriter.writeInt(this.chatRoomType.code());
            binaryWriter.writeLong(this.steamIdOwner);
            binaryWriter.writeLong(this.steamIdClan);
            binaryWriter.writeByte(this.chatFlags);
            binaryWriter.writeInt(this.enterResponse.code());
            binaryWriter.writeInt(this.numMembers);
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
            this.steamIdChat = binaryReader.readLong();
            this.steamIdFriend = binaryReader.readLong();
            this.chatRoomType = EChatRoomType.from(binaryReader.readInt());
            this.steamIdOwner = binaryReader.readLong();
            this.steamIdClan = binaryReader.readLong();
            this.chatFlags = binaryReader.readByte();
            this.enterResponse = EChatRoomEnterResponse.from(binaryReader.readInt());
            this.numMembers = binaryReader.readInt();
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
