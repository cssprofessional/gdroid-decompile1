###### Class io.ktor.network.tls.TLSClientHandshake (io.ktor.network.tls.TLSClientHandshake)
.class public final Lio/ktor/network/tls/TLSClientHandshake;
.super Ljava/lang/Object;
.source "TLSClientHandshake.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSClientHandshake.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSClientHandshake.kt\nio/ktor/network/tls/TLSClientHandshake\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,567:1\n1#2:568\n774#3:569\n865#3,2:570\n1761#3,3:572\n808#3,11:575\n295#3:588\n1761#3,3:589\n296#3:592\n1761#3,3:611\n37#4,2:586\n21#5,3:593\n21#5,3:596\n21#5,3:599\n21#5,3:602\n21#5,3:616\n21#5,3:619\n21#5,3:622\n19985#6,2:605\n11561#6:607\n11896#6,3:608\n1400#6,2:614\n*S KotlinDebug\n*F\n+ 1 TLSClientHandshake.kt\nio/ktor/network/tls/TLSClientHandshake\n*L\n190#1:569\n190#1:570,2\n201#1:572,3\n246#1:575,11\n252#1:588\n253#1:589,3\n252#1:592\n408#1:611,3\n250#1:586,2\n274#1:593,3\n284#1:596,3\n374#1:599,3\n378#1:602,3\n442#1:616,3\n484#1:619,3\n486#1:622,3\n399#1:605,2\n407#1:607\n407#1:608,3\n420#1:614,2\n*E\n"
.end annotation


# instance fields
.field public final cipher$delegate:Lkotlin/Lazy;

.field public final clientSeed:[B

.field public final closeTask:Lkotlinx/coroutines/CompletableJob;

.field public final config:Lio/ktor/network/tls/TLSConfig;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final digest:Lkotlinx/io/Sink;

.field public final handshakes:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/network/tls/TLSHandshake;",
            ">;"
        }
    .end annotation
.end field

.field public final input:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final keyMaterial$delegate:Lkotlin/Lazy;

.field private volatile masterSecret:Ljavax/crypto/spec/SecretKeySpec;

.field public final output:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serverHello:Lio/ktor/network/tls/TLSServerHello;

.field public useCipher:Z


