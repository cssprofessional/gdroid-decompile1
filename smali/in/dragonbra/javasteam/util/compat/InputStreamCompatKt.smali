###### Class in.dragonbra.javasteam.util.compat.InputStreamCompatKt (in.dragonbra.javasteam.util.compat.InputStreamCompatKt)
.class public final Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt;
.super Ljava/lang/Object;
.source "InputStreamCompat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputStreamCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputStreamCompat.kt\nin/dragonbra/javasteam/util/compat/InputStreamCompatKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1#2:94\n1869#3,2:95\n*S KotlinDebug\n*F\n+ 1 InputStreamCompat.kt\nin/dragonbra/javasteam/util/compat/InputStreamCompatKt\n*L\n84#1:95,2\n*E\n"
.end annotation


# direct methods
.method public static final readNBytesCompat(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt$$ExternalSyntheticBackport0;->m(III)I

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p3, :cond_1e

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 21
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1c

    goto :goto_1e

    :cond_1c
    add-int/2addr v0, v1

    goto :goto_f

    :cond_1e
    :goto_1e
    return v0
.end method

.method public static final readNBytesCompat(Ljava/io/InputStream;I)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_7e

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    :cond_b
    const/16 v4, 0x2000

    .line 45
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v5, v4, [B

    move v6, v1

    :goto_14
    sub-int v7, v4, v6

    .line 49
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_23

    add-int/2addr v6, v7

    sub-int/2addr p1, v7

    goto :goto_14

    :cond_23
    if-lez v6, :cond_46

    const v4, 0x7ffffff7

    sub-int/2addr v4, v3

    if-lt v4, v6, :cond_3e

    add-int/2addr v3, v6

    if-nez v0, :cond_30

    move-object v0, v5

    goto :goto_46

    :cond_30
    if-nez v2, :cond_3a

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 56
    :cond_3e
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string p1, "Required array size too large"

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :goto_46
    if-ltz v7, :cond_4a

    if-gtz p1, :cond_b

    :cond_4a
    if-nez v2, :cond_5f

    if-nez v0, :cond_51

    .line 75
    new-array p0, v1, [B

    return-object p0

    .line 77
    :cond_51
    array-length p0, v0

    if-ne p0, v3, :cond_55

    goto :goto_5e

    :cond_55
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string p0, "copyOf(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5e
    return-object v0

    .line 80
    :cond_5f
    new-array p0, v3, [B

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 85
    array-length v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 86
    invoke-static {v2, v1, p0, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    sub-int/2addr v3, v4

    goto :goto_66

    :cond_7d
    return-object p0

    .line 35
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
