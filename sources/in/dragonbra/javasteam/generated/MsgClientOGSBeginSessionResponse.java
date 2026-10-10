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
public class MsgClientOGSBeginSessionResponse implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private boolean collectingAny = false;
    private boolean collectingDetails = false;
    private long sessionId = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientOGSBeginSessionResponse;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public boolean getCollectingAny() {
        return this.collectingAny;
    }

    public void setCollectingAny(boolean z) {
        this.collectingAny = z;
    }

    public boolean getCollectingDetails() {
        return this.collectingDetails;
    }

    public void setCollectingDetails(boolean z) {
        this.collectingDetails = z;
    }

    public long getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(long j) {
        this.sessionId = j;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeBoolean(this.collectingAny);
            binaryWriter.writeBoolean(this.collectingDetails);
            binaryWriter.writeLong(this.sessionId);
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
            this.collectingAny = binaryReader.readBoolean();
            this.collectingDetails = binaryReader.readBoolean();
            this.sessionId = binaryReader.readLong();
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