# direct methods
.method public static synthetic $r8$lambda$B0fF_FayqftIfYp1T5UqVUJshAA(Lio/ktor/network/tls/CertificateAndKey;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificate$lambda$1(Lio/ktor/network/tls/CertificateAndKey;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G2LRtX9Mkx31PobRJMFy8Gc8lqA(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientFinished$lambda$0(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QJ8hqIqSOEWnSOsc37gqRbdSc_Q(Ljava/security/Signature;Lkotlinx/io/Source;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificateVerify$lambda$1$0(Ljava/security/Signature;Lkotlinx/io/Source;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U0SijE0ynAvI-RLiO8RU7oiRcfI(Lio/ktor/network/tls/extensions/HashAndSign;Lio/ktor/network/tls/TLSClientHandshake;Ljava/security/Signature;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificateVerify$lambda$1(Lio/ktor/network/tls/extensions/HashAndSign;Lio/ktor/network/tls/TLSClientHandshake;Ljava/security/Signature;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZV4vtAdl3QldzmE9BuUQIHICTDU(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientKeyExchange$lambda$2(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ceSDK0ZoKpLX1iEAXv-dpXE3KO8(Lio/ktor/network/tls/TLSClientHandshake;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientHello$lambda$0(Lio/ktor/network/tls/TLSClientHandshake;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f3WH29RoW2tEBMrTXAYAtO6UJWk(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshake;->cipher_delegate$lambda$0(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$omkPf-WZYZl1ijsDH094kIyHtEY(Lio/ktor/network/tls/TLSClientHandshake;)[B
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshake;->keyMaterial_delegate$lambda$0(Lio/ktor/network/tls/TLSClientHandshake;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wdVRfRvYfADBvvuPeQ4r3ndCL8A(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake;->output$lambda$0$0(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CompletableJob;)V
    .registers 14

    const-string v0, "rawInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawOutput"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeTask"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    .line 30
    iput-object p4, p0, Lio/ktor/network/tls/TLSClientHandshake;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 31
    iput-object p5, p0, Lio/ktor/network/tls/TLSClientHandshake;->closeTask:Lkotlinx/coroutines/CompletableJob;

    .line 33
    invoke-static {}, Lio/ktor/network/tls/UtilsKt;->Digest()Lkotlinx/io/Sink;

    move-result-object p4

    iput-object p4, p0, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    .line 34
    invoke-virtual {p3}, Lio/ktor/network/tls/TLSConfig;->getRandom()Ljava/security/SecureRandom;

    move-result-object p3

    invoke-static {p3}, Lio/ktor/network/tls/TLSClientHandshakeKt;->access$generateClientSeed(Ljava/security/SecureRandom;)[B

    move-result-object p3

    iput-object p3, p0, Lio/ktor/network/tls/TLSClientHandshake;->clientSeed:[B

    .line 42
    new-instance p3, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda2;-><init>(Lio/ktor/network/tls/TLSClientHandshake;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lio/ktor/network/tls/TLSClientHandshake;->keyMaterial$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p3, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda3;-><init>(Lio/ktor/network/tls/TLSClientHandshake;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lio/ktor/network/tls/TLSClientHandshake;->cipher$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string p3, "cio-tls-parser"

    invoke-direct {v1, p3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/ktor/network/tls/TLSClientHandshake$input$1;

    const/4 p3, 0x0

    invoke-direct {v3, p1, p0, p3}, Lio/ktor/network/tls/TLSClientHandshake$input$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake;->input:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 108
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string p1, "cio-tls-encoder"

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lio/ktor/network/tls/TLSClientHandshake$output$1;

    invoke-direct {v5, p0, p2, p3}, Lio/ktor/network/tls/TLSClientHandshake$output$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    .line 121
    new-instance p4, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p2}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;)V

    invoke-interface {p1, p4}, Lkotlinx/coroutines/channels/SendChannel;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    .line 120
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake;->output:Lkotlinx/coroutines/channels/SendChannel;

    .line 148
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string p1, "cio-tls-handshake"

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;

    invoke-direct {v3, p0, p3}, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake;->handshakes:Lkotlinx/coroutines/channels/ReceiveChannel;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CompletableJob;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_a

    const/4 p5, 0x1

    const/4 p6, 0x0

    .line 31
    invoke-static {p6, p5, p6}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p5

    :cond_a
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lio/ktor/network/tls/TLSClientHandshake;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CompletableJob;)V

    return-void
.end method

.method public static final synthetic access$getCipher(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lio/ktor/network/tls/TLSClientHandshake;->getCipher()Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCloseTask$p(Lio/ktor/network/tls/TLSClientHandshake;)Lkotlinx/coroutines/CompletableJob;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->closeTask:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

.method public static final synthetic access$getDigest$p(Lio/ktor/network/tls/TLSClientHandshake;)Lkotlinx/io/Sink;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    return-object p0
.end method

.method public static final synthetic access$handleCertificatesAndKeys(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->handleCertificatesAndKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleServerDone(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 26
    invoke-virtual/range {p0 .. p5}, Lio/ktor/network/tls/TLSClientHandshake;->handleServerDone(Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$receiveServerFinished(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->receiveServerFinished(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$receiveServerHello(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->receiveServerHello(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendChangeCipherSpec(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendChangeCipherSpec(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendClientCertificate(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/tls/CertificateInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificate(Lio/ktor/network/tls/CertificateInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendHandshakeRecord(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final cipher_delegate$lambda$0(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;
    .registers 3

    .line 55
    sget-object v0, Lio/ktor/network/tls/cipher/TLSCipher;->Companion:Lio/ktor/network/tls/cipher/TLSCipher$Companion;

    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v1, :cond_c

    const-string v1, "serverHello"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/network/tls/TLSClientHandshake;->getKeyMaterial()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/ktor/network/tls/cipher/TLSCipher$Companion;->fromSuite(Lio/ktor/network/tls/CipherSuite;[B)Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object p0

    return-object p0
.end method

.method public static final keyMaterial_delegate$lambda$0(Lio/ktor/network/tls/TLSClientHandshake;)[B
    .registers 6

    .line 43
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    const-string v1, "serverHello"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    invoke-virtual {v0}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v0

    .line 45
    iget-object v3, p0, Lio/ktor/network/tls/TLSClientHandshake;->masterSecret:Ljavax/crypto/spec/SecretKeySpec;

    if-nez v3, :cond_19

    const-string v3, "masterSecret"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    .line 46
    :cond_19
    iget-object v4, p0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v4, :cond_21

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v2, v4

    :goto_22
    invoke-virtual {v2}, Lio/ktor/network/tls/TLSServerHello;->getServerSeed()[B

    move-result-object v1

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->clientSeed:[B

    invoke-static {v1, p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object p0

    .line 47
    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v1

    .line 48
    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v2

    .line 49
    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result v0

    .line 44
    invoke-static {v3, p0, v1, v2, v0}, Lio/ktor/network/tls/KeysKt;->keyMaterial(Ljavax/crypto/SecretKey;[BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final output$lambda$0$0(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 9

    .line 122
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string p2, "cio-tls-closer"

    invoke-direct {v1, p2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 138
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final sendClientCertificate$lambda$1(Lio/ktor/network/tls/CertificateAndKey;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 3

    const-string v0, "$this$sendHandshakeRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_d

    .line 412
    invoke-virtual {p0}, Lio/ktor/network/tls/CertificateAndKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-nez p0, :cond_10

    :cond_d
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    :cond_10
    invoke-static {p1, p0}, Lio/ktor/network/tls/RenderKt;->writeTLSCertificates(Lkotlinx/io/Sink;[Ljava/security/cert/X509Certificate;)V

    .line 413
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final sendClientCertificateVerify$lambda$1(Lio/ktor/network/tls/extensions/HashAndSign;Lio/ktor/network/tls/TLSClientHandshake;Ljava/security/Signature;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 10

    const-string v0, "$this$sendHandshakeRecord"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lio/ktor/network/tls/extensions/HashAndSign;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getCode()B

    move-result v0

    invoke-interface {p3, v0}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 431
    invoke-virtual {p0}, Lio/ktor/network/tls/extensions/HashAndSign;->getSign()Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->getCode()B

    move-result p0

    invoke-interface {p3, p0}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 433
    iget-object p0, p1, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    new-instance p1, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda8;

    invoke-direct {p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda8;-><init>(Ljava/security/Signature;)V

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/ByteReadPacketKt;->preview(Lkotlinx/io/Sink;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 434
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 436
    array-length p0, v1

    int-to-short p0, p0

    invoke-interface {p3, p0}, Lkotlinx/io/Sink;->writeShort(S)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p3

    .line 437
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 438
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final sendClientCertificateVerify$lambda$1$0(Ljava/security/Signature;Lkotlinx/io/Source;)Lkotlin/Unit;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-static {p1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final sendClientFinished$lambda$0(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 3

    const-string v0, "$this$sendHandshakeRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-static {p1, p0}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    .line 456
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final sendClientHello$lambda$0(Lio/ktor/network/tls/TLSClientHandshake;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 9

    const-string v0, "$this$sendHandshakeRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v2, Lio/ktor/network/tls/TLSVersion;->TLS12:Lio/ktor/network/tls/TLSVersion;

    .line 215
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSConfig;->getCipherSuites()Ljava/util/List;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lio/ktor/network/tls/TLSClientHandshake;->clientSeed:[B

    const/16 v0, 0x20

    .line 217
    new-array v5, v0, [B

    .line 218
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {p0}, Lio/ktor/network/tls/TLSConfig;->getServerName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    .line 213
    invoke-static/range {v1 .. v6}, Lio/ktor/network/tls/RenderKt;->writeTLSClientHello(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSVersion;Ljava/util/List;[B[BLjava/lang/String;)V

    .line 220
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final sendClientKeyExchange$lambda$2(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 3

    const-string v0, "$this$sendHandshakeRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-static {p1, p0}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final close()Lkotlinx/coroutines/Job;
    .registers 4

    .line 142
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake;->input:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;->cancel$default(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake;->output:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 144
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->closeTask:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

.method public final generatePreSecret(Lio/ktor/network/tls/EncryptionInfo;)[B
    .registers 6

    .line 352
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "serverHello"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getExchangeType()Lio/ktor/network/tls/SecretExchangeType;

    move-result-object v0

    sget-object v2, Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3b

    if-ne v0, v2, :cond_35

    const/16 p1, 0x30

    .line 353
    new-array p1, p1, [B

    .line 354
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {p0}, Lio/ktor/network/tls/TLSConfig;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    const/4 v0, 0x3

    .line 355
    aput-byte v0, p1, p0

    .line 356
    aput-byte v0, p1, v3

    goto :goto_5b

    .line 352
    :cond_35
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 359
    :cond_3b
    const-string p0, "ECDH"

    invoke-static {p0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_5c

    .line 361
    invoke-virtual {p1}, Lio/ktor/network/tls/EncryptionInfo;->getClientPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 362
    invoke-virtual {p1}, Lio/ktor/network/tls/EncryptionInfo;->getServerPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 363
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5b
    return-object p1

    .line 360
    :cond_5c
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "ECDHE_ECDSA: Encryption info should be provided"

    invoke-direct {p0, p1, v1, v2, v1}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final getCipher()Lio/ktor/network/tls/cipher/TLSCipher;
    .registers 1

    .line 54
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->cipher$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/cipher/TLSCipher;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getInput()Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->input:Lkotlinx/coroutines/channels/ReceiveChannel;

    return-object p0
.end method

.method public final getKeyMaterial()[B
    .registers 1

    .line 42
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->keyMaterial$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final getOutput()Lkotlinx/coroutines/channels/SendChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->output:Lkotlinx/coroutines/channels/SendChannel;

    return-object p0
.end method

.method public final getUseCipher()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->useCipher:Z

    return p0
.end method

.method public final handleCertificatesAndKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;

    iget v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;

    invoke-direct {v2, v0, v1}, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 233
    iget v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    const-string v4, "serverHello"

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_6f

    if-eq v3, v5, :cond_54

    if-ne v3, v7, :cond_4c

    iget-object v0, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlinx/io/Source;

    iget-object v0, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/TLSHandshake;

    iget-object v0, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v0, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/CertificateInfo;

    iget-object v0, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fe

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    iget-object v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v9, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/tls/CertificateInfo;

    iget-object v10, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v22, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v3

    move-object/from16 v3, v22

    goto :goto_a8

    :cond_6f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    iget-object v1, v0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v1, :cond_7a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v8

    :cond_7a
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/network/tls/CipherSuite;->getExchangeType()Lio/ktor/network/tls/SecretExchangeType;

    move-result-object v1

    .line 235
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v10, v3

    move-object v3, v8

    move-object v9, v3

    .line 240
    :goto_8a
    iget-object v11, v0, Lio/ktor/network/tls/TLSClientHandshake;->handshakes:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v1, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    invoke-interface {v11, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_9d

    return-object v6

    :cond_9d
    move-object/from16 v22, v11

    move-object v11, v1

    move-object/from16 v1, v22

    move-object/from16 v23, v9

    move-object v9, v2

    move-object v2, v10

    move-object/from16 v10, v23

    .line 233
    :goto_a8
    check-cast v1, Lio/ktor/network/tls/TLSHandshake;

    .line 241
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSHandshake;->getPacket()Lkotlinx/io/Source;

    move-result-object v12

    .line 243
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v13

    sget-object v14, Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v14, v13

    if-eq v13, v5, :cond_1ee

    if-eq v13, v7, :cond_1e0

    const/4 v14, 0x3

    if-eq v13, v14, :cond_11c

    const/4 v4, 0x4

    if-ne v13, v4, :cond_101

    .line 309
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/security/cert/Certificate;

    .line 307
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$4:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->L$5:Ljava/lang/Object;

    iput v7, v9, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v4

    move-object v4, v10

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lio/ktor/network/tls/TLSClientHandshake;->handleServerDone(Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_fe

    return-object v6

    .line 313
    :cond_fe
    :goto_fe
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 316
    :cond_101
    new-instance v0, Lio/ktor/network/tls/TLSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message type during handshake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, v7, v8}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 267
    :cond_11c
    sget-object v1, Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v1, v1, v10

    if-eq v1, v5, :cond_139

    if-eq v1, v7, :cond_12e

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 300
    :cond_12e
    invoke-interface {v12}, Lkotlinx/io/RawSource;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 301
    const-string v1, "Server key exchange handshake doesn\'t expected in RCA exchange type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_139
    invoke-static {v12}, Lio/ktor/network/tls/ParserKt;->readCurveParams(Lkotlinx/io/Source;)Lio/ktor/network/tls/extensions/NamedCurve;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/NamedCurve;->getFieldSize()I

    move-result v10

    invoke-static {v12, v10}, Lio/ktor/network/tls/ParserKt;->readECPoint(Lkotlinx/io/Source;I)Ljava/security/spec/ECPoint;

    move-result-object v10

    .line 271
    invoke-static {v12}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->readHashAndSign(Lkotlinx/io/Source;)Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object v13

    if-eqz v13, :cond_1d8

    .line 21
    new-instance v14, Lkotlinx/io/Buffer;

    invoke-direct {v14}, Lkotlinx/io/Buffer;-><init>()V

    .line 276
    sget-object v15, Lio/ktor/network/tls/ServerKeyExchangeType;->NamedCurve:Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-virtual {v15}, Lio/ktor/network/tls/ServerKeyExchangeType;->getCode()I

    move-result v15

    int-to-byte v15, v15

    invoke-interface {v14, v15}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 277
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/NamedCurve;->getCode()S

    move-result v15

    invoke-interface {v14, v15}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 278
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/NamedCurve;->getFieldSize()I

    move-result v15

    invoke-static {v14, v10, v15}, Lio/ktor/network/tls/RenderKt;->writeECPoint(Lkotlinx/io/Sink;Ljava/security/spec/ECPoint;I)V

    .line 281
    invoke-virtual {v13}, Lio/ktor/network/tls/extensions/HashAndSign;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    iget-object v15, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Ljava/security/cert/Certificate;

    invoke-virtual {v13, v15}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 21
    new-instance v15, Lkotlinx/io/Buffer;

    invoke-direct {v15}, Lkotlinx/io/Buffer;-><init>()V

    .line 285
    iget-object v5, v0, Lio/ktor/network/tls/TLSClientHandshake;->clientSeed:[B

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v15

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v21}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 286
    iget-object v5, v0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v5, :cond_198

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v8

    :cond_198
    invoke-virtual {v5}, Lio/ktor/network/tls/TLSServerHello;->getServerSeed()[B

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v15

    invoke-static/range {v16 .. v21}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 287
    invoke-static {v15, v14}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    .line 288
    invoke-static {v15}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;)[B

    move-result-object v5

    .line 283
    invoke-virtual {v13, v5}, Ljava/security/Signature;->update([B)V

    .line 292
    invoke-interface {v12}, Lkotlinx/io/Source;->readShort()S

    move-result v5

    const v14, 0xffff

    and-int/2addr v5, v14

    .line 293
    invoke-static {v12, v5}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v5

    .line 294
    invoke-virtual {v13, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-eqz v5, :cond_1d0

    .line 296
    invoke-static {v1, v10}, Lio/ktor/network/tls/TLSClientHandshakeKt;->access$generateECKeys(Lio/ktor/network/tls/extensions/NamedCurve;Ljava/security/spec/ECPoint;)Lio/ktor/network/tls/EncryptionInfo;

    move-result-object v1

    move-object v10, v2

    move-object v2, v9

    const/4 v5, 0x1

    move-object v9, v1

    move-object v1, v11

    goto/16 :goto_8a

    .line 294
    :cond_1d0
    new-instance v0, Lio/ktor/network/tls/TLSException;

    const-string v1, "Failed to verify signed message"

    invoke-direct {v0, v1, v8, v7, v8}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 271
    :cond_1d8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 272
    const-string v1, "Unknown hash and sign type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1e0
    invoke-static {v12}, Lio/ktor/network/tls/TLSClientHandshakeKt;->readClientCertificateRequest(Lkotlinx/io/Source;)Lio/ktor/network/tls/CertificateInfo;

    move-result-object v3

    move-object v1, v11

    const/4 v5, 0x1

    :goto_1e6
    move-object/from16 v22, v10

    move-object v10, v2

    move-object v2, v9

    move-object/from16 v9, v22

    goto/16 :goto_8a

    .line 245
    :cond_1ee
    invoke-static {v12}, Lio/ktor/network/tls/ParserKt;->readTLSCertificate(Lkotlinx/io/Source;)Ljava/util/List;

    move-result-object v1

    .line 808
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1fb
    :goto_1fb
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_20d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Ljava/security/cert/X509Certificate;

    if-eqz v14, :cond_1fb

    invoke-interface {v5, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1fb

    .line 247
    :cond_20d
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2be

    .line 249
    iget-object v12, v0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {v12}, Lio/ktor/network/tls/TLSConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    .line 38
    new-array v14, v13, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/security/cert/X509Certificate;

    .line 250
    invoke-virtual {v11}, Lio/ktor/network/tls/SecretExchangeType;->getJvmName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 295
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_282

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 253
    invoke-static {}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->getSupportedSignatureAlgorithms()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_248

    .line 1761
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_248

    const/4 v8, 0x1

    goto :goto_27b

    .line 1762
    :cond_248
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_24c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_279

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/ktor/network/tls/extensions/HashAndSign;

    .line 254
    invoke-virtual/range {v16 .. v16}, Lio/ktor/network/tls/extensions/HashAndSign;->getOid()Lio/ktor/network/tls/OID;

    move-result-object v16

    if-eqz v16, :cond_264

    invoke-virtual/range {v16 .. v16}, Lio/ktor/network/tls/OID;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_266

    :cond_264
    const/4 v8, 0x1

    goto :goto_270

    .line 255
    :cond_266
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v13, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_271

    :goto_270
    const/4 v7, 0x0

    :goto_271
    if-eqz v7, :cond_275

    move v13, v8

    goto :goto_27b

    :cond_275
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_24c

    :cond_279
    const/4 v8, 0x1

    const/4 v13, 0x0

    :goto_27b
    if-eqz v13, :cond_27e

    goto :goto_284

    :cond_27e
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_22d

    :cond_282
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 252
    :goto_284
    check-cast v12, Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_2a5

    iput-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 259
    iget-object v1, v0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSConfig;->getServerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29f

    .line 260
    iget-object v1, v0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSConfig;->getServerName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-static {v1, v5}, Lio/ktor/network/tls/HostnameUtilsKt;->verifyHostnameInCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    :cond_29f
    move v5, v8

    move-object v1, v11

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto/16 :goto_1e6

    .line 257
    :cond_2a5
    new-instance v0, Lio/ktor/network/tls/TLSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable server certificate received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_2be
    move v2, v7

    move-object v3, v8

    .line 247
    new-instance v0, Lio/ktor/network/tls/TLSException;

    const-string v1, "Server sent no certificate"

    invoke-direct {v0, v1, v3, v2, v3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final handleServerDone(Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/SecretExchangeType;",
            "Ljava/security/cert/Certificate;",
            "Lio/ktor/network/tls/CertificateInfo;",
            "Lio/ktor/network/tls/EncryptionInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    instance-of v2, v1, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;

    iget v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    :goto_18
    move-object v7, v2

    goto :goto_20

    :cond_1a
    new-instance v2, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;

    invoke-direct {v2, v6, v1}, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    goto :goto_18

    :goto_20
    iget-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 321
    iget v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_db

    if-eq v2, v4, :cond_bb

    if-eq v2, v3, :cond_9e

    if-eq v2, v12, :cond_7d

    if-eq v2, v11, :cond_60

    if-ne v2, v10, :cond_58

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/CertificateAndKey;

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/CertificateInfo;

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/Certificate;

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_22b

    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/CertificateAndKey;

    iget-object v3, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v4, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/network/tls/CertificateInfo;

    iget-object v5, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/security/cert/Certificate;

    iget-object v9, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1f2

    :cond_7d
    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/CertificateAndKey;

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/CertificateAndKey;

    iget-object v3, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v4, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/network/tls/CertificateInfo;

    iget-object v5, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/security/cert/Certificate;

    iget-object v9, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1c3

    :cond_9e
    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/CertificateAndKey;

    iget-object v3, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v4, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/network/tls/CertificateInfo;

    iget-object v5, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/security/cert/Certificate;

    iget-object v14, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14d

    :cond_bb
    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/CertificateInfo;

    iget-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/CertificateInfo;

    iget-object v4, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/security/cert/Certificate;

    iget-object v5, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v26, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v1

    move-object/from16 v1, v26

    goto :goto_ff

    :cond_db
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    if-eqz v0, :cond_107

    .line 327
    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    move-object/from16 v2, p2

    iput-object v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    iput-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    move-object/from16 v5, p4

    iput-object v5, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    iput v9, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->I$0:I

    iput v4, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    invoke-virtual {v6, v0, v7}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificate(Lio/ktor/network/tls/CertificateInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_ff

    return-object v8

    :cond_ff
    :goto_ff
    check-cast v4, Lio/ktor/network/tls/CertificateAndKey;

    move-object v14, v1

    move-object v15, v2

    move-object v2, v4

    move-object v4, v5

    :goto_105
    move-object v5, v0

    goto :goto_110

    :cond_107
    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object v14, v1

    move-object v15, v2

    move-object v4, v5

    move-object v2, v13

    goto :goto_105

    .line 329
    :goto_110
    invoke-virtual {v6, v4}, Lio/ktor/network/tls/TLSClientHandshake;->generatePreSecret(Lio/ktor/network/tls/EncryptionInfo;)[B

    move-result-object v1

    .line 331
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    iput-object v5, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    iput-object v2, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    iput v3, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object v1, v14

    move-object/from16 v17, v2

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientKeyExchange(Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;[BLio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_144

    return-object v8

    :cond_144
    move-object v5, v15

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .line 339
    :goto_14d
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v15, v6, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    const-string v16, "serverHello"

    if-nez v15, :cond_159

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v15, v13

    :cond_159
    invoke-virtual {v15}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v15

    invoke-virtual {v15}, Lio/ktor/network/tls/CipherSuite;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v15

    invoke-virtual {v15}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getMacName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v0, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 340
    iget-object v15, v6, Lio/ktor/network/tls/TLSClientHandshake;->clientSeed:[B

    .line 341
    iget-object v10, v6, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v10, :cond_172

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v13

    :cond_172
    invoke-virtual {v10}, Lio/ktor/network/tls/TLSServerHello;->getServerSeed()[B

    move-result-object v10

    .line 338
    invoke-static {v1, v15, v10}, Lio/ktor/network/tls/KeysKt;->masterSecret(Ljavax/crypto/SecretKey;[B[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    iput-object v1, v6, Lio/ktor/network/tls/TLSClientHandshake;->masterSecret:Ljavax/crypto/spec/SecretKeySpec;

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 343
    invoke-static/range {v20 .. v25}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    if-eqz v2, :cond_1c2

    .line 345
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$6:Ljava/lang/Object;

    iput v9, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->I$0:I

    iput v12, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    invoke-virtual {v6, v4, v2, v7}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificateVerify(Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/CertificateAndKey;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1c2

    return-object v8

    :cond_1c2
    move-object v9, v14

    .line 347
    :goto_1c3
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    iput-object v13, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$6:Ljava/lang/Object;

    iput v11, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    invoke-virtual {v6, v7}, Lio/ktor/network/tls/TLSClientHandshake;->sendChangeCipherSpec(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1f2

    return-object v8

    .line 348
    :cond_1f2
    :goto_1f2
    iget-object v1, v6, Lio/ktor/network/tls/TLSClientHandshake;->masterSecret:Ljavax/crypto/spec/SecretKeySpec;

    if-nez v1, :cond_1fc

    const-string v1, "masterSecret"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1fd

    :cond_1fc
    move-object v13, v1

    :goto_1fd
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$4:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->L$5:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v7, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    invoke-virtual {v6, v13, v7}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientFinished(Ljavax/crypto/spec/SecretKeySpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_22b

    return-object v8

    .line 349
    :cond_22b
    :goto_22b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final negotiate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;

    iget v1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_84

    if-eq v2, v6, :cond_75

    if-eq v2, v5, :cond_5b

    if-eq v2, v4, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object p0, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/io/Sink;

    iget-object p0, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/Digest;

    :try_start_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    goto/16 :goto_fe

    :catchall_3c
    move-exception p1

    goto/16 :goto_106

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iget-object v4, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Sink;

    iget-object v5, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/network/tls/Digest;

    :try_start_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_57

    move-object p1, v5

    goto/16 :goto_ea

    :catchall_57
    move-exception p1

    move-object p0, v5

    goto/16 :goto_106

    :cond_5b
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iget-object v5, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/network/tls/TLSClientHandshake;

    iget-object v6, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/io/Sink;

    iget-object v8, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/tls/Digest;

    :try_start_69
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_71

    move-object v9, v5

    move-object v5, p1

    move-object p1, v8

    move-object v8, v9

    goto :goto_bd

    :catchall_71
    move-exception p1

    move-object p0, v8

    goto/16 :goto_106

    :cond_75
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iget-object v6, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/io/Sink;

    iget-object v8, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/tls/Digest;

    :try_start_7f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_71

    move-object p1, v8

    goto :goto_a7

    :cond_84
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    invoke-static {p1}, Lio/ktor/network/tls/Digest;->box-impl(Lkotlinx/io/Sink;)Lio/ktor/network/tls/Digest;

    move-result-object p1

    :try_start_8d
    invoke-virtual {p1}, Lio/ktor/network/tls/Digest;->unbox-impl()Lkotlinx/io/Sink;

    move-result-object v2

    .line 177
    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x0

    iput v8, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iput v6, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSClientHandshake;->sendClientHello(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_a5

    return-object v1

    :cond_a5
    move-object v6, v2

    move v2, v8

    .line 178
    :goto_a7
    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iput v5, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSClientHandshake;->receiveServerHello(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_bc

    return-object v1

    :cond_bc
    move-object v8, p0

    .line 175
    :goto_bd
    check-cast v5, Lio/ktor/network/tls/TLSServerHello;

    iput-object v5, v8, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    .line 180
    iget-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v5, :cond_d1

    const-string v5, "serverHello"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_d1

    :catchall_cc
    move-exception p0

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_106

    :cond_d1
    :goto_d1
    invoke-virtual {p0, v5}, Lio/ktor/network/tls/TLSClientHandshake;->verifyHello(Lio/ktor/network/tls/TLSServerHello;)V

    .line 181
    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iput v4, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSClientHandshake;->handleCertificatesAndKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_e9

    return-object v1

    :cond_e9
    move-object v4, v6

    .line 182
    :goto_ea
    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->I$0:I

    iput v3, v0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSClientHandshake;->receiveServerFinished(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_fa
    .catchall {:try_start_8d .. :try_end_fa} :catchall_cc

    if-ne p0, v1, :cond_fd

    return-object v1

    :cond_fd
    move-object p0, p1

    .line 183
    :goto_fe
    :try_start_fe
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_100
    .catchall {:try_start_fe .. :try_end_100} :catchall_3c

    .line 176
    invoke-static {p0, v7}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 184
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 176
    :goto_106
    :try_start_106
    throw p1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final receiveServerFinished(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;

    iget v3, v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;

    invoke-direct {v2, v0, v1}, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 459
    iget v4, v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_35

    if-ne v4, v5, :cond_2d

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_43

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 460
    iget-object v1, v0, Lio/ktor/network/tls/TLSClientHandshake;->handshakes:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput v5, v2, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_43

    return-object v3

    .line 459
    :cond_43
    :goto_43
    check-cast v1, Lio/ktor/network/tls/TLSHandshake;

    .line 462
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v2

    sget-object v3, Lio/ktor/network/tls/TLSHandshakeType;->Finished:Lio/ktor/network/tls/TLSHandshakeType;

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-ne v2, v3, :cond_cb

    .line 466
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSHandshake;->getPacket()Lkotlinx/io/Source;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;)[B

    move-result-object v7

    .line 468
    iget-object v1, v0, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    iget-object v2, v0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v2, :cond_63

    const-string v2, "serverHello"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_63
    invoke-virtual {v2}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/tls/CipherSuite;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getOpenSSLName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/ktor/network/tls/Digest;->doHash-impl(Lkotlinx/io/Sink;Ljava/lang/String;)[B

    move-result-object v1

    .line 469
    iget-object v0, v0, Lio/ktor/network/tls/TLSClientHandshake;->masterSecret:Ljavax/crypto/spec/SecretKeySpec;

    if-nez v0, :cond_7d

    const-string v0, "masterSecret"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    .line 470
    :cond_7d
    array-length v2, v7

    .line 467
    invoke-static {v1, v0, v2}, Lio/ktor/network/tls/RenderKt;->serverFinished([BLjavax/crypto/SecretKey;I)[B

    move-result-object v8

    .line 473
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 481
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 474
    :cond_8b
    new-instance v0, Lio/ktor/network/tls/TLSException;

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handshake: ServerFinished verification failed:\n                |Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x3f

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 476
    invoke-static/range {v8 .. v16}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v2, "\n                |Actual: "

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x3f

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 477
    invoke-static/range {v7 .. v15}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v2, "\n                "

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v1, v6, v5, v6}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-direct {v0, v1, v6, v4, v6}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 463
    :cond_cb
    new-instance v0, Lio/ktor/network/tls/TLSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished handshake expected, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v4, v6}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final receiveServerHello(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSServerHello;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;

    iget v1, v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 223
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->handshakes:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput v3, v0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3f

    return-object v1

    .line 223
    :cond_3f
    :goto_3f
    check-cast p1, Lio/ktor/network/tls/TLSHandshake;

    .line 226
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object p0

    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ServerHello:Lio/ktor/network/tls/TLSHandshakeType;

    if-ne p0, v0, :cond_52

    .line 230
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getPacket()Lkotlinx/io/Source;

    move-result-object p0

    invoke-static {p0}, Lio/ktor/network/tls/ParserKt;->readTLSServerHello(Lkotlinx/io/Source;)Lio/ktor/network/tls/TLSServerHello;

    move-result-object p0

    return-object p0

    .line 227
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected TLS handshake ServerHello but got "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendChangeCipherSpec(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;

    iget v1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 441
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p0, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/io/Source;

    :try_start_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_5b

    :catchall_2d
    move-exception p1

    goto :goto_62

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    new-instance p1, Lkotlinx/io/Buffer;

    invoke-direct {p1}, Lkotlinx/io/Buffer;-><init>()V

    .line 442
    invoke-interface {p1, v3}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 444
    :try_start_42
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->output:Lkotlinx/coroutines/channels/SendChannel;

    new-instance v2, Lio/ktor/network/tls/TLSRecord;

    sget-object v5, Lio/ktor/network/tls/TLSRecordType;->ChangeCipherSpec:Lio/ktor/network/tls/TLSRecordType;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->label:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_5e

    if-ne p0, v1, :cond_5b

    return-object v1

    .line 449
    :cond_5b
    :goto_5b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_5e
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 446
    :goto_62
    invoke-interface {p0}, Lkotlinx/io/RawSource;->close()V

    .line 447
    throw p1
.end method

.method public final sendClientCertificate(Lio/ktor/network/tls/CertificateInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/CertificateInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/CertificateAndKey;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;

    iget v1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 387
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/CertificateAndKey;

    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/CertificateInfo;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_123

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 388
    iget-object p2, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {p2}, Lio/ktor/network/tls/TLSConfig;->getCertificates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/ktor/network/tls/CertificateAndKey;

    .line 389
    invoke-virtual {v4}, Lio/ktor/network/tls/CertificateAndKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 391
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 392
    const-string v7, "RSA"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_78

    invoke-virtual {p1}, Lio/ktor/network/tls/CertificateInfo;->getTypes()[B

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([BB)Z

    move-result v6

    goto :goto_8b

    .line 393
    :cond_78
    const-string v7, "DSS"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-virtual {p1}, Lio/ktor/network/tls/CertificateInfo;->getTypes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([BB)Z

    move-result v6

    goto :goto_8b

    :cond_8a
    move v6, v8

    :goto_8b
    if-nez v6, :cond_8f

    goto/16 :goto_103

    .line 399
    :cond_8f
    invoke-virtual {p1}, Lio/ktor/network/tls/CertificateInfo;->getHashAndSign()[Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object v6

    .line 19985
    array-length v7, v6

    move v9, v8

    :goto_95
    if-ge v9, v7, :cond_ac

    aget-object v10, v6, v9

    .line 400
    invoke-virtual {v10}, Lio/ktor/network/tls/extensions/HashAndSign;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a9

    move v5, v8

    goto :goto_ad

    :cond_a9
    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    :cond_ac
    move v5, v3

    :goto_ad
    if-eqz v5, :cond_b0

    goto :goto_103

    .line 405
    :cond_b0
    invoke-virtual {p1}, Lio/ktor/network/tls/CertificateInfo;->getAuthorities()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_102

    .line 406
    invoke-virtual {v4}, Lio/ktor/network/tls/CertificateAndKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 11561
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11896
    array-length v6, v4

    move v7, v8

    :goto_c6
    if-ge v7, v6, :cond_dd

    aget-object v9, v4, v7

    .line 407
    new-instance v10, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 11897
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    .line 1761
    :cond_dd
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e5

    :cond_e3
    move v4, v8

    goto :goto_100

    .line 1762
    :cond_e5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/security/auth/x500/X500Principal;

    .line 408
    invoke-virtual {p1}, Lio/ktor/network/tls/CertificateInfo;->getAuthorities()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e9

    move v4, v3

    :goto_100
    if-eqz v4, :cond_103

    :cond_102
    move v8, v3

    :cond_103
    :goto_103
    if-eqz v8, :cond_47

    goto :goto_107

    :cond_106
    const/4 v2, 0x0

    .line 388
    :goto_107
    move-object p2, v2

    check-cast p2, Lio/ktor/network/tls/CertificateAndKey;

    .line 411
    sget-object v2, Lio/ktor/network/tls/TLSHandshakeType;->Certificate:Lio/ktor/network/tls/TLSHandshakeType;

    new-instance v4, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda0;-><init>(Lio/ktor/network/tls/CertificateAndKey;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->label:I

    invoke-virtual {p0, v2, v4, v0}, Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_122

    return-object v1

    :cond_122
    move-object p0, p2

    :goto_123
    return-object p0
.end method

.method public final sendClientCertificateVerify(Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/CertificateAndKey;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/CertificateInfo;",
            "Lio/ktor/network/tls/CertificateAndKey;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 419
    invoke-virtual {p2}, Lio/ktor/network/tls/CertificateAndKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 420
    invoke-virtual {p1}, Lio/ktor/network/tls/CertificateInfo;->getHashAndSign()[Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object p1

    .line 1400
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 421
    invoke-virtual {v3}, Lio/ktor/network/tls/extensions/HashAndSign;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_28

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-nez v3, :cond_2d

    .line 422
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 424
    :cond_2d
    invoke-virtual {v3}, Lio/ktor/network/tls/extensions/HashAndSign;->getSign()Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object p1

    sget-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->DSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    if-ne p1, v0, :cond_38

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 426
    :cond_38
    invoke-virtual {p2}, Lio/ktor/network/tls/CertificateAndKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p2}, Lio/ktor/network/tls/CertificateAndKey;->getKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 429
    sget-object p2, Lio/ktor/network/tls/TLSHandshakeType;->CertificateVerify:Lio/ktor/network/tls/TLSHandshakeType;

    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;

    invoke-direct {v0, v3, p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;-><init>(Lio/ktor/network/tls/extensions/HashAndSign;Lio/ktor/network/tls/TLSClientHandshake;Ljava/security/Signature;)V

    invoke-virtual {p0, p2, v0, p3}, Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_66

    return-object p0

    :cond_66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final sendClientFinished(Ljavax/crypto/spec/SecretKeySpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/spec/SecretKeySpec;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake;->serverHello:Lio/ktor/network/tls/TLSServerHello;

    if-nez v1, :cond_c

    const-string v1, "serverHello"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    invoke-virtual {v1}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/network/tls/CipherSuite;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getOpenSSLName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/ktor/network/tls/Digest;->doHash-impl(Lkotlinx/io/Sink;Ljava/lang/String;)[B

    move-result-object v0

    .line 453
    invoke-static {v0, p1}, Lio/ktor/network/tls/RenderKt;->finished([BLjavax/crypto/SecretKey;)Lkotlinx/io/Source;

    move-result-object p1

    .line 454
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->Finished:Lio/ktor/network/tls/TLSHandshakeType;

    new-instance v1, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda6;-><init>(Lkotlinx/io/Source;)V

    invoke-virtual {p0, v0, v1, p2}, Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_32

    return-object p0

    :cond_32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final sendClientHello(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 211
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ClientHello:Lio/ktor/network/tls/TLSHandshakeType;

    new-instance v1, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda5;-><init>(Lio/ktor/network/tls/TLSClientHandshake;)V

    invoke-virtual {p0, v0, v1, p1}, Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_12

    return-object p0

    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final sendClientKeyExchange(Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;[BLio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/SecretExchangeType;",
            "Ljava/security/cert/Certificate;",
            "[B",
            "Lio/ktor/network/tls/EncryptionInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 373
    sget-object v0, Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2c

    if-ne p1, v1, :cond_26

    .line 21
    new-instance p1, Lkotlinx/io/Buffer;

    invoke-direct {p1}, Lkotlinx/io/Buffer;-><init>()V

    .line 375
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    const-string p4, "getPublicKey(...)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {p4}, Lio/ktor/network/tls/TLSConfig;->getRandom()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-static {p1, p3, p2, p4}, Lio/ktor/network/tls/RenderKt;->writeEncryptedPreMasterSecret(Lkotlinx/io/Sink;[BLjava/security/PublicKey;Ljava/security/SecureRandom;)V

    goto :goto_3a

    .line 373
    :cond_26
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 21
    :cond_2c
    new-instance p1, Lkotlinx/io/Buffer;

    invoke-direct {p1}, Lkotlinx/io/Buffer;-><init>()V

    if-eqz p4, :cond_4f

    .line 380
    invoke-virtual {p4}, Lio/ktor/network/tls/EncryptionInfo;->getClientPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-static {p1, p2}, Lio/ktor/network/tls/RenderKt;->writePublicKeyUncompressed(Lkotlinx/io/Sink;Ljava/security/PublicKey;)V

    .line 384
    :goto_3a
    sget-object p2, Lio/ktor/network/tls/TLSHandshakeType;->ClientKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

    new-instance p3, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda1;-><init>(Lkotlinx/io/Source;)V

    invoke-virtual {p0, p2, p3, p5}, Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4c

    return-object p0

    :cond_4c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 379
    :cond_4f
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "ECDHE: Encryption info should be provided"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v1, p2}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSHandshakeType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/io/Sink;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;

    iget v1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 483
    iget v2, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object p0, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSRecord;

    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/io/Source;

    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/io/Source;

    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/TLSHandshakeType;

    :try_start_39
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_98

    :catchall_3d
    move-exception p1

    goto :goto_9d

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    new-instance p3, Lkotlinx/io/Buffer;

    invoke-direct {p3}, Lkotlinx/io/Buffer;-><init>()V

    .line 22
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Lkotlinx/io/Buffer;

    invoke-direct {v2}, Lkotlinx/io/Buffer;-><init>()V

    .line 487
    invoke-static {p3}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v2, p1, v4}, Lio/ktor/network/tls/RenderKt;->writeTLSHandshakeType(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSHandshakeType;I)V

    .line 488
    invoke-static {v2, p3}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    .line 491
    iget-object v4, p0, Lio/ktor/network/tls/TLSClientHandshake;->digest:Lkotlinx/io/Sink;

    invoke-static {v4, v2}, Lio/ktor/network/tls/Digest;->update-impl(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    .line 492
    new-instance v10, Lio/ktor/network/tls/TLSRecord;

    sget-object v5, Lio/ktor/network/tls/TLSRecordType;->Handshake:Lio/ktor/network/tls/TLSRecordType;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 494
    :try_start_73
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->output:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$2:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->label:I

    invoke-interface {p0, v10, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_95
    .catchall {:try_start_73 .. :try_end_95} :catchall_9b

    if-ne p0, v1, :cond_98

    return-object v1

    .line 499
    :cond_98
    :goto_98
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_9b
    move-exception p1

    move-object p0, v10

    .line 496
    :goto_9d
    invoke-virtual {p0}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/io/RawSource;->close()V

    .line 497
    throw p1
.end method

.method public final setUseCipher(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lio/ktor/network/tls/TLSClientHandshake;->useCipher:Z

    return-void
.end method

.method public final verifyHello(Lio/ktor/network/tls/TLSServerHello;)V
    .registers 8

    .line 187
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSServerHello;->getCipherSuite()Lio/ktor/network/tls/CipherSuite;

    move-result-object v0

    .line 188
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake;->config:Lio/ktor/network/tls/TLSConfig;

    invoke-virtual {p0}, Lio/ktor/network/tls/TLSConfig;->getCipherSuites()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    .line 190
    invoke-static {}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->getSupportedSignatureAlgorithms()Ljava/util/List;

    move-result-object p0

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/ktor/network/tls/extensions/HashAndSign;

    .line 191
    invoke-virtual {v3}, Lio/ktor/network/tls/extensions/HashAndSign;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v4

    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v5

    if-ne v4, v5, :cond_1d

    invoke-virtual {v3}, Lio/ktor/network/tls/extensions/HashAndSign;->getSign()Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object v3

    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getSignatureAlgorithm()Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object v4

    if-ne v3, v4, :cond_1d

    .line 865
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 194
    :cond_42
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p0, :cond_91

    .line 198
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSServerHello;->getHashAndSignAlgorithms()Ljava/util/List;

    move-result-object p0

    .line 199
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_55

    return-void

    .line 1761
    :cond_55
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_72

    .line 1762
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/tls/extensions/HashAndSign;

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return-void

    .line 202
    :cond_72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No sign algorithms in common. \nServer candidates: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    const-string p0, " \nClient candidates: "

    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 206
    new-instance p1, Lio/ktor/network/tls/TLSException;

    invoke-direct {p1, p0, v3, v2, v3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 195
    :cond_91
    new-instance p0, Lio/ktor/network/tls/TLSException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No appropriate hash algorithm for suite: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2, v3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    .line 188
    :cond_a8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported cipher suite "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/ktor/network/tls/CipherSuite;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in SERVER_HELLO"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.WhenMappings (io.ktor.network.tls.TLSClientHandshake$WhenMappings)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;
.super Ljava/lang/Object;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSClientHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 0
    invoke-static {}, Lio/ktor/network/tls/SecretExchangeType;->values()[Lio/ktor/network/tls/SecretExchangeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/ktor/network/tls/SecretExchangeType;->ECDHE:Lio/ktor/network/tls/SecretExchangeType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/ktor/network/tls/SecretExchangeType;->RSA:Lio/ktor/network/tls/SecretExchangeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/ktor/network/tls/TLSHandshakeType;->values()[Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_22
    sget-object v3, Lio/ktor/network/tls/TLSHandshakeType;->Certificate:Lio/ktor/network/tls/TLSHandshakeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v1, Lio/ktor/network/tls/TLSHandshakeType;->CertificateRequest:Lio/ktor/network/tls/TLSHandshakeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v1, Lio/ktor/network/tls/TLSHandshakeType;->ServerKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    sget-object v1, Lio/ktor/network/tls/TLSHandshakeType;->ServerDone:Lio/ktor/network/tls/TLSHandshakeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_44

    :catch_44
    sput-object v0, Lio/ktor/network/tls/TLSClientHandshake$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.AnonymousClass1 (io.ktor.network.tls.TLSClientHandshake$handleCertificatesAndKeys$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->handleCertificatesAndKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0xf0,
        0x133
    }
    m = "handleCertificatesAndKeys"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleCertificatesAndKeys$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p1, p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$handleCertificatesAndKeys(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00561 (io.ktor.network.tls.TLSClientHandshake$handleServerDone$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->handleServerDone(Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0x147,
        0x14b,
        0x159,
        0x15b,
        0x15c
    }
    m = "handleServerDone"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->label:I

    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$handleServerDone$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lio/ktor/network/tls/TLSClientHandshake;->access$handleServerDone(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/tls/SecretExchangeType;Ljava/security/cert/Certificate;Lio/ktor/network/tls/CertificateInfo;Lio/ktor/network/tls/EncryptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00571 (io.ktor.network.tls.TLSClientHandshake$negotiate$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->negotiate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0xb1,
        0xb2,
        0xb5,
        0xb6
    }
    m = "negotiate"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$negotiate$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {p1, p0}, Lio/ktor/network/tls/TLSClientHandshake;->negotiate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00581 (io.ktor.network.tls.TLSClientHandshake$receiveServerFinished$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->receiveServerFinished(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0x1cc
    }
    m = "receiveServerFinished"
    v = 0x1
.end annotation


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerFinished$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p1, p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$receiveServerFinished(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00591 (io.ktor.network.tls.TLSClientHandshake$receiveServerHello$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->receiveServerHello(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0xe0
    }
    m = "receiveServerHello"
    v = 0x1
.end annotation


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$receiveServerHello$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p1, p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$receiveServerHello(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00601 (io.ktor.network.tls.TLSClientHandshake$sendChangeCipherSpec$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->sendChangeCipherSpec(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0x1bc
    }
    m = "sendChangeCipherSpec"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendChangeCipherSpec$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p1, p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$sendChangeCipherSpec(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00611 (io.ktor.network.tls.TLSClientHandshake$sendClientCertificate$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->sendClientCertificate(Lio/ktor/network/tls/CertificateInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0x19b
    }
    m = "sendClientCertificate"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendClientCertificate$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$sendClientCertificate(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/tls/CertificateInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake.C00621 (io.ktor.network.tls.TLSClientHandshake$sendHandshakeRecord$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;->sendHandshakeRecord(Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake"
    f = "TLSClientHandshake.kt"
    l = {
        0x1ee
    }
    m = "sendHandshakeRecord"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$sendHandshakeRecord$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$sendHandshakeRecord(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/tls/TLSHandshakeType;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda0 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/CertificateAndKey;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/CertificateAndKey;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/tls/CertificateAndKey;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/tls/CertificateAndKey;

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$B0fF_FayqftIfYp1T5UqVUJshAA(Lio/ktor/network/tls/CertificateAndKey;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda1 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/io/Source;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/io/Source;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda1;->f$0:Lkotlinx/io/Source;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda1;->f$0:Lkotlinx/io/Source;

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$ZV4vtAdl3QldzmE9BuUQIHICTDU(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda2 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda2)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda2;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda2;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$omkPf-WZYZl1ijsDH094kIyHtEY(Lio/ktor/network/tls/TLSClientHandshake;)[B

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda3 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda3)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda3;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda3;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$f3WH29RoW2tEBMrTXAYAtO6UJWk(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda4 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda4)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/TLSClientHandshake;

.field public final synthetic f$1:Lio/ktor/utils/io/ByteWriteChannel;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    iput-object p2, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;->f$1:Lio/ktor/utils/io/ByteWriteChannel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda4;->f$1:Lio/ktor/utils/io/ByteWriteChannel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$wdVRfRvYfADBvvuPeQ4r3ndCL8A(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda5 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda5)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda5;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda5;->f$0:Lio/ktor/network/tls/TLSClientHandshake;

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$ceSDK0ZoKpLX1iEAXv-dpXE3KO8(Lio/ktor/network/tls/TLSClientHandshake;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda6 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda6)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/io/Source;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/io/Source;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda6;->f$0:Lkotlinx/io/Source;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda6;->f$0:Lkotlinx/io/Source;

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$G2LRtX9Mkx31PobRJMFy8Gc8lqA(Lkotlinx/io/Source;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda7 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda7)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/extensions/HashAndSign;

.field public final synthetic f$1:Lio/ktor/network/tls/TLSClientHandshake;

.field public final synthetic f$2:Ljava/security/Signature;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/extensions/HashAndSign;Lio/ktor/network/tls/TLSClientHandshake;Ljava/security/Signature;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;->f$0:Lio/ktor/network/tls/extensions/HashAndSign;

    iput-object p2, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;->f$1:Lio/ktor/network/tls/TLSClientHandshake;

    iput-object p3, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;->f$2:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;->f$0:Lio/ktor/network/tls/extensions/HashAndSign;

    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;->f$1:Lio/ktor/network/tls/TLSClientHandshake;

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda7;->f$2:Ljava/security/Signature;

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {v0, v1, p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$U0SijE0ynAvI-RLiO8RU7oiRcfI(Lio/ktor/network/tls/extensions/HashAndSign;Lio/ktor/network/tls/TLSClientHandshake;Ljava/security/Signature;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda8 (io.ktor.network.tls.TLSClientHandshake$$ExternalSyntheticLambda8)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/security/Signature;


# direct methods
.method public synthetic constructor <init>(Ljava/security/Signature;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda8;->f$0:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$$ExternalSyntheticLambda8;->f$0:Ljava/security/Signature;

    check-cast p1, Lkotlinx/io/Source;

    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake;->$r8$lambda$QJ8hqIqSOEWnSOsc37gqRbdSc_Q(Ljava/security/Signature;Lkotlinx/io/Source;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
