###### Class kotlin.UShort (kotlin.UShort)
.class public final Lkotlin/UShort;
.super Ljava/lang/Object;
.source "UShort.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UShort$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/UShort;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/UShort$Companion;


# instance fields
.field public final data:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lkotlin/UShort$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/UShort$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/UShort;->Companion:Lkotlin/UShort$Companion;

    return-void
.end method

.method public synthetic constructor <init>(S)V
    .registers 2
    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkotlin/UShort;->data:S

    return-void
.end method

.method public static final synthetic box-impl(S)Lkotlin/UShort;
    .registers 2

    .line 0
    new-instance v0, Lkotlin/UShort;

    invoke-direct {v0, p0}, Lkotlin/UShort;-><init>(S)V

    return-object v0
.end method

.method public static constructor-impl(S)S
    .registers 1
    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .line 0
    return p0
.end method

.method public static equals-impl(SLjava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lkotlin/UShort;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lkotlin/UShort;

    invoke-virtual {p1}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    if-eq p0, p1, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(S)I
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public static toString-impl(S)Ljava/lang/String;
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 354
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 14
    check-cast p1, Lkotlin/UShort;

    invoke-virtual {p1}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    invoke-virtual {p0}, Lkotlin/UShort;->unbox-impl()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-short p0, p0, Lkotlin/UShort;->data:S

    invoke-static {p0, p1}, Lkotlin/UShort;->equals-impl(SLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-short p0, p0, Lkotlin/UShort;->data:S

    invoke-static {p0}, Lkotlin/UShort;->hashCode-impl(S)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 354
    iget-short p0, p0, Lkotlin/UShort;->data:S

    invoke-static {p0}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()S
    .registers 1

    .line 0
    iget-short p0, p0, Lkotlin/UShort;->data:S

    return p0
.end method

###### Class kotlin.UShort.Companion (kotlin.UShort$Companion)
.class public final Lkotlin/UShort$Companion;
.super Ljava/lang/Object;
.source "UShort.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/UShort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlin/UShort$Companion;-><init>()V

    return-void
.end method
