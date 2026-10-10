package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.util.crypto.CryptoException;
import in.dragonbra.javasteam.util.crypto.CryptoHelper;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class NetFilterEncryptionWithHMAC implements INetFilterEncryption {
    private static final Logger logger = LogManager.getLogger(NetFilterEncryptionWithHMAC.class);
    private final byte[] hmacSecret;
    private final byte[] sessionKey;

    public NetFilterEncryptionWithHMAC(byte[] bArr) {
        if (bArr.length != 32) {
            logger.debug("AES session key was not 32 bytes!");
        }
        this.sessionKey = bArr;
        byte[] bArr2 = new byte[16];
        this.hmacSecret = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.INetFilterEncryption
    public byte[] processIncoming(byte[] bArr) {
        try {
            return CryptoHelper.symmetricDecryptHMACIV(bArr, this.sessionKey, this.hmacSecret);
        } catch (CryptoException e) {
            throw new IllegalStateException("Unable to decrypt incoming packet", e);
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.INetFilterEncryption
    public byte[] processOutgoing(byte[] bArr) {
        try {
            return CryptoHelper.symmetricEncryptWithHMACIV(bArr, this.sessionKey, this.hmacSecret);
        } catch (CryptoException e) {
            throw new IllegalStateException("Unable to encrypt outgoing packet", e);
        }
    }
}
