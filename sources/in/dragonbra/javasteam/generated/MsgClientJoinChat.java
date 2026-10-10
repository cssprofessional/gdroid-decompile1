package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientJoinChat implements ISteamSerializableMessage {
    private long steamIdChat = 0;
    private boolean isVoiceSpeaker = false;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientJoinChat;
    }

    public SteamID getSteamIdChat() {
        return new SteamID(this.steamIdChat);
    }

    public void setSteamIdChat(SteamID steamID) {
        this.steamIdChat = steamID.convertToUInt64();
    }

    public boolean getIsVoiceSpeaker() {
        return this.isVoiceSpeaker;
    }

    public void setIsVoiceSpeaker(boolean z) {
        this.isVoiceSpeaker = z;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamIdChat);
            binaryWriter.writeBoolean(this.isVoiceSpeaker);
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
            this.isVoiceSpeaker = binaryReader.readBoolean();
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
