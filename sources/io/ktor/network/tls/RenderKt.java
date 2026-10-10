package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.tls.extensions.HashAndSign;
import io.ktor.network.tls.extensions.NamedCurve;
import io.ktor.network.tls.extensions.NamedCurvesKt;
import io.ktor.network.tls.extensions.PointFormat;
import io.ktor.network.tls.extensions.PointFormatKt;
import io.ktor.network.tls.extensions.SignatureAlgorithmKt;
import io.ktor.network.tls.extensions.TLSExtensionType;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.ByteReadPacketKt;
import io.ktor.utils.io.core.StringsKt;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Render.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RenderKt {

    /* JADX INFO: renamed from: io.ktor.network.tls.RenderKt$writeRecord$1, reason: invalid class name */
    /* JADX INFO: compiled from: Render.kt */
    @DebugMetadata(c = "io.ktor.network.tls.RenderKt", f = "Render.kt", l = {18, 19, 20, 21, 22, 23}, m = "writeRecord", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return RenderKt.writeRecord(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0102 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0140 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object writeRecord(io.ktor.utils.io.ByteWriteChannel r6, io.ktor.network.tls.TLSRecord r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.RenderKt.writeRecord(io.ktor.utils.io.ByteWriteChannel, io.ktor.network.tls.TLSRecord, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Source buildECCurvesExtension(List<? extends NamedCurve> list) {
        Buffer buffer = new Buffer();
        if (list.size() > 16382) {
            throw new IllegalArgumentException("Too many named curves provided: at most 16382 could be provided");
        }
        buffer.writeShort(TLSExtensionType.ELLIPTIC_CURVES.getCode());
        int size = list.size() * 2;
        buffer.writeShort((short) (size + 2));
        buffer.writeShort((short) size);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            buffer.writeShort(((NamedCurve) it.next()).getCode());
        }
        return buffer;
    }

    public static final Source buildECPointFormatExtension(List<? extends PointFormat> list) {
        Buffer buffer = new Buffer();
        buffer.writeShort(TLSExtensionType.EC_POINT_FORMAT.getCode());
        int size = list.size();
        buffer.writeShort((short) (size + 1));
        buffer.writeByte((byte) size);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            buffer.writeByte(((PointFormat) it.next()).getCode());
        }
        return buffer;
    }

    public static final Source buildServerNameExtension(String str) {
        Buffer buffer = new Buffer();
        if (str.length() >= 32762) {
            throw new IllegalArgumentException("Server name length limit exceeded: at most 32762 characters allowed");
        }
        buffer.writeShort(TLSExtensionType.SERVER_NAME.getCode());
        buffer.writeShort((short) (str.length() + 5));
        buffer.writeShort((short) (str.length() + 3));
        buffer.writeByte((byte) 0);
        buffer.writeShort((short) str.length());
        StringsKt.writeText$default(buffer, str, 0, 0, null, 14, null);
        return buffer;
    }

    public static final Source buildSignatureAlgorithmsExtension(List<HashAndSign> list) {
        Buffer buffer = new Buffer();
        buffer.writeShort(TLSExtensionType.SIGNATURE_ALGORITHMS.getCode());
        int size = list.size() * 2;
        buffer.writeShort((short) (size + 2));
        buffer.writeShort((short) size);
        for (HashAndSign hashAndSign : list) {
            buffer.writeByte(hashAndSign.getHash().getCode());
            buffer.writeByte(hashAndSign.getSign().getCode());
        }
        return buffer;
    }

    public static final Source finished(byte[] digest, SecretKey secretKey) {
        Intrinsics.checkNotNullParameter(digest, "digest");
        Intrinsics.checkNotNullParameter(secretKey, "secretKey");
        Buffer buffer = new Buffer();
        BytePacketBuilderKt.writeFully$default(buffer, HashesKt.PRF(secretKey, KeysKt.getCLIENT_FINISHED_LABEL(), digest, 12), 0, 0, 6, null);
        return buffer;
    }

    public static final void writeECPoint(Sink sink, ECPoint point, int i) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(point, "point");
        Buffer buffer = new Buffer();
        buffer.writeByte((byte) 4);
        byte[] byteArray = point.getAffineX().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        writeAligned(buffer, byteArray, i);
        byte[] byteArray2 = point.getAffineY().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
        writeAligned(buffer, byteArray2, i);
        sink.writeByte((byte) ByteReadPacketKt.getRemaining(buffer));
        BytePacketBuilderKt.writePacket(sink, buffer);
    }

    public static final void writeTLSCertificates(Sink sink, X509Certificate[] certificates) throws CertificateEncodingException {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(certificates, "certificates");
        Buffer buffer = new Buffer();
        for (X509Certificate x509Certificate : certificates) {
            byte[] encoded = x509Certificate.getEncoded();
            Intrinsics.checkNotNull(encoded);
            writeTripleByteLength(buffer, encoded.length);
            BytePacketBuilderKt.writeFully$default(buffer, encoded, 0, 0, 6, null);
        }
        writeTripleByteLength(sink, (int) ByteReadPacketKt.getRemaining(buffer));
        BytePacketBuilderKt.writePacket(sink, buffer);
    }

    public static final void writeTLSHandshakeType(Sink sink, TLSHandshakeType type, int i) throws TLSException {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        if (i > 16777215) {
            throw new TLSException("TLS handshake size limit exceeded: " + i, null, 2, null);
        }
        sink.writeInt((type.getCode() << 24) | i);
    }

    public static final void writeTLSClientHello(Sink sink, TLSVersion version, List<CipherSuite> suites, byte[] random, byte[] sessionId, String str) throws TLSException {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(suites, "suites");
        Intrinsics.checkNotNullParameter(random, "random");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        sink.writeShort((short) version.getCode());
        BytePacketBuilderKt.writeFully$default(sink, random, 0, 0, 6, null);
        int length = sessionId.length;
        if (length < 0 || length > 255 || length > sessionId.length) {
            throw new TLSException("Illegal sessionIdLength", null, 2, null);
        }
        sink.writeByte((byte) length);
        int remaining = 0;
        BytePacketBuilderKt.writeFully(sink, sessionId, 0, length);
        sink.writeShort((short) (suites.size() * 2));
        Iterator<CipherSuite> it = suites.iterator();
        while (it.hasNext()) {
            sink.writeShort(it.next().getCode());
        }
        sink.writeByte((byte) 1);
        sink.writeByte((byte) 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(buildSignatureAlgorithmsExtension$default(null, 1, null));
        arrayList.add(buildECCurvesExtension$default(null, 1, null));
        arrayList.add(buildECPointFormatExtension$default(null, 1, null));
        if (str != null) {
            arrayList.add(buildServerNameExtension(str));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            remaining += (int) ByteReadPacketKt.getRemaining((Source) it2.next());
        }
        sink.writeShort((short) remaining);
        Iterator it3 = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it3, "iterator(...)");
        while (it3.hasNext()) {
            Object next = it3.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            BytePacketBuilderKt.writePacket(sink, (Source) next);
        }
    }

    public static final void writeEncryptedPreMasterSecret(Sink sink, byte[] preSecret, PublicKey publicKey, SecureRandom random) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, TLSException, InvalidKeyException {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(preSecret, "preSecret");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(random, "random");
        if (preSecret.length != 48) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        Intrinsics.checkNotNull(cipher);
        cipher.init(1, publicKey, random);
        byte[] bArrDoFinal = cipher.doFinal(preSecret);
        if (bArrDoFinal.length > 65535) {
            throw new TLSException("Encrypted premaster secret is too long", null, 2, null);
        }
        sink.writeShort((short) bArrDoFinal.length);
        Intrinsics.checkNotNull(bArrDoFinal);
        BytePacketBuilderKt.writeFully$default(sink, bArrDoFinal, 0, 0, 6, null);
    }

    public static final byte[] serverFinished(byte[] handshakeHash, SecretKey secretKey, int i) {
        Intrinsics.checkNotNullParameter(handshakeHash, "handshakeHash");
        Intrinsics.checkNotNullParameter(secretKey, "secretKey");
        return HashesKt.PRF(secretKey, KeysKt.getSERVER_FINISHED_LABEL(), handshakeHash, i);
    }

    public static final void writePublicKeyUncompressed(Sink sink, PublicKey key) throws TLSException {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (key instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            int fieldSize = eCPublicKey.getParams().getCurve().getField().getFieldSize();
            ECPoint w = eCPublicKey.getW();
            Intrinsics.checkNotNullExpressionValue(w, "getW(...)");
            writeECPoint(sink, w, fieldSize);
            return;
        }
        throw new TLSException("Unsupported public key type: " + key, null, 2, null);
    }

    public static /* synthetic */ Source buildSignatureAlgorithmsExtension$default(List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = SignatureAlgorithmKt.getSupportedSignatureAlgorithms();
        }
        return buildSignatureAlgorithmsExtension(list);
    }

    public static /* synthetic */ Source buildECCurvesExtension$default(List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = NamedCurvesKt.getSupportedNamedCurves();
        }
        return buildECCurvesExtension(list);
    }

    public static /* synthetic */ Source buildECPointFormatExtension$default(List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = PointFormatKt.getSupportedPointFormats();
        }
        return buildECPointFormatExtension(list);
    }

    public static final void writeTripleByteLength(Sink sink, int i) {
        sink.writeByte((byte) ((i >>> 16) & 255));
        sink.writeShort((short) (i & 65535));
    }

    public static final void writeAligned(Sink sink, byte[] bArr, int i) {
        int i2 = (i + 7) >>> 3;
        int length = bArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                i3 = -1;
                break;
            } else if (bArr[i3] != 0) {
                break;
            } else {
                i3++;
            }
        }
        int length2 = i2 - (bArr.length - i3);
        if (length2 > 0) {
            BytePacketBuilderKt.writeFully$default(sink, new byte[length2], 0, 0, 6, null);
        }
        BytePacketBuilderKt.writeFully(sink, bArr, i3, bArr.length - i3);
    }
}
