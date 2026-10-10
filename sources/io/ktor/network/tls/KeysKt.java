package io.ktor.network.tls;

import java.nio.charset.Charset;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.jcajce.spec.TLSKeyMaterialSpec;

/* JADX INFO: compiled from: Keys.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class KeysKt {
    public static final byte[] CLIENT_FINISHED_LABEL;
    public static final byte[] KEY_EXPANSION_LABEL;
    public static final byte[] MASTER_SECRET_LABEL;
    public static final byte[] SERVER_FINISHED_LABEL;

    static {
        Charset charset = Charsets.UTF_8;
        byte[] bytes = TLSKeyMaterialSpec.MASTER_SECRET.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        MASTER_SECRET_LABEL = bytes;
        byte[] bytes2 = TLSKeyMaterialSpec.KEY_EXPANSION.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
        KEY_EXPANSION_LABEL = bytes2;
        byte[] bytes3 = "client finished".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
        CLIENT_FINISHED_LABEL = bytes3;
        byte[] bytes4 = "server finished".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes4, "getBytes(...)");
        SERVER_FINISHED_LABEL = bytes4;
    }

    public static final byte[] getCLIENT_FINISHED_LABEL() {
        return CLIENT_FINISHED_LABEL;
    }

    public static final byte[] getSERVER_FINISHED_LABEL() {
        return SERVER_FINISHED_LABEL;
    }

    public static final SecretKeySpec clientMacKey(byte[] bArr, CipherSuite suite) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(suite, "suite");
        return new SecretKeySpec(bArr, 0, suite.getMacStrengthInBytes(), suite.getHash().getMacName());
    }

    public static final SecretKeySpec serverMacKey(byte[] bArr, CipherSuite suite) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(suite, "suite");
        return new SecretKeySpec(bArr, suite.getMacStrengthInBytes(), suite.getMacStrengthInBytes(), suite.getHash().getMacName());
    }

    public static final SecretKeySpec serverKey(byte[] bArr, CipherSuite suite) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(suite, "suite");
        return new SecretKeySpec(bArr, (suite.getMacStrengthInBytes() * 2) + suite.getKeyStrengthInBytes(), suite.getKeyStrengthInBytes(), StringsKt__StringsKt.substringBefore$default(suite.getJdkCipherName(), "/", (String) null, 2, (Object) null));
    }

    public static final SecretKeySpec clientKey(byte[] bArr, CipherSuite suite) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(suite, "suite");
        return new SecretKeySpec(bArr, suite.getMacStrengthInBytes() * 2, suite.getKeyStrengthInBytes(), StringsKt__StringsKt.substringBefore$default(suite.getJdkCipherName(), "/", (String) null, 2, (Object) null));
    }

    public static final byte[] clientIV(byte[] bArr, CipherSuite suite) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(suite, "suite");
        return ArraysKt___ArraysJvmKt.copyOfRange(bArr, (suite.getMacStrengthInBytes() * 2) + (suite.getKeyStrengthInBytes() * 2), (suite.getMacStrengthInBytes() * 2) + (suite.getKeyStrengthInBytes() * 2) + suite.getFixedIvLength());
    }

    public static final byte[] serverIV(byte[] bArr, CipherSuite suite) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(suite, "suite");
        return ArraysKt___ArraysJvmKt.copyOfRange(bArr, (suite.getMacStrengthInBytes() * 2) + (suite.getKeyStrengthInBytes() * 2) + suite.getFixedIvLength(), (suite.getMacStrengthInBytes() * 2) + (suite.getKeyStrengthInBytes() * 2) + (suite.getFixedIvLength() * 2));
    }

    public static final byte[] keyMaterial(SecretKey masterSecret, byte[] seed, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(masterSecret, "masterSecret");
        Intrinsics.checkNotNullParameter(seed, "seed");
        return HashesKt.PRF(masterSecret, KEY_EXPANSION_LABEL, seed, (i2 * 2) + (i * 2) + (i3 * 2));
    }

    public static final SecretKeySpec masterSecret(SecretKey preMasterSecret, byte[] clientRandom, byte[] serverRandom) {
        Intrinsics.checkNotNullParameter(preMasterSecret, "preMasterSecret");
        Intrinsics.checkNotNullParameter(clientRandom, "clientRandom");
        Intrinsics.checkNotNullParameter(serverRandom, "serverRandom");
        return new SecretKeySpec(HashesKt.PRF(preMasterSecret, MASTER_SECRET_LABEL, ArraysKt___ArraysJvmKt.plus(clientRandom, serverRandom), 48), preMasterSecret.getAlgorithm());
    }
}
