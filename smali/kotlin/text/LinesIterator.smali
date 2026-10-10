###### Class kotlin.text.LinesIterator (kotlin.text.LinesIterator)
.class public final Lkotlin/text/LinesIterator;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/LinesIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# static fields
.field public static final State:Lkotlin/text/LinesIterator$State;


# instance fields
.field public delimiterLength:I

.field public delimiterStartIndex:I

.field public state:I

.field public final string:Ljava/lang/CharSequence;

.field public tokenStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lkotlin/text/LinesIterator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/LinesIterator$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/LinesIterator;->State:Lkotlin/text/LinesIterator$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 9

    .line 1275
    iget v0, p0, Lkotlin/text/LinesIterator;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-ne v0, v2, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 1279
    :cond_a
    iget v0, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    const/4 v3, 0x2

    if-gez v0, :cond_12

    .line 1280
    iput v3, p0, Lkotlin/text/LinesIterator;->state:I

    return v1

    .line 1285
    :cond_12
    iget-object v0, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1287
    iget v1, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    iget-object v4, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_20
    if-ge v1, v4, :cond_4b

    .line 1288
    iget-object v5, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-eq v5, v7, :cond_33

    if-eq v5, v6, :cond_33

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_33
    if-ne v5, v6, :cond_48

    add-int/lit8 v0, v1, 0x1

    .line 1292
    iget-object v4, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_48

    iget-object v4, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_48

    goto :goto_49

    :cond_48
    move v3, v2

    :goto_49
    move v0, v1

    goto :goto_4c

    :cond_4b
    const/4 v3, -0x1

    .line 1299
    :goto_4c
    iput v2, p0, Lkotlin/text/LinesIterator;->state:I

    .line 1300
    iput v3, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    .line 1301
    iput v0, p0, Lkotlin/text/LinesIterator;->delimiterStartIndex:I

    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 1262
    invoke-virtual {p0}, Lkotlin/text/LinesIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .line 1307
    invoke-virtual {p0}, Lkotlin/text/LinesIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 1311
    iput v0, p0, Lkotlin/text/LinesIterator;->state:I

    .line 1312
    iget v0, p0, Lkotlin/text/LinesIterator;->delimiterStartIndex:I

    .line 1313
    iget v1, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    .line 1314
    iget v2, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    .line 1315
    iget-object p0, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1308
    :cond_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class kotlin.text.LinesIterator.State (kotlin.text.LinesIterator$State)
.class public final Lkotlin/text/LinesIterator$State;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/LinesIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlin/text/LinesIterator$State;-><init>()V

    return-void
.end method
