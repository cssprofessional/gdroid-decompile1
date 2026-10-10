package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.util.crypto.CryptoException;
import in.dragonbra.javasteam.util.crypto.CryptoHelper;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class NetFilterEncryption implements INetFilterEncryption {
    private static final Logger logger = LogManager.getLogger(NetFilterEncryption.class);
    private final byte[] sessionKey;

    public NetFilterEncryption(byte[] bArr) {
        if (bArr.length != 32) {
            logger.debug("AES session key was not 32 bytes!");
        }
        this.sessionKey = bArr;
    }

    @Override // in.dragonbra.javasteam.networking.steam3.INetFilterEncryption
    public byte[] processIncoming(byte[] bArr) {
        try {
            return CryptoHelper.symmetricDecrypt(bArr, this.sessionKey);
        } catch (CryptoException e) {
            throw new IllegalStateException("Unable to decrypt incoming packet", e);
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.INetFilterEncryption
    public byte[] processOutgoing(byte[] bArr) {
        try {
            return CryptoHelper.symmetricEncrypt(bArr, this.sessionKey);
        } catch (CryptoException e) {
            throw new IllegalStateException("Unable to encrypt outgoing packet", e);
        }
    }
}
