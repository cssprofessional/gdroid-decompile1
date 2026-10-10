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
public class MsgGSGetPlayStatsResponse implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private int rank = 0;
    private int lifetimeConnects = 0;
    private int lifetimeMinutesPlayed = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.GSGetPlayStatsResponse;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public int getRank() {
        return this.rank;
    }

    public void setRank(int i) {
        this.rank = i;
    }

    public int getLifetimeConnects() {
        return this.lifetimeConnects;
    }

    public void setLifetimeConnects(int i) {
        this.lifetimeConnects = i;
    }

    public int getLifetimeMinutesPlayed() {
        return this.lifetimeMinutesPlayed;
    }

    public void setLifetimeMinutesPlayed(int i) {
        this.lifetimeMinutesPlayed = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeInt(this.rank);
            binaryWriter.writeInt(this.lifetimeConnects);
            binaryWriter.writeInt(this.lifetimeMinutesPlayed);
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
            this.rank = binaryReader.readInt();
            this.lifetimeConnects = binaryReader.readInt();
            this.lifetimeMinutesPlayed = binaryReader.readInt();
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
