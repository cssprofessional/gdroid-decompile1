package okhttp3.internal;

import java.io.EOFException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.idn.IdnaMappingTableInstanceKt;
import okhttp3.internal.idn.Punycode;
import okio.Buffer;

/* JADX INFO: compiled from: -HostnamesCommon.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class _HostnamesCommonKt {
    public static final Regex VERIFY_AS_IP_ADDRESS = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static final boolean canParseAsIpAddress(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return VERIFY_AS_IP_ADDRESS.matches(str);
    }

    public static final boolean containsInvalidLabelLengths(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        if (1 <= length && length < 254) {
            int i = 0;
            while (true) {
                int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '.', i, false, 4, (Object) null);
                int length2 = iIndexOf$default == -1 ? str.length() - i : iIndexOf$default - i;
                if (1 > length2 || length2 >= 64) {
                    break;
                }
                if (iIndexOf$default == -1 || iIndexOf$default == str.length() - 1) {
                    break;
                }
                i = iIndexOf$default + 1;
            }
            return false;
        }
        return true;
    }

    public static final boolean containsInvalidHostnameAsciiCodes(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Intrinsics.compare((int) cCharAt, 31) <= 0 || Intrinsics.compare((int) cCharAt, 127) >= 0 || StringsKt__StringsKt.indexOf$default((CharSequence) " #%/:?@[\\]", cCharAt, 0, false, 6, (Object) null) != -1) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009b, code lost:
    
        if (r13 == 16) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009d, code lost:
    
        if (r14 != (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009f, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a0, code lost:
    
        kotlin.collections.ArraysKt___ArraysJvmKt.copyInto(r9, r9, 16 - (r13 - r14), r14, r13);
        kotlin.collections.ArraysKt___ArraysJvmKt.fill(r9, (byte) 0, r14, (16 - r13) + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ad, code lost:
    
        return r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final byte[] decodeIpv6(java.lang.String r18, int r19, int r20) {
        /*
            r6 = r18
            r7 = r20
            java.lang.String r0 = "input"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            r8 = 16
            byte[] r9 = new byte[r8]
            r11 = -1
            r12 = r19
            r14 = r11
            r15 = r14
            r13 = 0
        L13:
            r16 = 0
            if (r12 >= r7) goto L9b
            if (r13 != r8) goto L1a
            return r16
        L1a:
            int r5 = r12 + 2
            if (r5 > r7) goto L3d
            r4 = 4
            r17 = 0
            java.lang.String r1 = "::"
            r3 = 0
            r0 = r18
            r2 = r12
            r10 = r5
            r5 = r17
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith$default(r0, r1, r2, r3, r4, r5)
            if (r0 == 0) goto L3d
            if (r14 == r11) goto L33
            return r16
        L33:
            int r13 = r13 + 2
            if (r10 != r7) goto L3a
            r14 = r13
            goto L9b
        L3a:
            r15 = r10
            r14 = r13
            goto L6c
        L3d:
            if (r13 == 0) goto L4f
            r4 = 4
            r5 = 0
            java.lang.String r1 = ":"
            r3 = 0
            r0 = r18
            r2 = r12
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith$default(r0, r1, r2, r3, r4, r5)
            if (r0 == 0) goto L51
            int r12 = r12 + 1
        L4f:
            r15 = r12
            goto L6c
        L51:
            r4 = 4
            r5 = 0
            java.lang.String r1 = "."
            r3 = 0
            r0 = r18
            r2 = r12
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith$default(r0, r1, r2, r3, r4, r5)
            if (r0 == 0) goto L6b
            int r0 = r13 + (-2)
            boolean r0 = decodeIpv4Suffix(r6, r15, r7, r9, r0)
            if (r0 != 0) goto L68
            return r16
        L68:
            int r13 = r13 + 2
            goto L9b
        L6b:
            return r16
        L6c:
            r12 = r15
            r0 = 0
        L6e:
            if (r12 >= r7) goto L80
            char r1 = r6.charAt(r12)
            int r1 = okhttp3.internal._UtilCommonKt.parseHexDigit(r1)
            if (r1 == r11) goto L80
            int r0 = r0 << 4
            int r0 = r0 + r1
            int r12 = r12 + 1
            goto L6e
        L80:
            int r1 = r12 - r15
            if (r1 == 0) goto L9a
            r2 = 4
            if (r1 <= r2) goto L88
            goto L9a
        L88:
            int r1 = r13 + 1
            int r2 = r0 >>> 8
            r2 = r2 & 255(0xff, float:3.57E-43)
            byte r2 = (byte) r2
            r9[r13] = r2
            int r13 = r13 + 2
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r9[r1] = r0
            goto L13
        L9a:
            return r16
        L9b:
            if (r13 == r8) goto Lad
            if (r14 != r11) goto La0
            return r16
        La0:
            int r0 = r13 - r14
            int r0 = 16 - r0
            kotlin.collections.ArraysKt___ArraysJvmKt.copyInto(r9, r9, r0, r14, r13)
            int r8 = r8 - r13
            int r8 = r8 + r14
            r0 = 0
            kotlin.collections.ArraysKt___ArraysJvmKt.fill(r9, r0, r14, r8)
        Lad:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal._HostnamesCommonKt.decodeIpv6(java.lang.String, int, int):byte[]");
    }

    public static final boolean decodeIpv4Suffix(String input, int i, int i2, byte[] address, int i3) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(address, "address");
        int i4 = i3;
        while (i < i2) {
            if (i4 == address.length) {
                return false;
            }
            if (i4 != i3) {
                if (input.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char cCharAt = input.charAt(i5);
                if (Intrinsics.compare((int) cCharAt, 48) < 0 || Intrinsics.compare((int) cCharAt, 57) > 0) {
                    break;
                }
                if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i == 0) {
                return false;
            }
            address[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        return i4 == i3 + 4;
    }

    public static final String inet6AddressToAscii(byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < address.length) {
            int i5 = i3;
            while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        Buffer buffer = new Buffer();
        while (i2 < address.length) {
            if (i2 == i) {
                buffer.writeByte(58);
                i2 += i4;
                if (i2 == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i2 > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong((_UtilCommonKt.and(address[i2], 255) << 8) | _UtilCommonKt.and(address[i2 + 1], 255));
                i2 += 2;
            }
        }
        return buffer.readUtf8();
    }

    public static final byte[] canonicalizeInetAddress(byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        return isMappedIpv4Address(address) ? ArraysKt___ArraysKt.sliceArray(address, RangesKt___RangesKt.until(12, 16)) : address;
    }

    public static final boolean isMappedIpv4Address(byte[] bArr) {
        if (bArr.length != 16) {
            return false;
        }
        for (int i = 0; i < 10; i++) {
            if (bArr[i] != 0) {
                return false;
            }
        }
        return bArr[10] == -1 && bArr[11] == -1;
    }

    public static final String inet4AddressToAscii(byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (address.length != 4) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return new Buffer().writeDecimalLong(_UtilCommonKt.and(address[0], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[1], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[2], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[3], 255)).readUtf8();
    }

    public static final String toCanonicalHost(String str) {
        byte[] bArrDecodeIpv6;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
            if (StringsKt__StringsJVMKt.startsWith$default(str, "[", false, 2, null) && StringsKt__StringsJVMKt.endsWith$default(str, "]", false, 2, null)) {
                bArrDecodeIpv6 = decodeIpv6(str, 1, str.length() - 1);
            } else {
                bArrDecodeIpv6 = decodeIpv6(str, 0, str.length());
            }
            if (bArrDecodeIpv6 == null) {
                return null;
            }
            byte[] bArrCanonicalizeInetAddress = canonicalizeInetAddress(bArrDecodeIpv6);
            if (bArrCanonicalizeInetAddress.length == 16) {
                return inet6AddressToAscii(bArrCanonicalizeInetAddress);
            }
            if (bArrCanonicalizeInetAddress.length == 4) {
                return inet4AddressToAscii(bArrCanonicalizeInetAddress);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
        }
        String strIdnToAscii = idnToAscii(str);
        if (strIdnToAscii == null || strIdnToAscii.length() == 0 || containsInvalidHostnameAsciiCodes(strIdnToAscii) || containsInvalidLabelLengths(strIdnToAscii)) {
            return null;
        }
        return strIdnToAscii;
    }

    public static final String idnToAscii(String host) throws EOFException {
        Intrinsics.checkNotNullParameter(host, "host");
        Buffer bufferWriteUtf8 = new Buffer().writeUtf8(host);
        Buffer buffer = new Buffer();
        while (!bufferWriteUtf8.exhausted()) {
            if (!IdnaMappingTableInstanceKt.getIDNA_MAPPING_TABLE().map(bufferWriteUtf8.readUtf8CodePoint(), buffer)) {
                return null;
            }
        }
        bufferWriteUtf8.writeUtf8(_NormalizeJvmKt.normalizeNfc(buffer.readUtf8()));
        Punycode punycode = Punycode.INSTANCE;
        String strDecode = punycode.decode(bufferWriteUtf8.readUtf8());
        if (strDecode != null && Intrinsics.areEqual(strDecode, _NormalizeJvmKt.normalizeNfc(strDecode))) {
            return punycode.encode(strDecode);
        }
        return null;
    }
}
