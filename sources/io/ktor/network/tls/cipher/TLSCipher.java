package io.ktor.network.tls.cipher;

import io.ktor.network.tls.CipherSuite;
import io.ktor.network.tls.CipherType;
import io.ktor.network.tls.TLSRecord;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cipher.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface TLSCipher {
    public static final Companion Companion = Companion.$$INSTANCE;

    TLSRecord decrypt(TLSRecord tLSRecord);

    TLSRecord encrypt(TLSRecord tLSRecord);

    /* JADX INFO: compiled from: Cipher.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* JADX INFO: compiled from: Cipher.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CipherType.values().length];
                try {
                    iArr[CipherType.GCM.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CipherType.CBC.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final TLSCipher fromSuite(CipherSuite suite, byte[] keyMaterial) {
            Intrinsics.checkNotNullParameter(suite, "suite");
            Intrinsics.checkNotNullParameter(keyMaterial, "keyMaterial");
            int i = WhenMappings.$EnumSwitchMapping$0[suite.getCipherType().ordinal()];
            if (i == 1) {
                return new GCMCipher(suite, keyMaterial);
            }
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return new CBCCipher(suite, keyMaterial);
        }
    }
}
