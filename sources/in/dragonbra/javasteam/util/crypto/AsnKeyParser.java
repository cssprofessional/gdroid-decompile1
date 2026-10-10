package in.dragonbra.javasteam.util.crypto;

import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.math.BigInteger;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AsnKeyParser {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger logger = LogManager.getLogger(AsnKeyParser.class);
    private final AsnParser _parser;

    public AsnKeyParser(List<Byte> list) {
        this._parser = new AsnParser(list);
    }

    public static byte[] trimLeadingZero(byte[] bArr) {
        if (bArr[0] == 0 && bArr.length > 1) {
            byte[] bArr2 = new byte[bArr.length - 1];
            System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 1);
            return bArr2;
        }
        byte[] bArr3 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        return bArr3;
    }

    public static boolean equalOid(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public BigInteger[] parseRSAPublicKey() throws BerDecodeException {
        int iCurrentPosition = this._parser.currentPosition();
        int iNextSequence = this._parser.nextSequence();
        if (iNextSequence != this._parser.remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect Sequence Size. Specified: %d, Remaining: %d", Integer.valueOf(iNextSequence), Integer.valueOf(this._parser.remainingBytes())), iCurrentPosition);
        }
        int iCurrentPosition2 = this._parser.currentPosition();
        int iNextSequence2 = this._parser.nextSequence();
        if (iNextSequence2 > this._parser.remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect AlgorithmIdentifier Size. Specified: %d, Remaining: %d", Integer.valueOf(iNextSequence2), Integer.valueOf(this._parser.remainingBytes())), iCurrentPosition2);
        }
        int iCurrentPosition3 = this._parser.currentPosition();
        if (!equalOid(this._parser.nextOID(), new byte[]{42, -122, 72, -122, -9, 13, 1, 1, 1})) {
            throw new BerDecodeException("Expected OID 1.2.840.113549.1.1.1", iCurrentPosition3);
        }
        if (this._parser.isNextNull()) {
            this._parser.nextNull();
        } else {
            this._parser.next();
        }
        int iCurrentPosition4 = this._parser.currentPosition();
        int iNextBitString = this._parser.nextBitString();
        if (iNextBitString > this._parser.remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect PublicKey Size. Specified: %d, Remaining: %d", Integer.valueOf(iNextBitString), Integer.valueOf(this._parser.remainingBytes())), iCurrentPosition4);
        }
        int iCurrentPosition5 = this._parser.currentPosition();
        int iNextSequence3 = this._parser.nextSequence();
        if (iNextSequence3 < this._parser.remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect RSAPublicKey Size. Specified: %d, Remaining: %d", Integer.valueOf(iNextSequence3), Integer.valueOf(this._parser.remainingBytes())), iCurrentPosition5);
        }
        return new BigInteger[]{new BigInteger(1, trimLeadingZero(this._parser.nextInteger())), new BigInteger(1, trimLeadingZero(this._parser.nextInteger()))};
    }
}
