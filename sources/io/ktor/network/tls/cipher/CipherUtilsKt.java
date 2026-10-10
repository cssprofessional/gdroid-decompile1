package io.ktor.network.tls.cipher;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.util.PoolsKt;
import io.ktor.utils.io.core.BytePacketBuilderExtensions_jvmKt;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.ByteReadPacketExtensions_jvmKt;
import io.ktor.utils.io.pool.ByteBufferPool;
import io.ktor.utils.io.pool.ObjectPool;
import java.nio.ByteBuffer;
import javax.crypto.Cipher;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: CipherUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CipherUtilsKt {
    public static final ObjectPool<ByteBuffer> CryptoBufferPool = new ByteBufferPool(128, Enums.EProtoAppType.k_EAppTypeBeta_VALUE);

    public static /* synthetic */ Source cipherLoop$default(Source source, Cipher cipher, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: io.ktor.network.tls.cipher.CipherUtilsKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return CipherUtilsKt.cipherLoop$lambda$0((Sink) obj2);
                }
            };
        }
        return cipherLoop(source, cipher, function1);
    }

    public static final Unit cipherLoop$lambda$0(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return Unit.INSTANCE;
    }

    public static final Source cipherLoop(Source source, Cipher cipher, Function1<? super Sink, Unit> header) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        Intrinsics.checkNotNullParameter(header, "header");
        ByteBuffer byteBufferBorrow = PoolsKt.getDefaultByteBufferPool().borrow();
        ByteBuffer byteBufferBorrow2 = CryptoBufferPool.borrow();
        boolean z = true;
        try {
            Buffer buffer = new Buffer();
            byteBufferBorrow.clear();
            header.invoke(buffer);
            while (true) {
                int available = byteBufferBorrow.hasRemaining() ? ByteReadPacketExtensions_jvmKt.readAvailable(source, byteBufferBorrow) : 0;
                byteBufferBorrow.flip();
                if (!byteBufferBorrow.hasRemaining() && (available == -1 || source.exhausted())) {
                    break;
                }
                byteBufferBorrow2.clear();
                if (cipher.getOutputSize(byteBufferBorrow.remaining()) > byteBufferBorrow2.remaining()) {
                    if (z) {
                        CryptoBufferPool.recycle(byteBufferBorrow2);
                    }
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(cipher.getOutputSize(byteBufferBorrow.remaining()));
                    Intrinsics.checkNotNullExpressionValue(byteBufferAllocate, "allocate(...)");
                    byteBufferBorrow2 = byteBufferAllocate;
                    z = false;
                }
                cipher.update(byteBufferBorrow, byteBufferBorrow2);
                byteBufferBorrow2.flip();
                BytePacketBuilderExtensions_jvmKt.writeFully(buffer, byteBufferBorrow2);
                byteBufferBorrow.compact();
            }
            byteBufferBorrow.hasRemaining();
            byteBufferBorrow2.hasRemaining();
            int outputSize = cipher.getOutputSize(0);
            if (outputSize != 0) {
                if (outputSize > byteBufferBorrow2.capacity()) {
                    byte[] bArrDoFinal = cipher.doFinal();
                    Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
                    BytePacketBuilderKt.writeFully$default(buffer, bArrDoFinal, 0, 0, 6, null);
                } else {
                    byteBufferBorrow2.clear();
                    cipher.doFinal(CipherKt.getEmptyByteBuffer(), byteBufferBorrow2);
                    byteBufferBorrow2.flip();
                    if (!byteBufferBorrow2.hasRemaining()) {
                        byte[] bArrDoFinal2 = cipher.doFinal();
                        Intrinsics.checkNotNullExpressionValue(bArrDoFinal2, "doFinal(...)");
                        BytePacketBuilderKt.writeFully$default(buffer, bArrDoFinal2, 0, 0, 6, null);
                    } else {
                        BytePacketBuilderExtensions_jvmKt.writeFully(buffer, byteBufferBorrow2);
                    }
                }
            }
            PoolsKt.getDefaultByteBufferPool().recycle(byteBufferBorrow);
            if (z) {
                CryptoBufferPool.recycle(byteBufferBorrow2);
            }
            return buffer;
        } catch (Throwable th) {
            PoolsKt.getDefaultByteBufferPool().recycle(byteBufferBorrow);
            if (1 != 0) {
                CryptoBufferPool.recycle(byteBufferBorrow2);
            }
            throw th;
        }
    }
}
