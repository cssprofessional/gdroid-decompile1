package io.ktor.util;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import org.slf4j.LoggerFactory;

/* JADX INFO: compiled from: Nonce.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NonceKt {
    public static final CoroutineName NonceGeneratorCoroutineName;
    public static final Job nonceGeneratorJob;
    public static final List<String> SECURE_RANDOM_PROVIDERS = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"NativePRNGNonBlocking", "WINDOWS-PRNG", "DRBG"});
    public static final Channel<String> seedChannel = ChannelKt.Channel$default(1024, null, null, 6, null);

    static {
        CoroutineName coroutineName = new CoroutineName("nonce-generator");
        NonceGeneratorCoroutineName = coroutineName;
        nonceGeneratorJob = BuildersKt.launch(GlobalScope.INSTANCE, Dispatchers.getDefault().plus(NonCancellable.INSTANCE).plus(coroutineName), CoroutineStart.LAZY, new NonceKt$nonceGeneratorJob$1(null));
    }

    public static final Channel<String> getSeedChannel() {
        return seedChannel;
    }

    public static final void ensureNonceGeneratorRunning() {
        nonceGeneratorJob.start();
    }

    public static final SecureRandom lookupSecureRandom() {
        SecureRandom instanceOrNull;
        String property = System.getProperty("io.ktor.random.secure.random.provider");
        if (property != null && (instanceOrNull = getInstanceOrNull(property)) != null) {
            return instanceOrNull;
        }
        Iterator<String> it = SECURE_RANDOM_PROVIDERS.iterator();
        while (it.hasNext()) {
            SecureRandom instanceOrNull2 = getInstanceOrNull(it.next());
            if (instanceOrNull2 != null) {
                return instanceOrNull2;
            }
        }
        LoggerFactory.getLogger("io.ktor.util.random").warn("None of the " + CollectionsKt___CollectionsKt.joinToString$default(SECURE_RANDOM_PROVIDERS, ", ", null, null, 0, null, null, 62, null) + " found, fallback to default");
        SecureRandom instanceOrNull$default = getInstanceOrNull$default(null, 1, null);
        if (instanceOrNull$default != null) {
            return instanceOrNull$default;
        }
        throw new IllegalStateException("No SecureRandom implementation found");
    }

    public static /* synthetic */ SecureRandom getInstanceOrNull$default(String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return getInstanceOrNull(str);
    }

    public static final SecureRandom getInstanceOrNull(String str) {
        SecureRandom secureRandom;
        try {
            if (str != null) {
                secureRandom = SecureRandom.getInstance(str);
            } else {
                secureRandom = new SecureRandom();
            }
            return secureRandom;
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
