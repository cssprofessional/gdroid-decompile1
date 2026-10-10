package io.ktor.network.tls;

import io.ktor.network.util.PoolsKt;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.ByteReadPacketExtensions_jvmKt;
import io.ktor.utils.io.core.ByteReadPacketKt;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Digest implements Closeable {
    public final Sink state;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Digest m8116boximpl(Sink sink) {
        return new Digest(sink);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Sink m8118constructorimpl(Sink state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return state;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8120equalsimpl(Sink sink, Object obj) {
        return (obj instanceof Digest) && Intrinsics.areEqual(sink, ((Digest) obj).m8124unboximpl());
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8121hashCodeimpl(Sink sink) {
        return sink.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8122toStringimpl(Sink sink) {
        return "Digest(state=" + sink + ')';
    }

    public boolean equals(Object obj) {
        return m8120equalsimpl(this.state, obj);
    }

    public int hashCode() {
        return m8121hashCodeimpl(this.state);
    }

    public String toString() {
        return m8122toStringimpl(this.state);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Sink m8124unboximpl() {
        return this.state;
    }

    public /* synthetic */ Digest(Sink sink) {
        this.state = sink;
    }

    /* JADX INFO: renamed from: update-impl, reason: not valid java name */
    public static final void m8123updateimpl(Sink sink, Source packet) {
        Intrinsics.checkNotNullParameter(packet, "packet");
        synchronized (sink) {
            if (packet.exhausted()) {
                return;
            }
            BytePacketBuilderKt.writePacket(sink, ByteReadPacketKt.copy(packet));
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: doHash-impl, reason: not valid java name */
    public static final byte[] m8119doHashimpl(Sink sink, final String hashName) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(hashName, "hashName");
        synchronized (sink) {
            bArr = (byte[]) ByteReadPacketKt.preview(sink, new Function1() { // from class: io.ktor.network.tls.Digest$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Digest.doHash_impl$lambda$0$0(hashName, (Source) obj);
                }
            });
        }
        Intrinsics.checkNotNullExpressionValue(bArr, "synchronized(...)");
        return bArr;
    }

    public static final byte[] doHash_impl$lambda$0$0(String str, Source handshakes) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(handshakes, "handshakes");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Intrinsics.checkNotNull(messageDigest);
        ByteBuffer byteBufferBorrow = PoolsKt.getDefaultByteBufferPool().borrow();
        while (!handshakes.exhausted() && ByteReadPacketExtensions_jvmKt.readAvailable(handshakes, byteBufferBorrow) != -1) {
            try {
                byteBufferBorrow.flip();
                messageDigest.update(byteBufferBorrow);
                byteBufferBorrow.clear();
            } catch (Throwable th) {
                PoolsKt.getDefaultByteBufferPool().recycle(byteBufferBorrow);
                throw th;
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        PoolsKt.getDefaultByteBufferPool().recycle(byteBufferBorrow);
        return bArrDigest;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m8117closeimpl(this.state);
    }

    /* JADX INFO: renamed from: close-impl, reason: not valid java name */
    public static void m8117closeimpl(Sink sink) {
        sink.close();
    }
}
