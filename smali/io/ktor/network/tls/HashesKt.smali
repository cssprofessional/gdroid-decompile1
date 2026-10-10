###### Class io.ktor.network.tls.HashesKt (io.ktor.network.tls.HashesKt)
.class public final Lio/ktor/network/tls/HashesKt;
.super Ljava/lang/Object;
.source "Hashes.kt"


# direct methods
.method public static final PRF(Ljavax/crypto/SecretKey;[B[BI)[B
    .registers 5

    const-string v0, "secret"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object p1

    .line 13
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    const-string v0, "getInstance(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2, p0, p3}, Lio/ktor/network/tls/HashesKt;->P_hash([BLjavax/crypto/Mac;Ljavax/crypto/SecretKey;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final P_hash([BLjavax/crypto/Mac;Ljavax/crypto/SecretKey;I)[B
    .registers 8

    const/16 v0, 0xc

    if-lt p3, v0, :cond_3f

    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [B

    move-object v1, p0

    .line 24
    :goto_8
    array-length v2, v0

    if-ge v2, p3, :cond_35

    .line 25
    invoke-virtual {p1}, Ljavax/crypto/Mac;->reset()V

    .line 26
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 27
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 28
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    const-string v2, "doFinal(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljavax/crypto/Mac;->reset()V

    .line 31
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 32
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 33
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 35
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object v0

    goto :goto_8

    .line 38
    :cond_35
    invoke-static {v0, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 19
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
