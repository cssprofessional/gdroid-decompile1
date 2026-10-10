package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.tls.cipher.TLSCipher;
import io.ktor.network.tls.extensions.HashAndSign;
import io.ktor.network.tls.extensions.SignatureAlgorithm;
import io.ktor.network.tls.extensions.SignatureAlgorithmKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.ByteReadPacketKt;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.channels.ActorKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;
import kotlinx.io.SourcesKt;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: compiled from: TLSClientHandshake.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSClientHandshake implements CoroutineScope {
    public final Lazy cipher$delegate;
    public final byte[] clientSeed;
    public final CompletableJob closeTask;
    public final TLSConfig config;
    public final CoroutineContext coroutineContext;
    public final Sink digest;
    public final ReceiveChannel<TLSHandshake> handshakes;
    public final ReceiveChannel<TLSRecord> input;
    public final Lazy keyMaterial$delegate;
    private volatile SecretKeySpec masterSecret;
    public final SendChannel<TLSRecord> output;
    private volatile TLSServerHello serverHello;
    public boolean useCipher;

    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SecretExchangeType.values().length];
            try {
                iArr[SecretExchangeType.ECDHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SecretExchangeType.RSA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TLSHandshakeType.values().length];
            try {
                iArr2[TLSHandshakeType.Certificate.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[TLSHandshakeType.CertificateRequest.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TLSHandshakeType.ServerKeyExchange.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TLSHandshakeType.ServerDone.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$handleCertificatesAndKeys$1, reason: invalid class name */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {240, 307}, m = "handleCertificatesAndKeys", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.handleCertificatesAndKeys(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$handleServerDone$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {327, 331, 345, 347, 348}, m = "handleServerDone", v = 1)
    public static final class C00561 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public int label;
        public /* synthetic */ Object result;

        public C00561(Continuation<? super C00561> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.handleServerDone(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$negotiate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {177, 178, 181, 182}, m = "negotiate", v = 1)
    public static final class C00571 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public C00571(Continuation<? super C00571> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.negotiate(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$receiveServerFinished$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {460}, m = "receiveServerFinished", v = 1)
    public static final class C00581 extends ContinuationImpl {
        public int label;
        public /* synthetic */ Object result;

        public C00581(Continuation<? super C00581> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.receiveServerFinished(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$receiveServerHello$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {BERTags.FLAGS}, m = "receiveServerHello", v = 1)
    public static final class C00591 extends ContinuationImpl {
        public int label;
        public /* synthetic */ Object result;

        public C00591(Continuation<? super C00591> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.receiveServerHello(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$sendChangeCipherSpec$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {444}, m = "sendChangeCipherSpec", v = 1)
    public static final class C00601 extends ContinuationImpl {
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public C00601(Continuation<? super C00601> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.sendChangeCipherSpec(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$sendClientCertificate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {411}, m = "sendClientCertificate", v = 1)
    public static final class C00611 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00611(Continuation<? super C00611> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.sendClientCertificate(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSClientHandshake$sendHandshakeRecord$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake", f = "TLSClientHandshake.kt", l = {494}, m = "sendHandshakeRecord", v = 1)
    public static final class C00621 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public /* synthetic */ Object result;

        public C00621(Continuation<? super C00621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSClientHandshake.this.sendHandshakeRecord(null, null, this);
        }
    }

    public TLSClientHandshake(ByteReadChannel rawInput, final ByteWriteChannel rawOutput, TLSConfig config, CoroutineContext coroutineContext, CompletableJob closeTask) {
        Intrinsics.checkNotNullParameter(rawInput, "rawInput");
        Intrinsics.checkNotNullParameter(rawOutput, "rawOutput");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(closeTask, "closeTask");
        this.config = config;
        this.coroutineContext = coroutineContext;
        this.closeTask = closeTask;
        this.digest = UtilsKt.Digest();
        this.clientSeed = TLSClientHandshakeKt.generateClientSeed(config.getRandom());
        this.keyMaterial$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TLSClientHandshake.keyMaterial_delegate$lambda$0(this.f$0);
            }
        });
        this.cipher$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TLSClientHandshake.cipher_delegate$lambda$0(this.f$0);
            }
        });
        this.input = ProduceKt.produce$default(this, new CoroutineName("cio-tls-parser"), 0, new TLSClientHandshake$input$1(rawInput, this, null), 2, null);
        SendChannel<TLSRecord> sendChannelActor$default = ActorKt.actor$default(this, new CoroutineName("cio-tls-encoder"), 0, null, null, new TLSClientHandshake$output$1(this, rawOutput, null), 14, null);
        sendChannelActor$default.invokeOnClose(new Function1() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSClientHandshake.output$lambda$0$0(this.f$0, rawOutput, (Throwable) obj);
            }
        });
        this.output = sendChannelActor$default;
        this.handshakes = ProduceKt.produce$default(this, new CoroutineName("cio-tls-handshake"), 0, new TLSClientHandshake$handshakes$1(this, null), 2, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    public /* synthetic */ TLSClientHandshake(ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, TLSConfig tLSConfig, CoroutineContext coroutineContext, CompletableJob completableJob, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteReadChannel, byteWriteChannel, tLSConfig, coroutineContext, (i & 16) != 0 ? JobKt__JobKt.Job$default(null, 1, null) : completableJob);
    }

    public final byte[] getKeyMaterial() {
        return (byte[]) this.keyMaterial$delegate.getValue();
    }

    public static final byte[] keyMaterial_delegate$lambda$0(TLSClientHandshake tLSClientHandshake) {
        TLSServerHello tLSServerHello = tLSClientHandshake.serverHello;
        TLSServerHello tLSServerHello2 = null;
        if (tLSServerHello == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverHello");
            tLSServerHello = null;
        }
        CipherSuite cipherSuite = tLSServerHello.getCipherSuite();
        SecretKeySpec secretKeySpec = tLSClientHandshake.masterSecret;
        if (secretKeySpec == null) {
            Intrinsics.throwUninitializedPropertyAccessException("masterSecret");
            secretKeySpec = null;
        }
        TLSServerHello tLSServerHello3 = tLSClientHandshake.serverHello;
        if (tLSServerHello3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverHello");
        } else {
            tLSServerHello2 = tLSServerHello3;
        }
        return KeysKt.keyMaterial(secretKeySpec, ArraysKt___ArraysJvmKt.plus(tLSServerHello2.getServerSeed(), tLSClientHandshake.clientSeed), cipherSuite.getKeyStrengthInBytes(), cipherSuite.getMacStrengthInBytes(), cipherSuite.getFixedIvLength());
    }

    public final TLSCipher getCipher() {
        return (TLSCipher) this.cipher$delegate.getValue();
    }

    public static final TLSCipher cipher_delegate$lambda$0(TLSClientHandshake tLSClientHandshake) {
        TLSCipher.Companion companion = TLSCipher.Companion;
        TLSServerHello tLSServerHello = tLSClientHandshake.serverHello;
        if (tLSServerHello == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverHello");
            tLSServerHello = null;
        }
        return companion.fromSuite(tLSServerHello.getCipherSuite(), tLSClientHandshake.getKeyMaterial());
    }

    public final ReceiveChannel<TLSRecord> getInput() {
        return this.input;
    }

    public final boolean getUseCipher() {
        return this.useCipher;
    }

    public final void setUseCipher(boolean z) {
        this.useCipher = z;
    }

    public final SendChannel<TLSRecord> getOutput() {
        return this.output;
    }

    public static final Unit output$lambda$0$0(TLSClientHandshake tLSClientHandshake, ByteWriteChannel byteWriteChannel, Throwable th) {
        BuildersKt__Builders_commonKt.launch$default(tLSClientHandshake, new CoroutineName("cio-tls-closer"), null, new TLSClientHandshake$output$2$1$1(tLSClientHandshake, byteWriteChannel, null), 2, null);
        return Unit.INSTANCE;
    }

    public final Job close() {
        ReceiveChannel.DefaultImpls.cancel$default(this.input, null, 1, null);
        SendChannel.DefaultImpls.close$default(this.output, null, 1, null);
        return this.closeTask;
    }

    /* JADX WARN: Not initialized variable reg: 8, insn: 0x0072: MOVE (r10 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:30:0x0072 */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[Catch: all -> 0x00cc, TryCatch #3 {all -> 0x00cc, blocks: (B:52:0x00ea, B:43:0x00bd, B:45:0x00c5, B:48:0x00d1, B:39:0x00a7, B:35:0x008d), top: B:68:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object negotiate(kotlin.coroutines.Continuation<? super kotlin.Unit> r11) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.negotiate(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void verifyHello(TLSServerHello tLSServerHello) throws TLSException {
        CipherSuite cipherSuite = tLSServerHello.getCipherSuite();
        if (!this.config.getCipherSuites().contains(cipherSuite)) {
            throw new IllegalStateException(("Unsupported cipher suite " + cipherSuite.getName() + " in SERVER_HELLO").toString());
        }
        List<HashAndSign> supportedSignatureAlgorithms = SignatureAlgorithmKt.getSupportedSignatureAlgorithms();
        ArrayList arrayList = new ArrayList();
        for (Object obj : supportedSignatureAlgorithms) {
            HashAndSign hashAndSign = (HashAndSign) obj;
            if (hashAndSign.getHash() == cipherSuite.getHash() && hashAndSign.getSign() == cipherSuite.getSignatureAlgorithm()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            throw new TLSException("No appropriate hash algorithm for suite: " + cipherSuite, null, 2, null);
        }
        List<HashAndSign> hashAndSignAlgorithms = tLSServerHello.getHashAndSignAlgorithms();
        if (hashAndSignAlgorithms.isEmpty()) {
            return;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (hashAndSignAlgorithms.contains((HashAndSign) it.next())) {
                    return;
                }
            }
        }
        throw new TLSException("No sign algorithms in common. \nServer candidates: " + hashAndSignAlgorithms + " \nClient candidates: " + arrayList, null, 2, null);
    }

    public final Object sendClientHello(Continuation<? super Unit> continuation) throws Throwable {
        Object objSendHandshakeRecord = sendHandshakeRecord(TLSHandshakeType.ClientHello, new Function1() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSClientHandshake.sendClientHello$lambda$0(this.f$0, (Sink) obj);
            }
        }, continuation);
        return objSendHandshakeRecord == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSendHandshakeRecord : Unit.INSTANCE;
    }

    public static final Unit sendClientHello$lambda$0(TLSClientHandshake tLSClientHandshake, Sink sendHandshakeRecord) throws TLSException {
        Intrinsics.checkNotNullParameter(sendHandshakeRecord, "$this$sendHandshakeRecord");
        RenderKt.writeTLSClientHello(sendHandshakeRecord, TLSVersion.TLS12, tLSClientHandshake.config.getCipherSuites(), tLSClientHandshake.clientSeed, new byte[32], tLSClientHandshake.config.getServerName());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object receiveServerHello(kotlin.coroutines.Continuation<? super io.ktor.network.tls.TLSServerHello> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof io.ktor.network.tls.TLSClientHandshake.C00591
            if (r0 == 0) goto L13
            r0 = r5
            io.ktor.network.tls.TLSClientHandshake$receiveServerHello$1 r0 = (io.ktor.network.tls.TLSClientHandshake.C00591) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.tls.TLSClientHandshake$receiveServerHello$1 r0 = new io.ktor.network.tls.TLSClientHandshake$receiveServerHello$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.ReceiveChannel<io.ktor.network.tls.TLSHandshake> r4 = r4.handshakes
            r0.label = r3
            java.lang.Object r5 = r4.receive(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            io.ktor.network.tls.TLSHandshake r5 = (io.ktor.network.tls.TLSHandshake) r5
            io.ktor.network.tls.TLSHandshakeType r4 = r5.getType()
            io.ktor.network.tls.TLSHandshakeType r0 = io.ktor.network.tls.TLSHandshakeType.ServerHello
            if (r4 != r0) goto L52
            kotlinx.io.Source r4 = r5.getPacket()
            io.ktor.network.tls.TLSServerHello r4 = io.ktor.network.tls.ParserKt.readTLSServerHello(r4)
            return r4
        L52:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Expected TLS handshake ServerHello but got "
            r4.append(r0)
            io.ktor.network.tls.TLSHandshakeType r5 = r5.getType()
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r4 = r4.toString()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.receiveServerHello(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r12v8, types: [T, java.security.cert.X509Certificate] */
    /* JADX WARN: Type inference failed for: r24v0, types: [io.ktor.network.tls.TLSClientHandshake] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Throwable, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r5v12, types: [io.ktor.network.tls.TLSServerHello] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Throwable, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x009d -> B:24:0x00a8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object handleCertificatesAndKeys(kotlin.coroutines.Continuation<? super kotlin.Unit> r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 712
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.handleCertificatesAndKeys(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0143 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x022a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object handleServerDone(io.ktor.network.tls.SecretExchangeType r28, java.security.cert.Certificate r29, io.ktor.network.tls.CertificateInfo r30, io.ktor.network.tls.EncryptionInfo r31, kotlin.coroutines.Continuation<? super kotlin.Unit> r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 558
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.handleServerDone(io.ktor.network.tls.SecretExchangeType, java.security.cert.Certificate, io.ktor.network.tls.CertificateInfo, io.ktor.network.tls.EncryptionInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final byte[] generatePreSecret(EncryptionInfo encryptionInfo) throws NoSuchAlgorithmException, TLSException, InvalidKeyException {
        TLSServerHello tLSServerHello = this.serverHello;
        if (tLSServerHello == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverHello");
            tLSServerHello = null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[tLSServerHello.getCipherSuite().getExchangeType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            byte[] bArr = new byte[48];
            this.config.getRandom().nextBytes(bArr);
            bArr[0] = 3;
            bArr[1] = 3;
            return bArr;
        }
        KeyAgreement keyAgreement = KeyAgreement.getInstance("ECDH");
        Intrinsics.checkNotNull(keyAgreement);
        if (encryptionInfo == null) {
            throw new TLSException("ECDHE_ECDSA: Encryption info should be provided", null, 2, null);
        }
        keyAgreement.init(encryptionInfo.getClientPrivate());
        keyAgreement.doPhase(encryptionInfo.getServerPublic(), true);
        byte[] bArrGenerateSecret = keyAgreement.generateSecret();
        Intrinsics.checkNotNull(bArrGenerateSecret);
        return bArrGenerateSecret;
    }

    public final Object sendClientKeyExchange(SecretExchangeType secretExchangeType, Certificate certificate, byte[] bArr, EncryptionInfo encryptionInfo, Continuation<? super Unit> continuation) throws Throwable {
        final Buffer buffer;
        int i = WhenMappings.$EnumSwitchMapping$0[secretExchangeType.ordinal()];
        if (i == 1) {
            buffer = new Buffer();
            if (encryptionInfo == null) {
                throw new TLSException("ECDHE: Encryption info should be provided", null, 2, null);
            }
            RenderKt.writePublicKeyUncompressed(buffer, encryptionInfo.getClientPublic());
        } else if (i == 2) {
            buffer = new Buffer();
            PublicKey publicKey = certificate.getPublicKey();
            Intrinsics.checkNotNullExpressionValue(publicKey, "getPublicKey(...)");
            RenderKt.writeEncryptedPreMasterSecret(buffer, bArr, publicKey, this.config.getRandom());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        Object objSendHandshakeRecord = sendHandshakeRecord(TLSHandshakeType.ClientKeyExchange, new Function1() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSClientHandshake.sendClientKeyExchange$lambda$2(buffer, (Sink) obj);
            }
        }, continuation);
        return objSendHandshakeRecord == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSendHandshakeRecord : Unit.INSTANCE;
    }

    public static final Unit sendClientKeyExchange$lambda$2(Source source, Sink sendHandshakeRecord) {
        Intrinsics.checkNotNullParameter(sendHandshakeRecord, "$this$sendHandshakeRecord");
        BytePacketBuilderKt.writePacket(sendHandshakeRecord, source);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object sendClientCertificate(io.ktor.network.tls.CertificateInfo r13, kotlin.coroutines.Continuation<? super io.ktor.network.tls.CertificateAndKey> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.sendClientCertificate(io.ktor.network.tls.CertificateInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Unit sendClientCertificate$lambda$1(CertificateAndKey certificateAndKey, Sink sendHandshakeRecord) throws CertificateEncodingException {
        X509Certificate[] certificateChain;
        Intrinsics.checkNotNullParameter(sendHandshakeRecord, "$this$sendHandshakeRecord");
        if (certificateAndKey == null || (certificateChain = certificateAndKey.getCertificateChain()) == null) {
            certificateChain = new X509Certificate[0];
        }
        RenderKt.writeTLSCertificates(sendHandshakeRecord, certificateChain);
        return Unit.INSTANCE;
    }

    public final Object sendClientCertificateVerify(CertificateInfo certificateInfo, CertificateAndKey certificateAndKey, Continuation<? super Unit> continuation) throws Throwable {
        final HashAndSign hashAndSign;
        X509Certificate x509Certificate = (X509Certificate) ArraysKt___ArraysKt.first(certificateAndKey.getCertificateChain());
        HashAndSign[] hashAndSign2 = certificateInfo.getHashAndSign();
        int length = hashAndSign2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                hashAndSign = null;
                break;
            }
            hashAndSign = hashAndSign2[i];
            if (StringsKt__StringsJVMKt.equals(hashAndSign.getName(), x509Certificate.getSigAlgName(), true)) {
                break;
            }
            i++;
        }
        if (hashAndSign == null) {
            return Unit.INSTANCE;
        }
        if (hashAndSign.getSign() == SignatureAlgorithm.DSA) {
            return Unit.INSTANCE;
        }
        final Signature signature = Signature.getInstance(((X509Certificate) ArraysKt___ArraysKt.first(certificateAndKey.getCertificateChain())).getSigAlgName());
        Intrinsics.checkNotNull(signature);
        signature.initSign(certificateAndKey.getKey());
        Object objSendHandshakeRecord = sendHandshakeRecord(TLSHandshakeType.CertificateVerify, new Function1() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSClientHandshake.sendClientCertificateVerify$lambda$1(hashAndSign, this, signature, (Sink) obj);
            }
        }, continuation);
        return objSendHandshakeRecord == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSendHandshakeRecord : Unit.INSTANCE;
    }

    public static final Unit sendClientCertificateVerify$lambda$1(HashAndSign hashAndSign, TLSClientHandshake tLSClientHandshake, final Signature signature, Sink sendHandshakeRecord) throws Exception {
        Intrinsics.checkNotNullParameter(sendHandshakeRecord, "$this$sendHandshakeRecord");
        sendHandshakeRecord.writeByte(hashAndSign.getHash().getCode());
        sendHandshakeRecord.writeByte(hashAndSign.getSign().getCode());
        ByteReadPacketKt.preview(tLSClientHandshake.digest, new Function1() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSClientHandshake.sendClientCertificateVerify$lambda$1$0(signature, (Source) obj);
            }
        });
        byte[] bArrSign = signature.sign();
        Intrinsics.checkNotNull(bArrSign);
        sendHandshakeRecord.writeShort((short) bArrSign.length);
        BytePacketBuilderKt.writeFully$default(sendHandshakeRecord, bArrSign, 0, 0, 6, null);
        return Unit.INSTANCE;
    }

    public static final Unit sendClientCertificateVerify$lambda$1$0(Signature signature, Source it) throws SignatureException {
        Intrinsics.checkNotNullParameter(it, "it");
        signature.update(SourcesKt.readByteArray(it));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object sendChangeCipherSpec(kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws java.lang.Throwable {
        /*
            r11 = this;
            boolean r0 = r12 instanceof io.ktor.network.tls.TLSClientHandshake.C00601
            if (r0 == 0) goto L13
            r0 = r12
            io.ktor.network.tls.TLSClientHandshake$sendChangeCipherSpec$1 r0 = (io.ktor.network.tls.TLSClientHandshake.C00601) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.tls.TLSClientHandshake$sendChangeCipherSpec$1 r0 = new io.ktor.network.tls.TLSClientHandshake$sendChangeCipherSpec$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r11 = r0.L$0
            kotlinx.io.Source r11 = (kotlinx.io.Source) r11
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L2d
            goto L5b
        L2d:
            r12 = move-exception
            goto L62
        L2f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L37:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.io.Buffer r12 = new kotlinx.io.Buffer
            r12.<init>()
            r12.writeByte(r3)
            kotlinx.coroutines.channels.SendChannel<io.ktor.network.tls.TLSRecord> r11 = r11.output     // Catch: java.lang.Throwable -> L5e
            io.ktor.network.tls.TLSRecord r2 = new io.ktor.network.tls.TLSRecord     // Catch: java.lang.Throwable -> L5e
            io.ktor.network.tls.TLSRecordType r5 = io.ktor.network.tls.TLSRecordType.ChangeCipherSpec     // Catch: java.lang.Throwable -> L5e
            r8 = 2
            r9 = 0
            r6 = 0
            r4 = r2
            r7 = r12
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L5e
            r0.L$0 = r12     // Catch: java.lang.Throwable -> L5e
            r0.label = r3     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r11 = r11.send(r2, r0)     // Catch: java.lang.Throwable -> L5e
            if (r11 != r1) goto L5b
            return r1
        L5b:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L5e:
            r11 = move-exception
            r10 = r12
            r12 = r11
            r11 = r10
        L62:
            r11.close()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.sendChangeCipherSpec(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object sendClientFinished(SecretKeySpec secretKeySpec, Continuation<? super Unit> continuation) throws Throwable {
        Sink sink = this.digest;
        TLSServerHello tLSServerHello = this.serverHello;
        if (tLSServerHello == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverHello");
            tLSServerHello = null;
        }
        final Source sourceFinished = RenderKt.finished(Digest.m8119doHashimpl(sink, tLSServerHello.getCipherSuite().getHash().getOpenSSLName()), secretKeySpec);
        Object objSendHandshakeRecord = sendHandshakeRecord(TLSHandshakeType.Finished, new Function1() { // from class: io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSClientHandshake.sendClientFinished$lambda$0(sourceFinished, (Sink) obj);
            }
        }, continuation);
        return objSendHandshakeRecord == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSendHandshakeRecord : Unit.INSTANCE;
    }

    public static final Unit sendClientFinished$lambda$0(Source source, Sink sendHandshakeRecord) {
        Intrinsics.checkNotNullParameter(sendHandshakeRecord, "$this$sendHandshakeRecord");
        BytePacketBuilderKt.writePacket(sendHandshakeRecord, source);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object receiveServerFinished(kotlin.coroutines.Continuation<? super kotlin.Unit> r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.receiveServerFinished(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object sendHandshakeRecord(io.ktor.network.tls.TLSHandshakeType r12, kotlin.jvm.functions.Function1<? super kotlinx.io.Sink, kotlin.Unit> r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.Throwable {
        /*
            r11 = this;
            boolean r0 = r14 instanceof io.ktor.network.tls.TLSClientHandshake.C00621
            if (r0 == 0) goto L13
            r0 = r14
            io.ktor.network.tls.TLSClientHandshake$sendHandshakeRecord$1 r0 = (io.ktor.network.tls.TLSClientHandshake.C00621) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.tls.TLSClientHandshake$sendHandshakeRecord$1 r0 = new io.ktor.network.tls.TLSClientHandshake$sendHandshakeRecord$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L47
            if (r2 != r3) goto L3f
            java.lang.Object r11 = r0.L$4
            io.ktor.network.tls.TLSRecord r11 = (io.ktor.network.tls.TLSRecord) r11
            java.lang.Object r12 = r0.L$3
            kotlinx.io.Source r12 = (kotlinx.io.Source) r12
            java.lang.Object r12 = r0.L$2
            kotlinx.io.Source r12 = (kotlinx.io.Source) r12
            java.lang.Object r12 = r0.L$1
            kotlin.jvm.functions.Function1 r12 = (kotlin.jvm.functions.Function1) r12
            java.lang.Object r12 = r0.L$0
            io.ktor.network.tls.TLSHandshakeType r12 = (io.ktor.network.tls.TLSHandshakeType) r12
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L3d
            goto L98
        L3d:
            r12 = move-exception
            goto L9d
        L3f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L47:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.io.Buffer r14 = new kotlinx.io.Buffer
            r14.<init>()
            r13.invoke(r14)
            kotlinx.io.Buffer r2 = new kotlinx.io.Buffer
            r2.<init>()
            long r4 = io.ktor.utils.io.core.ByteReadPacketKt.getRemaining(r14)
            int r4 = (int) r4
            io.ktor.network.tls.RenderKt.writeTLSHandshakeType(r2, r12, r4)
            io.ktor.utils.io.core.BytePacketBuilderKt.writePacket(r2, r14)
            kotlinx.io.Sink r4 = r11.digest
            io.ktor.network.tls.Digest.m8123updateimpl(r4, r2)
            io.ktor.network.tls.TLSRecord r10 = new io.ktor.network.tls.TLSRecord
            io.ktor.network.tls.TLSRecordType r5 = io.ktor.network.tls.TLSRecordType.Handshake
            r8 = 2
            r9 = 0
            r6 = 0
            r4 = r10
            r7 = r2
            r4.<init>(r5, r6, r7, r8, r9)
            kotlinx.coroutines.channels.SendChannel<io.ktor.network.tls.TLSRecord> r11 = r11.output     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)     // Catch: java.lang.Throwable -> L9b
            r0.L$0 = r12     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r13)     // Catch: java.lang.Throwable -> L9b
            r0.L$1 = r12     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r14)     // Catch: java.lang.Throwable -> L9b
            r0.L$2 = r12     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r2)     // Catch: java.lang.Throwable -> L9b
            r0.L$3 = r12     // Catch: java.lang.Throwable -> L9b
            r0.L$4 = r10     // Catch: java.lang.Throwable -> L9b
            r0.label = r3     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r11 = r11.send(r10, r0)     // Catch: java.lang.Throwable -> L9b
            if (r11 != r1) goto L98
            return r1
        L98:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L9b:
            r12 = move-exception
            r11 = r10
        L9d:
            kotlinx.io.Source r11 = r11.getPacket()
            r11.close()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake.sendHandshakeRecord(io.ktor.network.tls.TLSHandshakeType, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
