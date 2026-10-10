###### Class kotlin.jvm.internal.TypeIntrinsics (kotlin.jvm.internal.TypeIntrinsics)
.class public Lkotlin/jvm/internal/TypeIntrinsics;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asMutableIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    .line 95
    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v0, :cond_d

    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMutableIterable;

    if-nez v0, :cond_d

    .line 96
    const-string v0, "kotlin.collections.MutableIterable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_d
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->castToIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static asMutableList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 151
    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v0, :cond_d

    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMutableList;

    if-nez v0, :cond_d

    .line 152
    const-string v0, "kotlin.collections.MutableList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    :cond_d
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->castToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_1c

    .line 341
    invoke-static {p0, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlin.jvm.functions.Function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    return-object p0
.end method

.method public static castToIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 1

    .line 110
    :try_start_0
    check-cast p0, Ljava/lang/Iterable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 113
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public static castToList(Ljava/lang/Object;)Ljava/util/List;
    .registers 1

    .line 166
    :try_start_0
    check-cast p0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 169
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public static getFunctionArity(Ljava/lang/Object;)I
    .registers 2

    .line 258
    instance-of v0, p0, Lkotlin/jvm/internal/FunctionBase;

    if-eqz v0, :cond_b

    .line 259
    check-cast p0, Lkotlin/jvm/internal/FunctionBase;

    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionBase;->getArity()I

    move-result p0

    return p0

    .line 261
    :cond_b
    instance-of v0, p0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 264
    :cond_11
    instance-of v0, p0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_17
    instance-of v0, p0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1d

    const/4 p0, 0x2

    return p0

    .line 270
    :cond_1d
    instance-of v0, p0, Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_23

    const/4 p0, 0x3

    return p0

    .line 273
    :cond_23
    instance-of v0, p0, Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_29

    const/4 p0, 0x4

    return p0

    .line 276
    :cond_29
    instance-of v0, p0, Lkotlin/jvm/functions/Function5;

    if-eqz v0, :cond_2f

    const/4 p0, 0x5

    return p0

    .line 279
    :cond_2f
    instance-of v0, p0, Lkotlin/jvm/functions/Function6;

    if-eqz v0, :cond_35

    const/4 p0, 0x6

    return p0

    .line 282
    :cond_35
    instance-of v0, p0, Lkotlin/jvm/functions/Function7;

    if-eqz v0, :cond_3b

    const/4 p0, 0x7

    return p0

    .line 285
    :cond_3b
    instance-of v0, p0, Lkotlin/jvm/functions/Function8;

    if-eqz v0, :cond_42

    const/16 p0, 0x8

    return p0

    .line 288
    :cond_42
    instance-of v0, p0, Lkotlin/jvm/functions/Function9;

    if-eqz v0, :cond_49

    const/16 p0, 0x9

    return p0

    .line 291
    :cond_49
    instance-of v0, p0, Lkotlin/jvm/functions/Function10;

    if-eqz v0, :cond_50

    const/16 p0, 0xa

    return p0

    .line 294
    :cond_50
    instance-of v0, p0, Lkotlin/jvm/functions/Function11;

    if-eqz v0, :cond_57

    const/16 p0, 0xb

    return p0

    .line 297
    :cond_57
    instance-of v0, p0, Lkotlin/jvm/functions/Function12;

    if-eqz v0, :cond_5e

    const/16 p0, 0xc

    return p0

    .line 300
    :cond_5e
    instance-of v0, p0, Lkotlin/jvm/functions/Function13;

    if-eqz v0, :cond_65

    const/16 p0, 0xd

    return p0

    .line 303
    :cond_65
    instance-of v0, p0, Lkotlin/jvm/functions/Function14;

    if-eqz v0, :cond_6c

    const/16 p0, 0xe

    return p0

    .line 306
    :cond_6c
    instance-of v0, p0, Lkotlin/jvm/functions/Function15;

    if-eqz v0, :cond_73

    const/16 p0, 0xf

    return p0

    .line 309
    :cond_73
    instance-of v0, p0, Lkotlin/jvm/functions/Function16;

    if-eqz v0, :cond_7a

    const/16 p0, 0x10

    return p0

    .line 312
    :cond_7a
    instance-of v0, p0, Lkotlin/jvm/functions/Function17;

    if-eqz v0, :cond_81

    const/16 p0, 0x11

    return p0

    .line 315
    :cond_81
    instance-of v0, p0, Lkotlin/jvm/functions/Function18;

    if-eqz v0, :cond_88

    const/16 p0, 0x12

    return p0

    .line 318
    :cond_88
    instance-of v0, p0, Lkotlin/jvm/functions/Function19;

    if-eqz v0, :cond_8f

    const/16 p0, 0x13

    return p0

    .line 321
    :cond_8f
    instance-of v0, p0, Lkotlin/jvm/functions/Function20;

    if-eqz v0, :cond_96

    const/16 p0, 0x14

    return p0

    .line 324
    :cond_96
    instance-of v0, p0, Lkotlin/jvm/functions/Function21;

    if-eqz v0, :cond_9d

    const/16 p0, 0x15

    return p0

    .line 327
    :cond_9d
    instance-of p0, p0, Lkotlin/jvm/functions/Function22;

    if-eqz p0, :cond_a4

    const/16 p0, 0x16

    return p0

    :cond_a4
    const/4 p0, -0x1

    return p0
.end method

.method public static isFunctionOfArity(Ljava/lang/Object;I)Z
    .registers 3

    .line 336
    instance-of v0, p0, Lkotlin/Function;

    if-eqz v0, :cond_c

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->getFunctionArity(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isMutableList(Ljava/lang/Object;)Z
    .registers 2

    .line 146
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_e

    instance-of v0, p0, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v0, :cond_c

    instance-of p0, p0, Lkotlin/jvm/internal/markers/KMutableList;

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 17
    const-class v0, Lkotlin/jvm/internal/TypeIntrinsics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;
    .registers 1

    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method public static throwCce(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_5

    .line 21
    const-string p0, "null"

    goto :goto_d

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 22
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    return-void
.end method

.method public static throwCce(Ljava/lang/String;)V
    .registers 2

    .line 26
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method
