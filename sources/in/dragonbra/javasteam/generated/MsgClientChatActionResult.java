package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EChatAction;
import in.dragonbra.javasteam.enums.EChatActionResult;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientChatActionResult implements ISteamSerializableMessage {
    private long steamIdChat = 0;
    private long steamIdUserActedOn = 0;
    private EChatAction chatAction = EChatAction.from(0);
    private EChatActionResult actionResult = EChatActionResult.from(0);

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientChatActionResult;
    }

    public SteamID getSteamIdChat() {
        return new SteamID(this.steamIdChat);
    }

    public void setSteamIdChat(SteamID steamID) {
        this.steamIdChat = steamID.convertToUInt64();
    }

    public SteamID getSteamIdUserActedOn() {
        return new SteamID(this.steamIdUserActedOn);
    }

    public void setSteamIdUserActedOn(SteamID steamID) {
        this.steamIdUserActedOn = steamID.convertToUInt64();
    }

    public EChatAction getChatAction() {
        return this.chatAction;
    }

    public void setChatAction(EChatAction eChatAction) {
        this.chatAction = eChatAction;
    }

    public EChatActionResult getActionResult() {
        return this.actionResult;
    }

    public void setActionResult(EChatActionResult eChatActionResult) {
        this.actionResult = eChatActionResult;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamIdChat);
            binaryWriter.writeLong(this.steamIdUserActedOn);
            binaryWriter.writeInt(this.chatAction.code());
            binaryWriter.writeInt(this.actionResult.code());
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
            this.steamIdUserActedOn = binaryReader.readLong();
            this.chatAction = EChatAction.from(binaryReader.readInt());
            this.actionResult = EChatActionResult.from(binaryReader.readInt());
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
