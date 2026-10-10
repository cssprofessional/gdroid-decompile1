package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EChatAction;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientChatAction implements ISteamSerializableMessage {
    private long steamIdChat = 0;
    private long steamIdUserToActOn = 0;
    private EChatAction chatAction = EChatAction.from(0);

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientChatAction;
    }

    public SteamID getSteamIdChat() {
        return new SteamID(this.steamIdChat);
    }

    public void setSteamIdChat(SteamID steamID) {
        this.steamIdChat = steamID.convertToUInt64();
    }

    public SteamID getSteamIdUserToActOn() {
        return new SteamID(this.steamIdUserToActOn);
    }

    public void setSteamIdUserToActOn(SteamID steamID) {
        this.steamIdUserToActOn = steamID.convertToUInt64();
    }

    public EChatAction getChatAction() {
        return this.chatAction;
    }

    public void setChatAction(EChatAction eChatAction) {
        this.chatAction = eChatAction;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamIdChat);
            binaryWriter.writeLong(this.steamIdUserToActOn);
            binaryWriter.writeInt(this.chatAction.code());
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
            this.steamIdUserToActOn = binaryReader.readLong();
            this.chatAction = EChatAction.from(binaryReader.readInt());
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
