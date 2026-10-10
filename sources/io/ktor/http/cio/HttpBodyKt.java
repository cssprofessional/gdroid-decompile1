package io.ktor.http.cio;

import io.ktor.http.HttpProtocolVersion;
import io.ktor.http.cio.internals.CharsKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: HttpBody.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpBodyKt {
    public static final Object parseHttpBody(HttpProtocolVersion httpProtocolVersion, long j, CharSequence charSequence, ConnectionOptions connectionOptions, ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, Continuation<? super Unit> continuation) throws Throwable {
        if (charSequence != null && isTransferEncodingChunked(charSequence)) {
            Object objDecodeChunked = ChunkedTransferEncodingKt.decodeChunked(byteReadChannel, byteWriteChannel, continuation);
            return objDecodeChunked == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDecodeChunked : Unit.INSTANCE;
        }
        if (j != -1) {
            Object objCopyTo = ByteReadChannelOperationsKt.copyTo(byteReadChannel, byteWriteChannel, j, continuation);
            return objCopyTo == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCopyTo : Unit.INSTANCE;
        }
        if ((connectionOptions != null && connectionOptions.getClose()) || (connectionOptions == null && Intrinsics.areEqual(httpProtocolVersion, HttpProtocolVersion.Companion.getHTTP_1_0()))) {
            Object objCopyTo2 = ByteReadChannelOperationsKt.copyTo(byteReadChannel, byteWriteChannel, Util.VLI_MAX, continuation);
            return objCopyTo2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCopyTo2 : Unit.INSTANCE;
        }
        ByteWriteChannelOperationsKt.close(byteWriteChannel, new IllegalStateException("Failed to parse request body: request body length should be specified,\nchunked transfer encoding should be used or\nkeep-alive should be disabled (connection: close)"));
        return Unit.INSTANCE;
    }

    public static final boolean isTransferEncodingChunked(CharSequence charSequence) {
        if (CharsKt.equalsLowerCase$default(charSequence, 0, 0, "chunked", 3, null)) {
            return true;
        }
        boolean z = false;
        if (CharsKt.equalsLowerCase$default(charSequence, 0, 0, "identity", 3, null)) {
            return false;
        }
        Iterator it = StringsKt__StringsKt.split$default(charSequence, new String[]{","}, false, 0, 6, (Object) null).iterator();
        while (it.hasNext()) {
            String lowerCase = StringsKt__StringsKt.trim((String) it.next()).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (Intrinsics.areEqual(lowerCase, "chunked")) {
                if (z) {
                    throw new IllegalArgumentException("Double-chunked TE is not supported: " + ((Object) charSequence));
                }
                z = true;
            } else if (!Intrinsics.areEqual(lowerCase, "identity")) {
                throw new IllegalArgumentException("Unsupported transfer encoding " + lowerCase);
            }
        }
        return z;
    }
}
