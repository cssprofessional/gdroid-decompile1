###### Class io.ktor.network.tls.TLSServerHello (io.ktor.network.tls.TLSServerHello)
.class public final Lio/ktor/network/tls/TLSServerHello;
.super Ljava/lang/Object;
.source "TLSHandshakeType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSServerHello$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSHandshakeType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSHandshakeType.kt\nio/ktor/network/tls/TLSServerHello\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1#2:101\n1869#3,2:102\n*S KotlinDebug\n*F\n+ 1 TLSHandshakeType.kt\nio/ktor/network/tls/TLSServerHello\n*L\n87#1:102,2\n*E\n"
.end annotation


# instance fields
.field public final cipherSuite:Lio/ktor/network/tls/CipherSuite;

.field public final compressionMethod:S

.field public final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/TLSExtension;",
            ">;"
        }
    .end annotation
.end field

.field public final hashAndSignAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            ">;"
        }
    .end annotation
.end field

.field public final serverSeed:[B

.field public final sessionId:[B

.field public final version:Lio/ktor/network/tls/TLSVersion;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSVersion;[B[BSSLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSVersion;",
            "[B[BSS",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/TLSExtension;",
            ">;)V"
        }
    .end annotation

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverSeed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/ktor/network/tls/TLSServerHello;->version:Lio/ktor/network/tls/TLSVersion;

    .line 74
    iput-object p2, p0, Lio/ktor/network/tls/TLSServerHello;->serverSeed:[B

    .line 75
    iput-object p3, p0, Lio/ktor/network/tls/TLSServerHello;->sessionId:[B

    .line 77
    iput-short p5, p0, Lio/ktor/network/tls/TLSServerHello;->compressionMethod:S

    .line 78
    iput-object p6, p0, Lio/ktor/network/tls/TLSServerHello;->extensions:Ljava/util/List;

    .line 80
    sget-object p1, Lio/ktor/network/tls/CIOCipherSuites;->INSTANCE:Lio/ktor/network/tls/CIOCipherSuites;

    invoke-virtual {p1}, Lio/ktor/network/tls/CIOCipherSuites;->getSupportedSuites()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lio/ktor/network/tls/CipherSuite;

    invoke-virtual {p3}, Lio/ktor/network/tls/CipherSuite;->getCode()S

    move-result p3

    if-ne p3, p4, :cond_2b

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    check-cast p2, Lio/ktor/network/tls/CipherSuite;

    if-eqz p2, :cond_7b

    iput-object p2, p0, Lio/ktor/network/tls/TLSServerHello;->cipherSuite:Lio/ktor/network/tls/CipherSuite;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object p2, p0, Lio/ktor/network/tls/TLSServerHello;->extensions:Ljava/util/List;

    .line 1869
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_51
    :goto_51
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/ktor/network/tls/extensions/TLSExtension;

    .line 88
    invoke-virtual {p3}, Lio/ktor/network/tls/extensions/TLSExtension;->getType()Lio/ktor/network/tls/extensions/TLSExtensionType;

    move-result-object p4

    sget-object p5, Lio/ktor/network/tls/TLSServerHello$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, p5, p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_51

    .line 90
    invoke-virtual {p3}, Lio/ktor/network/tls/extensions/TLSExtension;->getPacket()Lkotlinx/io/Source;

    move-result-object p3

    invoke-static {p3}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->parseSignatureAlgorithms(Lkotlinx/io/Source;)Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_51

    .line 97
    :cond_78
    iput-object p1, p0, Lio/ktor/network/tls/TLSServerHello;->hashAndSignAlgorithms:Ljava/util/List;

    return-void

    .line 80
    :cond_7b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Server cipher suite is not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSVersion;[B[BSSLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_8

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_8
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 72
    invoke-direct/range {v0 .. v6}, Lio/ktor/network/tls/TLSServerHello;-><init>(Lio/ktor/network/tls/TLSVersion;[B[BSSLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCipherSuite()Lio/ktor/network/tls/CipherSuite;
    .registers 1

    .line 80
    iget-object p0, p0, Lio/ktor/network/tls/TLSServerHello;->cipherSuite:Lio/ktor/network/tls/CipherSuite;

    return-object p0
.end method

.method public final getHashAndSignAlgorithms()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object p0, p0, Lio/ktor/network/tls/TLSServerHello;->hashAndSignAlgorithms:Ljava/util/List;

    return-object p0
.end method

.method public final getServerSeed()[B
    .registers 1

    .line 74
    iget-object p0, p0, Lio/ktor/network/tls/TLSServerHello;->serverSeed:[B

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSServerHello.WhenMappings (io.ktor.network.tls.TLSServerHello$WhenMappings)
.class public final synthetic Lio/ktor/network/tls/TLSServerHello$WhenMappings;
.super Ljava/lang/Object;
.source "TLSHandshakeType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSServerHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/ktor/network/tls/extensions/TLSExtensionType;->values()[Lio/ktor/network/tls/extensions/TLSExtensionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/network/tls/extensions/TLSExtensionType;->SIGNATURE_ALGORITHMS:Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lio/ktor/network/tls/TLSServerHello$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
