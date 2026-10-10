package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EChatPermission;
import in.dragonbra.javasteam.enums.EChatRoomType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientCreateChat implements ISteamSerializableMessage {
    private EChatRoomType chatRoomType = EChatRoomType.from(0);
    private long gameId = 0;
    private long steamIdClan = 0;
    private EnumSet<EChatPermission> permissionOfficer = EChatPermission.from(0);
    private EnumSet<EChatPermission> permissionMember = EChatPermission.from(0);
    private EnumSet<EChatPermission> permissionAll = EChatPermission.from(0);
    private int membersMax = 0;
    private byte chatFlags = 0;
    private long steamIdFriendChat = 0;
    private long steamIdInvited = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientCreateChat;
    }

    public EChatRoomType getChatRoomType() {
        return this.chatRoomType;
    }

    public void setChatRoomType(EChatRoomType eChatRoomType) {
        this.chatRoomType = eChatRoomType;
    }

    public GameID getGameId() {
        return new GameID(this.gameId);
    }

    public void setGameId(GameID gameID) {
        this.gameId = gameID.convertToUInt64();
    }

    public SteamID getSteamIdClan() {
        return new SteamID(this.steamIdClan);
    }

    public void setSteamIdClan(SteamID steamID) {
        this.steamIdClan = steamID.convertToUInt64();
    }

    public EnumSet<EChatPermission> getPermissionOfficer() {
        return this.permissionOfficer;
    }

    public void setPermissionOfficer(EnumSet<EChatPermission> enumSet) {
        this.permissionOfficer = enumSet;
    }

    public EnumSet<EChatPermission> getPermissionMember() {
        return this.permissionMember;
    }

    public void setPermissionMember(EnumSet<EChatPermission> enumSet) {
        this.permissionMember = enumSet;
    }

    public EnumSet<EChatPermission> getPermissionAll() {
        return this.permissionAll;
    }

    public void setPermissionAll(EnumSet<EChatPermission> enumSet) {
        this.permissionAll = enumSet;
    }

    public int getMembersMax() {
        return this.membersMax;
    }

    public void setMembersMax(int i) {
        this.membersMax = i;
    }

    public byte getChatFlags() {
        return this.chatFlags;
    }

    public void setChatFlags(byte b) {
        this.chatFlags = b;
    }

    public SteamID getSteamIdFriendChat() {
        return new SteamID(this.steamIdFriendChat);
    }

    public void setSteamIdFriendChat(SteamID steamID) {
        this.steamIdFriendChat = steamID.convertToUInt64();
    }

    public SteamID getSteamIdInvited() {
        return new SteamID(this.steamIdInvited);
    }

    public void setSteamIdInvited(SteamID steamID) {
        this.steamIdInvited = steamID.convertToUInt64();
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.chatRoomType.code());
            binaryWriter.writeLong(this.gameId);
            binaryWriter.writeLong(this.steamIdClan);
            binaryWriter.writeInt(EChatPermission.code(this.permissionOfficer));
            binaryWriter.writeInt(EChatPermission.code(this.permissionMember));
            binaryWriter.writeInt(EChatPermission.code(this.permissionAll));
            binaryWriter.writeInt(this.membersMax);
            binaryWriter.writeByte(this.chatFlags);
            binaryWriter.writeLong(this.steamIdFriendChat);
            binaryWriter.writeLong(this.steamIdInvited);
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
            this.chatRoomType = EChatRoomType.from(binaryReader.readInt());
            this.gameId = binaryReader.readLong();
            this.steamIdClan = binaryReader.readLong();
            this.permissionOfficer = EChatPermission.from(binaryReader.readInt());
            this.permissionMember = EChatPermission.from(binaryReader.readInt());
            this.permissionAll = EChatPermission.from(binaryReader.readInt());
            this.membersMax = binaryReader.readInt();
            this.chatFlags = binaryReader.readByte();
            this.steamIdFriendChat = binaryReader.readLong();
            this.steamIdInvited = binaryReader.readLong();
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
