package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.io.IOException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Buffer;
import kotlinx.io.Source;
import kotlinx.io.bytestring.ByteString;
import kotlinx.io.bytestring.ByteStringKt;

/* JADX INFO: compiled from: ByteChannelScanner.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteChannelScanner {
    public long bytesRead;
    public final ByteReadChannel channel;
    public final Source input;
    public final long limit;
    public int matchIndex;
    public final ByteString matchString;
    public final Buffer partialMatchBuffer;
    public final int[] partialMatchTable;
    public final ByteWriteChannel writeChannel;

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteChannelScanner$advanceToNextPotentialMatch$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteChannelScanner.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ByteChannelScanner", f = "ByteChannelScanner.kt", l = {99, SteammessagesClientserverLogin.CMsgClientLogon.EMBEDDED_CLIENT_SECRET_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.IS_TESLA_DEPRECATED_FIELD_NUMBER}, m = "advanceToNextPotentialMatch", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public long J$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ByteChannelScanner.this.advanceToNextPotentialMatch(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteChannelScanner$checkFullMatch$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteChannelScanner.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ByteChannelScanner", f = "ByteChannelScanner.kt", l = {124, 142}, m = "checkFullMatch", v = 1)
    public static final class C00681 extends ContinuationImpl {
        public byte B$0;
        public int I$0;
        public long J$0;
        public int label;
        public /* synthetic */ Object result;

        public C00681(Continuation<? super C00681> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ByteChannelScanner.this.checkFullMatch(this);
        }
    }

    public ByteChannelScanner(ByteReadChannel channel, ByteString matchString, ByteWriteChannel writeChannel, long j) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(matchString, "matchString");
        Intrinsics.checkNotNullParameter(writeChannel, "writeChannel");
        this.channel = channel;
        this.matchString = matchString;
        this.writeChannel = writeChannel;
        this.limit = j;
        if (matchString.getSize() <= 0) {
            throw new IllegalArgumentException("Empty match string not permitted for scanning");
        }
        this.input = channel.getReadBuffer();
        this.partialMatchTable = buildPartialMatchTable();
        this.partialMatchBuffer = new Buffer();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d1 -> B:43:0x00d4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object findNext$ktor_io(boolean r10, kotlin.coroutines.Continuation<? super java.lang.Long> r11) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelScanner.findNext$ktor_io(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int[] buildPartialMatchTable() {
        int[] iArr = new int[this.matchString.getSize()];
        int size = this.matchString.getSize();
        int i = 0;
        for (int i2 = 1; i2 < size; i2++) {
            while (i > 0 && this.matchString.get(i2) != this.matchString.get(i)) {
                i = iArr[i - 1];
            }
            if (this.matchString.get(i2) == this.matchString.get(i)) {
                i++;
            }
            iArr[i2] = i;
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00aa -> B:18:0x0044). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object advanceToNextPotentialMatch(kotlin.coroutines.Continuation<? super kotlin.Unit> r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelScanner.advanceToNextPotentialMatch(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0043 -> B:27:0x005f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x004e -> B:22:0x0051). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object checkFullMatch(kotlin.coroutines.Continuation<? super java.lang.Boolean> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelScanner.checkFullMatch(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void checkBounds(long j) throws IOException {
        if (this.bytesRead + j <= this.limit) {
            return;
        }
        throw new IOException("Limit of " + this.limit + " bytes exceeded while searching for \"" + toSingleLineString(this.matchString) + '\"');
    }

    public final String toSingleLineString(ByteString byteString) {
        return StringsKt__StringsJVMKt.replace$default(ByteStringKt.decodeToString(byteString), "\n", "\\n", false, 4, (Object) null);
    }
}
