package in.dragonbra.javasteam.networking.steam3;

/* JADX INFO: loaded from: classes.dex */
public interface INetFilterEncryption {
    byte[] processIncoming(byte[] bArr);

    byte[] processOutgoing(byte[] bArr);
}
