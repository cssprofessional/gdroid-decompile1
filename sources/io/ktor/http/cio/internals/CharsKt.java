package io.ktor.http.cio.internals;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.http.HttpMethod;
import kotlin.KotlinNothingValueException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Chars.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CharsKt {
    public static final AsciiCharTree<HttpMethod> DefaultHttpMethods = AsciiCharTree.Companion.build(HttpMethod.Companion.getDefaultMethods(), new Function1() { // from class: io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Integer.valueOf(CharsKt.DefaultHttpMethods$lambda$0((HttpMethod) obj));
        }
    }, new Function2() { // from class: io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return Character.valueOf(CharsKt.DefaultHttpMethods$lambda$1((HttpMethod) obj, ((Integer) obj2).intValue()));
        }
    });
    public static final byte[] HexLetterTable;
    public static final long[] HexTable;

    /* JADX INFO: renamed from: io.ktor.http.cio.internals.CharsKt$writeIntHex$1, reason: invalid class name */
    /* JADX INFO: compiled from: Chars.kt */
    @DebugMetadata(c = "io.ktor.http.cio.internals.CharsKt", f = "Chars.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.IS_TESLA_DEPRECATED_FIELD_NUMBER, 118}, m = "writeIntHex", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public int I$3;
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return CharsKt.writeIntHex(null, 0, this);
        }
    }

    public static /* synthetic */ int hashCodeLowerCase$default(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        return hashCodeLowerCase(charSequence, i, i2);
    }

    public static final int hashCodeLowerCase(CharSequence charSequence, int i, int i2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int i3 = 0;
        while (i < i2) {
            int iCharAt = charSequence.charAt(i);
            if (65 <= iCharAt && iCharAt < 91) {
                iCharAt += 32;
            }
            i3 = (i3 * 31) + iCharAt;
            i++;
        }
        return i3;
    }

    public static /* synthetic */ boolean equalsLowerCase$default(CharSequence charSequence, int i, int i2, CharSequence charSequence2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        return equalsLowerCase(charSequence, i, i2, charSequence2);
    }

    public static final boolean equalsLowerCase(CharSequence charSequence, int i, int i2, CharSequence other) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i2 - i != other.length()) {
            return false;
        }
        for (int i3 = i; i3 < i2; i3++) {
            int iCharAt = charSequence.charAt(i3);
            if (65 <= iCharAt && iCharAt < 91) {
                iCharAt += 32;
            }
            int iCharAt2 = other.charAt(i3 - i);
            if (65 <= iCharAt2 && iCharAt2 < 91) {
                iCharAt2 += 32;
            }
            if (iCharAt != iCharAt2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0056 A[PHI: r6
      0x0056: PHI (r6v2 long) = (r6v1 long), (r6v0 long) binds: [B:18:0x0064, B:13:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        /*
            io.ktor.http.cio.internals.AsciiCharTree$Companion r0 = io.ktor.http.cio.internals.AsciiCharTree.Companion
            io.ktor.http.HttpMethod$Companion r1 = io.ktor.http.HttpMethod.Companion
            java.util.List r1 = r1.getDefaultMethods()
            io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda0 r2 = new io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda0
            r2.<init>()
            io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda1 r3 = new io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda1
            r3.<init>()
            io.ktor.http.cio.internals.AsciiCharTree r0 = r0.build(r1, r2, r3)
            io.ktor.http.cio.internals.CharsKt.DefaultHttpMethods = r0
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            r1 = 255(0xff, float:3.57E-43)
            r2 = 0
            r0.<init>(r2, r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            r3 = 10
            int r4 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r0, r3)
            r1.<init>(r4)
            java.util.Iterator r0 = r0.iterator()
        L2f:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L71
            r4 = r0
            kotlin.collections.IntIterator r4 = (kotlin.collections.IntIterator) r4
            int r4 = r4.nextInt()
            r5 = 48
            if (r5 > r4) goto L49
            r5 = 58
            if (r4 >= r5) goto L49
            long r4 = (long) r4
            r6 = 48
            long r4 = r4 - r6
            goto L69
        L49:
            long r4 = (long) r4
            r6 = 97
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 < 0) goto L5a
            r8 = 102(0x66, double:5.04E-322)
            int r8 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r8 > 0) goto L5a
        L56:
            long r4 = r4 - r6
            long r6 = (long) r3
            long r4 = r4 + r6
            goto L69
        L5a:
            r6 = 65
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 < 0) goto L67
            r8 = 70
            int r8 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r8 > 0) goto L67
            goto L56
        L67:
            r4 = -1
        L69:
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            r1.add(r4)
            goto L2f
        L71:
            long[] r0 = kotlin.collections.CollectionsKt___CollectionsKt.toLongArray(r1)
            io.ktor.http.cio.internals.CharsKt.HexTable = r0
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            r1 = 15
            r0.<init>(r2, r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r0, r3)
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
        L8b:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto Lac
            r2 = r0
            kotlin.collections.IntIterator r2 = (kotlin.collections.IntIterator) r2
            int r2 = r2.nextInt()
            if (r2 >= r3) goto L9e
            int r2 = r2 + 48
        L9c:
            byte r2 = (byte) r2
            goto La4
        L9e:
            int r2 = r2 + 97
            char r2 = (char) r2
            int r2 = r2 - r3
            char r2 = (char) r2
            goto L9c
        La4:
            java.lang.Byte r2 = java.lang.Byte.valueOf(r2)
            r1.add(r2)
            goto L8b
        Lac:
            byte[] r0 = kotlin.collections.CollectionsKt___CollectionsKt.toByteArray(r1)
            io.ktor.http.cio.internals.CharsKt.HexLetterTable = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.internals.CharsKt.<clinit>():void");
    }

    public static final int DefaultHttpMethods$lambda$0(HttpMethod it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getValue().length();
    }

    public static final char DefaultHttpMethods$lambda$1(HttpMethod m, int i) {
        Intrinsics.checkNotNullParameter(m, "m");
        return m.getValue().charAt(i);
    }

    public static final long parseHexLong(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        long[] jArr = HexTable;
        int length = charSequence.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            int iCharAt = charSequence.charAt(i) & 65535;
            long j2 = iCharAt < 255 ? jArr[iCharAt] : -1L;
            if (j2 == -1) {
                hexNumberFormatException(charSequence, i);
                throw new KotlinNothingValueException();
            }
            j = (j << 4) | j2;
        }
        return j;
    }

    public static final long parseDecLong(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length();
        if (length > 19) {
            numberFormatException(charSequence);
        }
        if (length == 19) {
            return parseDecLongWithCheck(charSequence);
        }
        long j = 0;
        for (int i = 0; i < length; i++) {
            long jCharAt = ((long) charSequence.charAt(i)) - 48;
            if (jCharAt < 0 || jCharAt > 9) {
                numberFormatException(charSequence, i);
            }
            j = (j << 3) + (j << 1) + jCharAt;
        }
        return j;
    }

    public static final long parseDecLongWithCheck(CharSequence charSequence) {
        int length = charSequence.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            long jCharAt = ((long) charSequence.charAt(i)) - 48;
            if (jCharAt < 0 || jCharAt > 9) {
                numberFormatException(charSequence, i);
            }
            j = (j << 3) + (j << 1) + jCharAt;
            if (j < 0) {
                numberFormatException(charSequence);
            }
        }
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object writeIntHex(io.ktor.utils.io.ByteWriteChannel r9, int r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) throws java.lang.Throwable {
        /*
            boolean r0 = r11 instanceof io.ktor.http.cio.internals.CharsKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r11
            io.ktor.http.cio.internals.CharsKt$writeIntHex$1 r0 = (io.ktor.http.cio.internals.CharsKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.http.cio.internals.CharsKt$writeIntHex$1 r0 = new io.ktor.http.cio.internals.CharsKt$writeIntHex$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 8
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L49
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2b
            goto L33
        L2b:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L33:
            int r9 = r0.I$2
            int r10 = r0.I$1
            int r2 = r0.I$0
            java.lang.Object r5 = r0.L$1
            byte[] r5 = (byte[]) r5
            java.lang.Object r6 = r0.L$0
            io.ktor.utils.io.ByteWriteChannel r6 = (io.ktor.utils.io.ByteWriteChannel) r6
            kotlin.ResultKt.throwOnFailure(r11)
            r7 = r9
            r9 = r6
            r6 = r10
            r10 = r2
            goto L76
        L49:
            kotlin.ResultKt.throwOnFailure(r11)
            if (r10 <= 0) goto L9a
            byte[] r11 = io.ktor.http.cio.internals.CharsKt.HexLetterTable
            r2 = 0
            r6 = r10
        L52:
            int r7 = r2 + 1
            if (r2 >= r3) goto L75
            int r2 = r6 >>> 28
            int r6 = r6 << 4
            if (r2 == 0) goto L73
            r8 = r11[r2]
            r0.L$0 = r9
            r0.L$1 = r11
            r0.I$0 = r10
            r0.I$1 = r6
            r0.I$2 = r7
            r0.I$3 = r2
            r0.label = r5
            java.lang.Object r2 = io.ktor.utils.io.ByteWriteChannelOperationsKt.writeByte(r9, r8, r0)
            if (r2 != r1) goto L75
            return r1
        L73:
            r2 = r7
            goto L52
        L75:
            r5 = r11
        L76:
            int r11 = r7 + 1
            if (r7 >= r3) goto L97
            int r2 = r6 >>> 28
            int r6 = r6 << 4
            r7 = r5[r2]
            r0.L$0 = r9
            r0.L$1 = r5
            r0.I$0 = r10
            r0.I$1 = r6
            r0.I$2 = r11
            r0.I$3 = r2
            r0.label = r4
            java.lang.Object r2 = io.ktor.utils.io.ByteWriteChannelOperationsKt.writeByte(r9, r7, r0)
            if (r2 != r1) goto L95
            return r1
        L95:
            r7 = r11
            goto L76
        L97:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L9a:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Does only work for positive numbers"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.internals.CharsKt.writeIntHex(io.ktor.utils.io.ByteWriteChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Void hexNumberFormatException(CharSequence charSequence, int i) {
        throw new NumberFormatException("Invalid HEX number: " + ((Object) charSequence) + ", wrong digit: " + charSequence.charAt(i));
    }

    public static final void numberFormatException(CharSequence charSequence, int i) {
        throw new NumberFormatException("Invalid number: " + ((Object) charSequence) + ", wrong digit: " + charSequence.charAt(i) + " at position " + i);
    }

    public static final void numberFormatException(CharSequence charSequence) {
        throw new NumberFormatException("Invalid number " + ((Object) charSequence) + ": too large for Long type");
    }
}
