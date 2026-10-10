###### Class kotlin.coroutines.jvm.internal.Boxing (kotlin.coroutines.jvm.internal.Boxing)
.class public final Lkotlin/coroutines/jvm/internal/Boxing;
.super Ljava/lang/Object;
.source "boxing.kt"


# direct methods
.method public static final boxBoolean(Z)Ljava/lang/Boolean;
    .registers 1

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final boxByte(B)Ljava/lang/Byte;
    .registers 1

    .line 24
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static final boxInt(I)Ljava/lang/Integer;
    .registers 2

    .line 32
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static final boxLong(J)Ljava/lang/Long;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
