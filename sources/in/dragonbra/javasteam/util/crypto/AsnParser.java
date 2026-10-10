package in.dragonbra.javasteam.util.crypto;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class AsnParser {
    private final int initialCount;
    private final List<Byte> octets;

    public AsnParser(Collection<Byte> collection) {
        ArrayList arrayList = new ArrayList();
        this.octets = arrayList;
        arrayList.addAll(collection);
        this.initialCount = arrayList.size();
    }

    public int currentPosition() {
        return this.initialCount - this.octets.size();
    }

    public int remainingBytes() {
        return this.octets.size();
    }

    public int getLength() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        int i = nextOctet & 127;
        if (nextOctet == i) {
            return nextOctet;
        }
        if (i > 4) {
            throw new BerDecodeException(String.format("Invalid Length Encoding. Length uses %d _octets", Integer.valueOf(i)), iCurrentPosition);
        }
        int nextOctet2 = 0;
        while (true) {
            int i2 = i - 1;
            if (i == 0) {
                return nextOctet2 & 255;
            }
            nextOctet2 = (nextOctet2 << 8) | getNextOctet();
            i = i2;
        }
    }

    public byte[] next() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        getNextOctet();
        int length = getLength();
        if (length > remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect Size. Specified: %d, Remaining: %d", Integer.valueOf(length), Integer.valueOf(remainingBytes())), iCurrentPosition);
        }
        return getOctets(length);
    }

    public byte getNextOctet() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        if (remainingBytes() == 0) {
            throw new BerDecodeException(String.format("Incorrect size. Specified: %d, Remaining: %d", 1, Integer.valueOf(remainingBytes())), iCurrentPosition);
        }
        return getOctets(1)[0];
    }

    private byte[] getOctets(int i) throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        if (i > remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect size. Specified: %d, Remaining: %d", Integer.valueOf(i), Integer.valueOf(remainingBytes())), iCurrentPosition);
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = this.octets.remove(0).byteValue();
        }
        return bArr;
    }

    public boolean isNextNull() {
        return 5 == this.octets.get(0).byteValue();
    }

    public int nextNull() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        if (5 != nextOctet) {
            throw new BerDecodeException(String.format("Expected Null. Specified Identifier: %d", Byte.valueOf(nextOctet)), iCurrentPosition);
        }
        byte nextOctet2 = getNextOctet();
        if (nextOctet2 == 0) {
            return 0;
        }
        throw new BerDecodeException(String.format("Null has non-zero size. Size: %d", Byte.valueOf(nextOctet2)), iCurrentPosition);
    }

    public boolean isNextSequence() {
        return 48 == this.octets.get(0).byteValue();
    }

    public int nextSequence() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        if (48 != nextOctet) {
            throw new BerDecodeException(String.format("Expected Sequence. Specified Identifier: %d", Byte.valueOf(nextOctet)), iCurrentPosition);
        }
        int length = getLength();
        if (length <= remainingBytes()) {
            return length;
        }
        throw new BerDecodeException(String.format("Incorrect Sequence Size. Specified: %d, Remaining: %d", Integer.valueOf(length), Integer.valueOf(remainingBytes())), iCurrentPosition);
    }

    public boolean isNextOctetString() {
        return 4 == this.octets.get(0).byteValue();
    }

    public int nextOctetString() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        if (4 != nextOctet) {
            throw new BerDecodeException(String.format("Expected Octet String.Specified Identifier: %d", Byte.valueOf(nextOctet)), iCurrentPosition);
        }
        int length = getLength();
        if (length <= remainingBytes()) {
            return length;
        }
        throw new BerDecodeException(String.format("Incorrect Octet String Size. Specified: %d, Remaining: %d", Integer.valueOf(length), Integer.valueOf(remainingBytes())), iCurrentPosition);
    }

    public boolean isNextBitString() {
        return 3 == this.octets.get(0).byteValue();
    }

    public int nextBitString() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        if (3 != nextOctet) {
            throw new BerDecodeException(String.format("Expected Bit String. Specified Identifier: %d", Byte.valueOf(nextOctet)), iCurrentPosition);
        }
        int length = getLength();
        byte bByteValue = this.octets.get(0).byteValue();
        this.octets.remove(0);
        int i = length - 1;
        if (bByteValue == 0) {
            return i;
        }
        throw new BerDecodeException("The first octet of BitString must be 0", iCurrentPosition);
    }

    public boolean isNextInteger() {
        return 2 == this.octets.get(0).byteValue();
    }

    public byte[] nextInteger() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        if (2 != nextOctet) {
            throw new BerDecodeException(String.format("Expected Integer. Specified Identifier: %d", Byte.valueOf(nextOctet)), iCurrentPosition);
        }
        int length = getLength();
        if (length > remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect Integer Size. Specified: %d, Remaining: %d", Integer.valueOf(length), Integer.valueOf(remainingBytes())), iCurrentPosition);
        }
        return getOctets(length);
    }

    public byte[] nextOID() throws BerDecodeException {
        int iCurrentPosition = currentPosition();
        byte nextOctet = getNextOctet();
        if (6 != nextOctet) {
            throw new BerDecodeException(String.format("Expected Object Identifier. Specified Identifier: %d", Byte.valueOf(nextOctet)), iCurrentPosition);
        }
        int length = getLength();
        if (length > remainingBytes()) {
            throw new BerDecodeException(String.format("Incorrect Object Identifier Size. Specified: %d, Remaining: %d", Integer.valueOf(length), Integer.valueOf(remainingBytes())), iCurrentPosition);
        }
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = this.octets.remove(0).byteValue();
        }
        return bArr;
    }
}
