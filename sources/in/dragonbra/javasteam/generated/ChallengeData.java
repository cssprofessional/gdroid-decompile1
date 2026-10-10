package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializable;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class ChallengeData implements ISteamSerializable {
    public static final int CHALLENGE_MASK = -1540956373;
    private int challengeValue = 0;
    private int serverLoad = 0;

    public int getChallengeValue() {
        return this.challengeValue;
    }

    public void setChallengeValue(int i) {
        this.challengeValue = i;
    }

    public int getServerLoad() {
        return this.serverLoad;
    }

    public void setServerLoad(int i) {
        this.serverLoad = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.challengeValue);
            binaryWriter.writeInt(this.serverLoad);
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
            this.challengeValue = binaryReader.readInt();
            this.serverLoad = binaryReader.readInt();
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
