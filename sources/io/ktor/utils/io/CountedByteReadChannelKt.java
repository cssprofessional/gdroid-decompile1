package io.ktor.utils.io;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CountedByteReadChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CountedByteReadChannelKt {
    public static final CountedByteReadChannel counted(ByteReadChannel byteReadChannel) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        return new CountedByteReadChannel(byteReadChannel);
    }
}
