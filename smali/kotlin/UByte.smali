###### Class kotlin.UByte (kotlin.UByte)
.class public final Lkotlin/UByte;
.super Ljava/lang/Object;
.source "UByte.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UByte$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/UByte;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/UByte$Companion;


# instance fields
.field public final data:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lkotlin/UByte$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/UByte$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/UByte;->Companion:Lkotlin/UByte$Companion;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .registers 2
    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lkotlin/UByte;->data:B

    return-void
.end method

.method public static final synthetic box-impl(B)Lkotlin/UByte;
    .registers 2

    .line 0
    new-instance v0, Lkotlin/UByte;

    invoke-direct {v0, p0}, Lkotlin/UByte;-><init>(B)V

    return-object v0
.end method

.method public static constructor-impl(B)B
    .registers 1
    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .line 0
    return p0
.end method

.method public static equals-impl(BLjava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lkotlin/UByte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lkotlin/UByte;

    invoke-virtual {p1}, Lkotlin/UByte;->unbox-impl()B

    move-result p1

    if-eq p0, p1, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(BB)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static hashCode-impl(B)I
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/lang/Byte;->hashCode(B)I

    move-result p0

    return p0
.end method

.method public static toString-impl(B)Ljava/lang/String;
    .registers 1

    and-int/lit16 p0, p0, 0xff

    .line 353
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 14
    check-cast p1, Lkotlin/UByte;

    invoke-virtual {p1}, Lkotlin/UByte;->unbox-impl()B

    move-result p1

    invoke-virtual {p0}, Lkotlin/UByte;->unbox-impl()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-byte p0, p0, Lkotlin/UByte;->data:B

    invoke-static {p0, p1}, Lkotlin/UByte;->equals-impl(BLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-byte p0, p0, Lkotlin/UByte;->data:B

    invoke-static {p0}, Lkotlin/UByte;->hashCode-impl(B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 353
    iget-byte p0, p0, Lkotlin/UByte;->data:B

    invoke-static {p0}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()B
    .registers 1

    .line 0
    iget-byte p0, p0, Lkotlin/UByte;->data:B

    return p0
.end method

###### Class kotlin.UByte.Companion (kotlin.UByte$Companion)
.class public final Lkotlin/UByte$Companion;
.super Ljava/lang/Object;
.source "UByte.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/UByte;
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
    invoke-direct {p0}, Lkotlin/UByte$Companion;-><init>()V

    return-void
.end method
