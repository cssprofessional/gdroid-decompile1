###### Class kotlin.random.XorWowRandom (kotlin.random.XorWowRandom)
.class public final Lkotlin/random/XorWowRandom;
.super Lkotlin/random/Random;
.source "XorWowRandom.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/XorWowRandom$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/random/XorWowRandom$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public addend:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lkotlin/random/XorWowRandom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/XorWowRandom$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/random/XorWowRandom;->Companion:Lkotlin/random/XorWowRandom$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 10

    not-int v5, p1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 30
    invoke-direct/range {v0 .. v6}, Lkotlin/random/XorWowRandom;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    .line 20
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    .line 21
    iput p1, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 22
    iput p2, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 23
    iput p3, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 24
    iput p4, p0, Lkotlin/random/XorWowRandom;->w:I

    .line 25
    iput p5, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 26
    iput p6, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 33
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->checkInvariants()V

    const/4 p1, 0x0

    :goto_13
    const/16 p2, 0x40

    if-ge p1, p2, :cond_1d

    .line 36
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->nextInt()I

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_1d
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 3

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->checkInvariants()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-object p0

    :catchall_4
    move-exception p0

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "initCause(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final checkInvariants()V
    .registers 3

    .line 40
    iget v0, p0, Lkotlin/random/XorWowRandom;->x:I

    iget v1, p0, Lkotlin/random/XorWowRandom;->y:I

    or-int/2addr v0, v1

    iget v1, p0, Lkotlin/random/XorWowRandom;->z:I

    or-int/2addr v0, v1

    iget v1, p0, Lkotlin/random/XorWowRandom;->w:I

    or-int/2addr v0, v1

    iget p0, p0, Lkotlin/random/XorWowRandom;->v:I

    or-int/2addr p0, v0

    if-eqz p0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Initial state must have at least one non-zero element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextBits(I)I
    .registers 2

    .line 62
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->nextInt()I

    move-result p0

    invoke-static {p0, p1}, Lkotlin/random/RandomKt;->takeUpperBits(II)I

    move-result p0

    return p0
.end method

.method public nextInt()I
    .registers 4

    .line 48
    iget v0, p0, Lkotlin/random/XorWowRandom;->x:I

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    .line 50
    iget v1, p0, Lkotlin/random/XorWowRandom;->y:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 51
    iget v1, p0, Lkotlin/random/XorWowRandom;->z:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 52
    iget v1, p0, Lkotlin/random/XorWowRandom;->w:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 53
    iget v1, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 54
    iput v1, p0, Lkotlin/random/XorWowRandom;->w:I

    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    .line 56
    iput v0, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 57
    iget v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    const v2, 0x587c5

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class kotlin.random.XorWowRandom.Companion (kotlin.random.XorWowRandom$Companion)
.class public final Lkotlin/random/XorWowRandom$Companion;
.super Ljava/lang/Object;
.source "XorWowRandom.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/XorWowRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlin/random/XorWowRandom$Companion;-><init>()V

    return-void
.end method
