package in.dragonbra.javasteam.util.crypto;

import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.util.Passable;
import in.dragonbra.javasteam.util.Utils;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Arrays;
import java.util.zip.CRC32;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
public class CryptoHelper {
    public static final String SEC_PROV;
    private static final Logger logger = LogManager.getLogger(CryptoHelper.class);

    static {
        try {
            String str = "BC";
            if (Utils.getOSType() == EOSType.AndroidUnknown) {
                try {
                    Security.insertProviderAt((Provider) Class.forName("org.spongycastle.jce.provider.BouncyCastleProvider").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), 1);
                    str = "SC";
                } catch (Exception unused) {
                    String str2 = BouncyCastleProvider.PROVIDER_NAME;
                    Security.insertProviderAt((Provider) BouncyCastleProvider.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), 1);
                }
                SEC_PROV = str;
            } else {
                String str3 = BouncyCastleProvider.PROVIDER_NAME;
                Security.addProvider((Provider) BouncyCastleProvider.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                SEC_PROV = "BC";
            }
            logger.debug("Using security provider: " + SEC_PROV);
        } catch (Exception e) {
            throw new SecurityException("Couldn't create security provider", e);
        }
    }

    public static byte[] shaHash(MessageDigest messageDigest, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        if (messageDigest == null) {
            throw new IllegalArgumentException("digest is null");
        }
        messageDigest.reset();
        return messageDigest.digest(bArr);
    }

    public static byte[] shaHash(byte[] bArr) throws NoSuchAlgorithmException, NoSuchProviderException {
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        return MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1, SEC_PROV).digest(bArr);
    }

    public static byte[] generateRandomBlock(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static byte[] crcHash(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, 0, bArr.length);
        long value = crc32.getValue();
        try {
            MemoryStream memoryStream = new MemoryStream(4);
            try {
                try {
                    new BinaryWriter(memoryStream.asOutputStream()).writeInt((int) value);
                } catch (IOException e) {
                    logger.debug(e);
                }
                byte[] byteArray = memoryStream.toByteArray();
                memoryStream.close();
                return byteArray;
            } finally {
            }
        } catch (Exception unused) {
            throw new RuntimeException("MemoryStream closed");
        }
    }

    public static byte[] symmetricDecrypt(byte[] bArr, byte[] bArr2) throws CryptoException {
        return symmetricDecrypt(bArr, bArr2, new Passable());
    }

    public static byte[] symmetricDecrypt(byte[] bArr, byte[] bArr2, Passable<byte[]> passable) throws CryptoException {
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("key is null");
        }
        try {
            if (bArr2.length != 32) {
                logger.debug("SymmetricDecrypt used with non 32 byte key!");
            }
            String str = SEC_PROV;
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding", str);
            passable.setValue(new byte[16]);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            int length = bArr.length - bArrCopyOfRange.length;
            byte[] bArr3 = new byte[length];
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, bArrCopyOfRange.length, bArrCopyOfRange.length + length);
            cipher.init(2, new SecretKeySpec(bArr2, "AES"));
            passable.setValue(cipher.doFinal(bArrCopyOfRange));
            Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS7Padding", str);
            cipher2.init(2, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(passable.getValue()));
            return cipher2.doFinal(bArrCopyOfRange2);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            throw new CryptoException("failed to symmetric decrypt", e);
        }
    }

    public static byte[] symmetricEncryptWithIV(byte[] bArr, byte[] bArr2, byte[] bArr3) throws CryptoException {
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("key is null");
        }
        if (bArr3 == null) {
            throw new IllegalArgumentException("iv is null");
        }
        try {
            if (bArr2.length != 32) {
                logger.debug("SymmetricEncrypt used with non 32 byte key!");
            }
            String str = SEC_PROV;
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding", str);
            cipher.init(1, new SecretKeySpec(bArr2, "AES"));
            byte[] bArrDoFinal = cipher.doFinal(bArr3);
            Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS7Padding", str);
            cipher2.init(1, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(bArr3));
            byte[] bArrDoFinal2 = cipher2.doFinal(bArr);
            byte[] bArr4 = new byte[bArrDoFinal.length + bArrDoFinal2.length];
            System.arraycopy(bArrDoFinal, 0, bArr4, 0, bArrDoFinal.length);
            System.arraycopy(bArrDoFinal2, 0, bArr4, bArrDoFinal.length, bArrDoFinal2.length);
            return bArr4;
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            throw new CryptoException("failed to symmetric encrypt", e);
        }
    }

    public static byte[] symmetricEncrypt(byte[] bArr, byte[] bArr2) throws CryptoException {
        return symmetricEncryptWithIV(bArr, bArr2, generateRandomBlock(16));
    }

    public static byte[] symmetricDecryptHMACIV(byte[] bArr, byte[] bArr2, byte[] bArr3) throws CryptoException {
        byte[] bArrDoFinal;
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("key is null");
        }
        if (bArr3 == null) {
            throw new IllegalArgumentException("hmacSecret is null");
        }
        if (bArr2.length < 16) {
            logger.debug("symmetricDecryptHMACIV used with shorter than 16 byte key!");
        }
        System.arraycopy(bArr2, 0, new byte[16], 0, 16);
        Passable passable = new Passable(new byte[16]);
        byte[] bArrSymmetricDecrypt = symmetricDecrypt(bArr, bArr2, passable);
        try {
            MemoryStream memoryStream = new MemoryStream();
            try {
                memoryStream.write((byte[]) passable.getValue(), ((byte[]) passable.getValue()).length - 3, 3);
                memoryStream.write(bArrSymmetricDecrypt, 0, bArrSymmetricDecrypt.length);
                memoryStream.seek(0L, SeekOrigin.BEGIN);
                try {
                    Mac mac = Mac.getInstance("HmacSHA1");
                    mac.init(new SecretKeySpec(bArr3, "HmacSHA1"));
                    bArrDoFinal = mac.doFinal(memoryStream.toByteArray());
                } catch (InvalidKeyException | NoSuchAlgorithmException e) {
                    throw new CryptoException("NetFilterEncryption was unable to decrypt packet", e);
                }
            } finally {
            }
            for (int i = 0; i < ((byte[]) passable.getValue()).length - 3; i++) {
                if (bArrDoFinal[i] != ((byte[]) passable.getValue())[i]) {
                    throw new CryptoException("NetFilterEncryption was unable to decrypt packet: HMAC from server did not match computed HMAC.");
                }
            }
            memoryStream.close();
            return bArrSymmetricDecrypt;
        } catch (Exception unused) {
            throw new RuntimeException("MemoryStream closed");
        }
    }

    public static byte[] symmetricEncryptWithHMACIV(byte[] bArr, byte[] bArr2, byte[] bArr3) throws CryptoException {
        if (bArr == null) {
            throw new IllegalArgumentException("input is null");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("key is null");
        }
        if (bArr3 == null) {
            throw new IllegalArgumentException("hmacSecret is null");
        }
        byte[] bArr4 = new byte[16];
        byte[] bArrGenerateRandomBlock = generateRandomBlock(3);
        System.arraycopy(bArrGenerateRandomBlock, 0, bArr4, 16 - bArrGenerateRandomBlock.length, bArrGenerateRandomBlock.length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(bArrGenerateRandomBlock, 0, bArrGenerateRandomBlock.length);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(bArr3, "HmacSHA1"));
            System.arraycopy(mac.doFinal(byteArrayOutputStream.toByteArray()), 0, bArr4, 0, 16 - bArrGenerateRandomBlock.length);
            return symmetricEncryptWithIV(bArr, bArr2, bArr4);
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            throw new CryptoException("NetFilterEncryption was unable to decrypt packet", e);
        }
    }
}
