package io.ktor.http;

import io.ktor.utils.io.charsets.EncodingKt;
import io.ktor.utils.io.core.BufferKt;
import io.ktor.utils.io.core.ByteReadPacketKt;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.CharRange;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Buffer;
import kotlinx.io.Source;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: compiled from: Codecs.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CodecsKt {
    public static final Set<Character> ATTRIBUTE_CHARACTERS;
    public static final Set<Character> HEX_ALPHABET;
    public static final List<Byte> SPECIAL_SYMBOLS;
    public static final Set<Byte> URL_ALPHABET;
    public static final Set<Character> URL_ALPHABET_CHARS;
    public static final List<Byte> URL_PROTOCOL_PART;
    public static final Set<Character> VALID_PATH_PART;

    public static final int charToHexDigit(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        if ('a' > c || c >= 'g') {
            return -1;
        }
        return c - 'W';
    }

    public static final char hexDigitToChar(int i) {
        return (char) ((i < 0 || i >= 10) ? ((char) (i + 65)) - '\n' : i + 48);
    }

    static {
        List listPlus = CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus(new CharRange('a', 'z'), new CharRange('A', Matrix.MATRIX_TYPE_ZERO)), (Iterable) new CharRange('0', '9'));
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listPlus, 10));
        Iterator it = listPlus.iterator();
        while (it.hasNext()) {
            arrayList.add(Byte.valueOf((byte) ((Character) it.next()).charValue()));
        }
        URL_ALPHABET = CollectionsKt___CollectionsKt.toSet(arrayList);
        URL_ALPHABET_CHARS = CollectionsKt___CollectionsKt.toSet(CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus(new CharRange('a', 'z'), new CharRange('A', Matrix.MATRIX_TYPE_ZERO)), (Iterable) new CharRange('0', '9')));
        HEX_ALPHABET = CollectionsKt___CollectionsKt.toSet(CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus(new CharRange('a', 'f'), new CharRange('A', 'F')), (Iterable) new CharRange('0', '9')));
        Set of = SetsKt__SetsKt.setOf((Object[]) new Character[]{':', '/', '?', '#', '[', ']', '@', '!', '$', '&', '\'', '(', ')', '*', ',', ';', '=', '-', '.', '_', '~', '+'});
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(of, 10));
        Iterator it2 = of.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Byte.valueOf((byte) ((Character) it2.next()).charValue()));
        }
        URL_PROTOCOL_PART = arrayList2;
        VALID_PATH_PART = SetsKt__SetsKt.setOf((Object[]) new Character[]{':', '@', '!', '$', '&', '\'', '(', ')', '*', '+', ',', ';', '=', '-', '.', '_', '~'});
        ATTRIBUTE_CHARACTERS = SetsKt___SetsKt.plus(URL_ALPHABET_CHARS, SetsKt__SetsKt.setOf((Object[]) new Character[]{'!', '#', '$', '&', '+', '-', '.', '^', '_', '`', '|', '~'}));
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Character[]{'-', '.', '_', '~'});
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it3 = listListOf.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Byte.valueOf((byte) ((Character) it3.next()).charValue()));
        }
        SPECIAL_SYMBOLS = arrayList3;
    }

    public static /* synthetic */ String encodeURLQueryComponent$default(String str, boolean z, boolean z2, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            charset = Charsets.UTF_8;
        }
        return encodeURLQueryComponent(str, z, z2, charset);
    }

    public static final String encodeURLQueryComponent(String str, final boolean z, final boolean z2, Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        final StringBuilder sb = new StringBuilder();
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        Intrinsics.checkNotNullExpressionValue(charsetEncoderNewEncoder, "newEncoder(...)");
        forEach(EncodingKt.encode$default(charsetEncoderNewEncoder, str, 0, 0, 6, null), new Function1() { // from class: io.ktor.http.CodecsKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CodecsKt.encodeURLQueryComponent$lambda$0$0(z2, sb, z, ((Byte) obj).byteValue());
            }
        });
        return sb.toString();
    }

    public static final Unit encodeURLQueryComponent$lambda$0$0(boolean z, StringBuilder sb, boolean z2, byte b) {
        if (b == 32) {
            if (z) {
                sb.append('+');
            } else {
                sb.append("%20");
            }
        } else if (URL_ALPHABET.contains(Byte.valueOf(b)) || (!z2 && URL_PROTOCOL_PART.contains(Byte.valueOf(b)))) {
            sb.append((char) b);
        } else {
            sb.append(percentEncode(b));
        }
        return Unit.INSTANCE;
    }

    public static final String encodeURLPathPart(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return encodeURLPath$default(str, true, false, 2, null);
    }

    public static /* synthetic */ String encodeURLPath$default(String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return encodeURLPath(str, z, z2);
    }

    public static final String encodeURLPath(String str, boolean z, boolean z2) {
        int i;
        Intrinsics.checkNotNullParameter(str, "<this>");
        final StringBuilder sb = new StringBuilder();
        Charset charset = Charsets.UTF_8;
        int i2 = 0;
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if ((!z && cCharAt == '/') || URL_ALPHABET_CHARS.contains(Character.valueOf(cCharAt)) || VALID_PATH_PART.contains(Character.valueOf(cCharAt))) {
                sb.append(cCharAt);
                i2++;
            } else {
                if (!z2 && cCharAt == '%' && (i = i2 + 2) < str.length()) {
                    Set<Character> set = HEX_ALPHABET;
                    int i3 = i2 + 1;
                    if (set.contains(Character.valueOf(str.charAt(i3))) && set.contains(Character.valueOf(str.charAt(i)))) {
                        sb.append(cCharAt);
                        sb.append(str.charAt(i3));
                        sb.append(str.charAt(i));
                        i2 += 3;
                    }
                }
                int i4 = CharsKt__CharKt.isSurrogate(cCharAt) ? 2 : 1;
                CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
                Intrinsics.checkNotNullExpressionValue(charsetEncoderNewEncoder, "newEncoder(...)");
                int i5 = i4 + i2;
                forEach(EncodingKt.encode(charsetEncoderNewEncoder, str, i2, i5), new Function1() { // from class: io.ktor.http.CodecsKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return CodecsKt.encodeURLPath$lambda$0$0(sb, ((Byte) obj).byteValue());
                    }
                });
                i2 = i5;
            }
        }
        return sb.toString();
    }

    public static final Unit encodeURLPath$lambda$0$0(StringBuilder sb, byte b) {
        sb.append(percentEncode(b));
        return Unit.INSTANCE;
    }

    public static /* synthetic */ String encodeURLParameter$default(String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return encodeURLParameter(str, z);
    }

    public static final String encodeURLParameter(String str, final boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        final StringBuilder sb = new StringBuilder();
        CharsetEncoder charsetEncoderNewEncoder = Charsets.UTF_8.newEncoder();
        Intrinsics.checkNotNullExpressionValue(charsetEncoderNewEncoder, "newEncoder(...)");
        forEach(EncodingKt.encode$default(charsetEncoderNewEncoder, str, 0, 0, 6, null), new Function1() { // from class: io.ktor.http.CodecsKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CodecsKt.encodeURLParameter$lambda$0$0(sb, z, ((Byte) obj).byteValue());
            }
        });
        return sb.toString();
    }

    public static final Unit encodeURLParameter$lambda$0$0(StringBuilder sb, boolean z, byte b) {
        if (URL_ALPHABET.contains(Byte.valueOf(b)) || SPECIAL_SYMBOLS.contains(Byte.valueOf(b))) {
            sb.append((char) b);
        } else if (z && b == 32) {
            sb.append('+');
        } else {
            sb.append(percentEncode(b));
        }
        return Unit.INSTANCE;
    }

    public static final String encodeURLParameterValue(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return encodeURLParameter(str, true);
    }

    public static /* synthetic */ String decodeURLQueryComponent$default(String str, int i, int i2, boolean z, Charset charset, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            charset = Charsets.UTF_8;
        }
        return decodeURLQueryComponent(str, i, i2, z, charset);
    }

    public static final String decodeURLQueryComponent(String str, int i, int i2, boolean z, Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return decodeScan(str, i, i2, z, charset);
    }

    public static /* synthetic */ String decodeURLPart$default(String str, int i, int i2, Charset charset, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            charset = Charsets.UTF_8;
        }
        return decodeURLPart(str, i, i2, charset);
    }

    public static final String decodeURLPart(String str, int i, int i2, Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return decodeScan(str, i, i2, false, charset);
    }

    public static final String decodeScan(String str, int i, int i2, boolean z, Charset charset) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (z && cCharAt == '+')) {
                return decodeImpl(str, i, i2, i3, z, charset);
            }
        }
        if (i == 0 && i2 == str.length()) {
            return str.toString();
        }
        String strSubstring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c6, code lost:
    
        r0.append(kotlin.text.StringsKt__StringsJVMKt.decodeToString$default(r9, 0, r4, false, 4, null));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String decodeImpl(java.lang.CharSequence r8, int r9, int r10, int r11, boolean r12, java.nio.charset.Charset r13) throws io.ktor.http.URLDecodeException {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.CodecsKt.decodeImpl(java.lang.CharSequence, int, int, int, boolean, java.nio.charset.Charset):java.lang.String");
    }

    public static final String percentEncode(byte b) {
        return StringsKt__StringsJVMKt.concatToString(new char[]{'%', hexDigitToChar((b & 255) >> 4), hexDigitToChar(b & 15)});
    }

    public static final void forEach(Source source, final Function1<? super Byte, Unit> function1) {
        ByteReadPacketKt.takeWhile(source, new Function1() { // from class: io.ktor.http.CodecsKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(CodecsKt.forEach$lambda$0(function1, (Buffer) obj));
            }
        });
    }

    public static final boolean forEach$lambda$0(Function1 function1, Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        while (BufferKt.canRead(buffer)) {
            function1.invoke(Byte.valueOf(buffer.readByte()));
        }
        return true;
    }
}
