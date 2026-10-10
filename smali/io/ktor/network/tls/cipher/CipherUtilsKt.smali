###### Class io.ktor.network.tls.cipher.CipherUtilsKt (io.ktor.network.tls.cipher.CipherUtilsKt)
.class public final Lio/ktor/network/tls/cipher/CipherUtilsKt;
.super Ljava/lang/Object;
.source "CipherUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCipherUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherUtils.kt\nio/ktor/network/tls/cipher/CipherUtilsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n21#2,2:77\n23#2:80\n1#3:79\n*S KotlinDebug\n*F\n+ 1 CipherUtils.kt\nio/ktor/network/tls/cipher/CipherUtilsKt\n*L\n22#1:77,2\n22#1:80\n*E\n"
.end annotation


# static fields
.field public static final CryptoBufferPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cGeXoGGgSutbiLStHe78JxyXrII(Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->cipherLoop$lambda$0(Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lio/ktor/utils/io/pool/ByteBufferPool;

    const/16 v1, 0x80

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lio/ktor/utils/io/pool/ByteBufferPool;-><init>(II)V

    sput-object v0, Lio/ktor/network/tls/cipher/CipherUtilsKt;->CryptoBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final cipherLoop(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;)Lkotlinx/io/Source;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/io/Source;",
            "Ljavax/crypto/Cipher;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/io/Sink;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/io/Source;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 18
    sget-object v1, Lio/ktor/network/tls/cipher/CipherUtilsKt;->CryptoBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 21
    :try_start_20
    new-instance v9, Lkotlinx/io/Buffer;

    invoke-direct {v9}, Lkotlinx/io/Buffer;-><init>()V

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 24
    invoke-interface {p2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :goto_2b
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_3a

    invoke-static {p0, v0}, Lio/ktor/utils/io/core/ByteReadPacketExtensions_jvmKt;->readAvailable(Lkotlinx/io/Source;Ljava/nio/ByteBuffer;)I

    move-result p2

    goto :goto_3b

    :catchall_37
    move-exception p0

    goto/16 :goto_103

    :cond_3a
    move p2, v3

    .line 28
    :goto_3b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 30
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_bb

    const/4 v4, -0x1

    if-eq p2, v4, :cond_4d

    invoke-interface {p0}, Lkotlinx/io/Source;->exhausted()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 48
    :cond_4d
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 49
    move-object p0, v1

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 51
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p0

    if-eqz p0, :cond_ac

    .line 53
    move-object p2, v1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p2
    :try_end_63
    .catchall {:try_start_20 .. :try_end_63} :catchall_37

    const-string v3, "doFinal(...)"

    if-le p0, p2, :cond_77

    .line 54
    :try_start_67
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    goto :goto_ac

    .line 58
    :cond_77
    move-object p0, v1

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 59
    invoke-static {}, Lio/ktor/network/tls/cipher/CipherKt;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    move-object p2, v1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 60
    move-object p0, v1

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    move-object p0, v1

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_a6

    .line 63
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    goto :goto_ac

    .line 67
    :cond_a6
    move-object p0, v1

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {v9, p0}, Lio/ktor/utils/io/core/BytePacketBuilderExtensions_jvmKt;->writeFully(Lkotlinx/io/Sink;Ljava/nio/ByteBuffer;)V
    :try_end_ac
    .catchall {:try_start_67 .. :try_end_ac} :catchall_37

    .line 70
    :cond_ac
    :goto_ac
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    if-eqz v2, :cond_ba

    .line 72
    sget-object p0, Lio/ktor/network/tls/cipher/CipherUtilsKt;->CryptoBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {p0, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    :cond_ba
    return-object v9

    .line 32
    :cond_bb
    :try_start_bb
    move-object p2, v1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-le p2, v4, :cond_ec

    if-eqz v2, :cond_d9

    .line 36
    sget-object p2, Lio/ktor/network/tls/cipher/CipherUtilsKt;->CryptoBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {p2, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 38
    :cond_d9
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string v4, "allocate(...)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    move v2, v3

    .line 42
    :cond_ec
    move-object p2, v1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 43
    move-object p2, v1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    move-object p2, v1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-static {v9, p2}, Lio/ktor/utils/io/core/BytePacketBuilderExtensions_jvmKt;->writeFully(Lkotlinx/io/Sink;Ljava/nio/ByteBuffer;)V

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_101
    .catchall {:try_start_bb .. :try_end_101} :catchall_37

    goto/16 :goto_2b

    .line 70
    :goto_103
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    if-eqz v2, :cond_111

    .line 72
    sget-object p1, Lio/ktor/network/tls/cipher/CipherUtilsKt;->CryptoBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {p1, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    :cond_111
    throw p0
.end method

.method public static synthetic cipherLoop$default(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/io/Source;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_9

    .line 16
    new-instance p2, Lio/ktor/network/tls/cipher/CipherUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lio/ktor/network/tls/cipher/CipherUtilsKt$$ExternalSyntheticLambda0;-><init>()V

    :cond_9
    invoke-static {p0, p1, p2}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->cipherLoop(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final cipherLoop$lambda$0(Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.network.tls.cipher.CipherUtilsKt$$ExternalSyntheticLambda0 (io.ktor.network.tls.cipher.CipherUtilsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/cipher/CipherUtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {p1}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->$r8$lambda$cGeXoGGgSutbiLStHe78JxyXrII(Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
