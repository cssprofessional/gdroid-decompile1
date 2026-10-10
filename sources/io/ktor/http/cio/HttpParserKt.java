package io.ktor.http.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.http.cio.internals.AsciiCharTree;
import io.ktor.http.cio.internals.CharArrayBuilder;
import io.ktor.http.cio.internals.MutableRange;
import io.ktor.http.cio.internals.TokenizerKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.LineEndingMode;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: HttpParser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpParserKt {
    public static final Set<Character> hostForbiddenSymbols = SetsKt__SetsKt.setOf((Object[]) new Character[]{'/', '?', '#', '@'});
    public static final int httpLineEndings;
    public static final AsciiCharTree<String> versions;

    /* JADX INFO: renamed from: io.ktor.http.cio.HttpParserKt$parseHeaders$2, reason: invalid class name */
    /* JADX INFO: compiled from: HttpParser.kt */
    @DebugMetadata(c = "io.ktor.http.cio.HttpParserKt", f = "HttpParser.kt", l = {122}, m = "parseHeaders", v = 1)
    public static final class AnonymousClass2 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpParserKt.parseHeaders(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.cio.HttpParserKt$parseResponse$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpParser.kt */
    @DebugMetadata(c = "io.ktor.http.cio.HttpParserKt", f = "HttpParser.kt", l = {81, SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER}, m = "parseResponse", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpParserKt.parseResponse(null, this);
        }
    }

    public static final boolean parseVersion$lambda$1(char c, int i) {
        return c == ' ';
    }

    public static final boolean statusOutOfRange(int i) {
        return i < 100 || i > 999;
    }

    static {
        LineEndingMode.Companion companion = LineEndingMode.Companion;
        httpLineEndings = LineEndingMode.m8143plus1TerO4(companion.m8147getCRLFf0jXZW8(), companion.m8148getLFf0jXZW8());
        versions = AsciiCharTree.Companion.build(CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"HTTP/1.0", "HTTP/1.1"}));
    }

    public static final int getHttpLineEndings() {
        return httpLineEndings;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00e0 A[Catch: all -> 0x0047, TryCatch #2 {all -> 0x0047, blocks: (B:13:0x003f, B:36:0x00dc, B:38:0x00e0, B:40:0x00e8), top: B:50:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object parseResponse(io.ktor.utils.io.ByteReadChannel r14, kotlin.coroutines.Continuation<? super io.ktor.http.cio.Response> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.HttpParserKt.parseResponse(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074 A[Catch: all -> 0x0079, TryCatch #2 {all -> 0x0079, blocks: (B:23:0x006c, B:25:0x0074, B:29:0x007c, B:32:0x0090, B:33:0x00b0, B:34:0x00b7, B:35:0x00b8, B:37:0x00c4), top: B:47:0x006c }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c A[Catch: all -> 0x0079, TryCatch #2 {all -> 0x0079, blocks: (B:23:0x006c, B:25:0x0074, B:29:0x007c, B:32:0x0090, B:33:0x00b0, B:34:0x00b7, B:35:0x00b8, B:37:0x00c4), top: B:47:0x006c }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0068 -> B:47:0x006c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object parseHeaders(io.ktor.utils.io.ByteReadChannel r11, io.ktor.http.cio.internals.CharArrayBuilder r12, io.ktor.http.cio.internals.MutableRange r13, kotlin.coroutines.Continuation<? super io.ktor.http.cio.HttpHeadersMap> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.HttpParserKt.parseHeaders(io.ktor.utils.io.ByteReadChannel, io.ktor.http.cio.internals.CharArrayBuilder, io.ktor.http.cio.internals.MutableRange, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object parseHeaders$default(ByteReadChannel byteReadChannel, CharArrayBuilder charArrayBuilder, MutableRange mutableRange, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            mutableRange = new MutableRange(0, 0);
        }
        return parseHeaders(byteReadChannel, charArrayBuilder, mutableRange, continuation);
    }

    public static final void validateHostHeader(CharSequence charSequence) {
        if (StringsKt__StringsKt.endsWith$default(charSequence, (CharSequence) ":", false, 2, (Object) null)) {
            throw new ParserException("Host header with ':' should contains port: " + ((Object) charSequence));
        }
        for (int i = 0; i < charSequence.length(); i++) {
            char cCharAt = charSequence.charAt(i);
            Set<Character> set = hostForbiddenSymbols;
            if (set.contains(Character.valueOf(cCharAt))) {
                throw new ParserException("Host cannot contain any of the following symbols: " + set);
            }
        }
    }

    public static final CharSequence parseVersion(CharSequence charSequence, MutableRange mutableRange) {
        TokenizerKt.skipSpaces(charSequence, mutableRange);
        if (mutableRange.getStart() >= mutableRange.getEnd()) {
            throw new IllegalStateException(("Failed to parse version: " + ((Object) charSequence)).toString());
        }
        String str = (String) CollectionsKt___CollectionsKt.singleOrNull(AsciiCharTree.search$default(versions, charSequence, mutableRange.getStart(), mutableRange.getEnd(), false, new Function2() { // from class: io.ktor.http.cio.HttpParserKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(HttpParserKt.parseVersion$lambda$1(((Character) obj).charValue(), ((Integer) obj2).intValue()));
            }
        }, 8, null));
        if (str != null) {
            mutableRange.setStart(mutableRange.getStart() + str.length());
            return str;
        }
        unsupportedHttpVersion(TokenizerKt.nextToken(charSequence, mutableRange));
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
    
        r7.setStart(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int parseStatusCode(java.lang.CharSequence r6, io.ktor.http.cio.internals.MutableRange r7) {
        /*
            io.ktor.http.cio.internals.TokenizerKt.skipSpaces(r6, r7)
            int r0 = r7.getEnd()
            int r1 = r7.getStart()
            int r2 = r7.getEnd()
            r3 = 0
        L10:
            if (r1 >= r2) goto L7d
            char r4 = r6.charAt(r1)
            r5 = 32
            if (r4 != r5) goto L3e
            boolean r6 = statusOutOfRange(r3)
            if (r6 != 0) goto L22
            r0 = r1
            goto L7d
        L22:
            io.ktor.http.cio.ParserException r6 = new io.ktor.http.cio.ParserException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Status-code must be 3-digit. Status received: "
            r7.append(r0)
            r7.append(r3)
            r0 = 46
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L3e:
            r5 = 48
            if (r5 > r4) goto L4e
            r5 = 58
            if (r4 >= r5) goto L4e
            int r3 = r3 * 10
            int r4 = r4 + (-48)
            int r3 = r3 + r4
            int r1 = r1 + 1
            goto L10
        L4e:
            int r0 = r7.getStart()
            int r7 = io.ktor.http.cio.internals.TokenizerKt.findSpaceOrEnd(r6, r7)
            java.lang.CharSequence r6 = r6.subSequence(r0, r7)
            java.lang.String r6 = r6.toString()
            java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Illegal digit "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r1 = " in status code "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r7.<init>(r6)
            throw r7
        L7d:
            r7.setStart(r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.cio.HttpParserKt.parseStatusCode(java.lang.CharSequence, io.ktor.http.cio.internals.MutableRange):int");
    }

    public static final int parseHeaderName(CharArrayBuilder text, MutableRange range) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(range, "range");
        int end = range.getEnd();
        for (int start = range.getStart(); start < end; start++) {
            char cCharAt = text.charAt(start);
            if (cCharAt == ':' && start != range.getStart()) {
                range.setStart(start + 1);
                return start;
            }
            if (isDelimiter(cCharAt)) {
                parseHeaderNameFailed(text, start, range.getStart(), cCharAt);
                throw new KotlinNothingValueException();
            }
        }
        noColonFound(text, range);
        throw new KotlinNothingValueException();
    }

    public static final Void parseHeaderNameFailed(CharArrayBuilder charArrayBuilder, int i, int i2, char c) {
        if (c == ':') {
            throw new ParserException("Empty header names are not allowed as per RFC7230.");
        }
        if (i == i2) {
            throw new ParserException("Multiline headers via line folding is not supported since it is deprecated as per RFC7230.");
        }
        characterIsNotAllowed(charArrayBuilder, c);
        throw new KotlinNothingValueException();
    }

    public static final void parseHeaderValue(CharArrayBuilder text, MutableRange range) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(range, "range");
        int start = range.getStart();
        int end = range.getEnd();
        int iSkipSpacesAndHorizontalTabs = TokenizerKt.skipSpacesAndHorizontalTabs(text, start, end);
        if (iSkipSpacesAndHorizontalTabs >= end) {
            range.setStart(end);
            return;
        }
        int i = iSkipSpacesAndHorizontalTabs;
        int i2 = i;
        while (i < end) {
            char cCharAt = text.charAt(i);
            if (cCharAt != '\t') {
                if (cCharAt == '\n' || cCharAt == '\r') {
                    characterIsNotAllowed(text, cCharAt);
                    throw new KotlinNothingValueException();
                }
                if (cCharAt != ' ') {
                    i2 = i;
                }
            }
            i++;
        }
        range.setStart(iSkipSpacesAndHorizontalTabs);
        range.setEnd(i2 + 1);
    }

    public static final Void noColonFound(CharSequence charSequence, MutableRange mutableRange) {
        throw new ParserException("No colon in HTTP header in " + charSequence.subSequence(mutableRange.getStart(), mutableRange.getEnd()).toString() + " in builder: \n" + ((Object) charSequence));
    }

    public static final Void characterIsNotAllowed(CharSequence charSequence, char c) {
        throw new ParserException("Character with code " + (c & 255) + " is not allowed in header names, \n" + ((Object) charSequence));
    }

    public static final boolean isDelimiter(char c) {
        return Intrinsics.compare((int) c, 32) <= 0 || StringsKt__StringsKt.contains$default((CharSequence) "\"(),/:;<=>?@[\\]{}", c, false, 2, (Object) null);
    }

    public static final Void unsupportedHttpVersion(CharSequence charSequence) {
        throw new ParserException("Unsupported HTTP version: " + ((Object) charSequence));
    }
}
