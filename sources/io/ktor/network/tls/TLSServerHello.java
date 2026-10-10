package io.ktor.network.tls;

import io.ktor.network.tls.extensions.HashAndSign;
import io.ktor.network.tls.extensions.SignatureAlgorithmKt;
import io.ktor.network.tls.extensions.TLSExtension;
import io.ktor.network.tls.extensions.TLSExtensionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TLSHandshakeType.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSServerHello {
    public final CipherSuite cipherSuite;
    public final short compressionMethod;
    public final List<TLSExtension> extensions;
    public final List<HashAndSign> hashAndSignAlgorithms;
    public final byte[] serverSeed;
    public final byte[] sessionId;
    public final TLSVersion version;

    /* JADX INFO: compiled from: TLSHandshakeType.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TLSExtensionType.values().length];
            try {
                iArr[TLSExtensionType.SIGNATURE_ALGORITHMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public TLSServerHello(TLSVersion version, byte[] serverSeed, byte[] sessionId, short s, short s2, List<TLSExtension> extensions) {
        Object next;
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(serverSeed, "serverSeed");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(extensions, "extensions");
        this.version = version;
        this.serverSeed = serverSeed;
        this.sessionId = sessionId;
        this.compressionMethod = s2;
        this.extensions = extensions;
        Iterator<T> it = CIOCipherSuites.INSTANCE.getSupportedSuites().iterator();
        while (true) {
            if (it.hasNext()) {
                next = it.next();
                if (((CipherSuite) next).getCode() == s) {
                    break;
                }
            } else {
                next = null;
                break;
            }
        }
        CipherSuite cipherSuite = (CipherSuite) next;
        if (cipherSuite == null) {
            throw new IllegalStateException(("Server cipher suite is not supported: " + ((int) s)).toString());
        }
        this.cipherSuite = cipherSuite;
        ArrayList arrayList = new ArrayList();
        for (TLSExtension tLSExtension : this.extensions) {
            if (WhenMappings.$EnumSwitchMapping$0[tLSExtension.getType().ordinal()] == 1) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, SignatureAlgorithmKt.parseSignatureAlgorithms(tLSExtension.getPacket()));
            }
        }
        this.hashAndSignAlgorithms = arrayList;
    }

    public final byte[] getServerSeed() {
        return this.serverSeed;
    }

    public /* synthetic */ TLSServerHello(TLSVersion tLSVersion, byte[] bArr, byte[] bArr2, short s, short s2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tLSVersion, bArr, bArr2, s, s2, (i & 32) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    public final CipherSuite getCipherSuite() {
        return this.cipherSuite;
    }

    public final List<HashAndSign> getHashAndSignAlgorithms() {
        return this.hashAndSignAlgorithms;
    }
}
