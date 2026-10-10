package in.dragonbra.javasteam.util.crypto;

import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.ArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes2.dex */
public class RSACrypto {
    private static final Logger logger = LogManager.getLogger(RSACrypto.class);
    private Cipher cipher;

    public RSACrypto(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("key is null");
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (byte b : bArr) {
                arrayList.add(Byte.valueOf(b));
            }
            BigInteger[] rSAPublicKey = new AsnKeyParser(arrayList).parseRSAPublicKey();
            init(rSAPublicKey[0], rSAPublicKey[1]);
        } catch (BerDecodeException e) {
            logger.error(e);
        }
    }

    private void init(BigInteger bigInteger, BigInteger bigInteger2) {
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(bigInteger, bigInteger2));
            Cipher cipher = Cipher.getInstance("RSA/None/OAEPWithSHA1AndMGF1Padding", CryptoHelper.SEC_PROV);
            this.cipher = cipher;
            cipher.init(1, rSAPublicKey);
        } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | InvalidKeySpecException | NoSuchPaddingException e) {
            logger.debug(e);
        }
    }

    public byte[] encrypt(byte[] bArr) {
        try {
            return this.cipher.doFinal(bArr);
        } catch (BadPaddingException | IllegalBlockSizeException e) {
            logger.debug(e);
            return null;
        }
    }
}
