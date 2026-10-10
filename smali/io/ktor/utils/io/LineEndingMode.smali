###### Class io.ktor.utils.io.LineEndingMode (io.ktor.utils.io.LineEndingMode)
.class public final Lio/ktor/utils/io/LineEndingMode;
.super Ljava/lang/Object;
.source "LineEndingMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/LineEndingMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineEndingMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineEndingMode.kt\nio/ktor/utils/io/LineEndingMode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n774#2:79\n865#2,2:80\n*S KotlinDebug\n*F\n+ 1 LineEndingMode.kt\nio/ktor/utils/io/LineEndingMode\n*L\n43#1:79\n43#1:80,2\n*E\n"
.end annotation


# static fields
.field public static final Any:I

.field public static final CR:I

.field public static final CRLF:I

.field public static final Companion:Lio/ktor/utils/io/LineEndingMode$Companion;

.field public static final LF:I

.field public static final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/utils/io/LineEndingMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/ktor/utils/io/LineEndingMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/LineEndingMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/LineEndingMode;->Companion:Lio/ktor/utils/io/LineEndingMode$Companion;

    const/4 v0, 0x1

    .line 52
    invoke-static {v0}, Lio/ktor/utils/io/LineEndingMode;->constructor-impl(I)I

    move-result v0

    sput v0, Lio/ktor/utils/io/LineEndingMode;->CR:I

    const/4 v1, 0x2

    .line 59
    invoke-static {v1}, Lio/ktor/utils/io/LineEndingMode;->constructor-impl(I)I

    move-result v1

    sput v1, Lio/ktor/utils/io/LineEndingMode;->LF:I

    const/4 v2, 0x4

    .line 66
    invoke-static {v2}, Lio/ktor/utils/io/LineEndingMode;->constructor-impl(I)I

    move-result v2

    sput v2, Lio/ktor/utils/io/LineEndingMode;->CRLF:I

    const/4 v3, 0x7

    .line 73
    invoke-static {v3}, Lio/ktor/utils/io/LineEndingMode;->constructor-impl(I)I

    move-result v3

    sput v3, Lio/ktor/utils/io/LineEndingMode;->Any:I

    .line 75
    invoke-static {v0}, Lio/ktor/utils/io/LineEndingMode;->box-impl(I)Lio/ktor/utils/io/LineEndingMode;

    move-result-object v0

    invoke-static {v1}, Lio/ktor/utils/io/LineEndingMode;->box-impl(I)Lio/ktor/utils/io/LineEndingMode;

    move-result-object v1

    invoke-static {v2}, Lio/ktor/utils/io/LineEndingMode;->box-impl(I)Lio/ktor/utils/io/LineEndingMode;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lio/ktor/utils/io/LineEndingMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/LineEndingMode;->values:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/utils/io/LineEndingMode;->mode:I

    return-void
.end method

.method public static final synthetic access$getCR$cp()I
    .registers 1

    .line 18
    sget v0, Lio/ktor/utils/io/LineEndingMode;->CR:I

    return v0
.end method

.method public static final synthetic access$getCRLF$cp()I
    .registers 1

    .line 18
    sget v0, Lio/ktor/utils/io/LineEndingMode;->CRLF:I

    return v0
.end method

.method public static final synthetic access$getLF$cp()I
    .registers 1

    .line 18
    sget v0, Lio/ktor/utils/io/LineEndingMode;->LF:I

    return v0
.end method

.method public static final synthetic box-impl(I)Lio/ktor/utils/io/LineEndingMode;
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/utils/io/LineEndingMode;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/LineEndingMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .registers 1

    .line 0
    return p0
.end method

.method public static final contains-lTjpP64(II)Z
    .registers 2

    .line 0
    or-int/2addr p1, p0

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lio/ktor/utils/io/LineEndingMode;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lio/ktor/utils/io/LineEndingMode;

    invoke-virtual {p1}, Lio/ktor/utils/io/LineEndingMode;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
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

.method public static hashCode-impl(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static final plus-1Ter-O4(II)I
    .registers 2

    or-int/2addr p0, p1

    .line 37
    invoke-static {p0}, Lio/ktor/utils/io/LineEndingMode;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .registers 5

    .line 40
    sget v0, Lio/ktor/utils/io/LineEndingMode;->CR:I

    invoke-static {p0, v0}, Lio/ktor/utils/io/LineEndingMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "CR"

    goto :goto_4b

    .line 41
    :cond_b
    sget v0, Lio/ktor/utils/io/LineEndingMode;->LF:I

    invoke-static {p0, v0}, Lio/ktor/utils/io/LineEndingMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "LF"

    goto :goto_4b

    .line 42
    :cond_16
    sget v0, Lio/ktor/utils/io/LineEndingMode;->CRLF:I

    invoke-static {p0, v0}, Lio/ktor/utils/io/LineEndingMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "CRLF"

    goto :goto_4b

    .line 43
    :cond_21
    sget-object v0, Lio/ktor/utils/io/LineEndingMode;->values:Ljava/util/List;

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/LineEndingMode;

    invoke-virtual {v3}, Lio/ktor/utils/io/LineEndingMode;->unbox-impl()I

    move-result v3

    .line 43
    invoke-static {p0, v3}, Lio/ktor/utils/io/LineEndingMode;->contains-lTjpP64(II)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 865
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 43
    :cond_47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4b
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget p0, p0, Lio/ktor/utils/io/LineEndingMode;->mode:I

    invoke-static {p0, p1}, Lio/ktor/utils/io/LineEndingMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget p0, p0, Lio/ktor/utils/io/LineEndingMode;->mode:I

    invoke-static {p0}, Lio/ktor/utils/io/LineEndingMode;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 39
    iget p0, p0, Lio/ktor/utils/io/LineEndingMode;->mode:I

    invoke-static {p0}, Lio/ktor/utils/io/LineEndingMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .registers 1

    .line 0
    iget p0, p0, Lio/ktor/utils/io/LineEndingMode;->mode:I

    return p0
.end method

###### Class io.ktor.utils.io.LineEndingMode.Companion (io.ktor.utils.io.LineEndingMode$Companion)
.class public final Lio/ktor/utils/io/LineEndingMode$Companion;
.super Ljava/lang/Object;
.source "LineEndingMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/LineEndingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/utils/io/LineEndingMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCR-f0jXZW8()I
    .registers 1

    .line 52
    invoke-static {}, Lio/ktor/utils/io/LineEndingMode;->access$getCR$cp()I

    move-result p0

    return p0
.end method

.method public final getCRLF-f0jXZW8()I
    .registers 1

    .line 66
    invoke-static {}, Lio/ktor/utils/io/LineEndingMode;->access$getCRLF$cp()I

    move-result p0

    return p0
.end method

.method public final getLF-f0jXZW8()I
    .registers 1

    .line 59
    invoke-static {}, Lio/ktor/utils/io/LineEndingMode;->access$getLF$cp()I

    move-result p0

    return p0
.end method
