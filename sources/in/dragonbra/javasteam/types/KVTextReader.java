package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.util.Passable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringBuilderJVMKt;

/* JADX INFO: compiled from: KVTextReader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class KVTextReader extends InputStreamReader {
    public static final Companion Companion = new Companion(null);
    public static final Map<Character, Character> ESCAPED_MAPPING = MapsKt__MapsKt.mapOf(TuplesKt.to('\\', '\\'), TuplesKt.to('n', '\n'), TuplesKt.to('r', '\r'), TuplesKt.to('t', '\t'));
    private Integer peekedChar;
    private final StringBuilder sb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
    
        throw new java.lang.IllegalStateException("LoadFromBuffer: missing {");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public KVTextReader(in.dragonbra.javasteam.types.KeyValue r7, java.io.InputStream r8) throws java.lang.IllegalStateException, java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "kv"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "inputStream"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.nio.charset.Charset r0 = java.nio.charset.StandardCharsets.UTF_8
            r6.<init>(r8, r0)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r0 = 128(0x80, float:1.8E-43)
            r8.<init>(r0)
            r6.sb = r8
            in.dragonbra.javasteam.util.Passable r8 = new in.dragonbra.javasteam.util.Passable
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r8.<init>(r0)
            in.dragonbra.javasteam.util.Passable r1 = new in.dragonbra.javasteam.util.Passable
            r1.<init>(r0)
        L24:
            java.lang.String r0 = r6.readToken(r8, r1)
            if (r0 == 0) goto L7d
            int r2 = r0.length()
            if (r2 != 0) goto L31
            goto L7d
        L31:
            r2 = 2
            r3 = 0
            if (r7 != 0) goto L3b
            in.dragonbra.javasteam.types.KeyValue r7 = new in.dragonbra.javasteam.types.KeyValue
            r7.<init>(r0, r3, r2, r3)
            goto L3e
        L3b:
            r7.setName(r0)
        L3e:
            java.lang.String r0 = r6.readToken(r8, r1)
            java.lang.Object r4 = r1.getValue()
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L52
            java.lang.String r0 = r6.readToken(r8, r1)
        L52:
            if (r0 == 0) goto L75
            java.lang.String r4 = "{"
            r5 = 0
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith$default(r0, r4, r5, r2, r3)
            if (r0 == 0) goto L75
            java.lang.Object r0 = r8.getValue()
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
            if (r0 == 0) goto L75
            r7.recursiveLoadFromBuffer$javasteam(r6)
            boolean r7 = r6.getEndOfStream()
            if (r7 == 0) goto L73
            goto L7d
        L73:
            r7 = r3
            goto L24
        L75:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "LoadFromBuffer: missing {"
            r6.<init>(r7)
            throw r6
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.types.KVTextReader.<init>(in.dragonbra.javasteam.types.KeyValue, java.io.InputStream):void");
    }

    /* JADX INFO: compiled from: KVTextReader.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getPeek() {
        if (this.peekedChar == null) {
            this.peekedChar = Integer.valueOf(read());
        }
        Integer num = this.peekedChar;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final boolean getEndOfStream() {
        try {
            return getPeek() == -1;
        } catch (IOException unused) {
            return true;
        }
    }

    @Override // java.io.InputStreamReader, java.io.Reader
    public int read() {
        Integer num = this.peekedChar;
        if (num != null) {
            Intrinsics.checkNotNull(num);
            int iIntValue = num.intValue();
            this.peekedChar = null;
            return iIntValue;
        }
        return super.read();
    }

    private final void eatWhiteSpace() throws IOException {
        while (!getEndOfStream() && CharsKt__CharJVMKt.isWhitespace((char) getPeek())) {
            read();
        }
    }

    private final boolean eatCPPComment() throws IOException {
        if (getEndOfStream() || ((char) getPeek()) != '/') {
            return false;
        }
        readLine();
        return true;
    }

    private final void readLine() throws IOException {
        while (((char) read()) != '\n' && !getEndOfStream()) {
        }
    }

    public final String readToken(Passable<Boolean> wasQuoted, Passable<Boolean> wasConditional) throws IOException {
        char peek;
        Intrinsics.checkNotNullParameter(wasQuoted, "wasQuoted");
        Intrinsics.checkNotNullParameter(wasConditional, "wasConditional");
        Boolean bool = Boolean.FALSE;
        wasQuoted.setValue(bool);
        wasConditional.setValue(bool);
        do {
            eatWhiteSpace();
            if (getEndOfStream()) {
                return null;
            }
        } while (eatCPPComment());
        if (getEndOfStream()) {
            return null;
        }
        char peek2 = (char) getPeek();
        if (peek2 == '\"') {
            wasQuoted.setValue(Boolean.TRUE);
            read();
            StringsKt__StringBuilderJVMKt.clear(this.sb);
            while (!getEndOfStream()) {
                if (((char) getPeek()) == '\\') {
                    read();
                    char cCharValue = (char) read();
                    Character ch = ESCAPED_MAPPING.get(Character.valueOf(cCharValue));
                    if (ch != null) {
                        cCharValue = ch.charValue();
                    }
                    this.sb.append(cCharValue);
                } else {
                    if (((char) getPeek()) == '\"') {
                        break;
                    }
                    this.sb.append((char) read());
                }
            }
            read();
            return this.sb.toString();
        }
        if (peek2 == '{' || peek2 == '}') {
            read();
            return String.valueOf(peek2);
        }
        StringsKt__StringBuilderJVMKt.clear(this.sb);
        boolean z = false;
        while (!getEndOfStream() && (peek = (char) getPeek()) != '\"' && peek != '{' && peek != '}') {
            if (peek == '[') {
                z = true;
            }
            if (peek == ']' && z) {
                wasConditional.setValue(Boolean.TRUE);
            }
            if (CharsKt__CharJVMKt.isWhitespace(peek)) {
                break;
            }
            this.sb.append(peek);
            read();
        }
        return this.sb.toString();
    }
}
