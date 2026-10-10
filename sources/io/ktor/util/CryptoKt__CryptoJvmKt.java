package io.ktor.util;

import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: CryptoJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class CryptoKt__CryptoJvmKt {
    public static final String generateNonce() {
        String str = (String) ChannelResult.m8269getOrNullimpl(NonceKt.getSeedChannel().mo8261tryReceivePtdJZtk());
        return str != null ? str : generateNonceBlocking$CryptoKt__CryptoJvmKt();
    }

    public static final String generateNonceBlocking$CryptoKt__CryptoJvmKt() {
        NonceKt.ensureNonceGeneratorRunning();
        return (String) BuildersKt__BuildersKt.runBlocking$default(null, new CryptoKt__CryptoJvmKt$generateNonceBlocking$1(null), 1, null);
    }
}
