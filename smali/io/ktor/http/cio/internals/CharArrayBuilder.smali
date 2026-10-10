###### Class io.ktor.http.cio.internals.CharArrayBuilder (io.ktor.http.cio.internals.CharArrayBuilder)
.class public final Lio/ktor/http/cio/internals/CharArrayBuilder;
.super Ljava/lang/Object;
.source "CharArrayBuilder.kt"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharArrayBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharArrayBuilder.kt\nio/ktor/http/cio/internals/CharArrayBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation


# instance fields
.field public buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[C>;"
        }
    .end annotation
.end field

.field public current:[C

.field public length:I

.field public final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation
.end field

.field public released:Z

.field public remaining:I

.field public stringified:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 11
    invoke-static {}, Lio/ktor/http/cio/internals/CharArrayPoolKt;->getCharArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    .line 10
    :cond_8
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public static final synthetic access$copy(Lio/ktor/http/cio/internals/CharArrayBuilder;II)Ljava/lang/CharSequence;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->copy(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;I)C
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result p0

    return p0
.end method

.method public static final synthetic access$hashCodeImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;II)I
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->hashCodeImpl(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$rangeEqualsImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;ILjava/lang/CharSequence;II)Z
    .registers 5

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/http/cio/internals/CharArrayBuilder;->rangeEqualsImpl(ILjava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .registers 5

    .line 52
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->nonFullBuffer()[C

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    iget v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v1, v2

    aput-char p1, v0, v1

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    .line 54
    iput v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    .line 55
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 11

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    move v0, p2

    :goto_4
    if-ge v0, p3, :cond_2b

    .line 64
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->nonFullBuffer()[C

    move-result-object v1

    .line 65
    array-length v2, v1

    iget v3, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v2, v3

    sub-int v4, p3, v0

    .line 66
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_24

    add-int v5, v2, v4

    add-int v6, v0, v4

    .line 69
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_24
    add-int/2addr v0, v3

    .line 73
    iget v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v1, v3

    iput v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    goto :goto_4

    :cond_2b
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result p1

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    return-object p0
.end method

.method public final appendNewArray()[C
    .registers 4

    .line 187
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 188
    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 189
    iput-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 190
    array-length v2, v0

    iput v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    const/4 v2, 0x0

    .line 192
    iput-boolean v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->released:Z

    if-eqz v1, :cond_25

    .line 195
    iget-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    if-nez v2, :cond_22

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iput-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    .line 197
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_22
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-object v0
.end method

.method public final bufferForIndex(I)[C
    .registers 3

    .line 167
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    if-nez v0, :cond_1f

    const/16 v0, 0x800

    if-ge p1, v0, :cond_16

    .line 171
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->throwSingleBuffer(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 170
    :cond_16
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->throwSingleBuffer(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 174
    :cond_1f
    iget-object p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p0, p0

    div-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public final bridge charAt(I)C
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->get(I)C

    move-result p0

    return p0
.end method

.method public final copy(II)Ljava/lang/CharSequence;
    .registers 9

    if-ne p1, p2, :cond_5

    .line 107
    const-string p0, ""

    return-object p0

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    rem-int/lit16 v1, p1, 0x800

    sub-int v1, p1, v1

    :goto_10
    if-ge v1, p2, :cond_32

    .line 116
    invoke-virtual {p0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->bufferForIndex(I)[C

    move-result-object v2

    const/4 v3, 0x0

    sub-int v4, p1, v1

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, p2, v1

    const/16 v5, 0x800

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_25
    if-ge v3, v4, :cond_2f

    .line 121
    aget-char v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_2f
    add-int/lit16 v1, v1, 0x800

    goto :goto_10

    :cond_32
    return-object v0
.end method

.method public final currentPosition()I
    .registers 2

    .line 223
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    iget p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 43
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 44
    :cond_6
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    .line 46
    :cond_13
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->rangeEqualsImpl(ILjava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public get(I)C
    .registers 4

    if-ltz p1, :cond_39

    .line 25
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 27
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result p0

    return p0

    .line 25
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index is negative: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getImpl(I)C
    .registers 3

    .line 30
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->bufferForIndex(I)[C

    move-result-object v0

    iget-object p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p0, p0

    rem-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0
.end method

.method public getLength()I
    .registers 1

    .line 20
    iget p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 49
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_12

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->hashCodeImpl(II)I

    move-result p0

    :goto_12
    return p0
.end method

.method public final hashCodeImpl(II)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_d
    return v0
.end method

.method public final bridge length()I
    .registers 1

    .line 10
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getLength()I

    move-result p0

    return p0
.end method

.method public final nonFullBuffer()[C
    .registers 2

    .line 183
    iget v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->appendNewArray()[C

    move-result-object p0

    goto :goto_e

    :cond_9
    iget-object p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_e
    return-object p0
.end method

.method public final rangeEqualsImpl(ILjava/lang/CharSequence;II)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p4, :cond_16

    add-int v2, p1, v1

    .line 208
    invoke-virtual {p0, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_13

    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public final release()V
    .registers 8

    .line 87
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 90
    iput-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_d
    if-ge v4, v3, :cond_26

    .line 92
    iget-object v5, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 95
    :cond_1b
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    if-eqz v0, :cond_24

    iget-object v3, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v3, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 96
    :cond_24
    iput-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    :cond_26
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->released:Z

    .line 100
    iput-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    .line 101
    iput-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    .line 102
    iput v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    .line 103
    iput v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    const/16 v0, 0x29

    if-gt p1, p2, :cond_57

    if-ltz p1, :cond_3c

    .line 35
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v1

    if-gt p2, v1, :cond_12

    .line 37
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;

    invoke-direct {v0, p0, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;-><init>(Lio/ktor/http/cio/internals/CharArrayBuilder;II)V

    return-object v0

    .line 35
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is greater than length ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startIndex is negative: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startIndex ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should be less or equal to endIndex ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final throwSingleBuffer(I)Ljava/lang/Void;
    .registers 4

    .line 178
    iget-boolean v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->released:Z

    if-eqz v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer is already released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range [0; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->currentPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 40
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->copy(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    :cond_13
    return-object v0
.end method

###### Class io.ktor.http.cio.internals.CharArrayBuilder.SubSequenceImpl (io.ktor.http.cio.internals.CharArrayBuilder$SubSequenceImpl)
.class public final Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;
.super Ljava/lang/Object;
.source "CharArrayBuilder.kt"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/internals/CharArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubSequenceImpl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharArrayBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharArrayBuilder.kt\nio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation


# instance fields
.field public final end:I

.field public final start:I

.field public stringified:Ljava/lang/String;

.field public final synthetic this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/internals/CharArrayBuilder;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    iput p3, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->end:I

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .registers 2

    .line 130
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->get(I)C

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 157
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 158
    :cond_6
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->length()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    .line 160
    :cond_13
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;

    iget v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->length()I

    move-result p0

    invoke-static {v0, v2, p1, v1, p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->access$rangeEqualsImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;ILjava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public get(I)C
    .registers 4

    .line 138
    iget v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    add-int/2addr v0, p1

    if-ltz p1, :cond_3c

    .line 140
    iget v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->end:I

    if-ge v0, v1, :cond_10

    .line 142
    iget-object p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-static {p0, v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->access$getImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;I)C

    move-result p0

    return p0

    .line 140
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should be less than length ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index is negative: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()I
    .registers 2

    .line 135
    iget v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->end:I

    iget p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 163
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->stringified:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;

    iget v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    iget p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->end:I

    invoke-static {v0, v1, p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->access$hashCodeImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;II)I

    move-result p0

    :goto_13
    return p0
.end method

.method public final bridge length()I
    .registers 1

    .line 130
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->getLength()I

    move-result p0

    return p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 6

    if-ltz p1, :cond_64

    const/16 v0, 0x29

    if-gt p1, p2, :cond_3e

    .line 148
    iget v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->end:I

    iget v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_1c

    if-ne p1, p2, :cond_12

    .line 149
    const-string p0, ""

    return-object p0

    .line 151
    :cond_12
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;

    iget-object p0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, p0, p1, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;-><init>(Lio/ktor/http/cio/internals/CharArrayBuilder;II)V

    return-object v0

    .line 148
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "end should be less than length ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should be less or equal to end ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start is negative: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 154
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->stringified:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->this$0:Lio/ktor/http/cio/internals/CharArrayBuilder;

    iget v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->start:I

    iget v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->end:I

    invoke-static {v0, v1, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->access$copy(Lio/ktor/http/cio/internals/CharArrayBuilder;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;->stringified:Ljava/lang/String;

    :cond_14
    return-object v0
.end method
