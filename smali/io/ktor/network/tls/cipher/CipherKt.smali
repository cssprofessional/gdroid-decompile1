###### Class io.ktor.network.tls.cipher.CipherKt (io.ktor.network.tls.cipher.CipherKt)
.class public final Lio/ktor/network/tls/cipher/CipherKt;
.super Ljava/lang/Object;
.source "Cipher.kt"


# static fields
.field public static final EmptyByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/cipher/CipherKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final getEmptyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 37
    sget-object v0, Lio/ktor/network/tls/cipher/CipherKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final set([BIJ)V
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    add-int v2, v0, p1

    rsub-int/lit8 v3, v0, 0x7

    mul-int/2addr v3, v1

    ushr-long v3, p2, v3

    long-to-int v1, v3

    int-to-byte v1, v1

    .line 27
    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public static final set([BIS)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x2

    if-ge v0, v1, :cond_17

    add-int v1, v0, p1

    rsub-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x8

    ushr-int v2, p2, v2

    int-to-byte v2, v2

    .line 33
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    return-void
.end method
