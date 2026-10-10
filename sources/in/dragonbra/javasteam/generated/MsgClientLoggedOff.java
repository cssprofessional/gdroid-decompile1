package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientLoggedOff implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private int secMinReconnectHint = 0;
    private int secMaxReconnectHint = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientLoggedOff;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public int getSecMinReconnectHint() {
        return this.secMinReconnectHint;
    }

    public void setSecMinReconnectHint(int i) {
        this.secMinReconnectHint = i;
    }

    public int getSecMaxReconnectHint() {
        return this.secMaxReconnectHint;
    }

    public void setSecMaxReconnectHint(int i) {
        this.secMaxReconnectHint = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeInt(this.secMinReconnectHint);
            binaryWriter.writeInt(this.secMaxReconnectHint);
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
            this.secMinReconnectHint = binaryReader.readInt();
            this.secMaxReconnectHint = binaryReader.readInt();
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
