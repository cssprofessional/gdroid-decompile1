package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.tls.extensions.NamedCurve;
import io.ktor.network.tls.extensions.TLSExtension;
import io.ktor.network.tls.extensions.TLSExtensionType;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.ByteReadPacketKt;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.math.BigInteger;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.spec.ECPoint;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Source;
import kotlinx.io.SourcesKt;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: compiled from: Parser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ParserKt {

    /* JADX INFO: compiled from: Parser.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServerKeyExchangeType.values().length];
            try {
                iArr[ServerKeyExchangeType.NamedCurve.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServerKeyExchangeType.ExplicitPrime.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServerKeyExchangeType.ExplicitChar.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.ParserKt$readShortCompatible$1, reason: invalid class name */
    /* JADX INFO: compiled from: Parser.kt */
    @DebugMetadata(c = "io.ktor.network.tls.ParserKt", f = "Parser.kt", l = {148, 149}, m = "readShortCompatible", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ParserKt.readShortCompatible(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.ParserKt$readTLSRecord$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Parser.kt */
    @DebugMetadata(c = "io.ktor.network.tls.ParserKt", f = "Parser.kt", l = {19, 20, 22, 25}, m = "readTLSRecord", v = 1)
    public static final class C00541 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public C00541(Continuation<? super C00541> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ParserKt.readTLSRecord(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.ParserKt$readTLSVersion$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Parser.kt */
    @DebugMetadata(c = "io.ktor.network.tls.ParserKt", f = "Parser.kt", l = {139}, m = "readTLSVersion", v = 1)
    public static final class C00551 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00551(Continuation<? super C00551> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ParserKt.readTLSVersion(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object readTLSRecord(io.ktor.utils.io.ByteReadChannel r8, kotlin.coroutines.Continuation<? super io.ktor.network.tls.TLSRecord> r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.ParserKt.readTLSRecord(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final TLSHandshake readTLSHandshake(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        TLSHandshake tLSHandshake = new TLSHandshake();
        int i = source.readInt();
        tLSHandshake.setType(TLSHandshakeType.Companion.byCode(i >>> 24));
        Buffer buffer = new Buffer();
        BytePacketBuilderKt.writeFully$default(buffer, SourcesKt.readByteArray(source, i & 16777215), 0, 0, 6, null);
        tLSHandshake.setPacket(buffer);
        return tLSHandshake;
    }

    public static final TLSServerHello readTLSServerHello(Source source) throws TLSException, EOFException {
        Intrinsics.checkNotNullParameter(source, "<this>");
        TLSVersion tLSVersion = readTLSVersion(source);
        byte[] bArr = new byte[32];
        ByteReadPacketKt.readFully$default(source, bArr, 0, 0, 6, null);
        int i = source.readByte() & 255;
        if (i > 32) {
            throw new TLSException("sessionId length limit of 32 bytes exceeded: " + i + " specified", null, 2, null);
        }
        byte[] bArr2 = new byte[32];
        ByteReadPacketKt.readFully(source, bArr2, 0, i);
        short s = source.readShort();
        short s2 = (short) (source.readByte() & 255);
        if (s2 != 0) {
            throw new TLSException("Unsupported TLS compression method " + ((int) s2) + " (only null 0 compression method is supported)", null, 2, null);
        }
        if (((int) ByteReadPacketKt.getRemaining(source)) == 0) {
            return new TLSServerHello(tLSVersion, bArr, bArr2, s, s2, null, 32, null);
        }
        int i2 = source.readShort() & HPKE.aead_EXPORT_ONLY;
        if (((int) ByteReadPacketKt.getRemaining(source)) != i2) {
            throw new TLSException("Invalid extensions size: requested " + i2 + ", available " + ByteReadPacketKt.getRemaining(source), null, 2, null);
        }
        ArrayList arrayList = new ArrayList();
        while (ByteReadPacketKt.getRemaining(source) > 0) {
            int i3 = source.readShort() & HPKE.aead_EXPORT_ONLY;
            int i4 = source.readShort() & HPKE.aead_EXPORT_ONLY;
            TLSExtensionType tLSExtensionTypeByCode = TLSExtensionType.Companion.byCode(i3);
            Buffer buffer = new Buffer();
            BytePacketBuilderKt.writeFully$default(buffer, SourcesKt.readByteArray(source, i4), 0, 0, 6, null);
            Unit unit = Unit.INSTANCE;
            arrayList.add(new TLSExtension(tLSExtensionTypeByCode, i4, buffer));
        }
        return new TLSServerHello(tLSVersion, bArr, bArr2, s, s2, arrayList);
    }

    public static final NamedCurve readCurveParams(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[ServerKeyExchangeType.Companion.byCode(source.readByte() & 255).ordinal()];
        if (i != 1) {
            if (i == 2) {
                throw new IllegalStateException("ExplicitPrime server key exchange type is not yet supported");
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            throw new IllegalStateException("ExplicitChar server key exchange type is not yet supported");
        }
        NamedCurve namedCurveFromCode = NamedCurve.Companion.fromCode(source.readShort());
        if (namedCurveFromCode != null) {
            return namedCurveFromCode;
        }
        throw new TLSException("Unknown EC id", null, 2, null);
    }

    public static final List<Certificate> readTLSCertificate(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        int tripleByteLength = readTripleByteLength(source);
        ArrayList arrayList = new ArrayList();
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        Intrinsics.checkNotNull(certificateFactory);
        int i = 0;
        while (i < tripleByteLength) {
            int tripleByteLength2 = readTripleByteLength(source);
            if (tripleByteLength2 > tripleByteLength - i) {
                throw new TLSException("Certificate length is too big", null, 2, null);
            }
            if (tripleByteLength2 > ByteReadPacketKt.getRemaining(source)) {
                throw new TLSException("Certificate length is too big", null, 2, null);
            }
            byte[] bArr = new byte[tripleByteLength2];
            ByteReadPacketKt.readFully$default(source, bArr, 0, 0, 6, null);
            i += tripleByteLength2 + 3;
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArr)));
        }
        return arrayList;
    }

    public static final ECPoint readECPoint(Source source, int i) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        int i2 = source.readByte() & 255;
        if (source.readByte() != 4) {
            throw new TLSException("Point should be uncompressed", null, 2, null);
        }
        int i3 = (i2 - 1) / 2;
        if (((i + 7) >>> 3) != i3) {
            throw new TLSException("Invalid point component length", null, 2, null);
        }
        return new ECPoint(new BigInteger(1, SourcesKt.readByteArray(source, i3)), new BigInteger(1, SourcesKt.readByteArray(source, i3)));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object readTLSVersion(io.ktor.utils.io.ByteReadChannel r5, kotlin.coroutines.Continuation<? super io.ktor.network.tls.TLSVersion> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof io.ktor.network.tls.ParserKt.C00551
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.network.tls.ParserKt$readTLSVersion$1 r0 = (io.ktor.network.tls.ParserKt.C00551) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.tls.ParserKt$readTLSVersion$1 r0 = new io.ktor.network.tls.ParserKt$readTLSVersion$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            io.ktor.network.tls.TLSVersion$Companion r5 = (io.ktor.network.tls.TLSVersion.Companion) r5
            java.lang.Object r0 = r0.L$0
            io.ktor.utils.io.ByteReadChannel r0 = (io.ktor.utils.io.ByteReadChannel) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L52
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.ResultKt.throwOnFailure(r6)
            io.ktor.network.tls.TLSVersion$Companion r6 = io.ktor.network.tls.TLSVersion.Companion
            java.lang.Object r2 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r5)
            r0.L$0 = r2
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r5 = readShortCompatible(r5, r0)
            if (r5 != r1) goto L4f
            return r1
        L4f:
            r4 = r6
            r6 = r5
            r5 = r4
        L52:
            java.lang.Number r6 = (java.lang.Number) r6
            int r6 = r6.intValue()
            r0 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r0
            io.ktor.network.tls.TLSVersion r5 = r5.byCode(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.ParserKt.readTLSVersion(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final TLSVersion readTLSVersion(Source source) {
        return TLSVersion.Companion.byCode(source.readShort() & HPKE.aead_EXPORT_ONLY);
    }

    public static final int readTripleByteLength(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return (source.readShort() & HPKE.aead_EXPORT_ONLY) | ((source.readByte() & 255) << 16);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object readShortCompatible(io.ktor.utils.io.ByteReadChannel r6, kotlin.coroutines.Continuation<? super java.lang.Integer> r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof io.ktor.network.tls.ParserKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.network.tls.ParserKt$readShortCompatible$1 r0 = (io.ktor.network.tls.ParserKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.tls.ParserKt$readShortCompatible$1 r0 = new io.ktor.network.tls.ParserKt$readShortCompatible$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            int r6 = r0.I$0
            java.lang.Object r0 = r0.L$0
            io.ktor.utils.io.ByteReadChannel r0 = (io.ktor.utils.io.ByteReadChannel) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6c
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            java.lang.Object r6 = r0.L$0
            io.ktor.utils.io.ByteReadChannel r6 = (io.ktor.utils.io.ByteReadChannel) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L50
        L42:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = io.ktor.utils.io.ByteReadChannelOperationsKt.readByte(r6, r0)
            if (r7 != r1) goto L50
            return r1
        L50:
            java.lang.Number r7 = (java.lang.Number) r7
            byte r7 = r7.byteValue()
            r7 = r7 & 255(0xff, float:3.57E-43)
            java.lang.Object r2 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$0 = r2
            r0.I$0 = r7
            r0.label = r3
            java.lang.Object r6 = io.ktor.utils.io.ByteReadChannelOperationsKt.readByte(r6, r0)
            if (r6 != r1) goto L69
            return r1
        L69:
            r5 = r7
            r7 = r6
            r6 = r5
        L6c:
            java.lang.Number r7 = (java.lang.Number) r7
            byte r7 = r7.byteValue()
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r6 = r6 << 8
            int r6 = r6 + r7
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.ParserKt.readShortCompatible(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
